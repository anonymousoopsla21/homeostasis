typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
union stUn_imopVarPre0 {
    char __mbstate8[128];
    long long _mbstateL;
} ;
typedef union stUn_imopVarPre0 __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
struct __darwin_pthread_handler_rec {
    void ( *__routine )(void *);
    void *__arg;
    struct __darwin_pthread_handler_rec *__next;
} ;
struct _opaque_pthread_attr_t {
    long __sig;
    char __opaque[56];
} ;
struct _opaque_pthread_cond_t {
    long __sig;
    char __opaque[40];
} ;
struct _opaque_pthread_condattr_t {
    long __sig;
    char __opaque[8];
} ;
struct _opaque_pthread_mutex_t {
    long __sig;
    char __opaque[56];
} ;
struct _opaque_pthread_mutexattr_t {
    long __sig;
    char __opaque[8];
} ;
struct _opaque_pthread_once_t {
    long __sig;
    char __opaque[8];
} ;
struct _opaque_pthread_rwlock_t {
    long __sig;
    char __opaque[192];
} ;
struct _opaque_pthread_rwlockattr_t {
    long __sig;
    char __opaque[16];
} ;
struct _opaque_pthread_t {
    long __sig;
    struct __darwin_pthread_handler_rec *__cleanup_stack;
    char __opaque[8176];
} ;
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef __uint32_t __darwin_wctype_t;
typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned long long u_int64_t;
typedef int64_t register_t;
typedef __darwin_intptr_t intptr_t;
typedef unsigned long uintptr_t;
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
typedef u_int64_t syscall_arg_t;
typedef __darwin_va_list va_list;
typedef __darwin_size_t size_t;
int renameat(int , const char * , int  , const char *);
int renamex_np(const char *, const char * , unsigned int );
int renameatx_np(int , const char * , int  , const char * , unsigned int );
typedef __darwin_off_t fpos_t;
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
struct __sFILEX ;
struct __sFILE {
    unsigned char *_p;
    int _r;
    int _w;
    short _flags;
    short _file;
    struct __sbuf _bf;
    int _lbfsize;
    void *_cookie;
    int ( *_close )(void *);
    int ( *_read )(void *, char * , int );
    fpos_t ( *_seek )(void *, fpos_t  , int );
    int ( *_write )(void *, const char * , int );
    struct __sbuf _ub;
    struct __sFILEX *_extra;
    int _ur;
    unsigned char _ubuf[3];
    unsigned char _nbuf[1];
    struct __sbuf _lb;
    int _blksize;
    fpos_t _offset;
} ;
typedef struct __sFILE FILE;
extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE *restrict , fpos_t *);
char *fgets(char *restrict , int  , FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fprintf(FILE *restrict , const char *restrict , ...);
int fputc(int , FILE *);
int fputs(const char *restrict , FILE *restrict );
size_t fread(void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
FILE *freopen(const char *restrict , const char *restrict  , FILE *restrict );
int fscanf(FILE *restrict , const char *restrict , ...);
int fseek(FILE *, long  , int );
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
int getc(FILE *);
int getchar(void );
char *gets(char *);
void perror(const char *);
int printf(const char *restrict , ...);
int putc(int , FILE *);
int putchar(int );
int puts(const char *);
int remove(const char *);
int rename(const char *__old, const char *__new);
void rewind(FILE *);
int scanf(const char *restrict , ...);
void setbuf(FILE *restrict , char *restrict );
int setvbuf(FILE *restrict , char *restrict  , int  , size_t );
int sprintf(char *restrict , const char *restrict , ...);
int sscanf(const char *restrict , const char *restrict , ...);
FILE *tmpfile(void );
char *tmpnam(char *);
int ungetc(int , FILE *);
int vfprintf(FILE *restrict , const char *restrict  , va_list );
int vprintf(const char *restrict , va_list );
int vsprintf(char *restrict , const char *restrict  , va_list );
char *ctermid(char *);
FILE *fdopen(int , const char *);
int fileno(FILE *);
int pclose(FILE *);
FILE *popen(const char *, const char *);
int __srget(FILE *);
int __svfscanf(FILE *, const char * , va_list );
int __swbuf(int , FILE *);
extern __inline int __sputc(int _c, FILE *_p) {
    int _imopVarPre6;
    int _imopVarPre10;
    _imopVarPre6 = --_p->_w >= 0;
    if (!_imopVarPre6) {
        _imopVarPre10 = _p->_w >= _p->_lbfsize;
        if (_imopVarPre10) {
            _imopVarPre10 = (char) _c != '\n';
        }
        _imopVarPre6 = _imopVarPre10;
    }
    if (_imopVarPre6)
        return (*_p->_p++ = _c);
    else {
        int _imopVarPre12;
        _imopVarPre12 = __swbuf(_c, _p);
        return _imopVarPre12;
    }
}
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void );
int putc_unlocked(int , FILE *);
int putchar_unlocked(int );
int getw(FILE *);
int putw(int , FILE *);
char *tempnam(const char *__dir, const char *__prefix);
typedef __darwin_off_t off_t;
int fseeko(FILE *__stream, off_t __offset , int __whence);
off_t ftello(FILE *__stream);
int snprintf(char *restrict __str, size_t __size , const char *restrict __format, ...);
int vfscanf(FILE *restrict __stream, const char *restrict __format , va_list );
int vscanf(const char *restrict __format, va_list );
int vsnprintf(char *restrict __str, size_t __size , const char *restrict __format , va_list );
int vsscanf(const char *restrict __str, const char *restrict __format , va_list );
typedef __darwin_ssize_t ssize_t;
int dprintf(int , const char *restrict , ...);
int vdprintf(int , const char *restrict  , va_list );
ssize_t getdelim(char **restrict __linep, size_t *restrict __linecapp , int __delimiter , FILE *restrict __stream);
ssize_t getline(char **restrict __linep, size_t *restrict __linecapp , FILE *restrict __stream);
FILE *fmemopen(void *restrict __buf, size_t __size , const char *restrict __mode);
FILE *open_memstream(char **__bufp, size_t *__sizep);
extern const int sys_nerr;
extern const char *const sys_errlist[];
int asprintf(char **restrict , const char *restrict , ...);
char *ctermid_r(char *);
char *fgetln(FILE *, size_t *);
const char *fmtcheck(const char *, const char *);
int fpurge(FILE *);
void setbuffer(FILE *, char * , int );
int setlinebuf(FILE *);
int vasprintf(char **restrict , const char *restrict  , va_list );
FILE *zopen(const char *, const char * , int );
FILE *funopen(const void *, int (*)(void *, char * , int ) , int (*)(void *, const char * , int ) , fpos_t (*)(void *, fpos_t  , int ) , int (*)(void *));
extern int __sprintf_chk(char *restrict , int  , size_t  , const char *restrict , ...);
extern int __snprintf_chk(char *restrict , size_t  , int  , size_t  , const char *restrict , ...);
extern int __vsprintf_chk(char *restrict , int  , size_t  , const char *restrict  , va_list );
extern int __vsnprintf_chk(char *restrict , size_t  , int  , size_t  , const char *restrict  , va_list );
typedef float float_t;
typedef double double_t;
extern int __math_errhandling(void );
extern int __fpclassifyf(float );
extern int __fpclassifyd(double );
extern int __fpclassifyl(long double );
extern __inline int __inline_isfinitef(float );
extern __inline int __inline_isfinited(double );
extern __inline int __inline_isfinitel(long double );
extern __inline int __inline_isinff(float );
extern __inline int __inline_isinfd(double );
extern __inline int __inline_isinfl(long double );
extern __inline int __inline_isnanf(float );
extern __inline int __inline_isnand(double );
extern __inline int __inline_isnanl(long double );
extern __inline int __inline_isnormalf(float );
extern __inline int __inline_isnormald(double );
extern __inline int __inline_isnormall(long double );
extern __inline int __inline_signbitf(float );
extern __inline int __inline_signbitd(double );
extern __inline int __inline_signbitl(long double );
extern __inline int __inline_isfinitef(float __x) {
    int _imopVarPre91;
    float _imopVarPre92;
    float _imopVarPre93;
    _imopVarPre91 = __x == __x;
    if (_imopVarPre91) {
        _imopVarPre92 = __builtin_fabsf(__x);
        _imopVarPre93 = __builtin_inff();
        _imopVarPre91 = _imopVarPre92 != _imopVarPre93;
    }
    return _imopVarPre91;
}
extern __inline int __inline_isfinited(double __x) {
    int _imopVarPre97;
    double _imopVarPre98;
    double _imopVarPre99;
    _imopVarPre97 = __x == __x;
    if (_imopVarPre97) {
        _imopVarPre98 = __builtin_fabs(__x);
        _imopVarPre99 = __builtin_inf();
        _imopVarPre97 = _imopVarPre98 != _imopVarPre99;
    }
    return _imopVarPre97;
}
extern __inline int __inline_isfinitel(long double __x) {
    int _imopVarPre103;
    long double _imopVarPre104;
    long double _imopVarPre105;
    _imopVarPre103 = __x == __x;
    if (_imopVarPre103) {
        _imopVarPre104 = __builtin_fabsl(__x);
        _imopVarPre105 = __builtin_infl();
        _imopVarPre103 = _imopVarPre104 != _imopVarPre105;
    }
    return _imopVarPre103;
}
extern __inline int __inline_isinff(float __x) {
    float _imopVarPre108;
    float _imopVarPre109;
    _imopVarPre108 = __builtin_fabsf(__x);
    _imopVarPre109 = __builtin_inff();
    return _imopVarPre108 == _imopVarPre109;
}
extern __inline int __inline_isinfd(double __x) {
    double _imopVarPre112;
    double _imopVarPre113;
    _imopVarPre112 = __builtin_fabs(__x);
    _imopVarPre113 = __builtin_inf();
    return _imopVarPre112 == _imopVarPre113;
}
extern __inline int __inline_isinfl(long double __x) {
    long double _imopVarPre116;
    long double _imopVarPre117;
    _imopVarPre116 = __builtin_fabsl(__x);
    _imopVarPre117 = __builtin_infl();
    return _imopVarPre116 == _imopVarPre117;
}
extern __inline int __inline_isnanf(float __x) {
    return __x != __x;
}
extern __inline int __inline_isnand(double __x) {
    return __x != __x;
}
extern __inline int __inline_isnanl(long double __x) {
    return __x != __x;
}
extern __inline int __inline_signbitf(float __x) {
    union stUn_imopVarPre1 {
        float __f;
        unsigned int __u;
    } ;
    union stUn_imopVarPre1 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 31);
}
extern __inline int __inline_signbitd(double __x) {
    union stUn_imopVarPre2 {
        double __f;
        unsigned long long __u;
    } ;
    union stUn_imopVarPre2 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 63);
}
extern __inline int __inline_signbitl(long double __x) {
    union stUn_imopVarPre4 {
        long double __ld;
        struct stUn_imopVarPre3 {
            unsigned long long __m;
            unsigned short __sexp;
        } __p;
    } ;
    union stUn_imopVarPre4 __u;
    __u.__ld = __x;
    return (int) (__u.__p.__sexp >> 15);
}
extern __inline int __inline_isnormalf(float __x) {
    int _imopVarPre120;
    float _imopVarPre121;
    _imopVarPre120 = __inline_isfinitef(__x);
    if (_imopVarPre120) {
        _imopVarPre121 = __builtin_fabsf(__x);
        _imopVarPre120 = _imopVarPre121 >= 1.17549435082228750797e-38F;
    }
    return _imopVarPre120;
}
extern __inline int __inline_isnormald(double __x) {
    int _imopVarPre124;
    double _imopVarPre125;
    _imopVarPre124 = __inline_isfinited(__x);
    if (_imopVarPre124) {
        _imopVarPre125 = __builtin_fabs(__x);
        _imopVarPre124 = _imopVarPre125 >= ((double) 2.22507385850720138309e-308L);
    }
    return _imopVarPre124;
}
extern __inline int __inline_isnormall(long double __x) {
    int _imopVarPre128;
    long double _imopVarPre129;
    _imopVarPre128 = __inline_isfinitel(__x);
    if (_imopVarPre128) {
        _imopVarPre129 = __builtin_fabsl(__x);
        _imopVarPre128 = _imopVarPre129 >= 3.36210314311209350626e-4932L;
    }
    return _imopVarPre128;
}
extern float acosf(float );
extern double acos(double );
extern long double acosl(long double );
extern float asinf(float );
extern double asin(double );
extern long double asinl(long double );
extern float atanf(float );
extern double atan(double );
extern long double atanl(long double );
extern float atan2f(float , float );
extern double atan2(double , double );
extern long double atan2l(long double , long double );
extern float cosf(float );
extern double cos(double );
extern long double cosl(long double );
extern float sinf(float );
extern double sin(double );
extern long double sinl(long double );
extern float tanf(float );
extern double tan(double );
extern long double tanl(long double );
extern float acoshf(float );
extern double acosh(double );
extern long double acoshl(long double );
extern float asinhf(float );
extern double asinh(double );
extern long double asinhl(long double );
extern float atanhf(float );
extern double atanh(double );
extern long double atanhl(long double );
extern float coshf(float );
extern double cosh(double );
extern long double coshl(long double );
extern float sinhf(float );
extern double sinh(double );
extern long double sinhl(long double );
extern float tanhf(float );
extern double tanh(double );
extern long double tanhl(long double );
extern float expf(float );
extern double exp(double );
extern long double expl(long double );
extern float exp2f(float );
extern double exp2(double );
extern long double exp2l(long double );
extern float expm1f(float );
extern double expm1(double );
extern long double expm1l(long double );
extern float logf(float );
extern double log(double );
extern long double logl(long double );
extern float log10f(float );
extern double log10(double );
extern long double log10l(long double );
extern float log2f(float );
extern double log2(double );
extern long double log2l(long double );
extern float log1pf(float );
extern double log1p(double );
extern long double log1pl(long double );
extern float logbf(float );
extern double logb(double );
extern long double logbl(long double );
extern float modff(float , float *);
extern double modf(double , double *);
extern long double modfl(long double , long double *);
extern float ldexpf(float , int );
extern double ldexp(double , int );
extern long double ldexpl(long double , int );
extern float frexpf(float , int *);
extern double frexp(double , int *);
extern long double frexpl(long double , int *);
extern int ilogbf(float );
extern int ilogb(double );
extern int ilogbl(long double );
extern float scalbnf(float , int );
extern double scalbn(double , int );
extern long double scalbnl(long double , int );
extern float scalblnf(float , long int );
extern double scalbln(double , long int );
extern long double scalblnl(long double , long int );
extern float fabsf(float );
extern double fabs(double );
extern long double fabsl(long double );
extern float cbrtf(float );
extern double cbrt(double );
extern long double cbrtl(long double );
extern float hypotf(float , float );
extern double hypot(double , double );
extern long double hypotl(long double , long double );
extern float powf(float , float );
extern double pow(double , double );
extern long double powl(long double , long double );
extern float sqrtf(float );
extern double sqrt(double );
extern long double sqrtl(long double );
extern float erff(float );
extern double erf(double );
extern long double erfl(long double );
extern float erfcf(float );
extern double erfc(double );
extern long double erfcl(long double );
extern float lgammaf(float );
extern double lgamma(double );
extern long double lgammal(long double );
extern float tgammaf(float );
extern double tgamma(double );
extern long double tgammal(long double );
extern float ceilf(float );
extern double ceil(double );
extern long double ceill(long double );
extern float floorf(float );
extern double floor(double );
extern long double floorl(long double );
extern float nearbyintf(float );
extern double nearbyint(double );
extern long double nearbyintl(long double );
extern float rintf(float );
extern double rint(double );
extern long double rintl(long double );
extern long int lrintf(float );
extern long int lrint(double );
extern long int lrintl(long double );
extern float roundf(float );
extern double round(double );
extern long double roundl(long double );
extern long int lroundf(float );
extern long int lround(double );
extern long int lroundl(long double );
extern long long int llrintf(float );
extern long long int llrint(double );
extern long long int llrintl(long double );
extern long long int llroundf(float );
extern long long int llround(double );
extern long long int llroundl(long double );
extern float truncf(float );
extern double trunc(double );
extern long double truncl(long double );
extern float fmodf(float , float );
extern double fmod(double , double );
extern long double fmodl(long double , long double );
extern float remainderf(float , float );
extern double remainder(double , double );
extern long double remainderl(long double , long double );
extern float remquof(float , float  , int *);
extern double remquo(double , double  , int *);
extern long double remquol(long double , long double  , int *);
extern float copysignf(float , float );
extern double copysign(double , double );
extern long double copysignl(long double , long double );
extern float nanf(const char *);
extern double nan(const char *);
extern long double nanl(const char *);
extern float nextafterf(float , float );
extern double nextafter(double , double );
extern long double nextafterl(long double , long double );
extern double nexttoward(double , long double );
extern float nexttowardf(float , long double );
extern long double nexttowardl(long double , long double );
extern float fdimf(float , float );
extern double fdim(double , double );
extern long double fdiml(long double , long double );
extern float fmaxf(float , float );
extern double fmax(double , double );
extern long double fmaxl(long double , long double );
extern float fminf(float , float );
extern double fmin(double , double );
extern long double fminl(long double , long double );
extern float fmaf(float , float  , float );
extern double fma(double , double  , double );
extern long double fmal(long double , long double  , long double );
extern float __inff(void );
extern double __inf(void );
extern long double __infl(void );
extern float __nan(void );
extern float __exp10f(float );
extern double __exp10(double );
extern __inline void __sincosf(float __x, float *__sinp , float *__cosp);
extern __inline void __sincos(double __x, double *__sinp , double *__cosp);
extern float __cospif(float );
extern double __cospi(double );
extern float __sinpif(float );
extern double __sinpi(double );
extern float __tanpif(float );
extern double __tanpi(double );
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp);
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp);
struct __float2 {
    float __sinval;
    float __cosval;
} ;
struct __double2 {
    double __sinval;
    double __cosval;
} ;
extern struct __float2 __sincosf_stret(float );
extern struct __double2 __sincos_stret(double );
extern struct __float2 __sincospif_stret(float );
extern struct __double2 __sincospi_stret(double );
extern __inline void __sincosf(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre130;
    _imopVarPre130 = __sincosf_stret(__x);
    const struct __float2 __stret = _imopVarPre130;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincos(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre131;
    _imopVarPre131 = __sincos_stret(__x);
    const struct __double2 __stret = _imopVarPre131;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre132;
    _imopVarPre132 = __sincospif_stret(__x);
    const struct __float2 __stret = _imopVarPre132;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre133;
    _imopVarPre133 = __sincospi_stret(__x);
    const struct __double2 __stret = _imopVarPre133;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern double j0(double );
extern double j1(double );
extern double jn(int , double );
extern double y0(double );
extern double y1(double );
extern double yn(int , double );
extern double scalb(double , double );
extern int signgam;
extern long int rinttol(double );
extern long int roundtol(double );
extern double drem(double , double );
extern int finite(double );
extern double gamma(double );
extern double significand(double );
struct exception {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
} ;
extern int matherr(struct exception *);
struct fd_set {
    __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0)? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} ;
typedef struct fd_set fd_set;
static __inline int __darwin_fd_isset(int _n, const struct fd_set *_p) {
    return (_p->fds_bits[(unsigned long) _n / (sizeof(__int32_t) * 8)] & ((__int32_t) (((unsigned long) 1) << ((unsigned long) _n % (sizeof(__int32_t) * 8)))));
}
struct timespec {
    __darwin_time_t tv_sec;
    long tv_nsec;
} ;
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
struct timeval64 {
    __int64_t tv_sec;
    __int64_t tv_usec;
} ;
typedef __darwin_time_t time_t;
typedef __darwin_suseconds_t suseconds_t;
struct itimerval {
    struct timeval it_interval;
    struct timeval it_value;
} ;
struct timezone {
    int tz_minuteswest;
    int tz_dsttime;
} ;
struct clockinfo {
    int hz;
    int tick;
    int tickadj;
    int stathz;
    int profhz;
} ;
typedef __darwin_clock_t clock_t;
struct tm {
    int tm_sec;
    int tm_min;
    int tm_hour;
    int tm_mday;
    int tm_mon;
    int tm_year;
    int tm_wday;
    int tm_yday;
    int tm_isdst;
    long tm_gmtoff;
    char *tm_zone;
} ;
extern char *tzname[];
extern int getdate_err;
extern long timezone;
extern int daylight;
char *asctime(const struct tm *);
clock_t clock(void );
char *ctime(const time_t *);
double difftime(time_t , time_t );
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *localtime(const time_t *);
time_t mktime(struct tm *);
size_t strftime(char *restrict , size_t  , const char *restrict  , const struct tm *restrict );
char *strptime(const char *restrict , const char *restrict  , struct tm *restrict );
time_t time(time_t *);
void tzset(void );
char *asctime_r(const struct tm *restrict , char *restrict );
char *ctime_r(const time_t *, char *);
struct tm *gmtime_r(const time_t *restrict , struct tm *restrict );
struct tm *localtime_r(const time_t *restrict , struct tm *restrict );
time_t posix2time(time_t );
void tzsetwall(void );
time_t time2posix(time_t );
time_t timelocal(struct tm *const );
time_t timegm(struct tm *const );
int nanosleep(const struct timespec *__rqtp, struct timespec *__rmtp);
enum enum_imopVarPre5 {
    _CLOCK_REALTIME = 0, _CLOCK_MONOTONIC = 6 , _CLOCK_MONOTONIC_RAW = 4 , _CLOCK_MONOTONIC_RAW_APPROX = 5 , _CLOCK_UPTIME_RAW = 8 , _CLOCK_UPTIME_RAW_APPROX = 9 , _CLOCK_PROCESS_CPUTIME_ID = 12 , _CLOCK_THREAD_CPUTIME_ID = 16
} ;
typedef enum enum_imopVarPre5 clockid_t;
int clock_getres(clockid_t __clock_id, struct timespec *__res);
int clock_gettime(clockid_t __clock_id, struct timespec *__tp);
__uint64_t clock_gettime_nsec_np(clockid_t __clock_id);
int clock_settime(clockid_t __clock_id, const struct timespec *__tp);
int adjtime(const struct timeval *, struct timeval *);
int futimes(int , const struct timeval *);
int lutimes(const char *, const struct timeval *);
int settimeofday(const struct timeval *, const struct timezone *);
int getitimer(int , struct itimerval *);
int gettimeofday(struct timeval *restrict , void *restrict );
int select(int , fd_set *restrict  , fd_set *restrict  , fd_set *restrict  , struct timeval *restrict );
int setitimer(int , const struct itimerval *restrict  , struct itimerval *restrict );
int utimes(const char *, const struct timeval *);
static double a[2000000 + 0];
static double b[2000000 + 0];
static double c[2000000 + 0];
static double avgtime[4] = {0};
static double maxtime[4] = {0};
static double mintime[4] = {3.40282346638528859812e+38F, 3.40282346638528859812e+38F , 3.40282346638528859812e+38F , 3.40282346638528859812e+38F};
static char *label[4] = {"Copy:      ", "Scale:     " , "Add:       " , "Triad:     "};
static double bytes[4] = {2 * sizeof(double) * 2000000, 2 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000 , 3 * sizeof(double) * 2000000};
extern double mysecond();
extern void checkSTREAMresults();
int main() {
    int quantum;
    int checktick();
    int BytesPerWord;
    register int j;
    register int k;
    double scalar;
    double t;
    double times[4][10];
    printf("\n");
    printf("-------------------------------------------------------------\n");
    printf("Sequoia Benchmark Version 1.0\n");
    printf("-------------------------------------------------------------\n");
    printf("\n");
    BytesPerWord = sizeof(double);
    printf("This system uses %d bytes per DOUBLE PRECISION word.\n", BytesPerWord);
    printf("-------------------------------------------------------------\n");
    printf("Array size = %d, Offset = %d\n", 2000000, 0);
    double _imopVarPre135;
    _imopVarPre135 = (3.0 * BytesPerWord) * ((double) 2000000 / 1048576.0);
    printf("Total memory required = %.1f MB.\n", _imopVarPre135);
    printf("Each test is run %d times, but only\n", 10);
    printf("the *best* time for each is used.\n");
#pragma omp parallel
    {
#pragma omp for
        for (j = 0; j < 2000000; j++) {
            a[j] = 1.0;
            b[j] = 2.0;
            c[j] = 0.0;
        }
    }
    printf("-------------------------------------------------------------\n");
    int _imopVarPre137;
    _imopVarPre137 = checktick();
    if ((quantum = _imopVarPre137) >= 1)
        printf("Your clock granularity/precision appears to be " "%d microseconds.\n", quantum);
    else
        printf("Your clock granularity appears to be " "less than one microsecond.\n");
    t = mysecond();
#pragma omp parallel
    {
#pragma omp for
        for (j = 0; j < 2000000; j++)
            a[j] = 2.0E0 * a[j];
    }
    double _imopVarPre141;
    _imopVarPre141 = mysecond();
    t = 1.0E6 * (_imopVarPre141 - t);
    int _imopVarPre143;
    _imopVarPre143 = (int) t;
    printf("Each test below will take on the order" " of %d microseconds.\n", _imopVarPre143);
    int _imopVarPre145;
    _imopVarPre145 = (int) (t / quantum);
    printf("   (= %d clock ticks)\n", _imopVarPre145);
    printf("Increase the size of the arrays if this shows that\n");
    printf("you are not getting at least 20 clock ticks per test.\n");
    printf("-------------------------------------------------------------\n");
    printf("WARNING -- The above is only a rough guideline.\n");
    printf("For best results, please be sure you know the\n");
    printf("precision of your system timer.\n");
    printf("-------------------------------------------------------------\n");
    scalar = 3.0;
    for (k = 0; k < 10; k++) {
        double _imopVarPre146;
        _imopVarPre146 = mysecond();
        times[0][k] = _imopVarPre146;
#pragma omp parallel
        {
#pragma omp for
            for (j = 0; j < 2000000; j++)
                c[j] = a[j];
        }
        double _imopVarPre148;
        _imopVarPre148 = mysecond();
        times[0][k] = _imopVarPre148 - times[0][k];
        double _imopVarPre149;
        _imopVarPre149 = mysecond();
        times[1][k] = _imopVarPre149;
#pragma omp parallel
        {
#pragma omp for
            for (j = 0; j < 2000000; j++)
                b[j] = scalar * c[j];
        }
        double _imopVarPre151;
        _imopVarPre151 = mysecond();
        times[1][k] = _imopVarPre151 - times[1][k];
        double _imopVarPre152;
        _imopVarPre152 = mysecond();
        times[2][k] = _imopVarPre152;
#pragma omp parallel
        {
#pragma omp for
            for (j = 0; j < 2000000; j++)
                c[j] = a[j] + b[j];
        }
        double _imopVarPre154;
        _imopVarPre154 = mysecond();
        times[2][k] = _imopVarPre154 - times[2][k];
        double _imopVarPre155;
        _imopVarPre155 = mysecond();
        times[3][k] = _imopVarPre155;
#pragma omp parallel
        {
#pragma omp for
            for (j = 0; j < 2000000; j++)
                a[j] = b[j] + scalar * c[j];
        }
        double _imopVarPre157;
        _imopVarPre157 = mysecond();
        times[3][k] = _imopVarPre157 - times[3][k];
    }
    for (k = 1; k < 10; k++) {
        for (j = 0; j < 4; j++) {
            avgtime[j] = avgtime[j] + times[j][k];
            int _imopVarPre160;
            double _imopVarPre161;
            _imopVarPre160 = (mintime[j]) < (times[j][k]);
            if (_imopVarPre160) {
                _imopVarPre161 = (mintime[j]);
            } else {
                _imopVarPre161 = (times[j][k]);
            }
            mintime[j] = _imopVarPre161;
            int _imopVarPre164;
            double _imopVarPre165;
            _imopVarPre164 = (maxtime[j]) > (times[j][k]);
            if (_imopVarPre164) {
                _imopVarPre165 = (maxtime[j]);
            } else {
                _imopVarPre165 = (times[j][k]);
            }
            maxtime[j] = _imopVarPre165;
        }
    }
    printf("Function      Rate (MB/s)   Avg time     Min time     Max time\n");
    for (j = 0; j < 4; j++) {
        avgtime[j] = avgtime[j] / (double) 10;
        double _imopVarPre171;
        double _imopVarPre172;
        double _imopVarPre173;
        double _imopVarPre174;
        char *_imopVarPre175;
        _imopVarPre171 = maxtime[j];
        _imopVarPre172 = mintime[j];
        _imopVarPre173 = avgtime[j];
        _imopVarPre174 = 1.0E-06 * bytes[j] / mintime[j];
        _imopVarPre175 = label[j];
        printf("%s%11.4f  %11.4f  %11.4f  %11.4f\n", _imopVarPre175, _imopVarPre174, _imopVarPre173, _imopVarPre172, _imopVarPre171);
    }
    printf("-------------------------------------------------------------\n");
    checkSTREAMresults();
    printf("-------------------------------------------------------------\n");
    return 0;
}
int checktick() {
    int i;
    int minDelta;
    int Delta;
    double t1;
    double t2;
    double timesfound[20];
    for (i = 0; i < 20; i++) {
        t1 = mysecond();
        double _imopVarPre179;
        _imopVarPre179 = mysecond();
        while (((t2 = _imopVarPre179) - t1) < 1.0E-6) {
            ;
            _imopVarPre179 = mysecond();
        }
        timesfound[i] = t1 = t2;
    }
    minDelta = 1000000;
    for (i = 1; i < 20; i++) {
        Delta = (int) (1.0E6 * (timesfound[i] - timesfound[i - 1]));
        int _imopVarPre204;
        int _imopVarPre205;
        int _imopVarPre206;
        int _imopVarPre207;
        int _imopVarPre214;
        int _imopVarPre215;
        _imopVarPre204 = Delta > 0;
        if (_imopVarPre204) {
            _imopVarPre205 = Delta;
        } else {
            _imopVarPre205 = 0;
        }
        _imopVarPre206 = minDelta < _imopVarPre205;
        if (_imopVarPre206) {
            _imopVarPre207 = minDelta;
        } else {
            _imopVarPre214 = Delta > 0;
            if (_imopVarPre214) {
                _imopVarPre215 = Delta;
            } else {
                _imopVarPre215 = 0;
            }
            _imopVarPre207 = _imopVarPre215;
        }
        minDelta = _imopVarPre207;
    }
    return minDelta;
}
double mysecond() {
    struct timeval tp;
    struct timezone tzp;
    int i;
    struct timezone *_imopVarPre218;
    struct timeval *_imopVarPre219;
    int _imopVarPre220;
    _imopVarPre218 = &tzp;
    _imopVarPre219 = &tp;
    _imopVarPre220 = gettimeofday(_imopVarPre219, _imopVarPre218);
    i = _imopVarPre220;
    return ((double) tp.tv_sec + (double) tp.tv_usec * 1.e-6);
}
void checkSTREAMresults() {
    double aj;
    double bj;
    double cj;
    double scalar;
    double asum;
    double bsum;
    double csum;
    double epsilon;
    int j;
    int k;
    aj = 1.0;
    bj = 2.0;
    cj = 0.0;
    aj = 2.0E0 * aj;
    scalar = 3.0;
    for (k = 0; k < 10; k++) {
        cj = aj;
        bj = scalar * cj;
        cj = aj + bj;
        aj = bj + scalar * cj;
    }
    aj = aj * (double) 2000000;
    bj = bj * (double) 2000000;
    cj = cj * (double) 2000000;
    asum = 0.0;
    bsum = 0.0;
    csum = 0.0;
    for (j = 0; j < 2000000; j++) {
        asum += a[j];
        bsum += b[j];
        csum += c[j];
    }
    epsilon = 1.e-8;
    int _imopVarPre223;
    double _imopVarPre224;
    _imopVarPre223 = (aj - asum) >= 0;
    if (_imopVarPre223) {
        _imopVarPre224 = (aj - asum);
    } else {
        _imopVarPre224 = -(aj - asum);
    }
    if (_imopVarPre224 / asum > epsilon) {
        printf("Failed Validation on array a[]\n");
        printf("        Expected  : %f \n", aj);
        printf("        Observed  : %f \n", asum);
    } else {
        int _imopVarPre227;
        double _imopVarPre228;
        _imopVarPre227 = (bj - bsum) >= 0;
        if (_imopVarPre227) {
            _imopVarPre228 = (bj - bsum);
        } else {
            _imopVarPre228 = -(bj - bsum);
        }
        if (_imopVarPre228 / bsum > epsilon) {
            printf("Failed Validation on array b[]\n");
            printf("        Expected  : %f \n", bj);
            printf("        Observed  : %f \n", bsum);
        } else {
            int _imopVarPre231;
            double _imopVarPre232;
            _imopVarPre231 = (cj - csum) >= 0;
            if (_imopVarPre231) {
                _imopVarPre232 = (cj - csum);
            } else {
                _imopVarPre232 = -(cj - csum);
            }
            if (_imopVarPre232 / csum > epsilon) {
                printf("Failed Validation on array c[]\n");
                printf("        Expected  : %f \n", cj);
                printf("        Observed  : %f \n", csum);
            } else {
                printf("Solution Validates\n");
            }
        }
    }
}
void tuned_STREAM_Copy() {
    int j;
#pragma omp parallel
    {
#pragma omp for
        for (j = 0; j < 2000000; j++)
            c[j] = a[j];
    }
}
void tuned_STREAM_Scale(double scalar) {
    int j;
#pragma omp parallel
    {
#pragma omp for
        for (j = 0; j < 2000000; j++)
            b[j] = scalar * c[j];
    }
}
void tuned_STREAM_Add() {
    int j;
#pragma omp parallel
    {
#pragma omp for
        for (j = 0; j < 2000000; j++)
            c[j] = a[j] + b[j];
    }
}
void tuned_STREAM_Triad(double scalar) {
    int j;
#pragma omp parallel
    {
#pragma omp for
        for (j = 0; j < 2000000; j++)
            a[j] = b[j] + scalar * c[j];
    }
}
