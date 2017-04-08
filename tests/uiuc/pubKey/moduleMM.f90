
Module ModuleMM


IMPLICIT NONE

INTEGER :: A

CONTAINS
!Subroutine to find product of two matrices
!Author : Louisda16th a.k.a Ashwith J. Rego
!Description:
!Product of two matrices is defined by
!c(i,j) = a(i,1)*b(1,j) + a(i,2)*b(2,j)+........+a(i,n)*b(n,j)
!
SUBROUTINE MATRIXPRODUCT(A, rowsA, colsA, B, rowsB, colsB, C, rowsC, colsC, ErrCode)
!Declarations
        IMPLICIT NONE
        INTEGER, INTENT(IN) :: rowsA, colsA, rowsB, colsB !Matrix Dimensions
        INTEGER, INTENT(INOUT) :: rowsC, colsC, ErrCode !Product matrix dimensions
        REAL, DIMENSION(rowsA,colsA) :: A !Matrix A
        REAL, INTENT(IN), DIMENSION(rowsB,colsB) :: B !Matrix B
        REAL, DIMENSION(rowsA,colsC) :: C !Matrix C
        
        INTEGER :: i, j, k !Counters
        
        IF (colsA /= rowsB) THEN !Two matrices can be multiplied if and only if the number of columns
                PRINT*,"Error! Order of matrices donot match" !of the first matrix equals the number of rows of the second
                ErrCode = -1 !ErrCode = -1 => Subroutine returned unsuccessfully
                RETURN
        ELSE
                rowsC = rowsA
                colsC = colsB
        ENDIF
        
        !Initialize product matrix to 0
        DO i = 1, rowsC
                DO j = 1, ColsC
                        C(i,j) = 0
                END DO
        END DO
        
        !Find product as per above formula
!$  uiuc_unroll 3 5
        DO i = 1, rowsA, 1
                DO j = 1, colsB, 1
                        DO k = 1, colsA, 1 
                                C(i,j) = C(i,j) + A(i,k)*B(k,j)
                        END DO
                END DO
        END DO
        
        !ErrCode = 1 => Subroutine returned successfully
        ErrCode = 1
        
END SUBROUTINE MATRIXPRODUCT

END MODULE ModuleMM
