#!/bin/bash

# This script optimizes videos for the website by compressing them and removing audio
# It requires ffmpeg to be installed

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null
then
    echo "ffmpeg could not be found. Please install ffmpeg to compress videos."
    exit 1
fi

echo "Optimizing videos..."

# Optimize work video - compress and remove audio
echo "Optimizing work video..."
ffmpeg -i vids/work-hd_1920_1080_30fps.webm -b:v 300k -maxrate 300k -bufsize 600k -vf 'scale=1280:720' -an vids/work_720p.webm -y
ffmpeg -i vids/work-hd_1920_1080_30fps.mp4 -b:v 300k -maxrate 300k -bufsize 600k -vf 'scale=1280:720' -an vids/work_720p.mp4 -y

# Optimize fly video - compress and remove audio
echo "Optimizing fly video..."
ffmpeg -i vids/fly-hd_1920_1080_30fps.webm -b:v 300k -maxrate 300k -bufsize 600k -vf 'scale=1280:720' -an vids/fly_720p.webm -y
ffmpeg -i vids/fly-hd_1920_1080_30fps.mp4 -b:v 300k -maxrate 300k -bufsize 600k -vf 'scale=1280:720' -an vids/fly_720p.mp4 -y

# Optimize code video - compress and remove audio
echo "Optimizing code video..."
ffmpeg -i vids/code-hd_1920_1080_25fps.webm -b:v 300k -maxrate 300k -bufsize 600k -vf 'scale=1280:720' -an vids/code_720p.webm -y
ffmpeg -i vids/code-hd_1920_1080_25fps.mp4 -b:v 300k -maxrate 300k -bufsize 600k -vf 'scale=1280:720' -an vids/code_720p.mp4 -y

echo "Video optimization complete."