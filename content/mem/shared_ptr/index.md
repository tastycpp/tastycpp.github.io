---
title: "shared_ptr"
weight: 2
pagenav:
  - section: "Methods"
    items:
      - section: "construct"
        items:
          - name: "shared_ptr"
      - section: "assign / copy"
        items:
          - name: "operator="
            url: "operator_assign"
      - section: "observe"
        items:
          - name: "get"
          - name: "operator*"
            url: "operator_star"
          - name: "operator->"
            url: "operator_arrow_right"
          - name: "operator[]"
            url: "operator_at"
          - name: "operator bool"
            url: "operator_bool"
          - name: "owner_before"
          - name: "use_count"
      - section: "modify"
        items:
          - name: "reset"
          - name: "swap"
  - section: "Functions"
    items:
      - section: "create"
        items:
          - name: "make_shared"
      - section: "compare"
        items:
          - name: "operator=="
            url: "operator_eq"
      - section: "cast"
        items:
          - name: "static_pointer_cast"
      - section: "modify"
        items:
          - name: "swap"
            url: "swap_fn"
      - section: "input / output"
        items:
          - name: "operator<<"
            url: "operator_out"
  - section: "Related"
    items:
      - section: "classes"
        items:
          - name: "enable_shared_from_this"
---

# std::shared_ptr

The `shared_ptr` class template stores a pointer, usually obtained via `new`.

## Implementation

`std::unique_ptr` is ...

```cpp
template<typename T>
class shared_ptr {
private:
  T* xxx;
}
```

### Size

- n bytes (64-bit)
- n/2 bytes (32-bit)

### Layout

## Similar Containers

## Reference

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

## Examples

_show/hide_
