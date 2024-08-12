---
title: "vector"
---

# std::vector

A `vector` is a sequence container that supports (amortized) constant time
insert and erase operations at the end; insert and erase in the middle take
linear time. Storage management is handled automatically, though hints can be
given to improve efficiency.

_In C++ Standard Library, std::vector is nothing more than a contiguous region
of dynamic memory. The main task of std::vector is to grow the memory region
when there is no space left for new elements._

## Methods

### construct / copy

### iterate

### capacity {#none}

- [`capacity`](#capacity)
- [`empty`](#empty)
- [`max_size`](#max_size)
- `reserve`
- `resize`
- `shrink_to_fit`
- [`size`](#size)

### access

- [`at`](#at)
- [`back`](#back)
- [`front`](#front)
- [`operator[]`](#operator_at)

` `

- [`data`](#data)

### modify

- [`append_range`](#append_range)
- [`clear`](#clear)
- [`emplace`](#emplace)
- [`emplace_back`](#emplace_bacl)
- [`erase`](#erase)
- [`insert`](#insert)
- [`pop_back`](#pop_back)
- [`push_back`](#push_back)
- [`swap`](#swap)

## Functions

- [`erase`](#erase)
- [`erase_if`](#erase_if)

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

### Size

- 24 bytes (64-bit)
- 12 bytes (32-bit)

### Layout

```
myFirst     myLast      myEnd
  |           |           |
  v           v           v
+---+---+---+---+---+---+
| 1 | 2 | 3 |   |   |   |
+---+---+---+---+---+---+

```

## Similar Containers

- [`plf::colony`]()
- [`std::hive`]() (since C++20)

## Reference

### capacity {#none}

- #### ` ` {#empty}

  ~~`empty`~~` () const -> bool`

- #### ` ` {#size}

  ~~`size`~~` () const -> size_t`

  _Returns_: The number of elements in the vector, i.e.,
  `distance(v.begin(), v.end())`.\
  _Complexity_ : O(1)\
  _Examples_: ...

- #### ` ` {#max_size}

  ~~`max_size`~~` () const -> size_t`

- #### ` ` {#capacity}

  ~~`capacity`~~` () const -> size_t`

### element access

- #### ` ` {#at}

  ~~`at`~~` (size_t n) const -> const T&`

- #### ` ` {#back}

  ~~`back`~~` () const -> const T&`

- #### ` ` {#front}

  ~~`front`~~` () const -> const T&`

- #### ` ` {#operator_at}

  ~~`operator[]`~~` (size_t n) const -> const T&`

### data access

- #### ` ` {#data}

  ~~`data`~~` () const noexcept -> const T*`

### modifiers

- #### ` ` {#append_range}

  ~~`append_range`~~` (R&& rg) -> void`

- #### ` ` {#clear}

  ~~`clear`~~` () noexcept -> void`

- #### ` ` {#emplace}

  `template<class... Args>`\
  ~~`emplace`~~` (const_iterator position, Args&&... args) -> iterator`

- #### ` ` {#emplace_back}

  `template<class... Args>`\
  ~~`emplace_back`~~` (Args&&... args) -> reference`

- #### ` ` {#erase}

  ~~`erase`~~` (const_iterator position) -> iterator`

- #### ` ` {#insert}

  ~~`insert`~~` (iterator pos, const T&) -> iterator`

  ~~`insert`~~`(const_iterator pos, T&& x) -> iterator`

  ~~`insert`~~`(const_iterator pos, size_type n, const T& x) -> iterator`

  `template<class InputIterator>`\
  ~~`insert`~~`(const_iterator pos, InputIterator first, InputIterator last) -> iterator`

- #### ` ` {#pop_back}

  ~~`pop_back`~~` () -> void`

- #### ` ` {#push_back}

  ~~`push_back`~~` (const T& x) -> void`

  ~~`push_back`~~` (T&& x) -> void`

- #### ` ` {#swap}

  ~~`swap`~~` (vector& other) noexcept -> void`

### Functions

- #### ` ` {#erase}

  `template<class T, class Allocator, class U>`\
  ~~`erase`~~` (vector<T, Allocator>& c, const U& value) -> typename vector<T, Allocator>::size_type;`

  _Equivalent to_ :

  ```
  auto it = remove(c.begin(), c.end(), value);
  auto r = distance(it, c.end());
  c.erase(it, c.end());
  return r;
  ```

- #### ` ` {#erase_if}

  `template<class T, class Allocator, class Predicate>`\
  ~~`erase_if`~~` (vector<T, Allocator>& c, Predicate pred) -> typename vector<T, Allocator>::size_type;`

  _Equivalent to_:

  ```
  auto it = remove_if(c.begin(), c.end(), pred);
  auto r = distance(it, c.end());
  c.erase(it, c.end());
  return r;
  ```

## Examples

_show/hide_
