# Changelog

## [0.1.1]

- Add `@cython.*` decorator highlighting (`boundscheck`, `wraparound`, `cdivision`, etc.)
- Add `cppclass`, `new`, `namespace` keywords for C++ support
- Add C++ exception spec highlighting: `except +`, `except +*`
- Add `const` modifier
- Add fixed-width integer types: `int8_t`, `uint8_t`, `int32_t`, `uint64_t`, `intptr_t`, etc.
- Add `prange` and `parallel` from `cython.parallel`
- Add `NULL` constant
- Add `Py_buffer` and `wchar_t` types

## [0.0.1]

- Initial release
- Syntax highlighting for `.pyx`, `.pxd`, and `.pxi` files
- Cython-specific keywords: `cdef`, `cpdef`, `ctypedef`, `fused`
- C types: `void`, `char`, `short`, `int`, `long`, `float`, `double`, `bint`, `Py_ssize_t`, and more
- Modifiers: `public`, `readonly`, `inline`, `api`, `packed`, `extern`, `signed`, `unsigned`
- `extern from` block highlighting
- `cimport` and `include` directives
- GIL keywords: `nogil`, `gil`
- Compile-time conditionals: `DEF`, `IF`, `ELIF`, `ELSE`
- Python syntax fallthrough via `source.python`
