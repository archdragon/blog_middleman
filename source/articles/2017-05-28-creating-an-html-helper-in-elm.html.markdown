---
title: Creating an Html helper in Elm
date: 2017-05-28 20:37 UTC
tags: elm, html
id: 6
---

When learning Elm I stumbled upon a problem - I wanted to create  helper function that takes a record and returns a div Html node with based on the record's fields.

That task proved a little trickier than expected, since I was getting confused by the type I should return. When getting error Elm was often complaining about the `VirtualDom.Node` type, but when I was having trouble fully understanding where `VirtualDom.Node` comes from and what is it's relation to the `Html` type.

Turns out that `Html `is just an alias (see [documentation](http://package.elm-lang.org/packages/evancz/elm-html/4.0.1/Html#Html)\):

```
type alias Html =
    Node
```

and the type signature can look like this (similar to the one used in the main view function):

`bodyPartToDiv : BodyPart -> Html a`
