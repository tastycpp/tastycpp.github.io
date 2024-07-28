---
title: "Memory Management Library"
---

This Clause describes components for memory management.

## Memory

## Smart Pointers

`<memory>`

`template<class T>`\
`class ` [`unique_ptr`]()`<T>`

- `template<class T, class D>`\
  `struct hash<unique_ptr<T, D>>`
- `template<class T>`\
  `struct hash<shared_ptr<T>>`

` `

- [`unique_ptr`]()
- [`shared_ptr`]()
- [`weak_ptr`]()

### Smart Pointer Adopters

- `inout_ptr`
- `inout_ptr_t`
- `out_ptr`
- `out_ptr_t`

### C-Style Memory Functions

`<cstdlib>`

- `aligned_alloc`
- `calloc`
- `malloc`
- `realloc`
- `free`
