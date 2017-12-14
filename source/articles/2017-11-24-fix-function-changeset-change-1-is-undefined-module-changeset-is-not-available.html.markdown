---
title: Fix "function Changeset.change/1 is undefined (module Changeset is not available)"
date: 2017-11-24 19:35 UTC
tags: elixir, ecto, error
custom_summary: 'Correctly aliasing/importing Ecto.Changeset.'
---

## Error example

```elixir
function Changeset.change/1 is undefined (module Changeset is not available)
```

This error means that you are not correctly importing/aliasing `Ecto.Changeset` in your module.

## Fix - Scenario 1
If, in your module, you have:

```elixir
import Ecto.Changeset
```

then in your function the code you can just use:

```
change(...)
```

instead of `Ecto.Changest.change(...)` or `Chageset.change`

## Fix - Scenario 2
If, in your module, you use:

```elixir
alias Ecto.Changeset
```

then use

```elixir
Changeset.change(...)
```

when you want to access the `change` function.
