---
title: 'Error fix: "LoadError: cannot load such file -- bcrypt"'
date: 2017-05-28 19:50 UTC
tags:
custom_summary: One of my old apps was developed mostly on Windows, while my production server runs on Ubuntu. Because of that, after running "bundle install", only the Windows version of bcrypt was present in my "Gemfile.lock".
---

## Symptoms

Today, during assets precompilation on my production server I encountered a puzzling error:

```
LoadError: cannot load such file -- bcrypt
```

## The problem: Gems and different  Operating Systems

One of my old apps was developed mostly on Windows, while my production server runs on Ubuntu. Because of that, after running *bundle install*, only the Windows version of bcrypt was present in my *Gemfile.lock*.

```
bcrypt (3.1.7-x86-mingw32)
```

... and this is what caused the problem.

## The solution: ignore Gemfile.lock

The solution is not that elegant, but as far as I know it's the only way to fix this particular problem.

1. First I removed Gemfile.lock from version control by adding it to .gitignore

    ```
/.Gemfile
```

2. Before running *git commit* I used the git command:

    ```
git rm --cached Gemfile.lock
```

   which removes Gemfile.lock from version control (but not from the hard drive).

3. I use *Capistrano* (with the bundler Gem) to deploy my Rails applications.

   While running bundle install Capistrano uses the *--deployment flag*, which prevents the new Gemfile.lock from being created.

   To change this behavior I added the following line to my deploy.rb file:

    ```
# config/deploy.rb
set :bundle_flags, '--quiet'
```

   This overrides the default flags ("-- deployment --quiet") with just " --quiet", which outputs warning and errors only.

## It works!

This is it! After running bundle install I was able to compile my assets and launch my application without any problems.
