#/bin/bash

#renames file to have an e at the beginning
for file in * ; do
  mv "$file" "e$file"
done
