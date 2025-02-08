#!/bin/bash

# Step 1: Download the tarball
curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

# Step 2: Extract the tarball
tar -xzvf lab3-bundle.tar.gz

# Step 3: Identify the extracted file (assuming it's named `stock_data.tsv`)
if [ ! -f "stock_data.tsv" ]; then
    echo "Error: Extracted file stock_data.tsv not found."
    exit 1
fi

# Step 4: Remove empty lines
awk '!/^[[:space:]]*$/' stock_data.tsv > lab3-cleaned.tsv

# Step 5: Convert TSV to CSV
cat lab3-cleaned.tsv | tr '\t' ',' > lab3-cleaned.csv

# Step 6: Count rows (excluding header)
rows=$(tail -n +2 lab3-cleaned.csv | wc -l)
echo "Number of data rows: $rows"

# Step 7: Re-compress the cleaned CSV file
tar -czvf lab3-converted.tar.gz lab3-cleaned.csv

echo "Script completed successfully!"
