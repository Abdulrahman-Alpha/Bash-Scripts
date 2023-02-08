# Imagine you need to download multiple files from a website regularly and extract them in a specific folder. This can be automated using a bash script that performs the following steps:

- Download the files using wget.
- Extract the files using tar.
- Move the extracted files to a specific folder.
- Here's an example of what the bash script could look like:
```
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
```
## This script can be run on a schedule using a task scheduler, such as cron on Unix-like systems, to automate the download and extraction process.