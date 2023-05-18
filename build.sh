#!/bin/sh 
set -xe

if [ -d "docs/assets" ]; then
    rm -rf docs/assets
else  
    mkdir -p docs/assets
fi

cp -r assets docs
pandoc DB.MD -f markdown -t html -s -o docs/index.html --metadata title="db2"
pandoc DB.MD -f markdown -t pdf -s -o docs/DB.pdf
pandoc DB.MD -f markdown -t docx -s -o docs/DB.docx

