# - Config file for the HESea package
# It defines the following variables
#  HESEA_INCLUDE_DIRS - include directories for HESea
#  HESEA_LIBRARIES    - libraries to link against

get_filename_component(HESEA_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT HESea_BINARY_DIR)
  include("${HESEA_CMAKE_DIR}/HESeaTargets.cmake")
endif()

# These are IMPORTED targets created by HESeaTargets.cmake
set(HESEA_INCLUDE "/home/ubuntu/work/1/HESEA_Lib/build/install/include/hesea")
set(HESEA_LIBDIR "/home/ubuntu/work/1/HESEA_Lib/build/install/lib")
set(HESEA_LIBRARIES HESEAcore;HESEApke;HESEAbinfhe  -fopenmp)
set(HESEA_STATIC_LIBRARIES   -fopenmp)
set(HESEA_SHARED_LIBRARIES HESEAcore;HESEApke;HESEAbinfhe  -fopenmp)
set(BASE_HESEA_VERSION 1.11.9)


set(OPENMP_INCLUDES "" )
set(OPENMP_LIBRARIES "" )

set(HESEA_CXX_FLAGS " -O3  -DHESEA_VERSION=1.11.9 -Wno-parentheses -DMATHBACKEND=2 -fopenmp -fopenmp")
set(HESEA_C_FLAGS " -O3  -DHESEA_VERSION=1.11.9 -DMATHBACKEND=2 -fopenmp -fopenmp")

if( "OFF" STREQUAL "Y" )
	set(HESEA_CXX_FLAGS "${HESEA_CXX_FLAGS} -DWITH_NTL" )
	set(HESEA_C_FLAGS "${HESEA_C_FLAGS} -DWITH_NTL")
endif()

set (HESEA_EXE_LINKER_FLAGS "  ")

# CXX info
set(HESEA_CXX_STANDARD "11")
set(HESEA_CXX_COMPILER_ID "GNU")
set(HESEA_CXX_COMPILER_VERSION "9.4.0")

# Build Options
set(HESEA_STATIC "OFF")
set(HESEA_SHARED "ON")
set(HESEA_TCM "OFF")
set(HESEA_WITH_INTEL_HEXL "OFF")
set(HESEA_OPENMP "ON")
set(HESEA_NATIVE_SIZE "64")
set(HESEA_CKKS_M_FACTOR "1")
set(HESEA_NATIVEOPT "OFF")

# Math Backend
if("ON")
	set(HESEA_BACKEND "BE2")
elseif("ON")
	set(HESEA_BACKEND "BE4")
elseif("OFF")
	set(HESEA_BACKEND "NTL")
endif()

# Build Details
set(HESEA_EMSCRIPTEN "")
set(HESEA_ARCHITECTURE "x86_64")
set(HESEA_BACKEND_FLAGS_BASE "-DMATHBACKEND=2")

# Compile Definitions

if( "ON" )
	set(HESEA_BINFHE_COMPILE_DEFINITIONS "")
	set(HESEA_CORE_COMPILE_DEFINITIONS "_compile_defs-NOTFOUND")
	set(HESEA_PKE_COMPILE_DEFINITIONS "_compile_defs-NOTFOUND")
	set(HESEA_COMPILE_DEFINITIONS
			${HESEA_BINFHE_COMPILE_DEFINITIONS}
			${HESEA_CORE_COMPILE_DEFINITIONS}
			${HESEA_PKE_COMPILE_DEFINITIONS})
endif()

if( "OFF" )
	set(HESEA_BINFHE_COMPILE_DEFINITIONS_STATIC "")
	set(HESEA_CORE_COMPILE_DEFINITIONS_STATIC "")
	set(HESEA_PKE_COMPILE_DEFINITIONS_STATIC "")
	set(HESEA_COMPILE_DEFINITIONS_STATIC
			${HESEA_BINFHE_COMPILE_DEFINITIONS_STATIC}
			${HESEA_CORE_COMPILE_DEFINITIONS_STATIC}
			${HESEA_PKE_COMPILE_DEFINITIONS_STATIC})
endif()
