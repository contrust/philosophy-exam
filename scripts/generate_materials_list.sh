#!/bin/sh

MATERIALS_LIST_PATH="dist/materials.txt"
MATERIALS_PATH="materials"

if [ -e "$MATERIALS_LIST_PATH" ]; then

rm "$MATERIALS_LIST_PATH"

fi

touch "$MATERIALS_LIST_PATH"

i=1
ls "$MATERIALS_PATH" | LC_COLLATE=ru_RU.UTF-8 sort | while read -r line; do

printf "$i. " >> "$MATERIALS_LIST_PATH"

sed 's/.[^.]*$//' <<< "$line" >> "$MATERIALS_LIST_PATH"

i=$((++i))

done 
