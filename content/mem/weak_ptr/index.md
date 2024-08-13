---
title: "weak_ptr"
weight: 3
pagenav:
  - section: "Methods"
    items:
      - section: "construct"
        items:
          - name: "weak_ptr"
      - section: "assign / copy"
        items:
          - name: "operator="
            url: "operator_assign"
      - section: "observe"
        items:
          - name: "expired"
          - name: "lock"
          - name: "owner_before"
          - name: "use_count"
      - section: "modify"
        items:
          - name: "reset"
          - name: "swap"
  - section: "Functions"
    items:
      - section: "modify"
        items:
          - name: "swap"
            url: "swap_fn"
---

# std::weak_ptr

The `weak_ptr` class template stores a weak reference to an object that is
already managed by a `shared_ptr`.

## Implementation

`std::unique_ptr` is ...

```cpp
template<typename T>
class weak_ptr {
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
