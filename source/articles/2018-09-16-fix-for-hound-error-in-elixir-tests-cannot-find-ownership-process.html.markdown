---
custom_summary: "Making Hound tests work by correctly setting up Ecto Sandbox."
date: 2018-09-16 16:39 UTC
id: "hound-ownership-process"
tags: "elixir, hound, ecto"
title: "Fix for Hound error in Elixir tests - 'cannot find ownership process'"
---

## Problem
Following error appeared when one of my test cases was trying to access a page that required a db connection:

```elixir
18:26:51.194 [error] #PID<0.689.0> running WebApp.Endpoint (connection #PID<0.679.0>, stream id 5) terminated
Server: localhost:4001 (http)
Request: POST /page
** (exit) an exception was raised:
    ** (DBConnection.OwnershipError) cannot find ownership process for #PID<0.689.0>.

    When using ownership, you must manage connections in one
    of the four ways:

    (...)
```

## Solution

Needed to add a setup block to my test.

```elixir
defmodule MyApp.RegistrationTest do
  use ExUnit.Case
  use Hound.Helpers

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
    Ecto.Adapters.SQL.Sandbox.mode(Repo, {:shared, self()})
  end

  (...) # Tests go here

end
```
