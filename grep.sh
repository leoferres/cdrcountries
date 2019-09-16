#!/bin/bash
echoerr() { echo "$@" 1>&2; }
while read line; do
    echoerr $line
    echo $line
    pdfgrep --color=always --cache -n -i "$line" netmob_abstracts_*.pdf
done < listofcountries.txt
