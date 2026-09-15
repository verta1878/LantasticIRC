#ifndef GLIB_COMPAT_H
#define GLIB_COMPAT_H

#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdint.h>

/* Basic types */
typedef char gchar;
typedef int gboolean;
typedef unsigned int guint;
typedef int gint;
typedef unsigned long gsize;
typedef long gssize;
typedef void* gpointer;
typedef const void* gconstpointer;
typedef unsigned char guint8;
typedef signed char gint8;
typedef unsigned short guint16;
typedef signed short gint16;
typedef unsigned int guint32;
typedef signed int gint32;
typedef unsigned long long guint64;
typedef signed long long gint64;
typedef guint16 gunichar2;

#define TRUE 1
#define FALSE 0

/* Byte order */
#define G_LITTLE_ENDIAN 1234
#define G_BIG_ENDIAN 4321
#define G_BYTE_ORDER G_LITTLE_ENDIAN
#define GLIB_SIZEOF_VOID_P 8
#define G_GINT64_FORMAT "lld"
#define G_GUINT64_FORMAT "llu"
#define G_GSIZE_FORMAT "lu"

/* Byte swap */
#define g_ntohs(x) __builtin_bswap16(x)
#define g_ntohl(x) __builtin_bswap32(x)
#define g_htons(x) __builtin_bswap16(x)
#define g_htonl(x) __builtin_bswap32(x)

/* Macros */
#define G_LIKELY(x) __builtin_expect(!!(x),1)
#define G_UNLIKELY(x) __builtin_expect(!!(x),0)
#define G_GNUC_PRINTF(a,b)
#define G_N_ELEMENTS(a) (sizeof(a)/sizeof((a)[0]))
#define G_STRUCT_OFFSET(t,f) ((gsize)&((t*)0)->f)
#define G_STATIC_ASSERT(e) _Static_assert(e, #e)
#define GLIB_CHECK_VERSION(a,b,c) 0
#ifndef MIN
#define MIN(a,b) ((a)<(b)?(a):(b))
#endif
#ifndef MAX
#define MAX(a,b) ((a)>(b)?(a):(b))
#endif

/* Assertions */
#define g_assert(e) if(!(e)) abort()
#define g_assert_not_reached() abort()
#define g_return_val_if_fail(e,v) if(!(e)) return (v)
#define g_return_if_fail(e) if(!(e)) return
#define g_warn_if_reached()

/* Logging */
#define G_LOG_LEVEL_WARNING 4
#define G_LOG_LEVEL_CRITICAL 5
#define g_critical(...) fprintf(stderr, __VA_ARGS__)
#define g_error(...) do { fprintf(stderr, __VA_ARGS__); abort(); } while(0)
#define g_warning(...) fprintf(stderr, __VA_ARGS__)
#define g_debug(...)

/* Memory */
void* g_malloc(gsize n);
void* g_malloc0(gsize n);
void* g_malloc_n(gsize a, gsize b);
void* g_malloc0_n(gsize a, gsize b);
void* g_realloc(void* p, gsize n);
void g_free(void* p);
#define g_new(t,n) ((t*)g_malloc(sizeof(t)*(n)))
#define g_new0(t,n) ((t*)g_malloc0(sizeof(t)*(n)))
#define g_slice_alloc(sz) g_malloc(sz)
#define g_slice_alloc0(sz) g_malloc0(sz)
#define g_slice_free1(sz,p) g_free(p)
#define g_slice_new(t) ((t*)g_malloc(sizeof(t)))
#define g_slice_new0(t) ((t*)g_malloc0(sizeof(t)))
#define g_slice_free(t,p) g_free(p)

/* Strings */
char* g_strdup(const char* s);
void g_strfreev(char** v);
guint g_strv_length(char** v);
int g_ascii_strcasecmp(const char* a, const char* b);
gboolean g_str_has_prefix(const char* s, const char* p);
char* g_strstr_len(const char* h, int l, const char* n);
gsize g_strlcpy(char* d, const char* s, gsize n);
int g_snprintf(char* s, gsize n, const char* f, ...) G_GNUC_PRINTF(3,4);
int g_vsnprintf(char* s, gsize n, const char* f, va_list a);
const char* g_strerror(int e);
const char* g_getenv(const char* v);

/* Logging functions */
void g_log(const char* d, int l, const char* f, ...);
void g_assertion_message_expr(const char* d, const char* f, int l, const char* fn, const char* e);
void g_return_if_fail_warning(const char* d, const char* f, const char* e);
void g_warn_message(const char* d, const char* f, int l, const char* fn, const char* e);
guint g_parse_debug_string(const char* s, void* k, guint n);

/* GError */
typedef struct _GError { int domain; int code; char* message; } GError;
void g_error_free(GError* e);
#define g_set_error(e,...)
#define g_error_matches(e,d,c) 0

/* GRand */
typedef struct _GRand GRand;
GRand* g_rand_new(void);
void g_rand_free(GRand* r);
gint g_rand_int_range(GRand* r, gint a, gint b);

/* GString */
typedef struct _GString { char* str; gsize len; gsize allocated_len; } GString;
GString* g_string_new(const char* s);
void g_string_append_printf(GString* g, const char* f, ...);
char* g_string_free_and_steal(GString* g);

/* Spawn/shell */
gboolean g_shell_parse_argv(const char* c, int* ac, char*** av, GError** e);
gboolean g_spawn_async_with_fds(const char* d, char** av, char** ev, int f, void* s, void* u, void* p, int si, int so, int se, GError** e);

typedef char** GStrv;
typedef char** GStrv;
typedef void (*GSpawnChildSetupFunc)(gpointer);
typedef struct { guint key; const gchar* name; } GDebugKey;
typedef int GSpawnFlags;
typedef int GPid;

#define G_SPAWN_SEARCH_PATH 4

#define G_SPAWN_DO_NOT_REAP_CHILD 8

#define G_SPAWN_CHILD_INHERITS_STDIN 32

#define G_SPAWN_SEARCH_PATH_FROM_ENVP 128

#endif /* GLIB_COMPAT_H */
