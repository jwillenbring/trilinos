#This file contains the options needed to both run the pull request testing
#for Trilinos for the GCC 4.8.4 build, and to reproduce the errors reported
#by that pull request testing build. Prior to using this this file, the
#appropriate set of SEMS modules must be loaded and accessible through the
#SEMS NFS mount.

# Usage: cmake -C PullRequestGCC4.8.4TestingSettings.cmake 

# Misc options typically added by CI testing mode in TriBITS

# Use the below option only when submitting to the dashboard
#set (CTEST_USE_LAUNCHERS ON CACHE BOOL "Set by default for PR testing")

set (Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_ALLOW_NO_PACKAGES ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_DISABLE_ENABLED_FORWARD_DEP_PACKAGES ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_ENABLE_SECONDARY_TESTED_CODE ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_IGNORE_MISSING_EXTRA_REPOSITORIES ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_ENABLE_TESTS ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_TEST_CATEGORIES BASIC CACHE STRING "Set by default for PR testing")
set (Trilinos_ENABLE_CONFIGURE_TIMING ON CACHE BOOL "Set by default for PR testing")


# Options from cmake/std/MpiReleaseDebugSharedPtSettings.cmake

set (TPL_ENABLE_MPI ON CACHE BOOL "Set by default for PR testing")
set (CMAKE_BUILD_TYPE RELEASE CACHE STRING "Set by default for PR testing")
set (Trilinos_ENABLE_DEBUG ON CACHE BOOL "Set by default for PR testing")
set (BUILD_SHARED_LIBS ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_ENABLE_DEBUG_SYMBOLS ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_ENABLE_EXPLICIT_INSTANTIATION ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_ENABLE_SECONDARY_TESTED_CODE OFF CACHE BOOL "Set by default for PR testing")
set (Teuchos_ENABLE_DEFAULT_STACKTRACE OFF CACHE BOOL "Set by default for PR testing")


# Options from cmake/std/BasicCiTestingSettings.cmake

set (Trilinos_TPL_SYSTEM_INCLUDE_DIRS TRUE CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_GLM OFF CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_Matio OFF CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_X11 OFF CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_Pthread ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_BLAS ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_LAPACK ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_Boost ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_BoostLib ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_ParMETIS ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_Zlib ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_HDF5 ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_Netcdf ON CACHE BOOL "Set by default for PR testing")
set (TPL_ENABLE_SuperLU ON CACHE BOOL "Set by default for PR testing")
set (Trilinos_TRACE_ADD_TEST ON CACHE BOOL "Set by default for PR testing")
# Disable long-failing Piro test until it can be fixed (#826)
set (Piro_EpetraSolver_MPI_4_DISABLE ON CACHE BOOL "Set by default for PR testing")

