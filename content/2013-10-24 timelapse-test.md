Title: Timelapse Test
Date: 2013-10-24 10:55
Tags: GoPro, timelapse, video
Slug: timelapse-test

I decided to test out the timelapse feature of my new to me GoPro
camera. Set to take a picture every 2 seconds. Mounted using a cheapo
windscreen mount I got from eBay.

To render the video I used this incantation:

    ffmpeg -r 1/0.5 -pattern_type glob -i '*.JPG' -c:v libx264 timelapse.mp4

The result is below.

<video width="720" height="480" controls class="align-center" loading="lazy">
    <source src="{static}/media/video/2014-07-30 loch leven by bicycle.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

Not too shabby.
