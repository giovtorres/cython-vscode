# SYNTAX TEST "source.cython.include"

# Include files can contain anything a .pyx file can.

# --- Declaration keywords ---

cdef int helper(int x) nogil:
#^^^ storage.type.cython
#    ^^^ storage.type.c.cython
#               ^^^ storage.type.c.cython
#                      ^^^^^ keyword.other.gil.cython
    return x * 2

cpdef double scale(double x, double factor):
#^^^^ storage.type.cython
#     ^^^^^^ storage.type.c.cython
    return x * factor

# --- include chaining ---

include "more_helpers.pxi"
#^^^^^^ keyword.control.include.cython

# --- cimport ---

cimport numpy as np
#^^^^^^ keyword.control.import.cython

# --- Compile-time ---

DEF BUFFER_SIZE = 1024
#^^ keyword.control.conditional.cython

IF HAVE_FEATURE:
#^ keyword.control.conditional.cython
    cdef int extra
ELSE:
#^^^ keyword.control.conditional.cython
    pass
