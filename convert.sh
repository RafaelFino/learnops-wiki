#!/bin/bash

function readDir() {
    for entry in "$1"/*; do
        if [[ -d $entry ]]; then
            echo "$entry is a directory, read recursive..."
            readDir $entry
        fi

        if [[ -f $entry ]]; then
            convertMDFile $entry
        fi
    done
}

function convertMDFile() {
    if [[ "${1##*.}" == "md" ]]; then
        echo "$1 is a file, trying to convert..."
        pandoc -f markdown -t mediawiki "$1" -o "${1%.*}.wiki"
    fi
}

readDir $1
