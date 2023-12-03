#!/bin/bash

# Check arguments present
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 [fileName]"
  exit 1
fi

# Save meta data
hash=$(md5sum $1 | cut -d " " -f1)
newName=$1-$(date +"%Y%m%d%H%M%S")

# Copy file
cp $1 $newName

# Print details to file
echo "$(date +"%Y-%m-%d %H:%M:%S") | Create backup | $hash | $newName" >> CHANGELOG.md