! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module fortrilinos
 use, intrinsic :: ISO_C_BINDING
 use forteuchos
 use fortpetra
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: SolverHandle

 public :: EigenHandle
 ! PARAMETERS

 ! TYPES
 type :: SolverHandle
  ! These should be treated as PROTECTED data
  type(C_PTR), public :: swigptr = C_NULL_PTR
 contains
  procedure :: create => swigf_new_SolverHandle
  procedure, private :: init__SWIG_0 => swigf_SolverHandle_init__SWIG_0
  procedure, private :: init__SWIG_1 => swigf_SolverHandle_init__SWIG_1
  procedure, private :: setup_matrix__SWIG_0 => swigf_SolverHandle_setup_matrix__SWIG_0
  procedure, private :: setup_matrix__SWIG_1 => swigf_SolverHandle_setup_matrix__SWIG_1
  procedure :: setup_operator => swigf_SolverHandle_setup_operator
  procedure :: setup_solver => swigf_SolverHandle_setup_solver
  procedure, private :: solve__SWIG_0 => swigf_SolverHandle_solve__SWIG_0
  procedure, private :: solve__SWIG_1 => swigf_SolverHandle_solve__SWIG_1
  procedure :: finalize => swigf_SolverHandle_finalize
  procedure :: release => swigf_delete_SolverHandle
  generic :: init => init__SWIG_0, init__SWIG_1
  generic :: solve => solve__SWIG_0, solve__SWIG_1
  generic :: setup_matrix => setup_matrix__SWIG_0, setup_matrix__SWIG_1
 end type
 type :: EigenHandle
  ! These should be treated as PROTECTED data
  type(C_PTR), public :: swigptr = C_NULL_PTR
 contains
  procedure :: create => swigf_new_EigenHandle
  procedure, private :: init__SWIG_0 => swigf_EigenHandle_init__SWIG_0
  procedure, private :: init__SWIG_1 => swigf_EigenHandle_init__SWIG_1
  procedure :: setup_matrix => swigf_EigenHandle_setup_matrix
  procedure :: setup_matrix_rhs => swigf_EigenHandle_setup_matrix_rhs
  procedure :: setup_operator => swigf_EigenHandle_setup_operator
  procedure :: setup_operator_rhs => swigf_EigenHandle_setup_operator_rhs
  procedure :: setup_solver => swigf_EigenHandle_setup_solver
  procedure :: solve => swigf_EigenHandle_solve
  procedure :: finalize => swigf_EigenHandle_finalize
  procedure :: release => swigf_delete_EigenHandle
  generic :: init => init__SWIG_0, init__SWIG_1
 end type

 ! WRAPPER DECLARATIONS
 private
 interface
function swigc_new_SolverHandle() &
bind(C, name="swigc_new_SolverHandle") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
end function

subroutine swigc_SolverHandle_init__SWIG_0(farg1) &
bind(C, name="swigc_SolverHandle_init__SWIG_0")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_SolverHandle_init__SWIG_1(farg1, farg2) &
bind(C, name="swigc_SolverHandle_init__SWIG_1")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_SolverHandle_setup_matrix__SWIG_0(farg1, farg2, farg3, farg4, farg5) &
bind(C, name="swigc_SolverHandle_setup_matrix__SWIG_0")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(SwigfArrayWrapper) :: farg3
type(SwigfArrayWrapper) :: farg4
type(SwigfArrayWrapper) :: farg5
end subroutine

subroutine swigc_SolverHandle_setup_matrix__SWIG_1(farg1, farg2) &
bind(C, name="swigc_SolverHandle_setup_matrix__SWIG_1")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_SolverHandle_setup_operator(farg1, farg2, farg3) &
bind(C, name="swigc_SolverHandle_setup_operator")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(C_FUNPTR), intent(in), value :: farg3
end subroutine

subroutine swigc_SolverHandle_setup_solver(farg1, farg2) &
bind(C, name="swigc_SolverHandle_setup_solver")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_SolverHandle_solve__SWIG_0(farg1, farg2, farg3) &
bind(C, name="swigc_SolverHandle_solve__SWIG_0")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(SwigfArrayWrapper) :: farg3
end subroutine

