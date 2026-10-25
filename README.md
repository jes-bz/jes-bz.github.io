# Personal website

[Jesse Brizzi](https://jessebrizzi.com), hosted on GitHub Pages behind Cloudflare.

Plain HTML, CSS, and inline JavaScript; no build step, package manager, or runtime libraries.

## Local preview

From the repository root, run `./run_server` (requires Python 3), then open
[localhost:8000](http://localhost:8000). Home and projects use button navigation;
hold the blank space below projects for one second to reveal the hidden screen,
and hold the blank space there to return. Escape also returns.

## Assets

Run these optional maintenance scripts from the repository root:

- `bash scripts/optimize_videos.sh` — generates the 720p MP4/WebM clips using ffmpeg.
- `bash scripts/optimize_images.sh` — generates optimized images using ImageMagick.

Source media stays in the repository for re-encoding. Hover videos attach their
sources only on interaction and unload when no longer needed. Inter is loaded
from Google Fonts; the shutdown font is embedded in the stylesheet with attribution.

## Publishing

Push to `master`. GitHub Pages deploys the site, then the site-policy workflow
triggers the private site-ops policy sync. Cloudflare supplies analytics; the
site does not load Google Analytics.
