---
title: "Memory Management Library"
---

This Clause describes components for memory management.

## Smart Pointers

`#include `[`<memory>`]()

#### Classes

- [`std::unique_ptr`]()

  ***

  `template<class T, class D = std::default_delete<T>>`\
  `class `**`unique_ptr`**`;`

  ***

  `template<class T, class D>`\
  `class `**`unique_ptr`**`<T[], D>;`

  ***

  A _unique pointer_ is an object that owns another object through a pointer.
  The object is destroyed when the unique pointer is destroyed (e.g., when
  leaving a block scope).

- [`std::shared_ptr`]()

  ***

  `template<class T>`\
  `class shared_ptr;`

  ***

  A _shared pointer_ is an object that owns another object through a pointer,
  usually obtained via `new`. `shared_ptr` implements semantics of shared
  ownership; the last remaining owner of the pointer is responsible for
  destroying the object, or otherwise releasing the resources associated with
  the stored pointer.

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

### Adaptors

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

  _Returns_: `inout_ptr_t<Smart, P, Args&&...>(s, std::forward<Args>(args)...)`.

## C-Style Memory Functions

`#include `[`<cstdlib>`]()

#### Functions

_Note_: These functions do not attempt to allocate storage by calling
`::operator new()` (as it might use these functions itself).

- [`std::aligned_alloc`]()

  ***

  `void* aligned_alloc(size_t alignment, size_t size);`

  ***

  The `aligned_alloc` function allocates `size` bytes and returns a pointer to
  the allocated memory. The memory is not initialized. The `size` should be a
  multiple of `alignment`. The memory address will be a multiple of `alignment`,
  which must be a power of two.

- [`std::calloc`]()

  ***

  `void* calloc(size_t n, size_t size);`

  ***

  The `calloc()` function allocates memory for an array of `n` elements of
  `size` bytes each and returns a pointer to the allocated memory. The memory is
  set to zero.

- [`std::malloc`]()

  ***

  `void* malloc(size_t size);`

  ***

  The `malloc()` function allocates `size` bytes and returns a pointer to the
  allocated memory. The memory is not initialized.

- [`std::realloc`]()

  ***

  `void* realloc(void* ptr, size_t size);`

  ***

  The `realloc()` function changes the size of the memory block pointed to by
  `ptr` to `size` bytes. The added memory is not initialized.

- [`std::free`]()

  ***

  `void free(void* ptr);`

  ***

  The `free()` function frees the memory space pointed to by `ptr`, which must
  have been returned by a previous call to `malloc()`, `calloc()`, `realloc()`,
  or `aligned_alloc()`.
