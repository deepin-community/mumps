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
      MODULE CMUMPS_STATIC_PTR_M
      PUBLIC :: CMUMPS_TMP_PTR, CMUMPS_GET_TMP_PTR
      COMPLEX, DIMENSION(:), POINTER, SAVE :: CMUMPS_TMP_PTR
      CONTAINS
      SUBROUTINE CMUMPS_SET_STATIC_PTR(ARRAY)
      COMPLEX, DIMENSION(:), TARGET :: ARRAY
      CMUMPS_TMP_PTR => ARRAY
      RETURN
      END SUBROUTINE CMUMPS_SET_STATIC_PTR
      SUBROUTINE CMUMPS_GET_TMP_PTR(PTR)
#if defined(MUMPS_NOF2003)
      COMPLEX, DIMENSION(:), POINTER :: PTR
#else
      COMPLEX, DIMENSION(:), POINTER, INTENT(OUT) :: PTR
#endif
      PTR => CMUMPS_TMP_PTR
      RETURN
      END SUBROUTINE CMUMPS_GET_TMP_PTR
      END MODULE CMUMPS_STATIC_PTR_M
