---
title: "Regular Expressions Library"
---

This Clause describes components that C++ programs may use to perform operations
involving regular expression matching and searching.

`#include `[**`<regex>`**]()

### Classes

- [**`std::regex`**](./regex)` =`[` basic_regex`](./regex)`<char>;`

` `

- [**`std::basic_regex`**](./regex)

  `template<class charT, class traits = regex_traits<charT>>`\
  `class `**`basic_regex`**`;`

  One sentence about `basic_regex` class.

### Algorithms

- [**`std::regex_match`**](./regex_match)

  Example:

  ```
  regex_match(
    const basic_string<charT, ST, SA>& s,
    const basic_regex<charT, traits>& e,
    regex_constants::match_flag_type flags = regex_constants::match_default
  ) -> bool
  ```

- [**`regex_replace`**](./regex_replace)
- [**`regex_search`**](./regex_search)
