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
       MODULE SMUMPS_FAC_S_IS_POINTERS_M
C      ----------------------------------
C      This module defines a type used in 
C      SMUMPS_FAC_DRIVER and SMUMPS_FAC_B
C      ----------------------------------
       TYPE S_IS_POINTERS_T
          REAL, POINTER, DIMENSION(:) :: A
          INTEGER, POINTER, DIMENSION(:) :: IW
       END TYPE S_IS_POINTERS_T
       END MODULE SMUMPS_FAC_S_IS_POINTERS_M
