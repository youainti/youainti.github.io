#!/bin/bash

filename=${1%%.*}

pandoc $filename.md -o $filename.html 
cat mathjax_script.html >> $filename.html
