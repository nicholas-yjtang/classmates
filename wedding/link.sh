#!/bin/bash
target_file="Bob.md"
for i in attachments/*.jpg; do
    if grep -q "$i" "$target_file"; then
        echo "Already exists: $i"
        continue
    fi
    echo "![${i}](wedding/${i})" >> "$target_file"
done