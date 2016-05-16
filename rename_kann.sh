#/bin/bash

# Renames all files in a dir
# Must remove file when finished
for file in * ; do
  mv "$file" "k$file"
done
