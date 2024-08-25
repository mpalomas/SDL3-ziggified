/*
  Simple DirectMedia Layer
  Copyright (C) 1997-2024 Sam Lantinga <slouken@libsdl.org>

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

#ifndef SDL_build_config_minimal_h_
#define SDL_build_config_minimal_h_
#define SDL_build_config_h_

#include <SDL3/SDL_platform_defines.h>

/**
 *  \file SDL_build_config_minimal.h
 *
 *  This is the minimal configuration that can be used to build SDL.
 */

#define HAVE_STDARG_H   1
#define HAVE_STDDEF_H   1

#if !defined(HAVE_STDINT_H) && !defined(_STDINT_H_)
/* Most everything except Visual Studio 2008 and earlier has stdint.h now */
#if defined(_MSC_VER) && (_MSC_VER < 1600)
typedef signed __int8 int8_t;
typedef unsigned __int8 uint8_t;
typedef signed __int16 int16_t;
typedef unsigned __int16 uint16_t;
typedef signed __int32 int32_t;
typedef unsigned __int32 uint32_t;
typedef signed __int64 int64_t;
typedef unsigned __int64 uint64_t;
#ifndef _UINTPTR_T_DEFINED
#ifdef  _WIN64
typedef unsigned __int64 uintptr_t;
#else
typedef unsigned int uintptr_t;
#endif
#define _UINTPTR_T_DEFINED
#endif
#else
#define HAVE_STDINT_H 1
#endif /* Visual Studio 2008 */
#endif /* !_STDINT_H_ && !HAVE_STDINT_H */

#ifdef __GNUC__
#define HAVE_GCC_SYNC_LOCK_TEST_AND_SET 1
#endif

/* Comment this if you want to build without any C library requirements */
#define HAVE_LIBC 1
#ifdef HAVE_LIBC

/* Useful headers */
#define HAVE_ALLOCA_H 1
#define HAVE_FLOAT_H 1
#define HAVE_ICONV_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_LIMITS_H 1
#define HAVE_MALLOC_H 1
#define HAVE_MATH_H 1
#define HAVE_MEMORY_H 1
#define HAVE_SIGNAL_H 1
#define HAVE_STDARG_H 1
#define HAVE_STDBOOL_H 1
#define HAVE_STDDEF_H 1
#define HAVE_STDINT_H 1
#define HAVE_STDIO_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRINGS_H 1
#define HAVE_STRING_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_WCHAR_H 1
/* #undef HAVE_PTHREAD_NP_H */

