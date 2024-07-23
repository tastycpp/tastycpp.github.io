---
title: "std::vector"
#description: "This is a story..."
#cover: cover.png
#image: cover.png
#date: 2024-07-01
---

In C++ Standard Library, std::vector is nothing more than a contiguous region of
dynamic memory. The main task of std::vector is to grow the memory region when
there is no space left for new elements.

## Methods

_mention complexity_

### capacity

- `empty()`
- `size()`
- `max_size()`
- `capacity()`

## Structure

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

## Example

_show/hide_

## Related Containers

- `plf::colony`
- `std::hive` (since C++20)
