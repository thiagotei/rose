MODULE ModTestEqv

CONTAINS
  Subroutine TestEqv(opID_in, ierr)

    Implicit None

    integer, intent(inout) ::ierr
    integer, optional :: opID_in

   
    If (present(opID_in) .eqv. .true.) then  
        ierr = 0
    else
        ierr = 1
    end if

  End Subroutine TestEqv 

END MODULE ModTestEqv 
