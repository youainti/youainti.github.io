#!/bin/bash

for file in md/*.md
do
    echo "$file"
    ./pandoc_compile_mathjax.sh "$file"

    #First file: copy the html version  (Get initial, remove the last md, replace with html
    #second file: replace every instance of md with html
    cp "${file/%md/html}" "${file//md/html}" 
done
