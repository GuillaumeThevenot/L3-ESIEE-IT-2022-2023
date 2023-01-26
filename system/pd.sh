#! /bin/bash
# Files Directory
read -p "Enter a Directory or File: " entry
target="$entry"
let count=0
for f in "$target"/*
do 
echo $(basename $f)
let count=count+1
done
echo "Files in the Directory: $count"
exit 0