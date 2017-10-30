---
title: Deploying a https enabled static site using AWS
date: 2017-05-30 08:35 UTC
tags: aws, middleman, static site
published: false
---

## Introduction

The blog you are reading right now is a static website - pure HTML + CSS + JS. Generated using Middleman - a Ruby static site generator.

While looking for a place to host it I considered a bunch of options - from Github Pages (very easy to deploy, but no HTTPS for custom domains!) to setting up a VPS. I decided to go with AWS since I felt that it offered the best compromise between ease of deployment (I didn't have to set up my own server and was able to do everything via the AWS panel) and flexibility (especially when it comes to setting up my subdomain).

## Basic Setup and What I wanted to achieve
I wanted to use my subomain only without changing my existing DNS for my main domain.
I wanted ease of deploy.
I wanted HTTPS.

(general diagram goes here)

Hosting static file was easy - I just needed the s3 bucket and upload the files there.
Domain setup was the more tricky part.

I've ended up using:
- s3 for static files
- Route 53 for domain redirection
- CloudFront for using https with my s3 site
- Certificate

## Setup step-by step

1. Setting up the S3 bucket

(image showing my s3 setup)

2. Setting up the subdomain

(image of the amazon setup)
(image on the other provider setup)

3. Obtaining the ceritificate

4. Attaching certificate to the CloudFront

## The end
That's it! Blog is now working.

If you think that something could have been handled better let me know in the comments.
