# libslirp + glib Compatibility Layer for MinGW Cross-Compile

## What This Is
libslirp (TCP/IP userspace stack for NE2000 emulation) depends on glib,
which is a massive library (~500 functions, depends on pcre2, libffi, etc.).
Instead of building full glib, we provide 31 compatibility functions that
cover everything libslirp actually calls.

## Files
- `glib_compat.h` — Drop-in glib.h replacement (types, macros, declarations)
- `glib_compat.c` — Implementations using stdlib (malloc/free/strcmp/etc.)
- `libslirp-version.h` — Version defines for libslirp
- `slirp_config.h` — Build config (IPv6 disabled)
- `libslirp.a` — Pre-built static library (x86_64-w64-mingw32, non-LTO)

## 31 glib Functions Provided

### Memory (7) — real implementations via stdlib
- `g_malloc` → malloc
- `g_malloc0` → calloc  
- `g_malloc_n` → malloc(a*b)
- `g_malloc0_n` → calloc
- `g_realloc` → realloc
- `g_free` → free
- Slice allocator macros → redirect to g_malloc/g_free

### Strings (11) — real implementations
- `g_strdup` → strdup
- `g_strfreev` → free each + free array
- `g_strv_length` → count until NULL
- `g_ascii_strcasecmp` → case-insensitive compare
- `g_str_has_prefix` → strncmp
- `g_strstr_len` → strstr
- `g_strlcpy` → snprintf
- `g_snprintf` → vsnprintf
- `g_vsnprintf` → vsnprintf
- `g_strerror` → strerror
- `g_getenv` → getenv

### Logging (5) — stderr or no-op
- `g_log` → no-op (glib log system not needed)
- `g_assertion_message_expr` → fprintf + abort
- `g_return_if_fail_warning` → no-op
- `g_warn_message` → no-op
- `g_parse_debug_string` → returns 0

### GRand (3) — real PRNG via rand()
- `g_rand_new` → malloc + seed
- `g_rand_free` → free
- `g_rand_int_range` → rand() % range

### GString (3) — real string builder
- `g_string_new` → malloc + strcpy
- `g_string_append_printf` → vsnprintf + realloc
- `g_string_free_and_steal` → return str, free wrapper

### GError (1)
- `g_error_free` → free

### Spawn/Shell (2) — return failure (not needed for NE2000)
- `g_shell_parse_argv` → returns 0 (failure)
- `g_spawn_async_with_fds` → returns 0 (failure)
- `g_spawn_async` → returns 0 (failure)

## How to Build libslirp With This

```bash
git clone --depth 1 https://gitlab.freedesktop.org/slirp/libslirp.git
cd libslirp

# Copy our headers
mkdir -p /usr/x86_64-w64-mingw32/include/glib-2.0
cp glib_compat.h /usr/x86_64-w64-mingw32/include/glib-2.0/glib.h
cp libslirp-version.h src/
cp slirp_config.h src/

# Compile glib stub
x86_64-w64-mingw32-gcc -O2 -c glib_compat.c -o glib_compat.o

# Compile ALL libslirp sources
# KEY FLAGS: -DBUILDING_LIBSLIRP (prevents __declspec(dllimport))
#            -DGLIB_STATIC_COMPILATION (uses direct function calls)
mkdir build-static
for f in src/*.c; do
    x86_64-w64-mingw32-gcc -O2 \
        -DGLIB_STATIC_COMPILATION -DBUILDING_LIBSLIRP \
        -I/usr/x86_64-w64-mingw32/include/glib-2.0 \
        -Isrc -I. \
        -c $f -o build-static/$(basename $f .c).o
done

# Create archive
x86_64-w64-mingw32-ar rcs libslirp.a build-static/*.o glib_compat.o
cp libslirp.a /usr/x86_64-w64-mingw32/lib/
```

## Critical Build Flags
- `-DBUILDING_LIBSLIRP` — Without this, libslirp.h uses
  `__declspec(dllimport)` which creates `__imp_` symbol references
  that can't resolve against static .o files
- `-DGLIB_STATIC_COMPILATION` — Prevents glib header from using
  `__declspec(dllimport)` for glib functions

## What If SLIRP Needs More glib Functions?
Any missing function causes a **link error** (not a silent failure).
Add the function to glib_compat.c. Most glib functions map directly
to a stdlib equivalent. The glib API docs at docs.gtk.org show the
semantics — implement with malloc/free/strcmp/etc.

Functions that DON'T need real implementations:
- Logging: g_log, g_warning, g_debug → no-op or fprintf
- GMainLoop/GIOChannel: not used by libslirp
- GHashTable: not used by libslirp
- GRegex/GMarkup/GKeyFile: not used by libslirp
