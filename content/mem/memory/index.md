---
title: "<memory>"
---

The header `<memory>` defines several types and function templates that describe
properties of pointers and pointer-like types, manage memory for containers and
other template types, destroy objects, and construct objects in uninitialized
memory buffers (20.2.3–20.2.11 and 27.11). The header also defines the templates
`unique_ptr`, `shared_ptr`, `weak_ptr`, `out_ptr_t`, `inout_ptr_t`, and various
function templates that operate on objects of these types (20.3).

## Smart Pointers

## Memory

### pointer conversion

[**`construct_at`**]()

[**`destroy_at`**]()

- `template<class T>`\
  `constexpr to_address(T* p) noexcept -> T*`
- `template<class Ptr>`\
  `constexpr to_address(const Ptr& p) noexcept -> auto`

## pointer alignment

- `align(size_t alignment, size_t size, void*& ptr, size_t& space) -> void*`
- `template<size_t N, class T>`\
  `[[nodiscard]] constexpr assume_aligned(T* ptr) -> T*`
