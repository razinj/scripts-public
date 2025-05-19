#!/usr/bin/env bash

# Folder to search (by default, current directory if not provided)
SEARCH_DIR=${1:-.}

# Find all files, extract extensions, count occurrences, and sort
find "$SEARCH_DIR" -type f | \
    awk -F. '{if (NF>1) print $NF}' | \
    tr '[:upper:]' '[:lower:]' | \
    sort | \
    uniq -c | \
    sort -nr
