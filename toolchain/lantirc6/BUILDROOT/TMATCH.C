char *f_06D7F(s)
char *s;
{
    char *p;
    p = s;
    while (*p) {
        if (*p >= 'a' && *p <= 'z')
            *p -= 32;
        p++;
    }
    return s;
}
