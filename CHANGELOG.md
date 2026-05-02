# Changelog

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
