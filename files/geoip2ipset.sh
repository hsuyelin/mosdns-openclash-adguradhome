#!/bin/bash

geoipfile="$1"
tag="$2"
tmpdir="/tmp/v2dat"

cd $(cd $(dirname $BASH_SOURCE) && pwd)

mkdir -p "$tmpdir"
filename=$(basename -- "$geoipfile")
filename="${filename%.*}"
filename="$tmpdir/${filename}_$tag.txt"

if [ "$tag" == "telegram" ]; then
    wget --timeout 5 -O "$filename" 'https://core.telegram.org/resources/cidr.txt'
    if [ "$?" != "0" ]; then
         /usr/bin/mosdns v2dat unpack-ip -o "$tmpdir" "$geoipfile:$tag"
    fi
else
    /usr/bin/mosdns v2dat unpack-ip -o "$tmpdir" "$geoipfile:$tag"
fi

if test -f "$filename"; then
    ipset destroy "$tag"
    ipset create "$tag" hash:net
    while read p; do
        if ! grep -q ":" <<< "$p"; then
            ipset add "$tag" "$p"
        fi
    done <"$filename"
else
    echo "$filename missing."
fi

rm -rf "$tmpdir"