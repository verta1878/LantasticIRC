#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

/* Minimal glib stubs for libslirp */
typedef void* gpointer;
typedef unsigned int guint;
typedef int gboolean;
typedef char gchar;

void* g_malloc(unsigned long n) { return malloc(n); }
void* g_malloc0(unsigned long n) { void* p = malloc(n); if(p) memset(p,0,n); return p; }
void* g_malloc_n(unsigned long a, unsigned long b) { return malloc(a*b); }
void* g_malloc0_n(unsigned long a, unsigned long b) { void* p = malloc(a*b); if(p) memset(p,0,a*b); return p; }
void* g_realloc(void* p, unsigned long n) { return realloc(p,n); }
void g_free(void* p) { free(p); }
char* g_strdup(const char* s) { return s ? strdup(s) : NULL; }
void g_strfreev(char** v) { if(v){for(int i=0;v[i];i++)free(v[i]);free(v);} }
unsigned int g_strv_length(char** v) { unsigned int n=0; if(v) while(v[n]) n++; return n; }
int g_ascii_strcasecmp(const char* a, const char* b) { 
    while(*a && *b) { char ca=*a|32, cb=*b|32; if(ca!=cb) return ca-cb; a++; b++; }
    return *a - *b;
}
int g_str_has_prefix(const char* s, const char* p) { return strncmp(s,p,strlen(p))==0; }
char* g_strstr_len(const char* h, int l, const char* n) { (void)l; return strstr((char*)h,n); }
unsigned long g_strlcpy(char* d, const char* s, unsigned long n) { return snprintf(d,n,"%s",s); }
int g_snprintf(char* s, unsigned long n, const char* f, ...) { va_list a; va_start(a,f); int r=vsnprintf(s,n,f,a); va_end(a); return r; }
int g_vsnprintf(char* s, unsigned long n, const char* f, va_list a) { return vsnprintf(s,n,f,a); }
void g_log(const char* d, int l, const char* f, ...) { (void)d;(void)l;(void)f; }
void g_assertion_message_expr(const char* d, const char* f, int l, const char* fn, const char* e) { fprintf(stderr,"ASSERT: %s:%d %s: %s\n",f,l,fn,e); abort(); }
void g_return_if_fail_warning(const char* d, const char* f, const char* e) { (void)d;(void)f;(void)e; }
void g_warn_message(const char* d, const char* f, int l, const char* fn, const char* e) { (void)d;(void)f;(void)l;(void)fn;(void)e; }
const char* g_strerror(int e) { return strerror(e); }
const char* g_getenv(const char* v) { return getenv(v); }
void g_error_free(void* e) { free(e); }
unsigned int g_parse_debug_string(const char* s, void* k, unsigned int n) { (void)s;(void)k;(void)n; return 0; }

/* GRand stubs */
typedef struct { unsigned int seed; } GRand;
GRand* g_rand_new(void) { GRand* r = (GRand*)malloc(sizeof(GRand)); r->seed = 42; return r; }
void g_rand_free(GRand* r) { free(r); }
int g_rand_int_range(GRand* r, int a, int b) { (void)r; return a + (rand() % (b-a)); }

/* GString stubs */
typedef struct { char* str; unsigned long len, allocated; } GString;
GString* g_string_new(const char* s) { GString* g=(GString*)malloc(sizeof(GString)); g->len=s?strlen(s):0; g->allocated=g->len+64; g->str=(char*)malloc(g->allocated); if(s)strcpy(g->str,s); else g->str[0]=0; return g; }
void g_string_append_printf(GString* g, const char* f, ...) { va_list a; va_start(a,f); char buf[1024]; vsnprintf(buf,sizeof(buf),f,a); va_end(a); unsigned long nl=g->len+strlen(buf); if(nl>=g->allocated){g->allocated=nl+64;g->str=(char*)realloc(g->str,g->allocated);} strcat(g->str,buf); g->len=nl; }
char* g_string_free_and_steal(GString* g) { char* s=g->str; free(g); return s; }

/* g_shell_parse_argv stub */
int g_shell_parse_argv(const char* c, int* ac, char*** av, void** e) { (void)c;(void)ac;(void)av;(void)e; return 0; }

/* g_spawn stub */
int g_spawn_async_with_fds(const char* d, char** av, char** ev, int f, void* s, void* u, void* p, int si, int so, int se, void** e) { (void)d;(void)av;(void)ev;(void)f;(void)s;(void)u;(void)p;(void)si;(void)so;(void)se;(void)e; return 0; }
int g_spawn_async(const char* d, char** av, char** ev, int f, void* s, void* u, void* p, void** e) { (void)d;(void)av;(void)ev;(void)f;(void)s;(void)u;(void)p;(void)e; return 0; }
char* g_string_free(void* g, int f) { GString* gs=(GString*)g; char* s=gs->str; if(f){free(s);s=NULL;} free(gs); return s; }
void g_warn_if_fail(const char* e) { (void)e; }
