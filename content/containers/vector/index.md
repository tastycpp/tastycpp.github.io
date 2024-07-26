---
title: "<vector>"
#description: "This is a story..."
#cover: cover.png
#image: cover.png
#date: 2024-07-01
---

A `vector` is a sequence container that supports (amortized) constant time
insert and erase operations at the end; insert and erase in the middle take
linear time. Storage management is handled automatically, though hints can be
given to improve efficiency.

_In C++ Standard Library, std::vector is nothing more than a contiguous region
of dynamic memory. The main task of std::vector is to grow the memory region
when there is no space left for new elements._

## Methods

### capacity

- `empty() const -> bool`
- `size() const -> size_t` _Returns_: distance(a.begin(), a.end()), i.e. the
  number of elements in the container. _Complexity_: Constant.
- `max_size() const -> size_t`
- `capacity() const -> size_t`

### element access

- `at(size_t n) const -> const T&`
- `back() const -> const T&`
- `front() const -> const T&`
- `operator[](size_t n) const -> const T&`

### data access

- `data() const noexcept -> const T*`

### modifiers

- `append_range(R&& rg) -> void`
- `emplace_back(Args&... args) -> T&`
- `pop_back() -> void`
- `push_back(const T&) -> void`
- `push_back(T&&) -> void`

` `

- `emplace(const_iterator position, Args&&... args) -> iterator`
- `insert(iterator position, const T&) -> iterator`
- `insert(const_iterator position, T&& x) -> iterator`
- `insert(const_iterator position, size_type n, const T& x) -> iterator`
- `template<class InputIterator> insert(const_iterator position, InputIterator first, InputIterator last) -> iterator`
- `constexpr erase(const_iterator position) -> iterator`
- `swap(vector&) -> void`
- `clear() noexcept -> void`

## Implementation

`std::vector` is a contiguous region of memory.

```cpp
template<typename T>
struct vector {
private:
  T* myFirst;
  T* myLast;
  T* myEnd;
}
```

- `myFirst` - pointer to the first element.

  This pointer points to the beginning of the allocated storage. It points to
  the first element of the vector if the vector is not empty.

- `myLast` - pointer to the last element.

  This pointer points to one past the last element in the vector. It indicates
  where the next element will be inserted.

- `myEnd` - pointer to the end of the allocated storage.

  This pointer points to one past the end of the allocated capacity. It
  indicates the end of the allocated storage space, not necessarily the end of
  the current elements.

### Layout

```
myFirst     myLast      myEnd
  |           |           |
  v           v           v
+---+---+---+---+---+---+
| 1 | 2 | 3 |   |   |   |
+---+---+---+---+---+---+

```

### Size

- 24 bytes (64-bit)
- 12 bytes (32-bit)

## Example

_show/hide_

## Related Containers

- `plf::colony`
- `std::hive` (since C++20)
