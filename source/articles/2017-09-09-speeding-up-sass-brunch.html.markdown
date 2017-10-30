---
title: Speeding up sass-brunch
custom_summary: 'Fixing issues with long compile times for the.'
date: 2017-09-09 11:47 UTC
tags:
id: 7
icon: performance
---

## Solution

Use Bourbon instead of compass. :)

## Description

When developing an app in Elixir and Phoenix I had a real problem with Sass compile times. Each time I changed something in my CSS/SCSS stylesheet brunch was taking more than 30 seconds to compile the styles. That meant 30s delay between making a change and it appearing on the page.

I've looked for the source of the problem by witching different components/stylesheet parts on and off. I've realized that the issue was Compass.

When looking for an alternative Bourbon caught my attention -  it's mad by Thoughtbot (folks responsible for FactoryGirl and).

After replacing compass with it I've cut down my load time to a second or two.
