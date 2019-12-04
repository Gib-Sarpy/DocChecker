#!/bin/bash
name=$1

echo $name
echo "PDFID OUTPUT"
python DidierStevensSuite/pdfid.py $name

echo "PDFINFO OUTPUT"
pdfinfo $name

pdftoppm $name ${name::-4} -png
echo "IMAGE HAS BEEN CREATED"
