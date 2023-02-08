#!/bin/bash
#download multiple files from a website regularly and extract them in a specific folder
# Set the URL of the file to download
url="https://example.com/files.tar.gz"

# Set the destination folder
destination="~/Downloads/files"

# Download the file
wget $url

# Extract the file
tar -xzvf files.tar.gz

# Move the extracted files to the destination folder
mv files $destination

# Clean up
rm files.tar.gz