---
title: GRiSP Basics - Blinking red LED
date: 2019-06-09 14:40 UTC
tags:
id: "grisp-blinking-red-light"
custom_summary: "Some tips for working with GRiSP and embedded Erlang."
image: "/images/led_light.png"
---

## GRiSP

This is a part of post series dedicated to GRiSP setup and troubleshooting. [http://localhost:4567/grisp-basics-tips-and-lessons-learned.html](Check the introduction and list of GRiSP-related blog posts).

## My LED blinks red. What does it mean?

In my experience LED blinking red means one of two things:

### 1. GRiSP is not able to read your SD card.

In my case this was because of the formatted card.

On a Mac you can fix this by opening the `Disk Utility` app, selecting your GRISP SD card and clicking `Erase`. In the dialog window select `FAT` as the file format.

Formatting will erase all files from the SD card - you'll have to redeploy your app.

### 2. Your Erlang app crashed.
