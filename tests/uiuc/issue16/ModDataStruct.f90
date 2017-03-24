

Module ModDataStruct

        TYPE t_region
            TYPE(t_grid), POINTER :: grid(:)
        END TYPE t_region

        TYPE t_grid
             Type (t_mixt_input), pointer :: input
        END TYPE t_grid

        TYPE t_mixt_input
             INTEGER :: periodicStorage
        END TYPE t_mixt_input

End Module ModDataStruct

