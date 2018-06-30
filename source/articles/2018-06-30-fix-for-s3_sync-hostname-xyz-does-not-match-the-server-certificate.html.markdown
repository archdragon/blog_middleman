---
title: 'Fix for s3_sync hostname "some-hostname" does not match the server certificate'
date: 2018-06-30 12:02 UTC
tags: middleman, s3_sync, aws, amazon, openssl, error
id: "fix-s3-sync-does-not-match-server-certificate"
custom_summary: "Fix for the problem with OpenSSL and Middleman s3_sync."
---

## Error

When executiting `middleman s3_sync` the following error appears:

```bash
Excon::Error::Socket: hostname "__YOUR_NAME__.s3-us-west-2.amazonaws.com" does not match the server certificate (OpenSSL::SSL::SSLError)
```

## Solution

Use correct zone in your s3_sync config.

```ruby
s3_sync.region = 'us-west-2' # The AWS region for your bucket.
```

## Explanation

In my case it was a question of the invilid AWS zone specified in the s3_sync config.

When running the `middleman s3_sync` command. I was seeing the following warnings and they gave me a clue about where the problem is:

```ruby
[fog][WARNING] fog: followed redirect to s3-us-west-1.amazonaws.com, connecting to the matching region will be more performant
```

In my `config.rb` I had:

```ruby
s3_sync.region = 'us-west-1' # The AWS region for your bucket.
```

Since `us-west-1` was the zone that my bucket was initially created in. Later I moved it to West 2 and forgot to update the config (but it never resulted in an error before).

I went to my middleman config.rb:

and updated

```ruby
s3_sync.region = 'us-west-1'  # The AWS region for your bucket.
```

to

```ruby
s3_sync.region = 'us-west-2'  # The AWS region for your bucket.
```
