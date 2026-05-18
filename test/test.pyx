# SYNTAX TEST "source.cython"

# --- Declaration keywords ---

cdef int x
#^^^ storage.type.cython
#    ^^^ storage.type.c.cython

cpdef double foo(int x, double y):
#^^^^ storage.type.cython
#     ^^^^^^ storage.type.c.cython
#                ^^^ storage.type.c.cython
#                       ^^^^^^ storage.type.c.cython
    pass

ctypedef int MyInt
#^^^^^^^ storage.type.cython
#        ^^^ storage.type.c.cython

ctypedef fused MyNumber:
#^^^^^^^ storage.type.cython
#        ^^^^^ storage.type.cython

# --- C types ---

cdef void bar():
#    ^^^^ storage.type.c.cython
    pass

cdef char c
#    ^^^^ storage.type.c.cython

cdef bint flag
#    ^^^^ storage.type.c.cython

cdef Py_ssize_t n
#    ^^^^^^^^^^ storage.type.c.cython

# --- Modifiers ---

cdef public int val
#    ^^^^^^ storage.modifier.cython
#           ^^^ storage.type.c.cython

cdef readonly double ro
#    ^^^^^^^^ storage.modifier.cython

cdef inline int fast():
#    ^^^^^^ storage.modifier.cython
    pass

cdef packed struct Vec:
#    ^^^^^^ storage.modifier.cython

cdef unsigned int u
#    ^^^^^^^^ storage.modifier.cython

cdef signed long s
#    ^^^^^^ storage.modifier.cython

# --- extern from ---

cdef extern from "stdio.h":
#    ^^^^^^ keyword.other.cython
#           ^^^^ keyword.other.cython
#                ^^^^^^^^^ string.quoted.cython
    int printf(const char* format, ...)

cdef extern from *:
#    ^^^^^^ keyword.other.cython
#           ^^^^ keyword.other.cython
#                ^ keyword.operator.cython

# --- extern standalone (no from) ---

cdef extern int c_func()
#    ^^^^^^ storage.modifier.cython

# --- struct / union / enum ---

cdef struct Point:
#    ^^^^^^ keyword.other.cython
    int x
    int y

cdef union Data:
#    ^^^^^ keyword.other.cython
    int i
    float f

cdef enum Color:
#    ^^^^ keyword.other.cython
    RED = 0
    GREEN = 1

# --- cimport ---

cimport numpy as np
#^^^^^^ keyword.control.import.cython

from libc.math cimport sqrt
#              ^^^^^^^ keyword.control.import.cython

# --- include ---

include "utils.pxi"
#^^^^^^ keyword.control.include.cython

# --- GIL keywords ---

cdef int baz() nogil:
#              ^^^^^ keyword.other.gil.cython
    pass

with nogil:
#    ^^^^^ keyword.other.gil.cython
    pass

with gil:
#    ^^^ keyword.other.gil.cython
    pass

# --- Compile-time conditionals ---

DEF MAX_SIZE = 100
#^^ keyword.control.conditional.cython

IF UNAME_SYSNAME == "Linux":
#^ keyword.control.conditional.cython
    pass
ELIF UNAME_SYSNAME == "Darwin":
#^^^ keyword.control.conditional.cython
    pass
ELSE:
#^^^ keyword.control.conditional.cython
    pass

# --- Cython decorators ---

@cython.boundscheck(False)
#^^^^^^ entity.name.namespace.cython
#      ^ punctuation.accessor.cython
#       ^^^^^^^^^^^ support.function.decorator.cython
def decorated_foo():
    pass

@cython.wraparound(False)
#^^^^^^ entity.name.namespace.cython
#      ^ punctuation.accessor.cython
#       ^^^^^^^^^ support.function.decorator.cython
def decorated_bar():
    pass

@cython.cdivision(True)
#^^^^^^ entity.name.namespace.cython
#       ^^^^^^^^^ support.function.decorator.cython
def decorated_baz():
    pass

# --- const modifier ---

cdef const char* name
#    ^^^^^ storage.modifier.cython

cdef const int* arr
#    ^^^^^ storage.modifier.cython

# --- cppclass (C++ class declaration) ---

cdef cppclass MyVec:
#    ^^^^^^^^ storage.type.cython
    pass

# --- C++ keywords: new, namespace ---

cdef extern from "vector" namespace "std":
#                         ^^^^^^^^^ keyword.other.cpp.cython
    pass

x = new MyClass()
#   ^^^ keyword.other.cpp.cython

# --- C++ except + ---

cdef int cpp_func() except +:
#                   ^^^^^^ keyword.control.exception.cython
#                          ^ keyword.operator.cython

cdef int cpp_func2() except +*:
#                    ^^^^^^ keyword.control.exception.cython
#                           ^ keyword.operator.cython
#                            ^ keyword.operator.cython

# --- Fixed-width integer types ---

cdef int8_t a
#    ^^^^^^ storage.type.c.cython

cdef uint8_t b
#    ^^^^^^^ storage.type.c.cython

cdef int32_t c
#    ^^^^^^ storage.type.c.cython

cdef uint64_t d
#    ^^^^^^^^ storage.type.c.cython

cdef intptr_t e
#    ^^^^^^^^ storage.type.c.cython

cdef Py_buffer buf
#    ^^^^^^^^^ storage.type.c.cython

cdef wchar_t w
#    ^^^^^^^ storage.type.c.cython

# --- NULL constant ---

ptr = NULL
#     ^^^^ constant.language.cython

# --- parallel keywords ---

from cython.parallel cimport prange, parallel
#                            ^^^^^^ support.function.builtin.cython
#                                    ^^^^^^^^ support.function.builtin.cython

for i in prange(n, nogil=True):
#        ^^^^^^ support.function.builtin.cython
    pass
