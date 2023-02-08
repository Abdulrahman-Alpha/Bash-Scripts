#!/bin/bash
# backup important files on a daily basis. 
# Set the source files
src_files=(~/Documents ~/Pictures)

# Set the destination folder
destination="~/Backup/$(date +%F)"

# Create the destination folder
mkdir -p $destination

# Copy the source files to the destination folder
for src in "${src_files[@]}"; do
  cp -r $src $destination
done

# Compress the destination folder into a tar archive
tar -czvf "$destination.tar.gz" $destination

# Transfer the tar archive to a remote server
scp "$destination.tar.gz" user@remote:/path/to/back