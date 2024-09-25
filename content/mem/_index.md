---
title: "Memory Management Library"
---

# Memory Management

Memory is a main resource in your computer. It's how you organize your memory
defines the performance of your program, not how fast your CPU is. Of course,
some CPU offer special instructions to speedup some operations, for example SIMD
extensions. However, if your memory is organized poorly, these instructions are
useless.

It's important to understand / reason ...

- CRT
- `malloc`
- `operator new`
- \[adv\] Smart pointers

` `

- Implementation details
- Links to sources: MSVC, GCC, Clang

## Smart Pointers

`#include `[`<memory>`]()

#### Classes

- [`std::unique_ptr`]()

- [`std::shared_ptr`]()

- [`std::weak_ptr`]()

  ***

  `template<class T>`\
  `class weak_ptr;`

  ***

  The `weak_ptr` class template stores a weak reference to an object that is
  already managed by a `shared_ptr`.

### Hash Support

- [`std::hash`]()

  ***

  `template<class T>`\
  `struct hash<shared_ptr<T>>`

  ***

  `template<class T, class D>`\
  `struct hash<unique_ptr<T, D>>`

  ***

  The class template `hash`, used by the unordered associative containers as the
  default hash function.

<!-- ### Adaptors

- [`std::out_ptr_t`]()

  ***

  `template<class Smart, class Pointer, class... Args>`\
   `class out_ptr_t;`

  ***

  `out_ptr_t` is a class template used to adapt types such as smart pointers
  (20.3) for functions that use output pointer parameters.

- [`std::out_ptr`]()

  ***

  `template<class Pointer = void, class Smart, class... Args>`\
  `auto out_ptr(Smart& s, Args&&... args);`

  ***

  _Returns_: `out_ptr_t<Smart, P, Args&&...>(s, std::forward<Args>(args)...)`.

- [`std::inout_ptr_t`]()

  ***

  `template<class Smart, class Pointer, class... Args>`\
   `class inout_ptr_t`

  ***

  `inout_ptr_t` is a class template used to adapt types such as smart pointers
  (20.3) for functions that use output pointer parameters whose dereferenced
  values may first be deleted before being set to another allocated value.

- [`std::inout_ptr`]()

  ***

  `template<class Pointer = void, class Smart, class... Args>`\
  `auto inout_ptr(Smart& s, Args&&... args);`

  ***

  _Returns_: `inout_ptr_t<Smart, P, Args&&...>(s, std::forward<Args>(args)...)`. -->
