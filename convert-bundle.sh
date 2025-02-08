#!/bin/bash

curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzvf lab3-bundle.tar.gz

cat lab3-bundle.tar.gz | tr -s '\n' > lab3-cleaned.tsv

cat lab3-bundle.tar.gz | tr '\t' ',' > lab3-cleaned.csv

rows=$(tail -n +2 lab3-cleaned.csv | wc -l)

echo "Number of data rows: $rows"

tar -czvf lab3-converted.tar.gz lab3-cleaned.csv
