! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module forbelos
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES
 public :: string
 public :: BelosError
 public :: ETrans, NOTRANS, TRANS, CONJTRANS
 public :: NormType, OneNorm, TwoNorm, InfNorm
 public :: ScaleType, NormOfRHS, NormOfInitRes, NormOfPrecInitRes, None, UserProvided, NormOfFullInitRes, &
    NormOfFullPrecInitRes, NormOfFullScaledInitRes, NormOfFullScaledPrecInitRes
 public :: OutputType, General, Brief, User
 public :: ReturnType, Converged, Unconverged
 public :: convertReturnTypeToString
 public :: convertStatusTypeToString
 public :: convertStringToStatusType
 public :: convertStringToScaleType
 public :: convertScaleTypeToString
 public :: ConjType, NO_CONJ, CONJ
 public :: convertMsgTypeToString

 ! PARAMETERS
 enum, bind(c)
  enumerator :: ETrans = -1
  enumerator :: NOTRANS = 0
  enumerator :: TRANS = 1
  enumerator :: CONJTRANS = 2
 end enum
 enum, bind(c)
  enumerator :: NormType = -1
  enumerator :: OneNorm = 0
  enumerator :: TwoNorm = OneNorm + 1
  enumerator :: InfNorm = TwoNorm + 1
 end enum
 enum, bind(c)
  enumerator :: ScaleType = -1
  enumerator :: NormOfRHS = 0
  enumerator :: NormOfInitRes = NormOfRHS + 1
  enumerator :: NormOfPrecInitRes = NormOfInitRes + 1
  enumerator :: None = NormOfPrecInitRes + 1
  enumerator :: UserProvided = None + 1
  enumerator :: NormOfFullInitRes = UserProvided + 1
  enumerator :: NormOfFullPrecInitRes = NormOfFullInitRes + 1
  enumerator :: NormOfFullScaledInitRes = NormOfFullPrecInitRes + 1
  enumerator :: NormOfFullScaledPrecInitRes = NormOfFullScaledInitRes + 1
 end enum
 enum, bind(c)
  enumerator :: OutputType = -1
  enumerator :: General = 0
  enumerator :: Brief = General + 1
  enumerator :: User = Brief + 1
 end enum
 enum, bind(c)
  enumerator :: ReturnType = -1
  enumerator :: Converged = 0
  enumerator :: Unconverged = Converged + 1
 end enum
 integer(C_INT), protected, public, &
   bind(C, name="swigc_StatusType") :: StatusType
 integer(C_INT), protected, public, &
   bind(C, name="swigc_Passed") :: Passed
 integer(C_INT), protected, public, &
   bind(C, name="swigc_Failed") :: Failed
 integer(C_INT), protected, public, &
   bind(C, name="swigc_Undefined") :: Undefined
 integer(C_INT), protected, public, &
   bind(C, name="swigc_ResetType") :: ResetType
 integer(C_INT), protected, public, &
   bind(C, name="swigc_Problem") :: Problem
 integer(C_INT), protected, public, &
   bind(C, name="swigc_RecycleSubspace") :: RecycleSubspace
 enum, bind(c)
  enumerator :: ConjType = -1
  enumerator :: NO_CONJ = 0
  enumerator :: CONJ = NO_CONJ + 1
 end enum
 integer(C_INT), protected, public, &
   bind(C, name="swigc_MsgType") :: MsgType
 integer(C_INT), protected, public, &
   bind(C, name="swigc_Errors") :: Errors
 integer(C_INT), protected, public, &
   bind(C, name="swigc_Warnings") :: Warnings
 integer(C_INT), protected, public, &
   bind(C, name="swigc_IterationDetails") :: IterationDetails
 integer(C_INT), protected, public, &
   bind(C, name="swigc_OrthoDetails") :: OrthoDetails
 integer(C_INT), protected, public, &
   bind(C, name="swigc_FinalSummary") :: FinalSummary
 integer(C_INT), protected, public, &
   bind(C, name="swigc_TimingDetails") :: TimingDetails
 integer(C_INT), protected, public, &
   bind(C, name="swigc_StatusTestDetails") :: StatusTestDetails
 integer(C_INT), protected, public, &
   bind(C, name="swigc_Debug") :: Debug

 ! TYPES
 type :: string
  ! These should be treated as PROTECTED data
  type(C_PTR), public :: swigptr = C_NULL_PTR
 contains
  procedure :: create => swigf_new_string
  procedure :: resize => swigf_string_resize
  procedure :: clear => swigf_string_clear
  procedure :: size => swigf_string_size
  procedure :: length => swigf_string_length
  procedure :: set => swigf_string_set
  procedure :: get => swigf_string_get
  procedure :: release => swigf_delete_string
 end type
 type :: BelosError
  ! These should be treated as PROTECTED data
  type(C_PTR), public :: swigptr = C_NULL_PTR
 contains
  procedure :: create => swigf_new_BelosError
  procedure :: release => swigf_delete_BelosError
 end type


 ! WRAPPER DECLARATIONS
 interface
