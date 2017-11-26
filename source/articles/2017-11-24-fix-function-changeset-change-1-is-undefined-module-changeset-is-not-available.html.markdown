---
title: Fix "function Changeset.change/1 is undefined (module Changeset is not available)"
date: 2017-11-24 19:35 UTC
tags:
published: false
---


Error:
function Changeset.change/1 is undefined (module Changeset is not available)

Changeset is in the - you are not correctly importing/aliasing it in your module

## Scenario 1
If you have
import Ecto.Changeset

then use just:

change(......)

## Scenario 2

alias Ecto.Changeset

Changeset.change()
