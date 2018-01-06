---
title: "Fix 'command not found: erb2haml (or erb2slim)'"
date: 2018-01-06 09:19 UTC
id: "command-not-found-erb2haml"
tags: "ruby, devise, gem, haml, slim, erb2haml, erb2slim, rbenv"
custom_summary: "Fixing issues with erb2haml command."
---

## Solution

Run:

```ruby
rbenv rehash
```

## Description

I've got the following error when trying to convert my Devise templates into .slim files:

```ruby
command not found: erb2slim
```

I was using <a href="https://github.com/rbenv/rbenv" target="_blank">rbenv</a> and forgot to rehash after installing the gem.

The solution is to run:

```ruby
rbenv rehash
```

after that the command works without issues.

If you want to learn more about what rbenv rehash is and how it work check <a href="https://stackoverflow.com/questions/9394338/how-do-rvm-and-rbenv-actually-work" target="_blank">this awesome explanation</a> written by the rbenv creator.
