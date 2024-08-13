---
title: "Functions"
weight: 4
pagenav:
  - section: "Functions"
    items:
      - section: "create"
        items:
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
      - section: "align"
        items:
          - name: "align"
          - name: "ssume_aligned"
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

### delete

- [`std::free`]()

  ***

  `void free(void* ptr);`

  ***

  The `free()` function frees the memory space pointed to by `ptr`, which must
  have been returned by a previous call to `malloc()`, `calloc()`, `realloc()`,
  or `aligned_alloc()`.

### convert

[**`construct_at`**]()

[**`destroy_at`**]()

- `template<class T>`\
  `constexpr to_address(T* p) noexcept -> T*`
- `template<class Ptr>`\
  `constexpr to_address(const Ptr& p) noexcept -> auto`

### align

- `align(size_t alignment, size_t size, void*& ptr, size_t& space) -> void*`
- `template<size_t N, class T>`\
  `[[nodiscard]] constexpr assume_aligned(T* ptr) -> T*`

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
