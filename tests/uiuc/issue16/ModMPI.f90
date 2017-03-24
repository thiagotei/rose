
Module ModMPI

    USE ModDataStruct

CONTAINS

    subroutine SRTest1(region, gridID)
        type(t_region), pointer :: region
        integer :: gridID

        type(t_grid), pointer :: grid
        type(t_mixt_input), pointer :: input
        
        grid => region%grid(gridID)
        input => grid%input
        
    end subroutine SRTest1

End Module ModMPI
