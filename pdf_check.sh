#!/bin/bash
if [ -z "$1" ]
  then
    echo "No argument supplied, please put in pdf name"
fi

name=$1

echo $name
echo "PDFID OUTPUT"
python DidierStevensSuite/pdfid.py $name

echo "PDFINFO OUTPUT"
pdfinfo $name

pdftoppm $name ${name::-4} -png
echo "IMAGE HAS BEEN CREATED"