function swigc_new_string() &
bind(C, name="swigc_new_string") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
end function

subroutine swigc_string_resize(farg1, farg2) &
bind(C, name="swigc_string_resize")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_LONG), intent(in) :: farg2
end subroutine

subroutine swigc_string_clear(farg1) &
bind(C, name="swigc_string_clear")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_string_size(farg1) &
bind(C, name="swigc_string_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: fresult
type(C_PTR), value :: farg1
end function

function swigc_string_length(farg1) &
bind(C, name="swigc_string_length") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: fresult
type(C_PTR), value :: farg1
end function

subroutine swigc_string_set(farg1, farg2, farg3) &
bind(C, name="swigc_string_set")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_LONG), intent(in) :: farg2
integer(C_SIGNED_CHAR), intent(in) :: farg3
end subroutine

function swigc_string_get(farg1, farg2) &
bind(C, name="swigc_string_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_SIGNED_CHAR) :: fresult
type(C_PTR), value :: farg1
integer(C_LONG), intent(in) :: farg2
end function

subroutine swigc_delete_string(farg1) &
bind(C, name="swigc_delete_string")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_new_BelosError(farg1) &
bind(C, name="swigc_new_BelosError") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
type(C_PTR), value :: farg1
end function

subroutine swigc_delete_BelosError(farg1) &
bind(C, name="swigc_delete_BelosError")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_convertReturnTypeToString(farg1) &
bind(C, name="swigc_convertReturnTypeToString") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
integer(C_INT), intent(in) :: farg1
end function

function swigc_convertStatusTypeToString(farg1) &
bind(C, name="swigc_convertStatusTypeToString") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
integer(C_INT), intent(in) :: farg1
end function

function swigc_convertStringToStatusType(farg1) &
bind(C, name="swigc_convertStringToStatusType") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
type(C_PTR), value :: farg1
end function

function swigc_convertStringToScaleType(farg1) &
bind(C, name="swigc_convertStringToScaleType") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
type(C_PTR), value :: farg1
end function

function swigc_convertScaleTypeToString(farg1) &
bind(C, name="swigc_convertScaleTypeToString") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
integer(C_INT), intent(in) :: farg1
end function

function swigc_convertMsgTypeToString(farg1) &
bind(C, name="swigc_convertMsgTypeToString") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
integer(C_INT), intent(in) :: farg1
end function

 end interface


contains
 ! FORTRAN PROXY CODE
subroutine swigf_new_string(self)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
type(C_PTR) :: fresult 

if (c_associated(self%swigptr)) call self%release()
fresult = swigc_new_string()
self%swigptr = fresult

end subroutine

subroutine swigf_string_resize(self, count)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
integer(C_LONG), intent(in) :: count
type(C_PTR) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigptr
farg2 = count
call swigc_string_resize(farg1, farg2)

end subroutine

subroutine swigf_string_clear(self)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
type(C_PTR) :: farg1 

farg1 = self%swigptr
call swigc_string_clear(farg1)

end subroutine

function swigf_string_size(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swigf_result
class(string) :: self
integer(C_LONG) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_string_size(farg1)
swigf_result = fresult
end function

function swigf_string_length(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swigf_result
class(string) :: self
integer(C_LONG) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_string_length(farg1)
swigf_result = fresult
end function

subroutine swigf_string_set(self, pos, v)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
integer(C_LONG), intent(in) :: pos
integer(C_SIGNED_CHAR), intent(in) :: v
type(C_PTR) :: farg1 
integer(C_LONG) :: farg2 
integer(C_SIGNED_CHAR) :: farg3 

farg1 = self%swigptr
farg2 = pos
farg3 = v
call swigc_string_set(farg1, farg2, farg3)

end subroutine

function swigf_string_get(self, pos) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_SIGNED_CHAR) :: swigf_result
class(string) :: self
integer(C_LONG), intent(in) :: pos
integer(C_SIGNED_CHAR) :: fresult 
type(C_PTR) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigptr
farg2 = pos
fresult = swigc_string_get(farg1, farg2)
swigf_result = fresult
end function

subroutine swigf_delete_string(self)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
type(C_PTR) :: farg1 

if (.not. c_associated(self%swigptr)) return
farg1 = self%swigptr
call swigc_delete_string(farg1)

self%swigptr = C_NULL_PTR
end subroutine

subroutine swigf_new_BelosError(self, what_arg)
use, intrinsic :: ISO_C_BINDING
class(BelosError) :: self
class(string) :: what_arg
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

if (c_associated(self%swigptr)) call self%release()
farg1 = what_arg%swigptr
fresult = swigc_new_BelosError(farg1)
self%swigptr = fresult

end subroutine

subroutine swigf_delete_BelosError(self)
use, intrinsic :: ISO_C_BINDING
class(BelosError) :: self
type(C_PTR) :: farg1 

if (.not. c_associated(self%swigptr)) return
farg1 = self%swigptr
call swigc_delete_BelosError(farg1)

self%swigptr = C_NULL_PTR
end subroutine

function convertReturnTypeToString(result) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(string) :: swigf_result
integer(kind(ReturnType)) :: result
type(C_PTR) :: fresult 
integer(C_INT) :: farg1 

farg1 = result
fresult = swigc_convertReturnTypeToString(farg1)
swigf_result%swigptr = fresult
end function

function convertStatusTypeToString(status) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(string) :: swigf_result
integer(kind(StatusType)) :: status
type(C_PTR) :: fresult 
integer(C_INT) :: farg1 

farg1 = status
fresult = swigc_convertStatusTypeToString(farg1)
swigf_result%swigptr = fresult
end function

function convertStringToStatusType(status) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(kind(StatusType)) :: swigf_result
class(string) :: status
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = status%swigptr
fresult = swigc_convertStringToStatusType(farg1)
swigf_result = fresult
end function

function convertStringToScaleType(scaletype0) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(kind(ScaleType)) :: swigf_result
class(string) :: scaletype0
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = scaletype0%swigptr
fresult = swigc_convertStringToScaleType(farg1)
swigf_result = fresult
end function

function convertScaleTypeToString(scaletype0) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(string) :: swigf_result
integer(kind(ScaleType)) :: scaletype0
type(C_PTR) :: fresult 
integer(C_INT) :: farg1 

farg1 = scaletype0
fresult = swigc_convertScaleTypeToString(farg1)
swigf_result%swigptr = fresult
end function

function convertMsgTypeToString(msgtype0) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(string) :: swigf_result
integer(kind(MsgType)) :: msgtype0
type(C_PTR) :: fresult 
integer(C_INT) :: farg1 

farg1 = msgtype0
fresult = swigc_convertMsgTypeToString(farg1)
swigf_result%swigptr = fresult
end function


end module forbelos