---
title: "shared_ptr"
weight: 2
---

# std::shared_ptr

The `shared_ptr` class template stores a pointer, usually obtained via `new`.

## Related Classes

- [`enable_shared_from_this`]()

## Methods

### construct

- [`shared_ptr`](#shared_ptr)

### assign / copy

- [`operator=`](#operator_assign)

### observe

- [`get`](#get)
- [`operator*`](#operator_star)
- [`operator->`](#operator_arrow_right)
- [`operator[]`](#operator_at)
- [`operator bool`](#operator_bool)
- [`owner_before`](#owner_before)
- [`use_count`](#use_count)

### modify

- [`reset`](#reset)
- [`swap`](#swap)

## Functions

### create

- [`make_shared`](#make_shared)

### compare

- [`operator==`](#operator_eq)

### cast

- [`static_pointer_cast`](#static_pointer_cast)

### modify

- [`swap`](#swap_fn)

### input / output

- [`operator<<`](#operator_out)

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
