#!/usr/bin/env bash

pdf="$1"
converted_filename="$2"

echo "########### Converting: '$pdf'"
echo

# https://www.willus.com/k2pdfopt/help/options.shtml
k2pdfopt \
	-dev ko2 \
	-x \
	-ui- "$pdf" \
	-cmax 3 \
	-g 0.8 \
	-o "$converted_filename" > /dev/null || rm "$converted_filename"
