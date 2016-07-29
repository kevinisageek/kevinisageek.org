Title: Timelapse Test
Date: 2013-10-24 10:55
Author: Kevin
Category: Uncategorized
Tags: GoPro, timelapse, video
Slug: timelapse-test

I decided to test out the timelapse feature of my new to me GoPro
camera. Set to take a picture every 2 seconds. Mounted using a cheapo
windscreen mount I got from eBay.

To render the video I used this incantation:

    ffmpeg -r 1/0.5 -pattern_type glob -i "*.JPG" -c:v libx264 timelapse.mp4

The result is below.

<iframe src="//www.youtube-nocookie.com/embed/Hl1V4TP1X5U?rel=0" width="640" height="480" allowfullscreen frameborder="0"></iframe>

Not too shabby.
