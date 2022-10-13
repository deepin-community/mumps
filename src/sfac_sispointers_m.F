C
C  This file is part of MUMPS 5.4.1, released
C  on Tue Aug  3 09:49:43 UTC 2021
C
C
C  Copyright 1991-2021 CERFACS, CNRS, ENS Lyon, INP Toulouse, Inria,
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