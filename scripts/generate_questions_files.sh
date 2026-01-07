#!/bin/sh

QUESTIONS_LIST_PATH="src/questions.txt"
QUESTIONS_DIR="questions"

if [ -e "$QUESTIONS_DIR" ]; then

rm -rf "$QUESTIONS_DIR"

fi

mkdir "$QUESTIONS_DIR"

while IFS= read -r line; do

number=$(echo "$line" | cut -d '.' -f 1)

question=$(echo "$line" | cut -d '.' -f 2-)

echo $question > $(echo $QUESTIONS_DIR/$number)

done < "$QUESTIONS_LIST_PATH"
