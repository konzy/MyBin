#/bin/bash

for file in * ; do
  mv "$file" "e$file"
done
