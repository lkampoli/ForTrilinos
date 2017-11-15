program main

#include "FortranTestMacros.h"
#include "ForTrilinosSimpleInterface_config.hpp"

  use ISO_FORTRAN_ENV
  use, intrinsic :: ISO_C_BINDING
  use fortrilinos
  use forteuchos
  use fortpetra
#ifdef HAVE_MPI
  use mpi
#endif
  implicit none

  integer(c_int) :: i
  integer(c_int) :: my_rank, num_procs

  integer(c_int) :: cur_pos, offset
  real(c_double) :: norm, one

  type(TeuchosComm) :: comm

  integer(C_LONG) :: n_global
  integer(C_SIZE_T) :: n, max_entries_per_row, num_vecs, lda
  integer(C_INT) :: stupid_n, row_nnz, stupid_1
  type(TpetraMap) :: map
  type(TpetraCrsMatrix) :: A
  type(TpetraMultiVector) :: B, X, Xtrue

  type(ParameterList) :: plist
  type(SolverHandle) :: tri_handle

  type(TeuchosArrayViewDoubleConst) :: TA_rhs, TA_lhs
  type(TeuchosArrayViewDouble) :: TA_norms
  real(c_double), dimension(:), allocatable :: lhs, rhs, norms
  integer(c_int), dimension(:), allocatable :: cols
  real(c_double), dimension(:), allocatable :: vals

  n = 50
  num_vecs = 1

  one = 1.0

  my_rank = 0
  num_procs = 1

#ifdef HAVE_MPI
  ! Initialize MPI subsystem
  call MPI_INIT(ierr)
  if (ierr /= 0) then
    write(*,*) "MPI failed to init"
    stop 1
  endif

  call comm%create(MPI_COMM_WORLD)
#else
  call comm%create()
#endif

  my_rank = comm%getRank()
  num_procs = comm%getSize()

  write(*,*) "Processor ", my_rank, " of ", num_procs

  ! Read in the parameterList
  call plist%create("Stratimikos")
  call load_from_xml(plist, "stratimikos.xml")

  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ":", trim(serr)
    stop 1
  endif

  ! ------------------------------------------------------------------
  ! Step 0: Construct tri-diagonal matrix, and rhs
  n_global = -1
  call map%create(n_global, n, 1, comm) ! 1 = index base (Fortran)

  max_entries_per_row = 3
  call A%create(map, max_entries_per_row, DynamicProfile)

  allocate(cols(max_entries_per_row))
  allocate(vals(max_entries_per_row))
  offset = n * my_rank
  do i = 1, n
    row_nnz = 1
    if (i .ne. 1 .or. my_rank > 0) then
      cols(row_nnz) = offset + i-1
      vals(row_nnz) = -1.0
      row_nnz = row_nnz + 1
    end if
    cols(row_nnz) = offset + i
    vals(row_nnz) = 2.0
    row_nnz = row_nnz + 1
    if (i .ne. n .or. my_rank .ne. num_procs-1) then
      cols(row_nnz) = offset + i+1
      vals(row_nnz) = -1.0
      row_nnz = row_nnz + 1
    end if

    call A%insertGlobalValues(offset + i, row_nnz-1, vals, cols)
  end do
  ! Critical step: fill complete the matrix
  call A%fillComplete()

  ! This automatically zeroes out X
  call X%create(map, num_vecs)

  ! The solution X(i) = i-1
  allocate(lhs(n))
  allocate(rhs(n))
  if (my_rank > 0) then
    rhs(1) = 0.0
  else
    rhs(1) = -1.0
  end if
  if (my_rank .ne. num_procs-1) then
    rhs(n) = 0.0
  else
    rhs(n) = offset+n
  end if
  do i = 2, n-1
    rhs(i) = 0.0
  end do
  do i = 1, n
    lhs(i) = offset + i-1
  end do
  lda = n
  call TA_lhs%create(lhs)
  call TA_rhs%create(rhs)

  call Xtrue%create(map, TA_lhs, lda, num_vecs)
  call B%create(map, TA_rhs, lda, num_vecs)

  call TA_lhs%release()
  call TA_rhs%release()

  ! Step 0.5: crate a handle
  call tri_handle%create()
  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ": ", trim(serr)
    stop 1
  endif

  ! ------------------------------------------------------------------
  ! Explicit setup and solve
  ! ------------------------------------------------------------------
  ! Step 1: initialize a handle
  call tri_handle%init(comm)
  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ": ", trim(serr)
    stop 1
  endif

  ! Step 2: setup the problem
  call tri_handle%setup_matrix(A)
  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ": ", trim(serr)
    stop 1
  endif

  ! Step 3: setup the solver
  call tri_handle%setup_solver(plist)
  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ": ", trim(serr)
    stop 1
  endif

  ! Step 4: solve the system
  call tri_handle%solve(B, X)
  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ": ", trim(serr)
    stop 1
  endif

  ! Check the solution
  allocate(norms(1))
  call TA_norms%create(norms)
  call X%update(-one, Xtrue, one)
  call X%norm2(TA_norms)

  ! TODO: Get the tolerance out of the parameter list
  EXPECT_TRUE(TA_norms%back() < 1e-6)
  call TA_norms%release()

  ! Step 5: clean up
  call tri_handle%finalize()
  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ": ", trim(serr)
    stop 1
  endif

  call plist%release()
  call tri_handle%release()
  if (ierr /= 0) then
    write(*,*) "Got error ", ierr, ":", trim(serr)
    stop 1
  endif

  call X%release()
  call B%release()
  call A%release()

  call comm%release()

#ifdef HAVE_MPI
  ! Finalize MPI must be called after releasing all handles
  call MPI_FINALIZE(ierr)
  EXPECT_EQ(0, ierr)
#endif


end program