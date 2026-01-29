#!/bin/bash

dirs="
01_notes
02_vocabulary
03_sentences
04_listening
05_speaking
06_writing
"

for d in $dirs; do
    mkdir -p "$d"
done
