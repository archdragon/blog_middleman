---
title: SASS/SCSS - Selecting a random element from an array
custom_summary: "Simple function for generating random values."
id: "random-element-scss"
date: 2017-12-02 19:49 UTC
tags: css, scss, sass, random
---

## My function

I wrote a simple helper function for selecting a random element.

```scss
@function random_element($elements...) {
  @return nth($elements, random(length($elements)))
}
```

Of course the random element will get selected during the SCSS recompilation. In the dev environment this usually means that you will have to reload the page to get a different result. This is hovever still useful for prototyping.

## Example usage

```scss
// Define or import the helper here

background-color: random_element('red', 'green', 'blue', '#fff');
```

## Explanation

```scss
@function random_element($elements...) {
```

`$elements...` means that the function will accept any number of arguments and convert them into a list.


```scss
 @return nth($elements, random(length($elements)))
```

* `nth(list, index)` fetches an element that's under the `index` position.

  * Indexes in SASS start from `1`!
  * index larger then list's length will result in ArgumentError

* `random(n)` will return an integer between `1` and `n` (both inclusive, which means that both `1` and `n` can be returned by this method).

* `length($elements)` just returns the length of the $elements list.
