#!/bin/bash

# This script optimizes images to reduce their size
# It requires ImageMagick to be installed

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null
then
    echo "ImageMagick could not be found. Please install ImageMagick to optimize images."
    exit 1
fi

# Create a directory for optimized images
mkdir -p images/optimized

# Optimize PNG images
magick mogrify -path images/optimized -quality 85 -strip images/*.png

# Optimize SVG images
magick mogrify -path images/optimized -quality 85 -strip images/*.svg

echo "Image optimization complete."