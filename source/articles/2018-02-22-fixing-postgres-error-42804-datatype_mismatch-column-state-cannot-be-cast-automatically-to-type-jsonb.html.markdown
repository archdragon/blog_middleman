---
title: "Fixing postgres 'ERROR 42804 (datatype_mismatch): column state cannot be cast automatically to type jsonb'"
id: 'postgres-error-42801-datatype-mismatch'
date: 2018-02-22 14:04 UTC
tags: "postgres, jsonb, json, datatype mismatch"
custom_summary: "Quick and dirty fix for a PostgreSQL field type issue."
---

## Solution

My solution was not very elegant - I just removed the original column and recreated it with the new type.

Example migration code (in Elixir):

```elixir
defmodule Game.EctoRepo.Migrations.ChangeStateFromTextToMap do
  use Ecto.Migration

  def change do
    alter table(:some_table_name) do
      remove :state
      add :state, :map
    end
  end
end
```

## Description

I've encountered this issue when working on my Elixir/Phoenix app. I wanted to convert a column containing text (serialized JSON data) into a proper jsonb, that Ecto can easily understand (and automatically handle - without me having to deserialize it).
