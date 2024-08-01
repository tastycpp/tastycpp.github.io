---
title: "Numerics Library"
---

This Clause describes components that C++ programs may use to perform
semi-numerical operations.

## Numbers

`#include `[**`<numbers>`**]()

- `e`
- `log2e`
- `log10e`
- `pi`
- `...`

## Mathematical Functions

`#include `[**`<cstdlib>`**]()

- `abs`
- `hypot`
- `pow`
- `sqrt`
- `...`

`#include `[**`<cmath>`**]()

- `acos`
- `asin`
- `atan`
- `atan2`
- `...`

## Numeric Arrays

`#include `[**`<valarray>`**]()

- `valarray<T>`
- `slice`
- `slice_array<T>`
- `gslice`
- `gslice_array<T>`
- `mask_array<T>`
- `indirect_array<T>`

## Random Number Generation

Subclause 28.5 defines a facility for generating (pseudo-)random numbers.

`#include `[**`<random>`**]()

### Random Number Distribution

#### Uniform Distribution

- `uniform_int_distribution`
- `uniform_real_distribution`

#### Bernoulli Distribution

- `bernoulli_distribution`
- `binomial_distribution`
- `geometric_distribution`
- `negative_binomial_distribution`

#### Poison Distribution

- `poisson_distribution`
- `exponential_distribution`
- `gamma_distribution`
- `weibull_distribution`
- `extreme_value_distribution`

#### Normal Distribution

- `normal_distribution`
- `lognormal_distribution`
- `chi_squared_distribution`
- `cauchy_distribution`
- `fisher_f_distribution`
- `student_t_distribution`

#### Sampling Distribution

- `discrete_distribution`
- `piecewise_constant_distribution`
- `piecewise_linear_distribution`

### Engines with Predefined Parameters

- `default_random_engine`

` `

- `minstd_rand0`
- `minstd_rand`
- `mt19937`
- `mt19937_64`
- `ranlux24`
- `ranlux48`
- `knuth_b`

### Random Number Engines

- `class linear_congruential_engine<UIntType, a, c, m>`
- `class mersenne_twister_engine`
- `class subtract_with_carry_engine`

#### Adaptors

- `discard_block_engine`
- `independent_bits_engine`
- `shuffle_order_engine`
