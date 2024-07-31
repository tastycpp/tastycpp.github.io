---
title: "Strings Library"
---

## String classes

`#include `[**`<string>`**]()

- [**`std::string`**]()` =`[`std::basic_string`]()`<char>`
- [**`std::u8string`**]()` = std::basic_string<char8_t>`
- [**`std::u16string`**]()` = std::basic_string<char16_t>`
- [**`std::u32string`**]()` = std::basic_string<char32_t>`
- [**`std::wstring`**]()` = std::basic_string<wchar_t>`

` `

- [**`std::basic_string`**]()

  ***

  `template<`\
  `class charT,`\
  `class traits = char_traits<charT>,`\
  `class Allocator = allocator<charT>`\
  `> class `**`basic_string`**`;`

  ***

## String View Classes

`#include `[**`<string_view>`**]()

- [**`std::string_view`**]()` = std::basic_string_view<char>`
- [**`std::u8string_view`**]()` = std::basic_string_view<char8_t>`
- [**`std::u16string_view`**]()` = std::basic_string_view<char16_t>`
- [**`std::u32string_view`**]()` = std::basic_string_view<char32_t>`
- [**`std::wstring_view`**]()` = std::basic_string_view<wchar_t>`

` `

- [**`std::basic_string_view`**]()

  ***

  `template<class charT, class traits = char_traits<charT>>`\
  `class `**`basic_string_view`**`;`

  ***

## C-Style String Functions

`#include `[**`<cctype>`**]()

- [**`isalnum`**]()`(int c) -> int`
- [**`isalpha`**]()`(int c) -> int`
- [**`isblank`**]()`(int c) -> int`
- [**`iscntrl`**]()`(int c) -> int`
- [**`isdigit`**]()`(int c) -> int`
- [**`isgraph`**]()`(int c) -> int`
- [**`islower`**]()`(int c) -> int`
- [**`isprint`**]()`(int c) -> int`
- [**`ispunct`**]()`(int c) -> int`
- [**`isspace`**]()`(int c) -> int`
- [**`isupper`**]()`(int c) -> int`
- [**`isxdigit`**]()`(int c) -> int`
- [**`tolower`**]()`(int c) -> int`
- [**`toupper`**]()`(int c) -> int`

`#include `[**`<cstring>`**]()

` `

- [**`memchr`**]()`(const void* s, int c, size_t n) -> const void*`
- [**`memchr`**]()`(void* s, int c, size_t n) -> void*`
- [**`memcmp`**]()`(const void* s1, const void* s2, size_t n) -> int`
- [**`memcpy`**]()`(void* dst, const void* src, size_t n) -> void*`
- [**`memmove`**]()`(void* dst, const void* src, size_t n) -> void*`
- [**`memset`**]()`(void* dst, int c, size_t n) -> void*`

` `

- [**`strcat`**]()`(char* dst, const char* src) -> char*`
- [**`strchr`**]()`(const char* s, int c) -> const char*`
- [**`strchr`**]()`(char* s, int c) -> char*`
- [**`strcmp`**]()`(const char* s1, const char* s2) -> int`
- [**`strcoll`**]()`(const char* s1, const char* s2) -> int`
- [**`strcpy`**]()`(char* dst, const char* src) -> char*`
- [**`strcspn`**]()`(const char* s1, const char* s2) -> size_t`
- [**`strerror`**]()`(int errnum) -> char*`
- [**`strlen`**]()`(const char* s) -> size_t`
- [**`strncat`**]()`(char* dst, const char* src, size_t n) -> char*`
- [**`strncmp`**]()`(const char* s1, const char* s2, size_t n) -> int`
- [**`strncpy`**]()`(char* dst, const char* src, size_t n) -> char*`
- [**`strpbrk`**]()`(const char* s1, const char* s2) -> const char*`
- [**`strpbrk`**]()`(char* s1, char* s2) -> char*`
- [**`strrchr`**]()`(const char* s, int c) -> const char*`
- [**`strrchr`**]()`(char* s, int c) -> char*`
- [**`strspn`**]()`(const char* s1, const char* s2) -> size_t`
- [**`strstr`**]()`(const char* s1, const char* s2) -> const char*`
- [**`strstr`**]()`(char* s1, char* s2) -> char*`
- [**`strtok`**]()`(char* s1, char* s2) -> char*`
- [**`strxfrm`**]()`(char* dst, const char* src, size_t n) -> size_t`