/* C library functions */
#define HAVE_DLOPEN 1
#define HAVE_MALLOC 1
#define HAVE_CALLOC 1
#define HAVE_REALLOC 1
#define HAVE_FREE 1
#define HAVE_GETENV 1
#define HAVE_SETENV 1
#define HAVE_PUTENV 1
#define HAVE_UNSETENV 1
#define HAVE_ABS 1
#define HAVE_BCOPY 1
#define HAVE_MEMSET 1
#define HAVE_MEMCPY 1
#define HAVE_MEMMOVE 1
#define HAVE_MEMCMP 1
#define HAVE_WCSLEN 1
#define HAVE_WCSNLEN 1
#define HAVE_WCSLCPY 1
#define HAVE_WCSLCAT 1
/* #undef HAVE__WCSDUP */
#define HAVE_WCSDUP 1
#define HAVE_WCSSTR 1
#define HAVE_WCSCMP 1
#define HAVE_WCSNCMP 1
#define HAVE_WCSTOL 1
#define HAVE_STRLEN 1
#define HAVE_STRNLEN 1
#define HAVE_STRLCPY 1
#define HAVE_STRLCAT 1
/* #undef HAVE__STRREV */
/* #undef HAVE__STRUPR */
/* #undef HAVE__STRLWR */
#define HAVE_INDEX 1
#define HAVE_RINDEX 1
#define HAVE_STRCHR 1
#define HAVE_STRRCHR 1
#define HAVE_STRSTR 1
/* #undef HAVE_STRNSTR */
#define HAVE_STRTOK_R 1
/* #undef HAVE_ITOA */
/* #undef HAVE__LTOA */
/* #undef HAVE__UITOA */
/* #undef HAVE__ULTOA */
#define HAVE_STRTOL 1
#define HAVE_STRTOUL 1
/* #undef HAVE__I64TOA */
/* #undef HAVE__UI64TOA */
#define HAVE_STRTOLL 1
#define HAVE_STRTOULL 1
#define HAVE_STRTOD 1
#define HAVE_ATOI 1
#define HAVE_ATOF 1
#define HAVE_STRCMP 1
#define HAVE_STRNCMP 1
#define HAVE_STRCASESTR 1
#define HAVE_SSCANF 1
#define HAVE_VSSCANF 1
#define HAVE_VSNPRINTF 1
#define HAVE_ACOS 1
#define HAVE_ACOSF 1
#define HAVE_ASIN 1
#define HAVE_ASINF 1
#define HAVE_ATAN 1
#define HAVE_ATANF 1
#define HAVE_ATAN2 1
#define HAVE_ATAN2F 1
#define HAVE_CEIL 1
#define HAVE_CEILF 1
#define HAVE_COPYSIGN 1
#define HAVE_COPYSIGNF 1
#define HAVE_COS 1
#define HAVE_COSF 1
#define HAVE_EXP 1
#define HAVE_EXPF 1
#define HAVE_FABS 1
#define HAVE_FABSF 1
#define HAVE_FLOOR 1
#define HAVE_FLOORF 1
#define HAVE_FMOD 1
#define HAVE_FMODF 1
#define HAVE_ISINF 1
#define HAVE_ISINFF 1
#define HAVE_ISINF_FLOAT_MACRO 1
#define HAVE_ISNAN 1
#define HAVE_ISNANF 1
#define HAVE_ISNAN_FLOAT_MACRO 1
#define HAVE_LOG 1
#define HAVE_LOGF 1
#define HAVE_LOG10 1
#define HAVE_LOG10F 1
#define HAVE_LROUND 1
#define HAVE_LROUNDF 1
#define HAVE_MODF 1
#define HAVE_MODFF 1
#define HAVE_POW 1
#define HAVE_POWF 1
#define HAVE_ROUND 1
#define HAVE_ROUNDF 1
#define HAVE_SCALBN 1
#define HAVE_SCALBNF 1
#define HAVE_SIN 1
#define HAVE_SINF 1
#define HAVE_SQRT 1
#define HAVE_SQRTF 1
#define HAVE_TAN 1
#define HAVE_TANF 1
#define HAVE_TRUNC 1
#define HAVE_TRUNCF 1
#define HAVE_FOPEN64 1
#define HAVE_FSEEKO 1
#define HAVE_FSEEKO64 1
#define HAVE_MEMFD_CREATE 1
#define HAVE_POSIX_FALLOCATE 1
#define HAVE_SIGACTION 1
#define HAVE_SA_SIGACTION 1
#define HAVE_ST_MTIM 1
#define HAVE_SETJMP 1
#define HAVE_NANOSLEEP 1
#define HAVE_GMTIME_R 1
#define HAVE_LOCALTIME_R 1
#define HAVE_NL_LANGINFO 1
#define HAVE_SYSCONF 1
/* #undef HAVE_SYSCTLBYNAME */
#define HAVE_CLOCK_GETTIME 1
#define HAVE_GETPAGESIZE 1
#define HAVE_ICONV 1
/* #undef SDL_USE_LIBICONV */
#define HAVE_PTHREAD_SETNAME_NP 1
/* #undef HAVE_PTHREAD_SET_NAME_NP */
#define HAVE_SEM_TIMEDWAIT 1
#define HAVE_GETAUXVAL 1
/* #undef HAVE_ELF_AUX_INFO */
#define HAVE_POLL 1
#define HAVE__EXIT 1

