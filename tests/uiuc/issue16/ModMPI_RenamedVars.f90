
Module ModMPI

    USE ModDataStruct

CONTAINS

    subroutine SRTest1(region, gridID)
        type(t_region), pointer :: region
        integer :: gridID

        !type(t_grid), pointer :: grid_local
        type(t_grid), pointer :: grid_local (:)
        type(t_grid), pointer :: grid_elem
        type(t_mixt_input), pointer :: input
!        integer, pointer :: p(:)
!        integer :: m 

 !       m = p(3)
                
        
        !grid_local => region%grid(gridID)
        grid_local => region%grid
        grid_elem => grid_local(gridID)
        !input => grid_local%input
        input => grid_elem%input
        
    end subroutine SRTest1

End Module ModMPI
