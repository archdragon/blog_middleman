---
title: JavaScript console.group - 4 useful examples
date: 2017-11-19 12:41 UTC
tags:
custom_summary: 'Keep your console logs clean and readable with console.group.'
tags: javascript, js, console, console.group, debugging
---

## Example code and screenshots

Below you will find some simple example of `console.group` - JS method that will allow you to display JS console messages in a clean and readable manner.

### 1. Basic grouping

```javascript
console.group();
  console.log('Test message');
  console.log('Another message');
  console.log('And another one');
console.groupEnd();
```

<div class="post-image">
  <img alt="Screenshot of grouped logs displayed in the console" src="/images/articles/javascript_group_example1.png" title="Example of simple console.group" />
</div>


### 2. Nested groups

```javascript
console.group();
  console.log('Test message');
  console.group();
    console.log('Another message');
    console.log('Something else');
  console.groupEnd();
console.groupEnd();
```

<div class="post-image">
  <img alt="Screenshot of grouped, nested logs displayed in the console" src="/images/articles/javascript_group_example2.png" title="Example of a nested console group" />
</div>

### 3. Named groups

```javascript
console.group('My program');
  console.log('Starting...');
  console.group('Important bit');
    console.log('Important bit reached');
    console.log('Ooops! Something went wrong!');
  console.groupEnd();
console.groupEnd();
```

<div class="post-image">
  <img alt="Screenshot of grouped, nested, named logs displayed in the console" src="/images/articles/javascript_group_example3.png" title="Example of a nested, named console group" />
</div>

### 4. Collapsed by default

```javascript
console.groupCollapsed('My program');
  console.log('Starting...');
  console.log('Something happened');
  console.log('Something else happened');
  console.log('Another message');
console.groupEnd();
```

<div class="post-image">
  <img alt="Screenshot of a collapsed group" src="/images/articles/javascript_group_example4.png" title="Example of a collapsed group" />
</div>

<!-- ## If you want to learn more... -->
