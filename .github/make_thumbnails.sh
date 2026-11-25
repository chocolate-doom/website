#!/usr/bin/env bash
#
# This generates thumbnail images for the website. Thumbnails are made of all
# the images found under /images. We generate two sets of thumbnails:
#
# /thumbs: "Gallery quality" thumbnails
#    - These are used for illustration images that get embedded in pages; such
#      illustrations are typically ~300px wide, so we generate them at maximum
#      of 500x500 so that they look nice on HiDPI screens. If the original
#      image is already small, or if the thumbnail isn't smaller than the
#      original image, we just create a symbolic link to the original image.
#
# /thumbs/icons: "Icon quality" thumbnails
#    - These are used for little icon-sized images such as on the front page.
#      Typically these are ~48px wide, so we generate them at maximum of 96x96
#      so that they look nice on HiDPI screens. We only generate these for
#      .png format files.

set -euo pipefail

cd _site

rm -rf thumbs
mkdir thumbs thumbs/icons

for src in images/*; do
    echo -n "$src: "

    # Make the icon first.
    if [[ "$src" =~ .png$ ]]; then
        dst_icon=${src/images/thumbs\/icons}
        magick $src -thumbnail 96x96 $dst_icon
    fi

    dst=${src/images/thumbs}
    src_size=$(stat -c "%s" $src)

    if [[ $src_size -lt 70000 ]]; then
        echo "size $src_size, using original."
        ln -s ../$src $dst
        continue
    fi

    magick $src -thumbnail 500x500 $dst

    case $src in
        *.png|*.PNG)
            pngnq -e .png -f $dst
            ;;
    esac
    dst_size=$(stat -c "%s" $dst)

    # Never generate a thumbnail that's larger than the source image. In
    # fact, thumbnails need to save at least 10KB or we just use the original.
    if [[ $dst_size -gt $((src_size - 10000)) ]]; then
        ln -sf ../$src $dst
        echo "produced thumbnail size $dst_size, vs $src_size, using original."
        continue
    fi

    echo "produced thumbnail size $dst_size."
done
