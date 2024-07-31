---
title: "Algorithms Library"
---

This Clause describes components that C++ programs may use to perform
algorithmic operations on containers (Clause 24) and other sequences.

## Parallel Algorithms

Subclause 27.3 describes components that C++ programs may use to perform
operations on containers and other sequences in parallel.

`#include `[**`<algorithm>`**]()

### Non-Modifying Sequence Operations

- `any_of`
- `none_of`
- `contains`
- `for_each`
- `find`
- `find_last`
- `find_last_if`
- `find_end`
- [**`adjacent_find`**]()` (ForwardIterator first, ForwardIterator last) -> ForwardIterator`
- [**`all_of`**]()` (InputIterator first, InputIterator last, Predicate pred) -> bool`
- [**`count`**]()` (InputIterator first, InputIterator last, const T& value) -> typename iterator_traits<InputIterator>::difference_type`
- [**`equal`**]()` (InputIterator1 first1, InputIterator1 last1, InputIterator2 first2) -> bool`
- [**`find_first_of`**]()` (InputIterator first1, InputIterator last1, ForwardIterator first2, ForwardIterator last2) -> InputIterator`
- [**`is_permutation`**]()` (ForwardIterator1 first1, ForwardIterator1 last1, ForwardIterator2 first2) -> bool`
- [**`mismatch`**]()` (InputIterator1 first1, InputIterator1 last1, InputIterator2 first2) -> pair<InputIterator1, InputIterator2>`
- [**`search`**]()` (ForwardIterator1 first1, ForwardIterator1 last1, ForwardIterator2 first2, ForwardIterator2 last2) -> ForwardIterator1`

### Modifying Sequence Operations

#### Copy

- [**`copy`**]()` (InputIterator first, InputIterator last, OutputIterator result) -> OutputIterator`
- [**`copy_n`**]()` (InputIterator first, Size n, OutputIterator result) -> OutputIterator`
- [**`copy_if`**]()` (InputIterator first, InputIterator last, OutputIterator result, Predicate pred) -> OutputIterator`
- [**`copy_backward`**]()` (BidirectionalIterator1 first, BidirectionalIterator1 last, BidirectionalIterator2 result) -> BidirectionalIterator2`

#### Move

- [**`move`**]()` (InputIterator first, InputIterator last, OutputIterator result) -> OutputIterator`
- [**`move_backward`**]()` (BidirectionalIterator1 first, BidirectionalIterator1 last, BidirectionalIterator2 result) -> BidirectionalIterator2`

#### Swap

- [**`swap_ranges`**]()` (ForwardIterator1 first1, ForwardIterator1 last1, ForwardIterator2 first2) -> ForwardIterator2`
- [**`iter_swap`**]()` (ForwardIterator1 a, ForwardIterator2 b) -> void`

#### Transform

- [**`transform`**]()` (InputIterator first1, InputIterator last1, OutputIterator result, UnaryOperation op) -> OutputIterator`

#### Replace

- [**`replace`**]()` (ForwardIterator first, ForwardIterator last, const T& old_value, const T& new_value) -> void`
- [**`replace_if`**]()` (ForwardIterator first, ForwardIterator last, Predicate pred, const T& new_value) -> void`
- [**`replace_copy`**]()` (InputIterator first, InputIterator last, OutputIterator result, const T& old_value, const T& new_value) -> OutputIterator`
- [**`replace_copy_if`**]()` (InputIterator first, InputIterator last, OutputIterator result, Predicate pred, const T& new_value) -> OutputIterator`

#### Fill

- [**`fill`**]()` (ForwardIterator first, ForwardIterator last, const T& value) -> void`
- [**`fill_n`**]()` (OutputIterator first, Size n, const T& value) -> OutputIterator`

#### Generate

- [**`generate`**]()` (ForwardIterator first, ForwardIterator last, Generator gen) -> void`
- [**`generate_n`**]()` (OutputIterator first, Size n, Generator gen) -> OutputIterator`

#### Remove

- [**`remove`**]()` (ForwardIterator first, ForwardIterator last, const T& value) -> ForwardIterator`
- [**`remove_if`**]()` (ForwardIterator first, ForwardIterator last, Predicate pred) -> ForwardIterator`
- [**`remove_copy`**]()` (InputIterator first, InputIterator last, OutputIterator result, const T& value) -> OutputIterator`
- [**`remove_copy_if`**]()` (InputIterator first, InputIterator last, OutputIterator result, Predicate pred) -> OutputIterator`

#### Unique

- [**`unique`**]()` (ForwardIterator first, ForwardIterator last) -> ForwardIterator`
- [**`unique_copy`**]()` (InputIterator first, InputIterator last, OutputIterator result) -> OutputIterator`

#### Reverse

- [**`reverse`**]()` (BidirectionalIterator first, BidirectionalIterator last) -> void`
- [**`reverse_copy`**]()` (BidirectionalIterator first, BidirectionalIterator last, OutputIterator result) -> OutputIterator`

#### Rotate

- [**`rotate`**]()` (ForwardIterator first, ForwardIterator middle, ForwardIterator last) -> ForwardIterator`
- [**`rotate_copy`**]()` (ForwardIterator first, ForwardIterator middle, ForwardIterator last, OutputIterator result) -> OutputIterator`

#### Sample

- [**`sample`**]()` (PopulationIterator first, PopulationIterator last, SampleIterator out, Distance n, UniformRandomBitGenerator&& g) -> SampleIterator`

#### Shuffle

- [**`shuffle`**]()` (RandomAccessIterator first, RandomAccessIterator last, UniformRandomBitGenerator&& g) -> void`

#### Shift

- [**`shift_left`**]()` (ForwardIterator first, ForwardIterator last, typename iterator_traits<ForwardIterator>::difference_type n) -> ForwardIterator`
- [**`shift_right`**]()` (ForwardIterator first, ForwardIterator last, typename iterator_traits<ForwardIterator>::difference_type n) -> ForwardIterator`

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
- `construct_at`
- `destroy`

## C-Style Functions

`<cstdlib>`

- `bsearch`
- `qsort`
