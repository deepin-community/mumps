C
C  This file is part of MUMPS 5.6.2, released
C  on Wed Oct 11 09:36:25 UTC 2023
C
C
C  Copyright 1991-2023 CERFACS, CNRS, ENS Lyon, INP Toulouse, Inria,
C  Mumps Technologies, University of Bordeaux.
C
C  This version of MUMPS is provided to you free of charge. It is
C  released under the CeCILL-C license 
C  (see doc/CeCILL-C_V1-en.txt, doc/CeCILL-C_V1-fr.txt, and
C  https://cecill.info/licences/Licence_CeCILL-C_V1-en.html)
C
      INTEGER FUNCTION DMUMPS_IXAMAX(N,X,INCX,GRAIN)
      IMPLICIT NONE
      DOUBLE PRECISION, intent(in) :: X(*)
      INTEGER, intent(in) :: INCX,N
      INTEGER, intent(in) :: GRAIN
      INTEGER idamax
      DMUMPS_IXAMAX = idamax(N,X,INCX)
      RETURN
      END FUNCTION DMUMPS_IXAMAX
