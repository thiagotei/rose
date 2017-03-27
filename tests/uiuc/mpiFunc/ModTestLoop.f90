

MODULE ModMPI

  include 'mpif.h'

CONTAINS
  Subroutine Agglomerate(region, ierr)

    USE ModGlobal
    USE ModDataStruct

    Implicit None

    ! ... function arguments
    type(t_region), pointer :: region
    integer :: ierr

    ! ... local variables
    real(rfreal), pointer :: ptr_to_data(:,:), buf2(:,:)
    type(t_grid), pointer :: grid
    type(t_mixt), pointer :: state
    integer :: ng, i, j, k, p, l0, ii, jj, kk
    integer, pointer :: ND(:,:), buf(:,:), remote_is(:,:), remote_ie(:,:)
    integer :: status(MPI_STATUS_SIZE)
    real(rfreal) :: timer

    Do ng = 1, region%nGrids

      ! ... start timer
      timer = MPI_WTime()
    End Do

  End Subroutine Agglomerate

END MODULE ModMPI
