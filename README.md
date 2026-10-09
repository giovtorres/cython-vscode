# Cython for Visual Studio Code

Syntax highlighting for [Cython](https://cython.org) source files.

## Supported file types

| Extension | Description |
|-----------|-------------|
| `.pyx` | Cython implementation files |
| `.pxd` | Cython declaration files (headers) |
| `.pxi` | Cython include files |

## Highlighted syntax

**Declarations**
- Keywords: `cdef`, `cpdef`, `ctypedef`, `fused`, `cppclass`
- Struct, union, and enum declarations

**Types**
- C types: `void`, `char`, `short`, `int`, `long`, `float`, `double`, `bint`, `Py_ssize_t`, `wchar_t`, `Py_buffer`, and more
- Fixed-width integers: `int8_t`, `uint8_t`, `int32_t`, `uint64_t`, `intptr_t`, etc.

**Modifiers**
- `public`, `readonly`, `inline`, `api`, `packed`, `extern`, `signed`, `unsigned`, `const`

**Imports**
- `cimport` and `include` directives
- `extern from` blocks

**C++ support**
- `cppclass`, `new`, `namespace`
- C++ exception specs: `except +`, `except +*`

**Cython decorators**
- `@cython.boundscheck`, `@cython.wraparound`, `@cython.cdivision`, and all other `@cython.*` decorators

**Parallelism**
- `prange` and `parallel` from `cython.parallel`
- GIL management: `nogil`, `gil`

**Compile-time**
- Conditionals: `DEF`, `IF`, `ELIF`, `ELSE`

**Constants**
- `NULL`

**Python fallthrough**
- All standard Python syntax via embedded `source.python` grammar

## Snippets

The extension ships a set of useful Cython snippets that work for `.pyx`, `.pxd`, and `.pxi` files.

| Prefix | Description |
|--------|-------------|
| `cdef` | Cython `cdef` function skeleton |
| `cdefclass` | Cython `cdef class` skeleton |
| `cimport` | Import a Cython module |
| `extern` | `cdef extern from` block |
| `boundscheck` | `@cython.boundscheck` decorator |

You can trigger them via the normal VS Code snippet suggestion (Ctrl+Space) or by typing the prefix and pressing **Tab**. Users can also customise or add their own snippets through the VS Code UI.

## License

MIT
