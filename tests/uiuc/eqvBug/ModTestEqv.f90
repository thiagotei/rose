MODULE ModTestEqv

CONTAINS
  Subroutine TestEqv(opID_in, ierr)

    Implicit None

    integer, intent(inout) ::ierr
    integer, optional :: opID_in
    LOGICAL, DIMENSION(2) :: adjust 

   
    If (present(opID_in) .eqv. .true.) then  
        ierr = 0
        adjust(1) = .True.
        adjust(2) = .True.
    else
        ierr = 1
        adjust(1) = .False.
        adjust(2) = .False.
    end if
    IF (adjust(2) .EQV. .TRUE.) THEN  
        ierr = 1
    ENDIF

  End Subroutine TestEqv 

END MODULE ModTestEqv 
