#!/bin/bash
if [ -z "$1" ]
  then
    echo "No argument supplied, please put in document name"
fi

name=$1
echo $name
doc2pdf $name
name=${name}.pdf
echo $name
pdftoppm $name ${name::4} -png
