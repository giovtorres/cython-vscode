# Cython for Visual Studio Code

Syntax highlighting for [Cython](https://cython.org) source files.

## Supported file types

| Extension | Description |
|-----------|-------------|
| `.pyx` | Cython implementation files |
| `.pxd` | Cython declaration files (headers) |
| `.pxi` | Cython include files |

## Highlighted syntax

- Declaration keywords: `cdef`, `cpdef`, `ctypedef`, `fused`
- C types: `int`, `double`, `float`, `char`, `void`, `bint`, `Py_ssize_t`, and more
- Modifiers: `public`, `readonly`, `inline`, `api`, `packed`, `extern`
- `extern from` blocks
- `cimport` and `include` directives
- GIL management: `nogil`, `gil`
- Compile-time conditionals: `DEF`, `IF`, `ELIF`, `ELSE`
- Struct, union, and enum declarations
- All standard Python syntax via fallthrough

## License

MIT
