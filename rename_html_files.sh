#!/bin/bash

# for each file call basename(filename without its extention) 
for file in *.HTM; do 
    name=$(basename "$file" .HTM)
    mv "$file" "$name.html"
done