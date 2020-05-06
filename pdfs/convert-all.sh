#!/usr/bin/env bash

for pdf in organized/*.pdf; do
	filename=$(basename -- "$pdf")
	converted_filename="converted/${filename}"
	if [[ ! -f "$converted_filename" ]]; then
	    (./convert.sh "$pdf" "$converted_filename")
	fi
done
