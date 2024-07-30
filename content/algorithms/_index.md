---
title: "Algorithms Library"
---

This Clause describes components that C++ programs may use to perform
algorithmic operations on containers (Clause 24) and other sequences.

## Parallel Algorithms

`<algorithm>`

Subclause 27.3 describes components that C++ programs may use to perform
operations on containers and other sequences in parallel.

### Non-Modifying Sequence Operations

- `all_of`
- `any_of`
- `none_of`
- `contains`
- `for_each`
- `find`
- `find_last`
- `find_last_if`
- `find_end`
- `...`

### Modifying Sequence Operations

#### Copy

- `copy`
- `copy_n`
- `copy_if`
- `copy_backward`

#### Move

- `move`
- `...`

### Sorting and Related Operations

#### Sort

- `sort`
- `stable_sort`
- `partial_sort`
- `partial_sort_copy`
- `is_sorted`

#### Nth Element

- `nth_element`

#### Binary Search

- `lower_bound`
- `upper_bound`
- `equal_range`
- `binary_search`

#### Partitions

- `is_partitioned`
- `partition`
- `...`

#### ...

## General Numeric Operations

`<numeric>`

#### Accumulate

- `accumulate`

#### Reduce

- `reduce`

#### Inner Product

- `inner_product`

#### ...

## Special Memory Operations

`<memory>`

- `uninitialized_default_construct`
- `uninitialized_value_construct`
- `uninitialized_copy`
- `uninitialized_move`
- `uninitialized_fill`
- `construct_att`
- `destroy`

## C-Style Functions

`<cstdlib>`

- `bsearch`
- `qsort`
