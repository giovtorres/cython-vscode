# SYNTAX TEST "source.cython.decl"

# --- extern from blocks ---

cdef extern from "math.h":
#    ^^^^^^ keyword.other.cython
#           ^^^^ keyword.other.cython
#                ^^^^^^^^ string.quoted.cython
    double sin(double x) nogil
    double cos(double x) nogil
    double sqrt(double x) nogil

cdef extern from "stdlib.h" nogil:
#    ^^^^^^ keyword.other.cython
#                           ^^^^^ keyword.other.gil.cython
    void* malloc(size_t n)
#                ^^^^^^ storage.type.c.cython
    void free(void* ptr)
#             ^^^^ storage.type.c.cython

# --- cimport ---

cimport numpy as np
#^^^^^^ keyword.control.import.cython

from numpy cimport ndarray
#          ^^^^^^^ keyword.control.import.cython

# --- typedefs ---

ctypedef int MyInt
#^^^^^^^ storage.type.cython
#        ^^^ storage.type.c.cython

ctypedef double complex MyComplex
#^^^^^^^ storage.type.cython
#        ^^^^^^ storage.type.c.cython

# --- structs and unions ---

cdef struct Point:
#    ^^^^^^ keyword.other.cython
    int x
#   ^^^ storage.type.c.cython
    int y
#   ^^^ storage.type.c.cython

cdef packed struct Vec3:
#    ^^^^^^ storage.modifier.cython
#           ^^^^^^ keyword.other.cython
    float x
#   ^^^^^ storage.type.c.cython

cdef union Number:
#    ^^^^^ keyword.other.cython
    int i
    double d

# --- enums ---

cdef enum Direction:
#    ^^^^ keyword.other.cython
    NORTH = 0
    SOUTH = 1

# --- function declarations ---

cdef int add(int a, int b) nogil
#^^^ storage.type.cython
#    ^^^ storage.type.c.cython
#            ^^^ storage.type.c.cython
#                   ^^^ storage.type.c.cython
#                          ^^^^^ keyword.other.gil.cython

cpdef double scale(double x, double factor)
#^^^^ storage.type.cython
#     ^^^^^^ storage.type.c.cython

# --- modifiers ---

cdef public int status
#    ^^^^^^ storage.modifier.cython

cdef readonly double pi
#    ^^^^^^^^ storage.modifier.cython
