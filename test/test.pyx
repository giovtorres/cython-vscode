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