#else
#define HAVE_STDARG_H 1
#define HAVE_STDDEF_H 1
#define HAVE_STDINT_H 1
#define HAVE_FLOAT_H 1
#endif /* HAVE_LIBC */


#define SDL_JOYSTICK_HIDAPI 1

/* Enable various shared object loading systems */
#define SDL_LOADSO_DLOPEN 1

#define SDL_THREAD_PTHREAD 1
#define SDL_THREAD_PTHREAD_RECURSIVE_MUTEX 1

/* Enable various RTC systems */
#define SDL_TIME_UNIX 1
#define SDL_TIMER_UNIX 1

/* Enable the dummy audio driver (src/audio/dummy/\*.c) */
#define SDL_AUDIO_DRIVER_DUMMY  1

/* Enable the stub joystick driver (src/joystick/dummy/\*.c) */
#define SDL_JOYSTICK_DISABLED   1

/* Enable the stub haptic driver (src/haptic/dummy/\*.c) */
#define SDL_HAPTIC_DISABLED 1

/* Enable the stub HIDAPI */
#define SDL_HIDAPI_DISABLED 1

/* Enable the stub sensor driver (src/sensor/dummy/\*.c) */
#define SDL_SENSOR_DISABLED 1

/* Enable the dummy shared object loader (src/loadso/dummy/\*.c) */
#define SDL_LOADSO_DUMMY 1

/* Enable the stub thread support (src/thread/generic/\*.c) */
#define SDL_THREADS_DISABLED    1

/* Enable the dummy video driver (src/video/dummy/\*.c) */
#define SDL_VIDEO_DRIVER_DUMMY  1

/* Enable the dummy filesystem driver (src/filesystem/dummy/\*.c) */
#undef SDL_FILESYSTEM_DUMMY
#undef SDL_FSOPS_DUMMY 0

/* Enable the camera driver (src/camera/dummy/\*.c) */
#define SDL_CAMERA_DRIVER_DUMMY  1


#define SDL_VIDEO_DRIVER_X11 1
#define SDL_VIDEO_DRIVER_X11_HAS_XKBLOOKUPKEYSYM 1
#define SDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS 1
#define SDL_VIDEO_DRIVER_X11_XCURSOR 1
#define SDL_VIDEO_DRIVER_X11_XDBE 1
#define SDL_VIDEO_DRIVER_X11_XFIXES 1
#define SDL_VIDEO_DRIVER_X11_XINPUT2 1
#define SDL_VIDEO_DRIVER_X11_XINPUT2_SUPPORTS_MULTITOUCH 1
#define SDL_VIDEO_DRIVER_X11_XRANDR 1
#define SDL_VIDEO_DRIVER_X11_XSCRNSAVER 1
#define SDL_VIDEO_DRIVER_X11_XSHAPE 1

#define SDL_VIDEO_RENDER_VULKAN 1
#define SDL_VIDEO_RENDER_OGL 1
#define SDL_VIDEO_RENDER_OGL_ES2 1

#define SDL_VIDEO_OPENGL 1
#define SDL_VIDEO_OPENGL_ES 1
#define SDL_VIDEO_OPENGL_ES2 1
#define SDL_VIDEO_OPENGL_GLX 1
#define SDL_VIDEO_OPENGL_EGL 1

#define SDL_VIDEO_VULKAN 1
#define SDL_GPU_VULKAN 1

#undef SDL_POWER_LINUX
#define SDL_FILESYSTEM_UNIX 1

#define SDL_FSOPS_POSIX 1

#define DYNAPI_NEEDS_DLOPEN 1

#define SDL_DISABLE_LSX 1
#define SDL_DISABLE_LASX 1
#define SDL_DISABLE_NEON 1

#endif /* SDL_build_config_minimal_h_ */
