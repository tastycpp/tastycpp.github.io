---
title: "unique_ptr"
weight: 1
pagenav:
  - section: "std::unique_ptr"
    items:
      - section: "construct"
        items:
          - name: "unique_ptr"
      - section: "assign / copy"
        items:
          - name: "operator="
            url: "operator_assign"
      - section: "observe"
        items:
          - name: "get"
          - name: "get_deleter"
          - name: "operator*"
            url: "operator_star"
          - name: "operator->"
            url: "operator_arrow_right"
          - name: "operator bool"
            url: "operator_bool"
      - section: "modify"
        items:
          - name: "release"
          - name: "reset"
          - name: "swap"
  - section: "Functions"
    items:
      - section: "create"
        items:
          - name: "make_unique"
      - section: "hash"
        items:
          - name: "hash"
---

# std::unique_ptr

A _unique pointer_ is an object that owns another object through a pointer. The
object is destroyed when the unique pointer is destroyed (e.g., when leaving a
block scope).

## Examples

_show/hide_

## Implementation

`std::unique_ptr` is ...

```cpp
template<typename T>
class uniqur_ptr {
private:
  T* xxx;
}
```

### Size

- 16 bytes (64-bit)
- 8 bytes (32-bit)

### Layout

## See Also

## Reference

`template<class T, class D = std::default_delete<T>>`\
 `class `~~`unique_ptr`~~`;`

`template<class T, class D>`\
 `class `~~`unique_ptr`~~`<T[], D>;`

### construct

- #### ` ` {#unique_ptr}

  ~~`unique_ptr`~~` () noexcept`

  ~~`unique_ptr`~~` (pointer p) noexcept`

  ~~`unique_ptr`~~` (const unique_ptr&) = delete`\
  Disable construction from lvalue.

  ~~`unique_ptr`~~` (unique_ptr&& u) noexcept`

  ~~`unique_ptr`~~` (nullptr_t) noexcept`

  `template<class U, class E>`\
  ~~`unique_ptr`~~` (unique_ptr<U, E>&& u) noexcept`

### assign / copy

- #### ` ` {#operator_assign}

  ~~`operator=`~~` (unique_ptr&& u) noexcept -> unique_ptr&`

  ~~`operator=`~~` (const unique_ptr&) -> unique_ptr& = delete`\
  Disable copy from lvalue.

### observe

- #### ` ` {#get}

  ~~`get`~~` () const noexcept -> pointer`

- #### ` ` {#get_deleter}

  ~~`get_deleter`~~` () const noexcept -> const deleter_type&`

- #### ` ` {#operator_star}

  ~~`operator*`~~` () const -> add_lvalue_reference_t<T>`

- #### ` ` {#operator_arrow_right}

  ~~`operator->`~~` () const noexcept -> pointer`

- #### ` ` {#operator_bool}

  ~~`operator bool`~~` () const noexcept`

### modify

- #### ` ` {#release}

  ~~`release`~~` () noexcept -> pointer`

- #### ` ` {#reset}

  ~~`reset`~~` (pointer p = pointer()) noexcept -> void`

- #### ` ` {#swap}

  ~~`swap`~~` (unique_ptr& u) noexcept -> void`
