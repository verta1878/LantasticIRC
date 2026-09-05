# wINSTALL SDK Makefile
# GPLv3 — the crew 4free
#
# Targets:
#   make          — build library + tools (gcc, Linux/modern)
#   make dos      — build for DOS (MSC 5.1 in DOSBox)
#   make clean    — remove build artifacts

CC = gcc
CFLAGS = -Wall -O2 -I include
AR = ar

SRCS = src/lzh.c src/nosarch.c
OBJS = $(SRCS:.c=.o)

all: lib/libwinstall.a tools/nosextract

lib/libwinstall.a: $(OBJS)
	mkdir -p lib
	$(AR) rcs $@ $(OBJS)

tools/nosextract: tools/nosextract.c lib/libwinstall.a
	$(CC) $(CFLAGS) -o $@ $< -Llib -lwinstall

%.o: %.c include/winstall.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) lib/libwinstall.a tools/nosextract

.PHONY: all clean dos
