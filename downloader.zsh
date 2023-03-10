#!/bin/zsh

# Define the name of the input file
INPUT_FILE="file.txt"
echo $INPUT_FILE

# Loop through each URL in the input file and download the corresponding file
while read -r url; do
  echo $url
  # Use curl to download the file from the URL
  wget $url
done < "$INPUT_FILE"