subroutine swigc_SolverHandle_solve__SWIG_1(farg1, farg2, farg3) &
bind(C, name="swigc_SolverHandle_solve__SWIG_1")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
end subroutine

subroutine swigc_SolverHandle_finalize(farg1) &
bind(C, name="swigc_SolverHandle_finalize")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_delete_SolverHandle(farg1) &
bind(C, name="swigc_delete_SolverHandle")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_new_EigenHandle() &
bind(C, name="swigc_new_EigenHandle") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
end function

subroutine swigc_EigenHandle_init__SWIG_0(farg1) &
bind(C, name="swigc_EigenHandle_init__SWIG_0")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_EigenHandle_init__SWIG_1(farg1, farg2) &
bind(C, name="swigc_EigenHandle_init__SWIG_1")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_EigenHandle_setup_matrix(farg1, farg2, farg3, farg4, farg5) &
bind(C, name="swigc_EigenHandle_setup_matrix")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(SwigfArrayWrapper) :: farg3
type(SwigfArrayWrapper) :: farg4
type(SwigfArrayWrapper) :: farg5
end subroutine

subroutine swigc_EigenHandle_setup_matrix_rhs(farg1, farg2, farg3, farg4, farg5) &
bind(C, name="swigc_EigenHandle_setup_matrix_rhs")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(SwigfArrayWrapper) :: farg3
type(SwigfArrayWrapper) :: farg4
type(SwigfArrayWrapper) :: farg5
end subroutine

subroutine swigc_EigenHandle_setup_operator(farg1, farg2, farg3) &
bind(C, name="swigc_EigenHandle_setup_operator")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(C_FUNPTR), intent(in), value :: farg3
end subroutine

subroutine swigc_EigenHandle_setup_operator_rhs(farg1, farg2, farg3) &
bind(C, name="swigc_EigenHandle_setup_operator_rhs")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(C_FUNPTR), intent(in), value :: farg3
end subroutine

subroutine swigc_EigenHandle_setup_solver(farg1, farg2) &
bind(C, name="swigc_EigenHandle_setup_solver")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
end subroutine

subroutine swigc_EigenHandle_solve(farg1, farg2, farg3) &
bind(C, name="swigc_EigenHandle_solve")
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
type(C_PTR), value :: farg1
type(SwigfArrayWrapper) :: farg2
type(SwigfArrayWrapper) :: farg3
end subroutine

subroutine swigc_EigenHandle_finalize(farg1) &
bind(C, name="swigc_EigenHandle_finalize")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_delete_EigenHandle(farg1) &
bind(C, name="swigc_delete_EigenHandle")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

 end interface

contains
  ! FORTRAN PROXY CODE
subroutine swigf_new_SolverHandle(self)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(C_PTR) :: fresult 

if (c_associated(self%swigptr)) call self%release()
fresult = swigc_new_SolverHandle()
self%swigptr = fresult

end subroutine

subroutine swigf_SolverHandle_init__SWIG_0(self)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(C_PTR) :: farg1 

farg1 = self%swigptr
call swigc_SolverHandle_init__SWIG_0(farg1)

end subroutine

subroutine swigf_SolverHandle_init__SWIG_1(self, comm)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(TeuchosComm) :: comm
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = self%swigptr
farg2 = comm%swigptr
call swigc_SolverHandle_init__SWIG_1(farg1, farg2)

end subroutine

subroutine swigf_SolverHandle_setup_matrix__SWIG_0(self, rowinds, rowptrs, colinds, values)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
integer(C_INT), dimension(:), target, intent(inout) :: rowinds
integer(C_INT), dimension(:), target, intent(inout) :: rowptrs
integer(C_INT), dimension(:), target, intent(inout) :: colinds
real(C_DOUBLE), dimension(:), target, intent(inout) :: values
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(SwigfArrayWrapper) :: farg3 
type(SwigfArrayWrapper) :: farg4 
type(SwigfArrayWrapper) :: farg5 

