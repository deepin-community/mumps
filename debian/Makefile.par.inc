#
#  This file is part of MUMPS 5.1.1, released
#  on Mon Mar 20 14:34:33 UTC 2017
#
# These settings for a PC under Debian/linux with standard packages :
# metis (parmetis), scotch (ptscotch), mpi (openmpi|mpich), gfortran

# packages installation : 
# apt-get install libmetis-dev libparmetis-dev libscotch-dev libptscotch-dev libatlas-base-dev mpi-default-dev lapack-dev

# Adapted by Drew Parsons from Make.inc/Makefile.debian.PAR
# based on Adam Powell's earlier adaptation from Makefile.gfortran.par

# Begin orderings
LSCOTCHDIR = /usr/lib
ISCOTCH   = -I/usr/include/scotch

#LSCOTCH   = -L$(LSCOTCHDIR) -lptesmumps -lptscotch -lptscotcherr
LSCOTCH   = -L$(LSCOTCHDIR) -lesmumps -lscotch -lscotcherr

LPORDDIR = $(topdir)/PORD/lib/
IPORD    = -I$(topdir)/PORD/include/
LPORD    = -L$(LPORDDIR) -lpord$(PLAT)

LMETISDIR = /usr/lib 
#IMETIS    = -I/usr/include/parmetis
IMETIS    = -I/usr/include/metis

# LMETIS    = -L$(LMETISDIR) -lparmetis -lmetis
LMETIS    = -L$(LMETISDIR) -lmetis

# Corresponding variables reused later
#ORDERINGSF = -Dmetis -Dpord -Dparmetis -Dscotch -Dptscotch
#ORDERINGSF = -Dmetis -Dpord -Dscotch
ORDERINGSF = -Dpord
ORDERINGSC  = $(ORDERINGSF)

#LORDERINGS = $(LMETIS) $(LPORD) $(LSCOTCH)
#IORDERINGSF = $(ISCOTCH)
#IORDERINGSC = $(IMETIS) $(IPORD) $(ISCOTCH)
LORDERINGS = $(LPORD)
IORDERINGSF =
IORDERINGSC = $(IPORD)
# End orderings
################################################################################

PLAT    =
LIBEXT  = .so
OUTC    = -o 
OUTF    = -o 
RM = /bin/rm -f
CC = mpicc
FC = mpifort
FL = mpifort
AR = ar vr 
RANLIB = ranlib
LAPACK = -llapack
SCALAP  = -lscalapack-$(MUMPS_MPI)

INCPAR =

MPIFLIB = 
MPICLIB = -lmpi
LIBPAR = $(SCALAP) $(LAPACK) $(MPIFLIB)

INCSEQ = -I$(topdir)/libseq
LIBSEQ  = $(LAPACK) -L$(topdir)/libseq -lmpiseq$(PLAT)

LIBBLAS = -lblas
LIBOTHERS = -lpthread

#Preprocessor defs for calling Fortran from C (-DAdd_ or -DAdd__ or -DUPPER)
CDEFS   = -DAdd_

#Begin Optimized options
# uncomment -fopenmp in lines below to benefit from OpenMP
OPTF    := $(shell dpkg-buildflags --get FFLAGS) $(OPTF_64BIT) $(OPTF_DEBIAN) -Dintel_ # -fopenmp
OPTL    := $(shell dpkg-buildflags --get LDFLAGS) # -fopenmp
OPTC    := $(shell dpkg-buildflags --get CFLAGS) $(OPTC_64BIT)  # -fopenmp
#End Optimized options
INCS = $(INCPAR)
LIBS = $(LIBPAR)
LIBSEQNEEDED =
