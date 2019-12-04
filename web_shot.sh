#!/bin/bash
if [ -z "$1" ]
  then
    echo "No argument supplied, please put in url"
fi

cutycapt --url=$1 --out=webshot.png