farg1 = self%swigptr
farg2%data = c_loc(rowinds)
farg2%size = size(rowinds)
farg3%data = c_loc(rowptrs)
farg3%size = size(rowptrs)
farg4%data = c_loc(colinds)
farg4%size = size(colinds)
farg5%data = c_loc(values)
farg5%size = size(values)
call swigc_SolverHandle_setup_matrix__SWIG_0(farg1, farg2, farg3, farg4, farg5)

end subroutine

subroutine swigf_SolverHandle_setup_matrix__SWIG_1(self, a)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(TpetraCrsMatrix) :: a
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = self%swigptr
farg2 = a%swigptr
call swigc_SolverHandle_setup_matrix__SWIG_1(farg1, farg2)

end subroutine

subroutine swigf_SolverHandle_setup_operator(self, rowinds, callback)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
integer(C_INT), dimension(:), target, intent(inout) :: rowinds
type(C_FUNPTR), intent(in), value :: callback
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(C_FUNPTR) :: farg3 

farg1 = self%swigptr
farg2%data = c_loc(rowinds)
farg2%size = size(rowinds)
farg3 = callback
call swigc_SolverHandle_setup_operator(farg1, farg2, farg3)

end subroutine

subroutine swigf_SolverHandle_setup_solver(self, paramlist)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(ParameterList) :: paramlist
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = self%swigptr
farg2 = paramlist%swigptr
call swigc_SolverHandle_setup_solver(farg1, farg2)

end subroutine

subroutine swigf_SolverHandle_solve__SWIG_0(self, rhs, lhs)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
real(C_DOUBLE), dimension(:), target, intent(inout) :: rhs
real(C_DOUBLE), dimension(:), target, intent(inout) :: lhs
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(SwigfArrayWrapper) :: farg3 

farg1 = self%swigptr
farg2%data = c_loc(rhs)
farg2%size = size(rhs)
farg3%data = c_loc(lhs)
farg3%size = size(lhs)
call swigc_SolverHandle_solve__SWIG_0(farg1, farg2, farg3)

end subroutine

subroutine swigf_SolverHandle_solve__SWIG_1(self, rhs, lhs)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(TpetraMultiVector) :: rhs
type(TpetraMultiVector) :: lhs
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 

farg1 = self%swigptr
farg2 = rhs%swigptr
farg3 = lhs%swigptr
call swigc_SolverHandle_solve__SWIG_1(farg1, farg2, farg3)

end subroutine

subroutine swigf_SolverHandle_finalize(self)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(C_PTR) :: farg1 

farg1 = self%swigptr
call swigc_SolverHandle_finalize(farg1)

end subroutine

subroutine swigf_delete_SolverHandle(self)
use, intrinsic :: ISO_C_BINDING
class(SolverHandle) :: self
type(C_PTR) :: farg1 

if (.not. c_associated(self%swigptr)) return
farg1 = self%swigptr
call swigc_delete_SolverHandle(farg1)

self%swigptr = C_NULL_PTR
end subroutine

subroutine swigf_new_EigenHandle(self)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
type(C_PTR) :: fresult 

if (c_associated(self%swigptr)) call self%release()
fresult = swigc_new_EigenHandle()
self%swigptr = fresult

end subroutine

subroutine swigf_EigenHandle_init__SWIG_0(self)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
type(C_PTR) :: farg1 

farg1 = self%swigptr
call swigc_EigenHandle_init__SWIG_0(farg1)

end subroutine

subroutine swigf_EigenHandle_init__SWIG_1(self, comm)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
type(TeuchosComm) :: comm
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = self%swigptr
farg2 = comm%swigptr
call swigc_EigenHandle_init__SWIG_1(farg1, farg2)

end subroutine

subroutine swigf_EigenHandle_setup_matrix(self, rowinds, rowptrs, colinds, values)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
integer(C_INT), dimension(:), target, intent(inout) :: rowinds
integer(C_INT), dimension(:), target, intent(inout) :: rowptrs
integer(C_INT), dimension(:), target, intent(inout) :: colinds
real(C_DOUBLE), dimension(:), target, intent(inout) :: values
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(SwigfArrayWrapper) :: farg3 
type(SwigfArrayWrapper) :: farg4 
type(SwigfArrayWrapper) :: farg5 

