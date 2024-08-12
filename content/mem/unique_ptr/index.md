---
title: "unique_ptr"
weight: 1
---

# std::unique_ptr

A `unique_ptr` is ...

## Methods

### construct

- [`unique_ptr`](#unique_ptr)

### assign / copy

- [`operator=`](#operator_assign)

### observe

- [`get`](#get)
- [`get_deleter`](#get_deleter)
- [`operator*`](#operator_star)
- [`operator->`](#operator_arrow_right)
- [`operator bool`](#operator_bool)

### modify

- [`release`](#release)
- [`reset`](#reset)
- [`swap`](#swap)

## Functions

### create

- [`make_unique`](#make_unique)

### hash

- [`hash`](#hash)

### adopt

- [`out_ptr`](#out_ptr)
- [`out_ptr_t`](#out_ptr_t)
- [`inout_ptr`](#inout_ptr)
- [`inout_ptr_t`](#inout_ptr_t)

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
