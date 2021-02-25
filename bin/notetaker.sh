#!/bin/sh
# Maintain monthly notes
# based on https://github.com/CalinLeafshade/dots/blob/master/bin/bin/notetaker

note_dir="$HOME/notes/$(date +%m-%Y)/"
mkdir -p $note_dir

note_filename=$note_dir"$(date +%Y-%m-%d).md"

if [ ! -f $note_filename ]; then
  echo "# Notes for $(date +%Y-%m-%d)" > $note_filename
fi

# TODO: update template with tags?
# Tags summarize thoughts and can be used when generating pdfs
nvim -c "norm Go" \
  -c "norm Go## $(date +%H:%M)" \
  -c "norm G2o" \
  -c "norm zz" \
  -c "startinsert" $note_filename
