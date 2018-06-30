---
title: "UnityEnvironmentException: Couldn't launch the 3DBall environment. Provided filename does not match any environments."
date: 2018-02-22 14:42 UTC
tags: unity, ml-agents, 3dball, machine learning
id: "unity-3dball-enviroment-exception"
custom_summary: "Simple fix the problem with Unity 3DBall environment."
published: false
---

## Full error text

```
UnityEnvironmentException: Couldn't launch the 3DBall environment. Provided filename does not match any environments.
```

## Fix

In my case it was a question of the invilid AWS zone specified in the s3_sync config.

When running the `middleman s3_sync` command. I was seeing the following warnings and they gave me a clue about where the problem is:

```
[fog][WARNING] fog: followed redirect to s3-us-west-1.amazonaws.com, connecting to the matching region will be more performant
```

Go to your middleman config.rb
