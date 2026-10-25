#!/bin/bash

# This script optimizes videos for the website by compressing them and removing audio
# It requires ffmpeg to be installed

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null
then
    echo "ffmpeg could not be found. Please install ffmpeg to compress videos."
    exit 1
fi

# Run from the repository root. Retain the source clips for re-encoding.
for clip in work fly code; do
    fps=30
    if [ "$clip" = code ]; then fps=25; fi
    echo "Optimizing $clip video..."
    for format in webm mp4; do
        ffmpeg -i "vids/$clip-hd_1920_1080_${fps}fps.$format" \
            -b:v 300k -maxrate 300k -bufsize 600k -vf 'scale=1280:720' -an \
            "vids/${clip}_720p.$format" -y
    done
done

echo "Video optimization complete."
