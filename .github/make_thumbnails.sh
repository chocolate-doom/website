#!/usr/bin/env bash

set -euo pipefail

cd _site

rm -rf thumbs
mkdir thumbs

for src in images/*; do
    echo -n "$src: "
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
