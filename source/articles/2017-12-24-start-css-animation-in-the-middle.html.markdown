---
title: Start CSS animation in the middle
custom_summary: "How to start CSS at the middle (of any point really) of the animation cycle."
date: 2017-12-24 13:29 UTC
id: "css-animation-middle"
tags: "css, animation, animation-delay"
---

## Use animation-delay with a negative value
```css
animation-duration: 60s;
animation-delay: -30s;
```

This will **not** delay the animation, but instead it will force it to start in the middle of the cycle.
