---
title: "Reference"
weight: 4
pagenav:
  - section: "Functions"
    items:
      - section: "create"
        items:
          - name: "aligned_alloc"
          - name: "calloc"
          - name: "malloc"
          - name: "realloc"
      - section: "delete"
        items:
          - name: "free"
      - section: "convert"
        items:
          - name: "construct_at"
          - name: "destroy_at"
          - name: "to_address"
      - section: "align"
        items:
          - name: "align"
          - name: "assume_aligned"
---

# Memory Functions

`#include `[`<cstdlib>`]()

The header `<memory>` defines several types and function templates that describe
properties of pointers and pointer-like types, manage memory for containers and
other template types, destroy objects, and construct objects in uninitialized
memory buffers (20.2.3–20.2.11 and 27.11). The header also defines the templates
`unique_ptr`, `shared_ptr`, `weak_ptr`, `out_ptr_t`, `inout_ptr_t`, and various
function templates that operate on objects of these types (20.3).

### create

- #### ` ` {#aligned_alloc}

  ~~`aligned_alloc`~~` (size_t alignment, size_t size) -> void*`

  The `aligned_alloc()` function allocates `size` bytes and returns a pointer to
  the allocated memory. The memory is not initialized. The `size` should be a
  multiple of `alignment`. The memory address will be a multiple of `alignment`,
  which must be a power of two.

- #### ` ` {#calloc}

  ***

  ~~`calloc`~~` (size_t n, size_t size) -> void*`

  The `calloc()` function allocates memory for an array of `n` elements of
  `size` bytes each and returns a pointer to the allocated memory. The memory is
  set to zero.

- #### ` ` {#malloc}

  ***

  ~~`malloc`~~` (size_t size) -> void*`

  The `malloc()` function allocates `size` bytes and returns a pointer to the
  allocated memory. The memory is not initialized.

  - `nothrownew.cpp`

- #### ` ` {#realloc}

  ***

  ~~`realloc`~~` (void* ptr, size_t size) -> void*`

  The `realloc()` function changes the size of the memory block pointed to by
  `ptr` to `size` bytes. The added memory is not initialized.

### delete

- #### ` ` {#free}

  ~~`free`~~` (void* ptr) -> void`

  The `free()` function frees the memory space pointed to by `ptr`, which must
  have been returned by a previous call to `malloc()`, `calloc()`, `realloc()`,
  or `aligned_alloc()`.

### convert

- #### ` ` {#construct_at}

  ~~`construct_at`~~` (void* ptr) -> void`

- #### ` ` {#destroy_at}

  ***

  ~~`destroy_at`~~` (void* ptr) -> void`

- #### ` ` {#to_address}

  ***

  `template<class T>`\
  ~~`to_address`~~` (T* p) noexcept -> T*`

  `template<class Ptr>`\
  ~~`to_address`~~` (const Ptr& p) noexcept -> auto`

### align

- #### ` ` {#align}

  ~~`align`~~` (size_t alignment, size_t size, void*& ptr, size_t& space) -> void*`

- #### ` ` {#assume_aligned}

  ***

  `template<size_t N, class T>`\
  ~~`assume_aligned`~~` (T* ptr) -> T*`

  _Note_: These functions do not attempt to allocate storage by calling
  `::operator new()` (as it might use these functions itself).
