#!/bin/bash
if [ -z "$1" ]
  then
    echo "No argument supplied, please put in document name"
fi
name=$1
doc2pdf $name
name=${name::4}
pdftoppm $name.pdf ${name} -png
