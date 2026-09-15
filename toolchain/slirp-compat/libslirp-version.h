#ifndef LIBSLIRP_VERSION_H
#define LIBSLIRP_VERSION_H
#define SLIRP_MAJOR_VERSION 4
#define SLIRP_MINOR_VERSION 8
#define SLIRP_MICRO_VERSION 0
#define SLIRP_VERSION_STRING "4.8.0"
#define SLIRP_CHECK_VERSION(a,b,c) ((a)<4||(a)==4&&((b)<8||(b)==8&&(c)<=0))
#endif
