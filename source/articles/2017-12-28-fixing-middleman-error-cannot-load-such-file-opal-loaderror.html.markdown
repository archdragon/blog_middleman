---
title: "Fixing middleman error: 'cannot load such file -- opal (LoadError)'"
id: "fix-middleman-cannot-load-such-file"
date: 2017-12-28 17:39 UTC
tags: "middleman, ruby, opal"
custom_summary: "Cleaning up the source directory to fix issues with Opal."
---

If you are getting any of the following errors:

```ruby
cannot load such file -- opal (LoadError)
```

```ruby
bundler: failed to load command: middleman (/Users/arch/.rbenv/versions/2.4.3/bin/middleman)
```

```ruby
NameError: uninitialized constant Opal::Processor
```

Check the `sources` directory in your project folder and make sure it does not contain any `.rb` (ie. `config.rb`) files.

In my case the error was caused by me mistakenly moving my `lib/` folder (I keep various middleman helpers there) to the sources directory.
