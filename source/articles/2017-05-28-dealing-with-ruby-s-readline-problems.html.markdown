---
title: "Dealing with Ruby's Readline problems"
date: 2017-05-28 20:37 UTC
custom_summary: Fixing an error with Readline, by using the pure ruby readline gem.
tags:
id: 4
---

## Error:

When trying to run the Rails app:

```
LoadError: dlopen(/Users/arch/.rbenv/versions/2.3.1/lib/ruby/2.3.0/x86_64-darwin15/readline.bundle, 9): Library not loaded: /usr/local/opt/readline/lib/libreadline.6.dylib
```

## Solution

Add the `rb-readline` gem to your Gemfile

More info about the gem here: https://github.com/ConnorAtherton/rb-readline

##  Comment

RB Readline is a pure ruby implementation of the Readline library (which was originally written in C).
