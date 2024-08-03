---
title: "C Functions"
weight: 3
---

# C-Style Functions

`#include `[**`<cctype>`**]()

- [**`isalnum`**]()` (int c) -> int`
- [**`isalpha`**]()` (int c) -> int`
- [**`isblank`**]()` (int c) -> int`
- [**`iscntrl`**]()` (int c) -> int`
- [**`isdigit`**]()` (int c) -> int`
- [**`isgraph`**]()` (int c) -> int`
- [**`islower`**]()` (int c) -> int`
- [**`isprint`**]()` (int c) -> int`
- [**`ispunct`**]()` (int c) -> int`
- [**`isspace`**]()` (int c) -> int`
- [**`isupper`**]()` (int c) -> int`
- [**`isxdigit`**]()` (int c) -> int`
- [**`tolower`**]()` (int c) -> int`
- [**`toupper`**]()` (int c) -> int`

`#include `[**`<cstring>`**]()

` `

- [**`memchr`**]()` (const void* s, int c, size_t n) -> const void*`
- [**`memchr`**]()` (void* s, int c, size_t n) -> void*`
- [**`memcmp`**]()` (const void* s1, const void* s2, size_t n) -> int`
- [**`memcpy`**]()` (void* dst, const void* src, size_t n) -> void*`
- [**`memmove`**]()` (void* dst, const void* src, size_t n) -> void*`
- [**`memset`**]()` (void* dst, int c, size_t n) -> void*`

` `

- [**`strcat`**]()` (char* dst, const char* src) -> char*`
- [**`strchr`**]()` (const char* s, int c) -> const char*`
- [**`strchr`**]()` (char* s, int c) -> char*`
- [**`strcmp`**]()` (const char* s1, const char* s2) -> int`
- [**`strcoll`**]()` (const char* s1, const char* s2) -> int`
- [**`strcpy`**]()` (char* dst, const char* src) -> char*`
- [**`strcspn`**]()` (const char* s1, const char* s2) -> size_t`
- [**`strerror`**]()` (int errnum) -> char*`
- [**`strlen`**]()` (const char* s) -> size_t`
- [**`strncat`**]()` (char* dst, const char* src, size_t n) -> char*`
- [**`strncmp`**]()` (const char* s1, const char* s2, size_t n) -> int`
- [**`strncpy`**]()` (char* dst, const char* src, size_t n) -> char*`
- [**`strpbrk`**]()` (const char* s1, const char* s2) -> const char*`
- [**`strpbrk`**]()` (char* s1, char* s2) -> char*`
- [**`strrchr`**]()` (const char* s, int c) -> const char*`
- [**`strrchr`**]()` (char* s, int c) -> char*`
- [**`strspn`**]()` (const char* s1, const char* s2) -> size_t`
- [**`strstr`**]()` (const char* s1, const char* s2) -> const char*`
- [**`strstr`**]()` (char* s1, char* s2) -> char*`
- [**`strtok`**]()` (char* s1, char* s2) -> char*`
- [**`strxfrm`**]()` (char* dst, const char* src, size_t n) -> size_t`