farg1 = self%swigptr
farg2%data = c_loc(rowinds)
farg2%size = size(rowinds)
farg3%data = c_loc(rowptrs)
farg3%size = size(rowptrs)
farg4%data = c_loc(colinds)
farg4%size = size(colinds)
farg5%data = c_loc(values)
farg5%size = size(values)
call swigc_EigenHandle_setup_matrix(farg1, farg2, farg3, farg4, farg5)

end subroutine

subroutine swigf_EigenHandle_setup_matrix_rhs(self, rowinds, rowptrs, colinds, values)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
integer(C_INT), dimension(:), target, intent(inout) :: rowinds
integer(C_INT), dimension(:), target, intent(inout) :: rowptrs
integer(C_INT), dimension(:), target, intent(inout) :: colinds
real(C_DOUBLE), dimension(:), target, intent(inout) :: values
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(SwigfArrayWrapper) :: farg3 
type(SwigfArrayWrapper) :: farg4 
type(SwigfArrayWrapper) :: farg5 

farg1 = self%swigptr
farg2%data = c_loc(rowinds)
farg2%size = size(rowinds)
farg3%data = c_loc(rowptrs)
farg3%size = size(rowptrs)
farg4%data = c_loc(colinds)
farg4%size = size(colinds)
farg5%data = c_loc(values)
farg5%size = size(values)
call swigc_EigenHandle_setup_matrix_rhs(farg1, farg2, farg3, farg4, farg5)

end subroutine

subroutine swigf_EigenHandle_setup_operator(self, rowinds, callback)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
integer(C_INT), dimension(:), target, intent(inout) :: rowinds
type(C_FUNPTR), intent(in), value :: callback
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(C_FUNPTR) :: farg3 

farg1 = self%swigptr
farg2%data = c_loc(rowinds)
farg2%size = size(rowinds)
farg3 = callback
call swigc_EigenHandle_setup_operator(farg1, farg2, farg3)

end subroutine

subroutine swigf_EigenHandle_setup_operator_rhs(self, rowinds, callback)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
integer(C_INT), dimension(:), target, intent(inout) :: rowinds
type(C_FUNPTR), intent(in), value :: callback
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(C_FUNPTR) :: farg3 

farg1 = self%swigptr
farg2%data = c_loc(rowinds)
farg2%size = size(rowinds)
farg3 = callback
call swigc_EigenHandle_setup_operator_rhs(farg1, farg2, farg3)

end subroutine

subroutine swigf_EigenHandle_setup_solver(self, paramlist)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
type(ParameterList) :: paramlist
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 

farg1 = self%swigptr
farg2 = paramlist%swigptr
call swigc_EigenHandle_setup_solver(farg1, farg2)

end subroutine

subroutine swigf_EigenHandle_solve(self, eigenvalues, eigenvectors)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
real(C_DOUBLE), dimension(:), target, intent(inout) :: eigenvalues
real(C_DOUBLE), dimension(:), target, intent(inout) :: eigenvectors
type(C_PTR) :: farg1 
type(SwigfArrayWrapper) :: farg2 
type(SwigfArrayWrapper) :: farg3 

farg1 = self%swigptr
farg2%data = c_loc(eigenvalues)
farg2%size = size(eigenvalues)
farg3%data = c_loc(eigenvectors)
farg3%size = size(eigenvectors)
call swigc_EigenHandle_solve(farg1, farg2, farg3)

end subroutine

subroutine swigf_EigenHandle_finalize(self)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
type(C_PTR) :: farg1 

farg1 = self%swigptr
call swigc_EigenHandle_finalize(farg1)

end subroutine

subroutine swigf_delete_EigenHandle(self)
use, intrinsic :: ISO_C_BINDING
class(EigenHandle) :: self
type(C_PTR) :: farg1 

if (.not. c_associated(self%swigptr)) return
farg1 = self%swigptr
call swigc_delete_EigenHandle(farg1)

self%swigptr = C_NULL_PTR
end subroutine

end module fortrilinos
