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

### construct

### copy

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

- #### `empty`

  - `bool `**`empty`**` () const`

- #### `size`

  - `size_t `**`size`**` () const`

  _Returns_: The number of elements in the vector, i.e.,
  `distance(v.begin(), v.end())`. \
  _Complexity_: O(1)\
  _Examples_: ...

- #### `max_size`

  - `size_t `**`max_size`**` () const`

- #### `capacity`

  - `size_t `**`capacity`**` () const`

### element access

- #### `at`

  - `const T& `**`at`**` (size_t n) const`

- #### `back`

  - `const T& `**`back`**` () const`

- #### `front`

  - `const T& `**`front`**` () const`

- #### `operator[]` {#operator_at}

  - `const T& `**`operator[]`**` (size_t n) const`

### data access

- #### `data`

  - `const T* `**`data`**` () const noexcept`

### modifiers

- #### `append_range`

  - `void `**`append_range`**` (R&& rg)`

- #### `clear`

  - `void `**`clear`**` () noexcept`

- #### `emplace`

  - `template<class... Args>`\
    `constexpr iterator `**`emplace`**` (const_iterator position, Args&&... args);`

- #### `emplace_back`

  - `template<class... Args>`\
    `constexpr reference `**`emplace_back`**` (Args&&... args);`

- #### `erase`

  - `constexpr iterator `**`erase`**` (const_iterator position)`

- #### `insert`

  - `constexpr iterator `**`insert`**` (iterator pos, const T&)`

  - `constexpr iterator `**`insert`**` (const_iterator pos, T&& x)`
  - `constexpr iterator `**`insert`**` (const_iterator pos, size_type n, const T& x)`
  - `template<class InputIterator>`\
    `constexpr iterator `**`insert`**` (const_iterator pos, InputIterator first, InputIterator last)`

- #### `pop_back`

  - `constexpr void `**`pop_back`**` ()`

- #### `push_back`

  - `constexpr void `**`push_back`**` (const T& x);`

  - `constexpr void `**`push_back`**` (T&& x);`

- #### `swap`

  - `constexpr void `**`swap`**` (vector& other) noexcept`

### Functions

- #### `erase`

  - `template<class T, class Allocator, class U>`\
    `constexpr auto `**`erase`**` (vector<T, Allocator>& c, const U& value) -> typename vector<T, Allocator>::size_type;`

    _Effects_: Equivalent to:

    ```
    auto it = remove(c.begin(), c.end(), value);
    auto r = distance(it, c.end());
    c.erase(it, c.end());
    return r;
    ```

- #### `erase_if`

  - `template<class T, class Allocator, class Predicate>`\
    `constexpr auto `**`erase_if`**` (vector<T, Allocator>& c, Predicate pred) -> typename vector<T, Allocator>::size_type;`

    _Effects_: Equivalent to:

    ```
    auto it = remove_if(c.begin(), c.end(), pred);
    auto r = distance(it, c.end());
    c.erase(it, c.end());
    return r;
    ```

## Examples

_show/hide_
