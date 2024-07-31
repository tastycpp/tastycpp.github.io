---
title: "Input/Output Library"
---

This Clause describes components that C++ programs may use to perform
input/output operations

## IO Streams

`#include `[**`<iosfwd>`**]()

- [**`std::istream`**]()` = basic_istream<char>;`
- `std::ostream = basic_ostream<char>;`

` `

- [**`std::basic_istream`**]()

  `template<class charT, class traits = char_traits<charT>>`\
  `class basic_istream;`

- [**`std::basic_ostream`**]()

  `template<class charT, class traits = char_traits<charT>>`\
  `class basic_ostream;`

### Standard Stream Objects

The header `<iostream>` declares objects that associate objects with the
standard C streams provided for by the functions declared in `<cstdio>`, and
includes all the headers necessary to use these objects.

`#include `[**`<iostream>`**]()

- [**`std::cin`**]()

  ***

  `extern `[`istream`]()` cin;`

  ***

  The object **`cin`** controls input from a stream buffer associated with the
  object [`stdin`](), declared in [`<cstdio>`]().

- [**`std::cout`**]()

  `extern ostream cout;`

- [**`std::cerr`**]()

  `extern ostream cerr;`

- [**`std::clog`**]()

  `extern ostream clog;`

## File Streams

`#include `[**`<fstream>`**]()

- [**`std::ifstream`**]()` = basic_ifstream<char>;`
- `std::ofstream = basic_ofstream<char>;`

` `

- [**`std::basic_ifstream`**]()

  `template<class charT, class traits = char_traits<charT>>`\
  `class basic_ifstream;`

- [**`std::basic_ofstream`**]()

  `template<class charT, class traits = char_traits<charT>>`\
  `class basic_ofstream;`

## Filesystem

`#include `[**`<filesystem>`**]()

`namespace std::filesystem`

### Classes

- [**`std::filesystem::path`**]()

` `

- [**`std::filesystem::file_status`**]()
- [**`std::filesystem::filesystem_error`**]()
- [**`std::filesystem::space_info`**]()

` `

- [**`std::filesystem::directory_entry`**]()
- [**`std::filesystem::directory_iterator`**]()
- [**`std::filesystem::recursive_directory_iterator`**]()

### Functions

- `absolute(const path& p) -> path`
- `canonical(const path& p) -> path`
- `void copy(const path& from, const path& to);`
- `bool copy_file(const path& from, const path& to);`
- `void copy_symlink(const path& existing_symlink, const path& new_symlink);`
- `bool create_directories(const path& p);`
- `bool create_directory(const path& p);`
- `void create_directory_symlink(const path& to, const path& new_symlink);`
- `void create_hard_link(const path& to, const path& new_hard_link);`
- `void create_symlink(const path& to, const path& new_symlink);`
- `path current_path();`
- `bool equivalent(const path& p1, const path& p2);`
- `bool exists(const path& p)`
- `uintmax_t file_size(const path& p);`
- `uintmax_t hard_link_count(const path& p);`
- `bool is_block_file(const path& p)`
- `bool is_character_file(const path& p);`
- `bool is_directory(const path& p);`
- `bool is_empty(const path& p);`
- `bool is_fifo(const path& p);`
- `bool is_other(const path& p);`
- `bool is_regular_file(const path& p);`
- `bool is_socket(const path& p);`
- `bool is_symlink(const path& p);`
- `file_time_type last_write_time(const path& p);`
- `void permissions(const path& p, perms prms, perm_options opts=perm_options::replace);`
- `path proximate(const path& p, error_code& ec);`
- `path read_symlink(const path& p);`
- `path relative(const path& p, error_code& ec);`
- `bool remove(const path& p);`
- `uintmax_t remove_all(const path& p);`
- `void rename(const path& from, const path& to);`
- `void resize_file(const path& p, uintmax_t size);`
- `space_info space(const path& p)`
- `file_status status(const path& p);`
- `bool status_known(file_status s) noexcept;`
- `file_status symlink_status(const path& p);`
- `path temp_directory_path();`
- `path weakly_canonical(const path& p);`

## C-Style Functions

`#include `[**`<cstdio>`**]()

`namespace std`

```
int remove(const char* filename);
int rename(const char* old_p, const char* new_p);
FILE* tmpfile();
char* tmpnam(char* s);
int fclose(FILE* stream);
int fflush(FILE* stream);
FILE* fopen(const char* filename, const char* mode);
FILE* freopen(const char* filename, const char* mode, FILE* stream);
void setbuf(FILE* stream, char* buf);
int setvbuf(FILE* stream, char* buf, int mode, size_t size);
int fprintf(FILE* stream, const char* format, ...);
int fscanf(FILE* stream, const char* format, ...);
int printf(const char* format, ...);
int scanf(const char* format, ...);
int snprintf(char* s, size_t n, const char* format, ...);
int sprintf(char* s, const char* format, ...);
int sscanf(const char* s, const char* format, ...);
int vfprintf(FILE* stream, const char* format, va_list arg);
int vfscanf(FILE* stream, const char* format, va_list arg);
int vprintf(const char* format, va_list arg);
int vscanf(const char* format, va_list arg);
int vsnprintf(char* s, size_t n, const char* format, va_list arg);
int vsprintf(char* s, const char* format, va_list arg);
int vsscanf(const char* s, const char* format, va_list arg);
int fgetc(FILE* stream);
char* fgets(char* s, int n, FILE* stream);
int fputc(int c, FILE* stream);
int fputs(const char* s, FILE* stream);
int getc(FILE* stream);
int getchar();
int putc(int c, FILE* stream);
int putchar(int c);
int puts(const char* s);
int ungetc(int c, FILE* stream);
size_t fread(void* ptr, size_t size, size_t nmemb, FILE* stream);
size_t fwrite(const void* ptr, size_t size, size_t nmemb, FILE* stream);
int fgetpos(FILE* stream, fpos_t* pos);
int fseek(FILE* stream, long int offset, int whence);
int fsetpos(FILE* stream, const fpos_t* pos);
long int ftell(FILE* stream);
void rewind(FILE* stream);
void clearerr(FILE* stream);
int feof(FILE* stream);
int ferror(FILE* stream);
void perror(const char* s)
```
