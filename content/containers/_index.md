---
title: "Containers Library"
---

The containers library provides a C++ program with access to a subset of the
most widely used algorithms and data structures.

## Sequence Containers

`#include `[**`<array>`**]()

- [**`std::array`**]()

  ***

  `template<class T, size_t N>`\
  `struct `**`array`**`;`

  ***

`#include `[**`<deque>`**]()

- [**`std::deque`**]()

  ***

  `template<class T, class Allocator = allocator<T>>`\
  `class `**`deque`**`;`

  ***

`#include `[**`<forward_list>`**]()

- [**`std::forward_list`**]()

  ***

  `template<class T, class Allocator = allocator<T>>`\
  `class `**`forward_list`**`;`

  ***

`#include `[**`<list>`**]()

- [**`std::list`**]()

  ***

  `template<class T, class Allocator = allocator<T>>`\
  `class `**`list`**`;`

  ***

`#include `[**`<vector>`**]()

- [**`std::vector`**]()

  ***

  `template<class T, class Allocator = allocator<T>>`\
  `class `**`vector`**`;`

  ***

## Associative Containers (ordered)

- `<map>`
- `<set>`

## Associative Containers (unordered)

- `<unordered_map>`
- `<unordered_set>`

## Container Adaptors

- `<flat_map>`
- `<flat_set>`
- `<queue>`
- `<stack>`

## Views

### Contiguous Access

- `<span>`

### Multidimensional Access

- `<mdspan>`
