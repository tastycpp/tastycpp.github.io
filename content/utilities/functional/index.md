---
title: "<functional>"
---

A function object type is an object type (6.8.1) that can be the type of the
postfix-expression in a function call (7.6.1.3, 12.2.2.2).208 A function object
is an object of a function object type. In the places where one would expect to
pass a pointer to a function to an algorithmic template (Clause 27), the
interface is specified to accept a function object. This not only makes
algorithmic templates work with pointers to functions, but also enables them to
work with arbitrary function objects.
