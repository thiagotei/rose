
Module ModTestCont

 CONTAINS


     Subroutine SRT2(FcLen)
        integer, intent(in) :: FcLen

        integer i

        do i = 1, FcLen
!           if(MOD(NP,primes(p))==0) then
!              TempFac(i) = INT(primes(p))
!              Np = Np / primes(p)
!              counter = counter + 1
!           else
              ! ... next prime number
              p = p + 1
              if(p > 12) p = p + 2 
!           end if
        end do

     End Subroutine SRT2

     

End Module ModTestCont
