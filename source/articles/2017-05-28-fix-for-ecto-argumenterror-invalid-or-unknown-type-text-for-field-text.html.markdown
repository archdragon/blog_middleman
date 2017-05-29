---
title: Fix for Ecto - ArgumentError - invalid or unknown type :text for field :text
date: 2017-05-28 12:37 UTC
custom_summary: "Fixing Ecto error: (ArgumentError) invalid or unknown type :text for field :text"
tags:
id: 2
---

## Error:

```
(ArgumentError) invalid or unknown type :text for field :text
```

## Solution

Use `:string` instead of  `:text`

##  Comment

`:text` can be used in migrations, but not when describing the schema in your app. In your database `:string` will be mapped to `text` column type.
