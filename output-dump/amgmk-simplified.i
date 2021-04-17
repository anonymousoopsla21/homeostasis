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
    int _imopVarPre16;
    int _imopVarPre20;
    _imopVarPre16 = --_p->_w >= 0;
    if (!_imopVarPre16) {
        _imopVarPre20 = _p->_w >= _p->_lbfsize;
        if (_imopVarPre20) {
            _imopVarPre20 = (char) _c != '\n';
        }
        _imopVarPre16 = _imopVarPre20;
    }
    if (_imopVarPre16)
        return (*_p->_p++ = _c);
    else {
        int _imopVarPre22;
        _imopVarPre22 = __swbuf(_c, _p);
        return _imopVarPre22;
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
enum enum_imopVarPre1 {
    P_ALL, P_PID , P_PGID
} ;
typedef enum enum_imopVarPre1 idtype_t;
typedef __darwin_pid_t pid_t;
typedef __darwin_id_t id_t;
typedef int sig_atomic_t;
struct __darwin_i386_thread_state {
    unsigned int __eax;
    unsigned int __ebx;
    unsigned int __ecx;
    unsigned int __edx;
    unsigned int __edi;
    unsigned int __esi;
    unsigned int __ebp;
    unsigned int __esp;
    unsigned int __ss;
    unsigned int __eflags;
    unsigned int __eip;
    unsigned int __cs;
    unsigned int __ds;
    unsigned int __es;
    unsigned int __fs;
    unsigned int __gs;
} ;
struct __darwin_fp_control {
    unsigned short __invalid: 1, __denorm: 1 , __zdiv: 1 , __ovrfl: 1 , __undfl: 1 , __precis: 1 , :2 , __pc: 2 , __rc: 2 , :1 , :3;
} ;
typedef struct __darwin_fp_control __darwin_fp_control_t;
struct __darwin_fp_status {
    unsigned short __invalid: 1, __denorm: 1 , __zdiv: 1 , __ovrfl: 1 , __undfl: 1 , __precis: 1 , __stkflt: 1 , __errsumm: 1 , __c0: 1 , __c1: 1 , __c2: 1 , __tos: 3 , __c3: 1 , __busy: 1;
} ;
typedef struct __darwin_fp_status __darwin_fp_status_t;
struct __darwin_mmst_reg {
    char __mmst_reg[10];
    char __mmst_rsrv[6];
} ;
struct __darwin_xmm_reg {
    char __xmm_reg[16];
} ;
struct __darwin_ymm_reg {
    char __ymm_reg[32];
} ;
struct __darwin_zmm_reg {
    char __zmm_reg[64];
} ;
struct __darwin_opmask_reg {
    char __opmask_reg[8];
} ;
struct __darwin_i386_float_state {
    int __fpu_reserved[2];
    struct __darwin_fp_control __fpu_fcw;
    struct __darwin_fp_status __fpu_fsw;
    __uint8_t __fpu_ftw;
    __uint8_t __fpu_rsrv1;
    __uint16_t __fpu_fop;
    __uint32_t __fpu_ip;
    __uint16_t __fpu_cs;
    __uint16_t __fpu_rsrv2;
    __uint32_t __fpu_dp;
    __uint16_t __fpu_ds;
    __uint16_t __fpu_rsrv3;
    __uint32_t __fpu_mxcsr;
    __uint32_t __fpu_mxcsrmask;
    struct __darwin_mmst_reg __fpu_stmm0;
    struct __darwin_mmst_reg __fpu_stmm1;
    struct __darwin_mmst_reg __fpu_stmm2;
    struct __darwin_mmst_reg __fpu_stmm3;
    struct __darwin_mmst_reg __fpu_stmm4;
    struct __darwin_mmst_reg __fpu_stmm5;
    struct __darwin_mmst_reg __fpu_stmm6;
    struct __darwin_mmst_reg __fpu_stmm7;
    struct __darwin_xmm_reg __fpu_xmm0;
    struct __darwin_xmm_reg __fpu_xmm1;
    struct __darwin_xmm_reg __fpu_xmm2;
    struct __darwin_xmm_reg __fpu_xmm3;
    struct __darwin_xmm_reg __fpu_xmm4;
    struct __darwin_xmm_reg __fpu_xmm5;
    struct __darwin_xmm_reg __fpu_xmm6;
    struct __darwin_xmm_reg __fpu_xmm7;
    char __fpu_rsrv4[14 * 16];
    int __fpu_reserved1;
} ;
struct __darwin_i386_avx_state {
    int __fpu_reserved[2];
    struct __darwin_fp_control __fpu_fcw;
    struct __darwin_fp_status __fpu_fsw;
    __uint8_t __fpu_ftw;
    __uint8_t __fpu_rsrv1;
    __uint16_t __fpu_fop;
    __uint32_t __fpu_ip;
    __uint16_t __fpu_cs;
    __uint16_t __fpu_rsrv2;
    __uint32_t __fpu_dp;
    __uint16_t __fpu_ds;
    __uint16_t __fpu_rsrv3;
    __uint32_t __fpu_mxcsr;
    __uint32_t __fpu_mxcsrmask;
    struct __darwin_mmst_reg __fpu_stmm0;
    struct __darwin_mmst_reg __fpu_stmm1;
    struct __darwin_mmst_reg __fpu_stmm2;
    struct __darwin_mmst_reg __fpu_stmm3;
    struct __darwin_mmst_reg __fpu_stmm4;
    struct __darwin_mmst_reg __fpu_stmm5;
    struct __darwin_mmst_reg __fpu_stmm6;
    struct __darwin_mmst_reg __fpu_stmm7;
    struct __darwin_xmm_reg __fpu_xmm0;
    struct __darwin_xmm_reg __fpu_xmm1;
    struct __darwin_xmm_reg __fpu_xmm2;
    struct __darwin_xmm_reg __fpu_xmm3;
    struct __darwin_xmm_reg __fpu_xmm4;
    struct __darwin_xmm_reg __fpu_xmm5;
    struct __darwin_xmm_reg __fpu_xmm6;
    struct __darwin_xmm_reg __fpu_xmm7;
    char __fpu_rsrv4[14 * 16];
    int __fpu_reserved1;
    char __avx_reserved1[64];
    struct __darwin_xmm_reg __fpu_ymmh0;
    struct __darwin_xmm_reg __fpu_ymmh1;
    struct __darwin_xmm_reg __fpu_ymmh2;
    struct __darwin_xmm_reg __fpu_ymmh3;
    struct __darwin_xmm_reg __fpu_ymmh4;
    struct __darwin_xmm_reg __fpu_ymmh5;
    struct __darwin_xmm_reg __fpu_ymmh6;
    struct __darwin_xmm_reg __fpu_ymmh7;
} ;
struct __darwin_i386_avx512_state {
    int __fpu_reserved[2];
    struct __darwin_fp_control __fpu_fcw;
    struct __darwin_fp_status __fpu_fsw;
    __uint8_t __fpu_ftw;
    __uint8_t __fpu_rsrv1;
    __uint16_t __fpu_fop;
    __uint32_t __fpu_ip;
    __uint16_t __fpu_cs;
    __uint16_t __fpu_rsrv2;
    __uint32_t __fpu_dp;
    __uint16_t __fpu_ds;
    __uint16_t __fpu_rsrv3;
    __uint32_t __fpu_mxcsr;
    __uint32_t __fpu_mxcsrmask;
    struct __darwin_mmst_reg __fpu_stmm0;
    struct __darwin_mmst_reg __fpu_stmm1;
    struct __darwin_mmst_reg __fpu_stmm2;
    struct __darwin_mmst_reg __fpu_stmm3;
    struct __darwin_mmst_reg __fpu_stmm4;
    struct __darwin_mmst_reg __fpu_stmm5;
    struct __darwin_mmst_reg __fpu_stmm6;
    struct __darwin_mmst_reg __fpu_stmm7;
    struct __darwin_xmm_reg __fpu_xmm0;
    struct __darwin_xmm_reg __fpu_xmm1;
    struct __darwin_xmm_reg __fpu_xmm2;
    struct __darwin_xmm_reg __fpu_xmm3;
    struct __darwin_xmm_reg __fpu_xmm4;
    struct __darwin_xmm_reg __fpu_xmm5;
    struct __darwin_xmm_reg __fpu_xmm6;
    struct __darwin_xmm_reg __fpu_xmm7;
    char __fpu_rsrv4[14 * 16];
    int __fpu_reserved1;
    char __avx_reserved1[64];
    struct __darwin_xmm_reg __fpu_ymmh0;
    struct __darwin_xmm_reg __fpu_ymmh1;
    struct __darwin_xmm_reg __fpu_ymmh2;
    struct __darwin_xmm_reg __fpu_ymmh3;
    struct __darwin_xmm_reg __fpu_ymmh4;
    struct __darwin_xmm_reg __fpu_ymmh5;
    struct __darwin_xmm_reg __fpu_ymmh6;
    struct __darwin_xmm_reg __fpu_ymmh7;
    struct __darwin_opmask_reg __fpu_k0;
    struct __darwin_opmask_reg __fpu_k1;
    struct __darwin_opmask_reg __fpu_k2;
    struct __darwin_opmask_reg __fpu_k3;
    struct __darwin_opmask_reg __fpu_k4;
    struct __darwin_opmask_reg __fpu_k5;
    struct __darwin_opmask_reg __fpu_k6;
    struct __darwin_opmask_reg __fpu_k7;
    struct __darwin_ymm_reg __fpu_zmmh0;
    struct __darwin_ymm_reg __fpu_zmmh1;
    struct __darwin_ymm_reg __fpu_zmmh2;
    struct __darwin_ymm_reg __fpu_zmmh3;
    struct __darwin_ymm_reg __fpu_zmmh4;
    struct __darwin_ymm_reg __fpu_zmmh5;
    struct __darwin_ymm_reg __fpu_zmmh6;
    struct __darwin_ymm_reg __fpu_zmmh7;
} ;
struct __darwin_i386_exception_state {
    __uint16_t __trapno;
    __uint16_t __cpu;
    __uint32_t __err;
    __uint32_t __faultvaddr;
} ;
struct __darwin_x86_debug_state32 {
    unsigned int __dr0;
    unsigned int __dr1;
    unsigned int __dr2;
    unsigned int __dr3;
    unsigned int __dr4;
    unsigned int __dr5;
    unsigned int __dr6;
    unsigned int __dr7;
} ;
struct __darwin_x86_thread_state64 {
    __uint64_t __rax;
    __uint64_t __rbx;
    __uint64_t __rcx;
    __uint64_t __rdx;
    __uint64_t __rdi;
    __uint64_t __rsi;
    __uint64_t __rbp;
    __uint64_t __rsp;
    __uint64_t __r8;
    __uint64_t __r9;
    __uint64_t __r10;
    __uint64_t __r11;
    __uint64_t __r12;
    __uint64_t __r13;
    __uint64_t __r14;
    __uint64_t __r15;
    __uint64_t __rip;
    __uint64_t __rflags;
    __uint64_t __cs;
    __uint64_t __fs;
    __uint64_t __gs;
} ;
struct __darwin_x86_float_state64 {
    int __fpu_reserved[2];
    struct __darwin_fp_control __fpu_fcw;
    struct __darwin_fp_status __fpu_fsw;
    __uint8_t __fpu_ftw;
    __uint8_t __fpu_rsrv1;
    __uint16_t __fpu_fop;
    __uint32_t __fpu_ip;
    __uint16_t __fpu_cs;
    __uint16_t __fpu_rsrv2;
    __uint32_t __fpu_dp;
    __uint16_t __fpu_ds;
    __uint16_t __fpu_rsrv3;
    __uint32_t __fpu_mxcsr;
    __uint32_t __fpu_mxcsrmask;
    struct __darwin_mmst_reg __fpu_stmm0;
    struct __darwin_mmst_reg __fpu_stmm1;
    struct __darwin_mmst_reg __fpu_stmm2;
    struct __darwin_mmst_reg __fpu_stmm3;
    struct __darwin_mmst_reg __fpu_stmm4;
    struct __darwin_mmst_reg __fpu_stmm5;
    struct __darwin_mmst_reg __fpu_stmm6;
    struct __darwin_mmst_reg __fpu_stmm7;
    struct __darwin_xmm_reg __fpu_xmm0;
    struct __darwin_xmm_reg __fpu_xmm1;
    struct __darwin_xmm_reg __fpu_xmm2;
    struct __darwin_xmm_reg __fpu_xmm3;
    struct __darwin_xmm_reg __fpu_xmm4;
    struct __darwin_xmm_reg __fpu_xmm5;
    struct __darwin_xmm_reg __fpu_xmm6;
    struct __darwin_xmm_reg __fpu_xmm7;
    struct __darwin_xmm_reg __fpu_xmm8;
    struct __darwin_xmm_reg __fpu_xmm9;
    struct __darwin_xmm_reg __fpu_xmm10;
    struct __darwin_xmm_reg __fpu_xmm11;
    struct __darwin_xmm_reg __fpu_xmm12;
    struct __darwin_xmm_reg __fpu_xmm13;
    struct __darwin_xmm_reg __fpu_xmm14;
    struct __darwin_xmm_reg __fpu_xmm15;
    char __fpu_rsrv4[6 * 16];
    int __fpu_reserved1;
} ;
struct __darwin_x86_avx_state64 {
    int __fpu_reserved[2];
    struct __darwin_fp_control __fpu_fcw;
    struct __darwin_fp_status __fpu_fsw;
    __uint8_t __fpu_ftw;
    __uint8_t __fpu_rsrv1;
    __uint16_t __fpu_fop;
    __uint32_t __fpu_ip;
    __uint16_t __fpu_cs;
    __uint16_t __fpu_rsrv2;
    __uint32_t __fpu_dp;
    __uint16_t __fpu_ds;
    __uint16_t __fpu_rsrv3;
    __uint32_t __fpu_mxcsr;
    __uint32_t __fpu_mxcsrmask;
    struct __darwin_mmst_reg __fpu_stmm0;
    struct __darwin_mmst_reg __fpu_stmm1;
    struct __darwin_mmst_reg __fpu_stmm2;
    struct __darwin_mmst_reg __fpu_stmm3;
    struct __darwin_mmst_reg __fpu_stmm4;
    struct __darwin_mmst_reg __fpu_stmm5;
    struct __darwin_mmst_reg __fpu_stmm6;
    struct __darwin_mmst_reg __fpu_stmm7;
    struct __darwin_xmm_reg __fpu_xmm0;
    struct __darwin_xmm_reg __fpu_xmm1;
    struct __darwin_xmm_reg __fpu_xmm2;
    struct __darwin_xmm_reg __fpu_xmm3;
    struct __darwin_xmm_reg __fpu_xmm4;
    struct __darwin_xmm_reg __fpu_xmm5;
    struct __darwin_xmm_reg __fpu_xmm6;
    struct __darwin_xmm_reg __fpu_xmm7;
    struct __darwin_xmm_reg __fpu_xmm8;
    struct __darwin_xmm_reg __fpu_xmm9;
    struct __darwin_xmm_reg __fpu_xmm10;
    struct __darwin_xmm_reg __fpu_xmm11;
    struct __darwin_xmm_reg __fpu_xmm12;
    struct __darwin_xmm_reg __fpu_xmm13;
    struct __darwin_xmm_reg __fpu_xmm14;
    struct __darwin_xmm_reg __fpu_xmm15;
    char __fpu_rsrv4[6 * 16];
    int __fpu_reserved1;
    char __avx_reserved1[64];
    struct __darwin_xmm_reg __fpu_ymmh0;
    struct __darwin_xmm_reg __fpu_ymmh1;
    struct __darwin_xmm_reg __fpu_ymmh2;
    struct __darwin_xmm_reg __fpu_ymmh3;
    struct __darwin_xmm_reg __fpu_ymmh4;
    struct __darwin_xmm_reg __fpu_ymmh5;
    struct __darwin_xmm_reg __fpu_ymmh6;
    struct __darwin_xmm_reg __fpu_ymmh7;
    struct __darwin_xmm_reg __fpu_ymmh8;
    struct __darwin_xmm_reg __fpu_ymmh9;
    struct __darwin_xmm_reg __fpu_ymmh10;
    struct __darwin_xmm_reg __fpu_ymmh11;
    struct __darwin_xmm_reg __fpu_ymmh12;
    struct __darwin_xmm_reg __fpu_ymmh13;
    struct __darwin_xmm_reg __fpu_ymmh14;
    struct __darwin_xmm_reg __fpu_ymmh15;
} ;
struct __darwin_x86_avx512_state64 {
    int __fpu_reserved[2];
    struct __darwin_fp_control __fpu_fcw;
    struct __darwin_fp_status __fpu_fsw;
    __uint8_t __fpu_ftw;
    __uint8_t __fpu_rsrv1;
    __uint16_t __fpu_fop;
    __uint32_t __fpu_ip;
    __uint16_t __fpu_cs;
    __uint16_t __fpu_rsrv2;
    __uint32_t __fpu_dp;
    __uint16_t __fpu_ds;
    __uint16_t __fpu_rsrv3;
    __uint32_t __fpu_mxcsr;
    __uint32_t __fpu_mxcsrmask;
    struct __darwin_mmst_reg __fpu_stmm0;
    struct __darwin_mmst_reg __fpu_stmm1;
    struct __darwin_mmst_reg __fpu_stmm2;
    struct __darwin_mmst_reg __fpu_stmm3;
    struct __darwin_mmst_reg __fpu_stmm4;
    struct __darwin_mmst_reg __fpu_stmm5;
    struct __darwin_mmst_reg __fpu_stmm6;
    struct __darwin_mmst_reg __fpu_stmm7;
    struct __darwin_xmm_reg __fpu_xmm0;
    struct __darwin_xmm_reg __fpu_xmm1;
    struct __darwin_xmm_reg __fpu_xmm2;
    struct __darwin_xmm_reg __fpu_xmm3;
    struct __darwin_xmm_reg __fpu_xmm4;
    struct __darwin_xmm_reg __fpu_xmm5;
    struct __darwin_xmm_reg __fpu_xmm6;
    struct __darwin_xmm_reg __fpu_xmm7;
    struct __darwin_xmm_reg __fpu_xmm8;
    struct __darwin_xmm_reg __fpu_xmm9;
    struct __darwin_xmm_reg __fpu_xmm10;
    struct __darwin_xmm_reg __fpu_xmm11;
    struct __darwin_xmm_reg __fpu_xmm12;
    struct __darwin_xmm_reg __fpu_xmm13;
    struct __darwin_xmm_reg __fpu_xmm14;
    struct __darwin_xmm_reg __fpu_xmm15;
    char __fpu_rsrv4[6 * 16];
    int __fpu_reserved1;
    char __avx_reserved1[64];
    struct __darwin_xmm_reg __fpu_ymmh0;
    struct __darwin_xmm_reg __fpu_ymmh1;
    struct __darwin_xmm_reg __fpu_ymmh2;
    struct __darwin_xmm_reg __fpu_ymmh3;
    struct __darwin_xmm_reg __fpu_ymmh4;
    struct __darwin_xmm_reg __fpu_ymmh5;
    struct __darwin_xmm_reg __fpu_ymmh6;
    struct __darwin_xmm_reg __fpu_ymmh7;
    struct __darwin_xmm_reg __fpu_ymmh8;
    struct __darwin_xmm_reg __fpu_ymmh9;
    struct __darwin_xmm_reg __fpu_ymmh10;
    struct __darwin_xmm_reg __fpu_ymmh11;
    struct __darwin_xmm_reg __fpu_ymmh12;
    struct __darwin_xmm_reg __fpu_ymmh13;
    struct __darwin_xmm_reg __fpu_ymmh14;
    struct __darwin_xmm_reg __fpu_ymmh15;
    struct __darwin_opmask_reg __fpu_k0;
    struct __darwin_opmask_reg __fpu_k1;
    struct __darwin_opmask_reg __fpu_k2;
    struct __darwin_opmask_reg __fpu_k3;
    struct __darwin_opmask_reg __fpu_k4;
    struct __darwin_opmask_reg __fpu_k5;
    struct __darwin_opmask_reg __fpu_k6;
    struct __darwin_opmask_reg __fpu_k7;
    struct __darwin_ymm_reg __fpu_zmmh0;
    struct __darwin_ymm_reg __fpu_zmmh1;
    struct __darwin_ymm_reg __fpu_zmmh2;
    struct __darwin_ymm_reg __fpu_zmmh3;
    struct __darwin_ymm_reg __fpu_zmmh4;
    struct __darwin_ymm_reg __fpu_zmmh5;
    struct __darwin_ymm_reg __fpu_zmmh6;
    struct __darwin_ymm_reg __fpu_zmmh7;
    struct __darwin_ymm_reg __fpu_zmmh8;
    struct __darwin_ymm_reg __fpu_zmmh9;
    struct __darwin_ymm_reg __fpu_zmmh10;
    struct __darwin_ymm_reg __fpu_zmmh11;
    struct __darwin_ymm_reg __fpu_zmmh12;
    struct __darwin_ymm_reg __fpu_zmmh13;
    struct __darwin_ymm_reg __fpu_zmmh14;
    struct __darwin_ymm_reg __fpu_zmmh15;
    struct __darwin_zmm_reg __fpu_zmm16;
    struct __darwin_zmm_reg __fpu_zmm17;
    struct __darwin_zmm_reg __fpu_zmm18;
    struct __darwin_zmm_reg __fpu_zmm19;
    struct __darwin_zmm_reg __fpu_zmm20;
    struct __darwin_zmm_reg __fpu_zmm21;
    struct __darwin_zmm_reg __fpu_zmm22;
    struct __darwin_zmm_reg __fpu_zmm23;
    struct __darwin_zmm_reg __fpu_zmm24;
    struct __darwin_zmm_reg __fpu_zmm25;
    struct __darwin_zmm_reg __fpu_zmm26;
    struct __darwin_zmm_reg __fpu_zmm27;
    struct __darwin_zmm_reg __fpu_zmm28;
    struct __darwin_zmm_reg __fpu_zmm29;
    struct __darwin_zmm_reg __fpu_zmm30;
    struct __darwin_zmm_reg __fpu_zmm31;
} ;
struct __darwin_x86_exception_state64 {
    __uint16_t __trapno;
    __uint16_t __cpu;
    __uint32_t __err;
    __uint64_t __faultvaddr;
} ;
struct __darwin_x86_debug_state64 {
    __uint64_t __dr0;
    __uint64_t __dr1;
    __uint64_t __dr2;
    __uint64_t __dr3;
    __uint64_t __dr4;
    __uint64_t __dr5;
    __uint64_t __dr6;
    __uint64_t __dr7;
} ;
struct __darwin_x86_cpmu_state64 {
    __uint64_t __ctrs[16];
} ;
struct __darwin_mcontext32 {
    struct __darwin_i386_exception_state __es;
    struct __darwin_i386_thread_state __ss;
    struct __darwin_i386_float_state __fs;
} ;
struct __darwin_mcontext_avx32 {
    struct __darwin_i386_exception_state __es;
    struct __darwin_i386_thread_state __ss;
    struct __darwin_i386_avx_state __fs;
} ;
struct __darwin_mcontext_avx512_32 {
    struct __darwin_i386_exception_state __es;
    struct __darwin_i386_thread_state __ss;
    struct __darwin_i386_avx512_state __fs;
} ;
struct __darwin_mcontext64 {
    struct __darwin_x86_exception_state64 __es;
    struct __darwin_x86_thread_state64 __ss;
    struct __darwin_x86_float_state64 __fs;
} ;
struct __darwin_mcontext_avx64 {
    struct __darwin_x86_exception_state64 __es;
    struct __darwin_x86_thread_state64 __ss;
    struct __darwin_x86_avx_state64 __fs;
} ;
struct __darwin_mcontext_avx512_64 {
    struct __darwin_x86_exception_state64 __es;
    struct __darwin_x86_thread_state64 __ss;
    struct __darwin_x86_avx512_state64 __fs;
} ;
typedef struct __darwin_mcontext64 *mcontext_t;
typedef __darwin_pthread_attr_t pthread_attr_t;
struct __darwin_sigaltstack {
    void *ss_sp;
    __darwin_size_t ss_size;
    int ss_flags;
} ;
typedef struct __darwin_sigaltstack stack_t;
struct __darwin_ucontext {
    int uc_onstack;
    __darwin_sigset_t uc_sigmask;
    struct __darwin_sigaltstack uc_stack;
    struct __darwin_ucontext *uc_link;
    __darwin_size_t uc_mcsize;
    struct __darwin_mcontext64 *uc_mcontext;
} ;
typedef struct __darwin_ucontext ucontext_t;
typedef __darwin_sigset_t sigset_t;
typedef __darwin_uid_t uid_t;
union sigval {
    int sival_int;
    void *sival_ptr;
} ;
struct sigevent {
    int sigev_notify;
    int sigev_signo;
    union sigval sigev_value;
    void ( *sigev_notify_function )(union sigval );
    pthread_attr_t *sigev_notify_attributes;
} ;
struct __siginfo {
    int si_signo;
    int si_errno;
    int si_code;
    pid_t si_pid;
    uid_t si_uid;
    int si_status;
    void *si_addr;
    union sigval si_value;
    long si_band;
    unsigned long __pad[7];
} ;
typedef struct __siginfo siginfo_t;
union __sigaction_u {
    void ( *__sa_handler )(int );
    void ( *__sa_sigaction )(int , struct __siginfo * , void *);
} ;
struct __sigaction {
    union __sigaction_u __sigaction_u;
    void ( *sa_tramp )(void *, int  , int  , siginfo_t * , void *);
    sigset_t sa_mask;
    int sa_flags;
} ;
struct sigaction {
    union __sigaction_u __sigaction_u;
    sigset_t sa_mask;
    int sa_flags;
} ;
typedef void ( *sig_t )(int );
struct sigvec {
    void ( *sv_handler )(int );
    int sv_mask;
    int sv_flags;
} ;
struct sigstack {
    char *ss_sp;
    int ss_onstack;
} ;
void ( *signal(int , void (*)(int )) )(int );
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
typedef long int intmax_t;
typedef long unsigned int uintmax_t;
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
typedef __uint64_t rlim_t;
struct rusage {
    struct timeval ru_utime;
    struct timeval ru_stime;
    long ru_maxrss;
    long ru_ixrss;
    long ru_idrss;
    long ru_isrss;
    long ru_minflt;
    long ru_majflt;
    long ru_nswap;
    long ru_inblock;
    long ru_oublock;
    long ru_msgsnd;
    long ru_msgrcv;
    long ru_nsignals;
    long ru_nvcsw;
    long ru_nivcsw;
} ;
typedef void *rusage_info_t;
struct rusage_info_v0 {
    uint8_t ri_uuid[16];
    uint64_t ri_user_time;
    uint64_t ri_system_time;
    uint64_t ri_pkg_idle_wkups;
    uint64_t ri_interrupt_wkups;
    uint64_t ri_pageins;
    uint64_t ri_wired_size;
    uint64_t ri_resident_size;
    uint64_t ri_phys_footprint;
    uint64_t ri_proc_start_abstime;
    uint64_t ri_proc_exit_abstime;
} ;
struct rusage_info_v1 {
    uint8_t ri_uuid[16];
    uint64_t ri_user_time;
    uint64_t ri_system_time;
    uint64_t ri_pkg_idle_wkups;
    uint64_t ri_interrupt_wkups;
    uint64_t ri_pageins;
    uint64_t ri_wired_size;
    uint64_t ri_resident_size;
    uint64_t ri_phys_footprint;
    uint64_t ri_proc_start_abstime;
    uint64_t ri_proc_exit_abstime;
    uint64_t ri_child_user_time;
    uint64_t ri_child_system_time;
    uint64_t ri_child_pkg_idle_wkups;
    uint64_t ri_child_interrupt_wkups;
    uint64_t ri_child_pageins;
    uint64_t ri_child_elapsed_abstime;
} ;
struct rusage_info_v2 {
    uint8_t ri_uuid[16];
    uint64_t ri_user_time;
    uint64_t ri_system_time;
    uint64_t ri_pkg_idle_wkups;
    uint64_t ri_interrupt_wkups;
    uint64_t ri_pageins;
    uint64_t ri_wired_size;
    uint64_t ri_resident_size;
    uint64_t ri_phys_footprint;
    uint64_t ri_proc_start_abstime;
    uint64_t ri_proc_exit_abstime;
    uint64_t ri_child_user_time;
    uint64_t ri_child_system_time;
    uint64_t ri_child_pkg_idle_wkups;
    uint64_t ri_child_interrupt_wkups;
    uint64_t ri_child_pageins;
    uint64_t ri_child_elapsed_abstime;
    uint64_t ri_diskio_bytesread;
    uint64_t ri_diskio_byteswritten;
} ;
struct rusage_info_v3 {
    uint8_t ri_uuid[16];
    uint64_t ri_user_time;
    uint64_t ri_system_time;
    uint64_t ri_pkg_idle_wkups;
    uint64_t ri_interrupt_wkups;
    uint64_t ri_pageins;
    uint64_t ri_wired_size;
    uint64_t ri_resident_size;
    uint64_t ri_phys_footprint;
    uint64_t ri_proc_start_abstime;
    uint64_t ri_proc_exit_abstime;
    uint64_t ri_child_user_time;
    uint64_t ri_child_system_time;
    uint64_t ri_child_pkg_idle_wkups;
    uint64_t ri_child_interrupt_wkups;
    uint64_t ri_child_pageins;
    uint64_t ri_child_elapsed_abstime;
    uint64_t ri_diskio_bytesread;
    uint64_t ri_diskio_byteswritten;
    uint64_t ri_cpu_time_qos_default;
    uint64_t ri_cpu_time_qos_maintenance;
    uint64_t ri_cpu_time_qos_background;
    uint64_t ri_cpu_time_qos_utility;
    uint64_t ri_cpu_time_qos_legacy;
    uint64_t ri_cpu_time_qos_user_initiated;
    uint64_t ri_cpu_time_qos_user_interactive;
    uint64_t ri_billed_system_time;
    uint64_t ri_serviced_system_time;
} ;
struct rusage_info_v4 {
    uint8_t ri_uuid[16];
    uint64_t ri_user_time;
    uint64_t ri_system_time;
    uint64_t ri_pkg_idle_wkups;
    uint64_t ri_interrupt_wkups;
    uint64_t ri_pageins;
    uint64_t ri_wired_size;
    uint64_t ri_resident_size;
    uint64_t ri_phys_footprint;
    uint64_t ri_proc_start_abstime;
    uint64_t ri_proc_exit_abstime;
    uint64_t ri_child_user_time;
    uint64_t ri_child_system_time;
    uint64_t ri_child_pkg_idle_wkups;
    uint64_t ri_child_interrupt_wkups;
    uint64_t ri_child_pageins;
    uint64_t ri_child_elapsed_abstime;
    uint64_t ri_diskio_bytesread;
    uint64_t ri_diskio_byteswritten;
    uint64_t ri_cpu_time_qos_default;
    uint64_t ri_cpu_time_qos_maintenance;
    uint64_t ri_cpu_time_qos_background;
    uint64_t ri_cpu_time_qos_utility;
    uint64_t ri_cpu_time_qos_legacy;
    uint64_t ri_cpu_time_qos_user_initiated;
    uint64_t ri_cpu_time_qos_user_interactive;
    uint64_t ri_billed_system_time;
    uint64_t ri_serviced_system_time;
    uint64_t ri_logical_writes;
    uint64_t ri_lifetime_max_phys_footprint;
    uint64_t ri_instructions;
    uint64_t ri_cycles;
    uint64_t ri_billed_energy;
    uint64_t ri_serviced_energy;
    uint64_t ri_unused[2];
} ;
typedef struct rusage_info_v4 rusage_info_current;
struct rlimit {
    rlim_t rlim_cur;
    rlim_t rlim_max;
} ;
struct proc_rlimit_control_wakeupmon {
    uint32_t wm_flags;
    int32_t wm_rate;
} ;
int getpriority(int , id_t );
int getiopolicy_np(int , int );
int getrlimit(int , struct rlimit *);
int getrusage(int , struct rusage *);
int setpriority(int , id_t  , int );
int setiopolicy_np(int , int  , int );
int setrlimit(int , const struct rlimit *);
static inline __uint16_t _OSSwapInt16(__uint16_t _data) {
    return ((__uint16_t) ((_data << 8) | (_data >> 8)));
}
static inline __uint32_t _OSSwapInt32(__uint32_t _data) {
    ;
    return _data;
}
static inline __uint64_t _OSSwapInt64(__uint64_t _data) {
    ;
    return _data;
}
union wait {
    int w_status;
    struct stUn_imopVarPre2 {
        unsigned int w_Termsig: 7, w_Coredump: 1 , w_Retcode: 8 , w_Filler: 16;
    } w_T;
    struct stUn_imopVarPre3 {
        unsigned int w_Stopval: 8, w_Stopsig: 8 , w_Filler: 16;
    } w_S;
} ;
pid_t wait(int *);
pid_t waitpid(pid_t , int * , int );
int waitid(idtype_t , id_t  , siginfo_t * , int );
pid_t wait3(int *, int  , struct rusage *);
pid_t wait4(pid_t , int * , int  , struct rusage *);
void *alloca(size_t );
typedef __darwin_ct_rune_t ct_rune_t;
typedef __darwin_rune_t rune_t;
typedef __darwin_wchar_t wchar_t;
struct stUn_imopVarPre4 {
    int quot;
    int rem;
} ;
typedef struct stUn_imopVarPre4 div_t;
struct stUn_imopVarPre5 {
    long quot;
    long rem;
} ;
typedef struct stUn_imopVarPre5 ldiv_t;
struct stUn_imopVarPre6 {
    long long quot;
    long long rem;
} ;
typedef struct stUn_imopVarPre6 lldiv_t;
extern int __mb_cur_max;
void abort(void );
int abs(int );
int atexit(void (*)(void ));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long atoll(const char *);
void *bsearch(const void *__key, const void *__base , size_t __nel , size_t __width , int ( *__compar )(const void *, const void *));
void *calloc(size_t __count, size_t __size);
div_t div(int , int );
void exit(int );
void free(void *);
char *getenv(const char *);
long labs(long );
ldiv_t ldiv(long , long );
long long llabs(long long );
lldiv_t lldiv(long long , long long );
void *malloc(size_t __size);
int mblen(const char *__s, size_t __n);
size_t mbstowcs(wchar_t *restrict , const char *restrict  , size_t );
int mbtowc(wchar_t *restrict , const char *restrict  , size_t );
int posix_memalign(void **__memptr, size_t __alignment , size_t __size);
void qsort(void *__base, size_t __nel , size_t __width , int ( *__compar )(const void *, const void *));
int rand(void );
void *realloc(void *__ptr, size_t __size);
void srand(unsigned );
double strtod(const char *, char **);
float strtof(const char *, char **);
long strtol(const char *__str, char **__endptr , int __base);
long double strtold(const char *, char **);
long long strtoll(const char *__str, char **__endptr , int __base);
unsigned long strtoul(const char *__str, char **__endptr , int __base);
unsigned long long strtoull(const char *__str, char **__endptr , int __base);
int system(const char *);
size_t wcstombs(char *restrict , const wchar_t *restrict  , size_t );
int wctomb(char *, wchar_t );
void _Exit(int );
long a64l(const char *);
double drand48(void );
char *ecvt(double , int  , int *restrict  , int *restrict );
double erand48(unsigned short [3]);
char *fcvt(double , int  , int *restrict  , int *restrict );
char *gcvt(double , int  , char *);
int getsubopt(char **, char *const * , char **);
int grantpt(int );
char *initstate(unsigned , char * , size_t );
long jrand48(unsigned short [3]);
char *l64a(long );
void lcong48(unsigned short [7]);
long lrand48(void );
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void );
long nrand48(unsigned short [3]);
int posix_openpt(int );
char *ptsname(int );
int ptsname_r(int fildes, char *buffer , size_t buflen);
int putenv(char *);
long random(void );
int rand_r(unsigned *);
char *realpath(const char *restrict , char *restrict );
unsigned short *seed48(unsigned short [3]);
int setenv(const char *__name, const char *__value , int __overwrite);
void setkey(const char *);
char *setstate(const char *);
void srand48(long );
void srandom(unsigned );
int unlockpt(int );
int unsetenv(const char *);
typedef __darwin_dev_t dev_t;
typedef __darwin_mode_t mode_t;
uint32_t arc4random(void );
void arc4random_addrandom(unsigned char *, int );
void arc4random_buf(void *__buf, size_t __nbytes);
void arc4random_stir(void );
uint32_t arc4random_uniform(uint32_t __upper_bound);
char *cgetcap(char *, const char * , int );
int cgetclose(void );
int cgetent(char **, char ** , const char *);
int cgetfirst(char **, char **);
int cgetmatch(const char *, const char *);
int cgetnext(char **, char **);
int cgetnum(char *, const char * , long *);
int cgetset(const char *);
int cgetstr(char *, const char * , char **);
int cgetustr(char *, const char * , char **);
int daemon(int , int );
char *devname(dev_t , mode_t );
char *devname_r(dev_t , mode_t  , char *buf , int len);
char *getbsize(int *, long *);
int getloadavg(double [], int );
const char *getprogname(void );
int heapsort(void *__base, size_t __nel , size_t __width , int ( *__compar )(const void *, const void *));
int mergesort(void *__base, size_t __nel , size_t __width , int ( *__compar )(const void *, const void *));
void psort(void *__base, size_t __nel , size_t __width , int ( *__compar )(const void *, const void *));
void psort_r(void *__base, size_t __nel , size_t __width , void * , int ( *__compar )(void *, const void * , const void *));
void qsort_r(void *__base, size_t __nel , size_t __width , void * , int ( *__compar )(void *, const void * , const void *));
int radixsort(const unsigned char **__base, int __nel , const unsigned char *__table , unsigned __endbyte);
void setprogname(const char *);
int sradixsort(const unsigned char **__base, int __nel , const unsigned char *__table , unsigned __endbyte);
void sranddev(void );
void srandomdev(void );
void *reallocf(void *__ptr, size_t __size);
long long strtoq(const char *__str, char **__endptr , int __base);
unsigned long long strtouq(const char *__str, char **__endptr , int __base);
extern char *suboptarg;
void *valloc(size_t );
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
enum enum_imopVarPre7 {
    _CLOCK_REALTIME = 0, _CLOCK_MONOTONIC = 6 , _CLOCK_MONOTONIC_RAW = 4 , _CLOCK_MONOTONIC_RAW_APPROX = 5 , _CLOCK_UPTIME_RAW = 8 , _CLOCK_UPTIME_RAW_APPROX = 9 , _CLOCK_PROCESS_CPUTIME_ID = 12 , _CLOCK_THREAD_CPUTIME_ID = 16
} ;
typedef enum enum_imopVarPre7 clockid_t;
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
    int _imopVarPre101;
    float _imopVarPre102;
    float _imopVarPre103;
    _imopVarPre101 = __x == __x;
    if (_imopVarPre101) {
        _imopVarPre102 = __builtin_fabsf(__x);
        _imopVarPre103 = __builtin_inff();
        _imopVarPre101 = _imopVarPre102 != _imopVarPre103;
    }
    return _imopVarPre101;
}
extern __inline int __inline_isfinited(double __x) {
    int _imopVarPre107;
    double _imopVarPre108;
    double _imopVarPre109;
    _imopVarPre107 = __x == __x;
    if (_imopVarPre107) {
        _imopVarPre108 = __builtin_fabs(__x);
        _imopVarPre109 = __builtin_inf();
        _imopVarPre107 = _imopVarPre108 != _imopVarPre109;
    }
    return _imopVarPre107;
}
extern __inline int __inline_isfinitel(long double __x) {
    int _imopVarPre113;
    long double _imopVarPre114;
    long double _imopVarPre115;
    _imopVarPre113 = __x == __x;
    if (_imopVarPre113) {
        _imopVarPre114 = __builtin_fabsl(__x);
        _imopVarPre115 = __builtin_infl();
        _imopVarPre113 = _imopVarPre114 != _imopVarPre115;
    }
    return _imopVarPre113;
}
extern __inline int __inline_isinff(float __x) {
    float _imopVarPre118;
    float _imopVarPre119;
    _imopVarPre118 = __builtin_fabsf(__x);
    _imopVarPre119 = __builtin_inff();
    return _imopVarPre118 == _imopVarPre119;
}
extern __inline int __inline_isinfd(double __x) {
    double _imopVarPre122;
    double _imopVarPre123;
    _imopVarPre122 = __builtin_fabs(__x);
    _imopVarPre123 = __builtin_inf();
    return _imopVarPre122 == _imopVarPre123;
}
extern __inline int __inline_isinfl(long double __x) {
    long double _imopVarPre126;
    long double _imopVarPre127;
    _imopVarPre126 = __builtin_fabsl(__x);
    _imopVarPre127 = __builtin_infl();
    return _imopVarPre126 == _imopVarPre127;
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
    union stUn_imopVarPre8 {
        float __f;
        unsigned int __u;
    } ;
    union stUn_imopVarPre8 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 31);
}
extern __inline int __inline_signbitd(double __x) {
    union stUn_imopVarPre9 {
        double __f;
        unsigned long long __u;
    } ;
    union stUn_imopVarPre9 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 63);
}
extern __inline int __inline_signbitl(long double __x) {
    union stUn_imopVarPre11 {
        long double __ld;
        struct stUn_imopVarPre10 {
            unsigned long long __m;
            unsigned short __sexp;
        } __p;
    } ;
    union stUn_imopVarPre11 __u;
    __u.__ld = __x;
    return (int) (__u.__p.__sexp >> 15);
}
extern __inline int __inline_isnormalf(float __x) {
    int _imopVarPre130;
    float _imopVarPre131;
    _imopVarPre130 = __inline_isfinitef(__x);
    if (_imopVarPre130) {
        _imopVarPre131 = __builtin_fabsf(__x);
        _imopVarPre130 = _imopVarPre131 >= 1.17549435082228750797e-38F;
    }
    return _imopVarPre130;
}
extern __inline int __inline_isnormald(double __x) {
    int _imopVarPre134;
    double _imopVarPre135;
    _imopVarPre134 = __inline_isfinited(__x);
    if (_imopVarPre134) {
        _imopVarPre135 = __builtin_fabs(__x);
        _imopVarPre134 = _imopVarPre135 >= ((double) 2.22507385850720138309e-308L);
    }
    return _imopVarPre134;
}
extern __inline int __inline_isnormall(long double __x) {
    int _imopVarPre138;
    long double _imopVarPre139;
    _imopVarPre138 = __inline_isfinitel(__x);
    if (_imopVarPre138) {
        _imopVarPre139 = __builtin_fabsl(__x);
        _imopVarPre138 = _imopVarPre139 >= 3.36210314311209350626e-4932L;
    }
    return _imopVarPre138;
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
    struct __float2 _imopVarPre140;
    _imopVarPre140 = __sincosf_stret(__x);
    const struct __float2 __stret = _imopVarPre140;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincos(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre141;
    _imopVarPre141 = __sincos_stret(__x);
    const struct __double2 __stret = _imopVarPre141;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre142;
    _imopVarPre142 = __sincospif_stret(__x);
    const struct __float2 __stret = _imopVarPre142;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre143;
    _imopVarPre143 = __sincospi_stret(__x);
    const struct __double2 __stret = _imopVarPre143;
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
void __assert_rtn(const char *, const char * , int  , const char *);
struct stUn_imopVarPre12 {
    unsigned char _x[64];
} ;
typedef struct stUn_imopVarPre12 omp_lock_t;
struct stUn_imopVarPre13 {
    unsigned char _x[80];
} ;
typedef struct stUn_imopVarPre13 omp_nest_lock_t;
enum omp_sched_t {
    omp_sched_static = 1, omp_sched_dynamic = 2 , omp_sched_guided = 3 , omp_sched_auto = 4
} ;
typedef enum omp_sched_t omp_sched_t;
enum omp_proc_bind_t {
    omp_proc_bind_false = 0, omp_proc_bind_true = 1 , omp_proc_bind_master = 2 , omp_proc_bind_close = 3 , omp_proc_bind_spread = 4
} ;
typedef enum omp_proc_bind_t omp_proc_bind_t;
enum omp_lock_hint_t {
    omp_lock_hint_none = 0, omp_lock_hint_uncontended = 1 , omp_lock_hint_contended = 2 , omp_lock_hint_nonspeculative = 4 , omp_lock_hint_speculative = 8
} ;
typedef enum omp_lock_hint_t omp_lock_hint_t;
extern void omp_set_num_threads(int );
extern int omp_get_num_threads(void );
extern int omp_get_max_threads(void );
extern int omp_get_thread_num(void );
extern int omp_get_num_procs(void );
extern int omp_in_parallel(void );
extern void omp_set_dynamic(int );
extern int omp_get_dynamic(void );
extern void omp_set_nested(int );
extern int omp_get_nested(void );
extern void omp_init_lock(omp_lock_t *);
extern void omp_init_lock_with_hint(omp_lock_t *, omp_lock_hint_t );
extern void omp_destroy_lock(omp_lock_t *);
extern void omp_set_lock(omp_lock_t *);
extern void omp_unset_lock(omp_lock_t *);
extern int omp_test_lock(omp_lock_t *);
extern void omp_init_nest_lock(omp_nest_lock_t *);
extern void omp_init_nest_lock_with_hint(omp_lock_t *, omp_lock_hint_t );
extern void omp_destroy_nest_lock(omp_nest_lock_t *);
extern void omp_set_nest_lock(omp_nest_lock_t *);
extern void omp_unset_nest_lock(omp_nest_lock_t *);
extern int omp_test_nest_lock(omp_nest_lock_t *);
extern double omp_get_wtime(void );
extern double omp_get_wtick(void );
extern void omp_set_schedule(omp_sched_t , int );
extern void omp_get_schedule(omp_sched_t *, int *);
extern int omp_get_thread_limit(void );
extern void omp_set_max_active_levels(int );
extern int omp_get_max_active_levels(void );
extern int omp_get_level(void );
extern int omp_get_ancestor_thread_num(int );
extern int omp_get_team_size(int );
extern int omp_get_active_level(void );
extern int omp_in_final(void );
extern int omp_get_cancellation(void );
extern omp_proc_bind_t omp_get_proc_bind(void );
extern int omp_get_num_places(void );
extern int omp_get_place_num_procs(int );
extern void omp_get_place_proc_ids(int , int *);
extern int omp_get_place_num(void );
extern int omp_get_partition_num_places(void );
extern void omp_get_partition_place_nums(int *);
extern void omp_set_default_device(int );
extern int omp_get_default_device(void );
extern int omp_get_num_devices(void );
extern int omp_get_num_teams(void );
extern int omp_get_team_num(void );
extern int omp_is_initial_device(void );
extern int omp_get_initial_device(void );
extern int omp_get_max_task_priority(void );
extern void *omp_target_alloc(long unsigned int , int );
extern void omp_target_free(void *, int );
extern int omp_target_is_present(void *, int );
extern int omp_target_memcpy(void *, void * , long unsigned int  , long unsigned int  , long unsigned int  , int  , int );
extern int omp_target_memcpy_rect(void *, void * , long unsigned int  , int  , const long unsigned int * , const long unsigned int * , const long unsigned int * , const long unsigned int * , const long unsigned int * , int  , int );
extern int omp_target_associate_ptr(void *, void * , long unsigned int  , long unsigned int  , int );
extern int omp_target_disassociate_ptr(void *, int );
int hypre_OutOfMemory(int size);
char *hypre_MAlloc(int size);
char *hypre_CAlloc(int count, int elt_size);
char *hypre_ReAlloc(char *ptr, int size);
void hypre_Free(char *ptr);
char *hypre_SharedMAlloc(int size);
char *hypre_SharedCAlloc(int count, int elt_size);
char *hypre_SharedReAlloc(char *ptr, int size);
void hypre_SharedFree(char *ptr);
double *hypre_IncrementSharedDataPtr(double *ptr, int size);
extern int hypre__global_error;
void hypre_error_handler(char *filename, int line , int ierr);
int HYPRE_GetError();
int HYPRE_CheckError(int hypre_ierr, int hypre_error_code);
int HYPRE_GetErrorArg();
void HYPRE_DescribeError(int hypre_ierr, char *descr);
struct stUn_imopVarPre14 {
    double *data;
    int *i;
    int *j;
    int num_rows;
    int num_cols;
    int num_nonzeros;
    int *rownnz;
    int num_rownnz;
    int owns_data;
} ;
typedef struct stUn_imopVarPre14 hypre_CSRMatrix;
struct stUn_imopVarPre15 {
    double *data;
    int size;
    int owns_data;
    int num_vectors;
    int multivec_storage_method;
    int vecstride, idxstride;
} ;
typedef struct stUn_imopVarPre15 hypre_Vector;
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros);
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix);
int hypre_CSRMatrixInitialize(hypre_CSRMatrix *matrix);
int hypre_CSRMatrixSetDataOwner(hypre_CSRMatrix *matrix, int owns_data);
int hypre_CSRMatrixSetRownnz(hypre_CSRMatrix *matrix);
hypre_CSRMatrix *hypre_CSRMatrixRead(char *file_name);
int hypre_CSRMatrixPrint(hypre_CSRMatrix *matrix, char *file_name);
int hypre_CSRMatrixCopy(hypre_CSRMatrix *A, hypre_CSRMatrix *B , int copy_data);
hypre_CSRMatrix *hypre_CSRMatrixClone(hypre_CSRMatrix *A);
hypre_CSRMatrix *hypre_CSRMatrixUnion(hypre_CSRMatrix *A, hypre_CSRMatrix *B , int *col_map_offd_A , int *col_map_offd_B , int **col_map_offd_C);
int hypre_CSRMatrixMatvec(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y);
int hypre_CSRMatrixMatvecT(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y);
int hypre_CSRMatrixMatvec_FF(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y , int *CF_marker_x , int *CF_marker_y , int fpt);
hypre_Vector *hypre_SeqVectorCreate(int size);
hypre_Vector *hypre_SeqMultiVectorCreate(int size, int num_vectors);
int hypre_SeqVectorDestroy(hypre_Vector *vector);
int hypre_SeqVectorInitialize(hypre_Vector *vector);
int hypre_SeqVectorSetDataOwner(hypre_Vector *vector, int owns_data);
hypre_Vector *hypre_SeqVectorRead(char *file_name);
int hypre_SeqVectorPrint(hypre_Vector *vector, char *file_name);
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value);
int hypre_SeqVectorCopy(hypre_Vector *x, hypre_Vector *y);
hypre_Vector *hypre_SeqVectorCloneDeep(hypre_Vector *x);
hypre_Vector *hypre_SeqVectorCloneShallow(hypre_Vector *x);
int hypre_SeqVectorScale(double alpha, hypre_Vector *y);
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y);
double hypre_SeqVectorInnerProd(hypre_Vector *x, hypre_Vector *y);
double hypre_VectorSumElts(hypre_Vector *vector);
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *values , hypre_Vector **x_ptr , hypre_Vector **y_ptr , hypre_Vector **sol_ptr);
int hypre_BoomerAMGSeqRelax(hypre_CSRMatrix *A, hypre_Vector *x , hypre_Vector *y);
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros) {
    hypre_CSRMatrix *matrix;
    unsigned int _imopVarPre153;
    unsigned int _imopVarPre154;
    char *_imopVarPre155;
    _imopVarPre153 = (unsigned int) sizeof(hypre_CSRMatrix);
    _imopVarPre154 = (unsigned int) 1;
    _imopVarPre155 = hypre_CAlloc(_imopVarPre154, _imopVarPre153);
    matrix = ((hypre_CSRMatrix *) _imopVarPre155);
    (matrix->data) = ((void *) 0);
    (matrix->i) = ((void *) 0);
    (matrix->j) = ((void *) 0);
    (matrix->rownnz) = ((void *) 0);
    (matrix->num_rows) = num_rows;
    (matrix->num_cols) = num_cols;
    (matrix->num_nonzeros) = num_nonzeros;
    (matrix->owns_data) = 1;
    (matrix->num_rownnz) = num_rows;
    return matrix;
}
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix) {
    int ierr = 0;
    if (matrix) {
        char *_imopVarPre159;
        _imopVarPre159 = (char *) (matrix->i);
        hypre_Free(_imopVarPre159);
        ((matrix->i) = ((void *) 0));
        if ((matrix->rownnz)) {
            char *_imopVarPre163;
            _imopVarPre163 = (char *) (matrix->rownnz);
            hypre_Free(_imopVarPre163);
            ((matrix->rownnz) = ((void *) 0));
        }
        if ((matrix->owns_data)) {
            char *_imopVarPre167;
            _imopVarPre167 = (char *) (matrix->data);
            hypre_Free(_imopVarPre167);
            ((matrix->data) = ((void *) 0));
            char *_imopVarPre171;
            _imopVarPre171 = (char *) (matrix->j);
            hypre_Free(_imopVarPre171);
            ((matrix->j) = ((void *) 0));
        }
        char *_imopVarPre175;
        _imopVarPre175 = (char *) matrix;
        hypre_Free(_imopVarPre175);
        (matrix = ((void *) 0));
    }
    return ierr;
}
int hypre_CSRMatrixInitialize(hypre_CSRMatrix *matrix) {
    int num_rows = (matrix->num_rows);
    int num_nonzeros = (matrix->num_nonzeros);
    int ierr = 0;
    int _imopVarPre177;
    _imopVarPre177 = !(matrix->data);
    if (_imopVarPre177) {
        _imopVarPre177 = num_nonzeros;
    }
    if (_imopVarPre177) {
        unsigned int _imopVarPre187;
        unsigned int _imopVarPre188;
        char *_imopVarPre189;
        _imopVarPre187 = (unsigned int) sizeof(double);
        _imopVarPre188 = (unsigned int) num_nonzeros;
        _imopVarPre189 = hypre_CAlloc(_imopVarPre188, _imopVarPre187);
        (matrix->data) = ((double *) _imopVarPre189);
    }
    if (!(matrix->i)) {
        unsigned int _imopVarPre199;
        unsigned int _imopVarPre200;
        char *_imopVarPre201;
        _imopVarPre199 = (unsigned int) sizeof(int);
        _imopVarPre200 = (unsigned int) (num_rows + 1);
        _imopVarPre201 = hypre_CAlloc(_imopVarPre200, _imopVarPre199);
        (matrix->i) = ((int *) _imopVarPre201);
    }
    int _imopVarPre203;
    _imopVarPre203 = !(matrix->j);
    if (_imopVarPre203) {
        _imopVarPre203 = num_nonzeros;
    }
    if (_imopVarPre203) {
        unsigned int _imopVarPre213;
        unsigned int _imopVarPre214;
        char *_imopVarPre215;
        _imopVarPre213 = (unsigned int) sizeof(int);
        _imopVarPre214 = (unsigned int) num_nonzeros;
        _imopVarPre215 = hypre_CAlloc(_imopVarPre214, _imopVarPre213);
        (matrix->j) = ((int *) _imopVarPre215);
    }
    return ierr;
}
int hypre_CSRMatrixSetDataOwner(hypre_CSRMatrix *matrix, int owns_data) {
    int ierr = 0;
    (matrix->owns_data) = owns_data;
    return ierr;
}
int hypre_CSRMatrixSetRownnz(hypre_CSRMatrix *matrix) {
    int ierr = 0;
    int num_rows = (matrix->num_rows);
    int *A_i = (matrix->i);
    int *Arownnz;
    int i;
    int adiag;
    int irownnz = 0;
    for (i = 0; i < num_rows; i++) {
        adiag = (A_i[i + 1] - A_i[i]);
        if (adiag > 0)
            irownnz++;
    }
    (matrix->num_rownnz) = irownnz;
    int _imopVarPre216;
    _imopVarPre216 = (irownnz == 0);
    if (!_imopVarPre216) {
        _imopVarPre216 = (irownnz == num_rows);
    }
    if (_imopVarPre216) {
        (matrix->rownnz) = ((void *) 0);
    } else {
        unsigned int _imopVarPre226;
        unsigned int _imopVarPre227;
        char *_imopVarPre228;
        _imopVarPre226 = (unsigned int) sizeof(int);
        _imopVarPre227 = (unsigned int) irownnz;
        _imopVarPre228 = hypre_CAlloc(_imopVarPre227, _imopVarPre226);
        Arownnz = ((int *) _imopVarPre228);
        irownnz = 0;
        for (i = 0; i < num_rows; i++) {
            adiag = A_i[i + 1] - A_i[i];
            if (adiag > 0)
                Arownnz[irownnz++] = i;
        }
        (matrix->rownnz) = Arownnz;
    }
    return ierr;
}
hypre_CSRMatrix *hypre_CSRMatrixRead(char *file_name) {
    hypre_CSRMatrix *matrix;
    FILE *fp;
    double *matrix_data;
    int *matrix_i;
    int *matrix_j;
    int num_rows;
    int num_nonzeros;
    int max_col = 0;
    int file_base = 1;
    int j;
    fp = fopen(file_name, "r");
    int *_imopVarPre230;
    _imopVarPre230 = &num_rows;
    fscanf(fp, "%d", _imopVarPre230);
    unsigned int _imopVarPre240;
    unsigned int _imopVarPre241;
    char *_imopVarPre242;
    _imopVarPre240 = (unsigned int) sizeof(int);
    _imopVarPre241 = (unsigned int) (num_rows + 1);
    _imopVarPre242 = hypre_CAlloc(_imopVarPre241, _imopVarPre240);
    matrix_i = ((int *) _imopVarPre242);
    for (j = 0; j < num_rows + 1; j++) {
        int *_imopVarPre244;
        _imopVarPre244 = &matrix_i[j];
        fscanf(fp, "%d", _imopVarPre244);
        matrix_i[j] -= file_base;
    }
    num_nonzeros = matrix_i[num_rows];
    int _imopVarPre246;
    struct stUn_imopVarPre14 *_imopVarPre247;
    _imopVarPre246 = matrix_i[num_rows];
    _imopVarPre247 = hypre_CSRMatrixCreate(num_rows, num_rows, _imopVarPre246);
    matrix = _imopVarPre247;
    (matrix->i) = matrix_i;
    hypre_CSRMatrixInitialize(matrix);
    matrix_j = (matrix->j);
    for (j = 0; j < num_nonzeros; j++) {
        int *_imopVarPre249;
        _imopVarPre249 = &matrix_j[j];
        fscanf(fp, "%d", _imopVarPre249);
        matrix_j[j] -= file_base;
        if (matrix_j[j] > max_col) {
            max_col = matrix_j[j];
        }
    }
    matrix_data = (matrix->data);
    for (j = 0; j < matrix_i[num_rows]; j++) {
        double *_imopVarPre251;
        _imopVarPre251 = &matrix_data[j];
        fscanf(fp, "%le", _imopVarPre251);
    }
    fclose(fp);
    (matrix->num_nonzeros) = num_nonzeros;
    (matrix->num_cols) = ++max_col;
    return matrix;
}
int hypre_CSRMatrixPrint(hypre_CSRMatrix *matrix, char *file_name) {
    FILE *fp;
    double *matrix_data;
    int *matrix_i;
    int *matrix_j;
    int num_rows;
    int file_base = 1;
    int j;
    int ierr = 0;
    matrix_data = (matrix->data);
    matrix_i = (matrix->i);
    matrix_j = (matrix->j);
    num_rows = (matrix->num_rows);
    fp = fopen(file_name, "w");
    fprintf(fp, "%d\n", num_rows);
    for (j = 0; j <= num_rows; j++) {
        int _imopVarPre253;
        _imopVarPre253 = matrix_i[j] + file_base;
        fprintf(fp, "%d\n", _imopVarPre253);
    }
    for (j = 0; j < matrix_i[num_rows]; j++) {
        int _imopVarPre255;
        _imopVarPre255 = matrix_j[j] + file_base;
        fprintf(fp, "%d\n", _imopVarPre255);
    }
    if (matrix_data) {
        for (j = 0; j < matrix_i[num_rows]; j++) {
            double _imopVarPre257;
            _imopVarPre257 = matrix_data[j];
            fprintf(fp, "%.14e\n", _imopVarPre257);
        }
    } else {
        fprintf(fp, "Warning: No matrix data!\n");
    }
    fclose(fp);
    return ierr;
}
int hypre_CSRMatrixCopy(hypre_CSRMatrix *A, hypre_CSRMatrix *B , int copy_data) {
    int ierr = 0;
    int num_rows = (A->num_rows);
    int *A_i = (A->i);
    int *A_j = (A->j);
    double *A_data;
    int *B_i = (B->i);
    int *B_j = (B->j);
    double *B_data;
    int i;
    int j;
    for (i = 0; i < num_rows; i++) {
        B_i[i] = A_i[i];
        for (j = A_i[i]; j < A_i[i + 1]; j++) {
            B_j[j] = A_j[j];
        }
    }
    B_i[num_rows] = A_i[num_rows];
    if (copy_data) {
        A_data = (A->data);
        B_data = (B->data);
        for (i = 0; i < num_rows; i++) {
            for (j = A_i[i]; j < A_i[i + 1]; j++) {
                B_data[j] = A_data[j];
            }
        }
    }
    return ierr;
}
hypre_CSRMatrix *hypre_CSRMatrixClone(hypre_CSRMatrix *A) {
    int num_rows = (A->num_rows);
    int num_cols = (A->num_cols);
    int num_nonzeros = (A->num_nonzeros);
    struct stUn_imopVarPre14 *_imopVarPre258;
    _imopVarPre258 = hypre_CSRMatrixCreate(num_rows, num_cols, num_nonzeros);
    hypre_CSRMatrix *B = _imopVarPre258;
    int *A_i;
    int *A_j;
    int *B_i;
    int *B_j;
    int i;
    int j;
    hypre_CSRMatrixInitialize(B);
    A_i = (A->i);
    A_j = (A->j);
    B_i = (B->i);
    B_j = (B->j);
    for (i = 0; i < num_rows + 1; ++i)
        B_i[i] = A_i[i];
    for (j = 0; j < num_nonzeros; ++j)
        B_j[j] = A_j[j];
    (B->num_rownnz) = (A->num_rownnz);
    if ((A->rownnz))
        hypre_CSRMatrixSetRownnz(B);
    return B;
}
hypre_CSRMatrix *hypre_CSRMatrixUnion(hypre_CSRMatrix *A, hypre_CSRMatrix *B , int *col_map_offd_A , int *col_map_offd_B , int **col_map_offd_C) {
    int num_rows = (A->num_rows);
    int num_cols_A = (A->num_cols);
    int num_cols_B = (B->num_cols);
    int num_cols;
    int num_nonzeros;
    int *A_i = (A->i);
    int *A_j = (A->j);
    int *B_i = (B->i);
    int *B_j = (B->j);
    int *C_i;
    int *C_j;
    int *jC = ((void *) 0);
    int i;
    int jA;
    int jB;
    int jBg;
    int ma;
    int mb;
    int mc;
    int ma_min;
    int ma_max;
    int match;
    hypre_CSRMatrix *C;
    if (!(num_rows == (B->num_rows))) {
        fprintf(__stderrp, "hypre_assert failed: %s\n", "num_rows == hypre_CSRMatrixNumRows(B)");
        hypre_error_handler("amgmk.c", 934, 1);
    }
    ;
    if (col_map_offd_B) {
        if (!col_map_offd_A) {
            fprintf(__stderrp, "hypre_assert failed: %s\n", "col_map_offd_A");
            hypre_error_handler("amgmk.c", 935, 1);
        }
    }
    ;
    if (col_map_offd_A) {
        if (!col_map_offd_B) {
            fprintf(__stderrp, "hypre_assert failed: %s\n", "col_map_offd_B");
            hypre_error_handler("amgmk.c", 936, 1);
        }
    }
    ;
    if (col_map_offd_A == 0) {
        int _imopVarPre261;
        int _imopVarPre262;
        _imopVarPre261 = (num_cols_A < num_cols_B);
        if (_imopVarPre261) {
            _imopVarPre262 = num_cols_B;
        } else {
            _imopVarPre262 = num_cols_A;
        }
        num_cols = _imopVarPre262;
    } else {
        unsigned int _imopVarPre272;
        unsigned int _imopVarPre273;
        char *_imopVarPre274;
        _imopVarPre272 = (unsigned int) sizeof(int);
        _imopVarPre273 = (unsigned int) num_cols_B;
        _imopVarPre274 = hypre_CAlloc(_imopVarPre273, _imopVarPre272);
        jC = ((int *) _imopVarPre274);
        num_cols = num_cols_A;
        for (jB = 0; jB < num_cols_B; ++jB) {
            match = 0;
            jBg = col_map_offd_B[jB];
            for (ma = 0; ma < num_cols_A; ++ma) {
                if (col_map_offd_A[ma] == jBg)
                    match = 1;
            }
            if (match == 0) {
                jC[jB] = num_cols;
                ++num_cols;
            }
        }
    }
    if (col_map_offd_A) {
        unsigned int _imopVarPre284;
        unsigned int _imopVarPre285;
        char *_imopVarPre286;
        _imopVarPre284 = (unsigned int) sizeof(int);
        _imopVarPre285 = (unsigned int) num_cols;
        _imopVarPre286 = hypre_CAlloc(_imopVarPre285, _imopVarPre284);
        *col_map_offd_C = ((int *) _imopVarPre286);
        for (jA = 0; jA < num_cols_A; ++jA)
            (*col_map_offd_C)[jA] = col_map_offd_A[jA];
        for (jB = 0; jB < num_cols_B; ++jB) {
            match = 0;
            jBg = col_map_offd_B[jB];
            for (ma = 0; ma < num_cols_A; ++ma) {
                if (col_map_offd_A[ma] == jBg)
                    match = 1;
            }
            if (match == 0)
                (*col_map_offd_C)[jC[jB]] = jBg;
        }
    }
    num_nonzeros = (A->num_nonzeros);
    for (i = 0; i < num_rows; ++i) {
        ma_min = A_i[i];
        ma_max = A_i[i + 1];
        for (mb = B_i[i]; mb < B_i[i + 1]; ++mb) {
            jB = B_j[mb];
            if (col_map_offd_B)
                jB = col_map_offd_B[jB];
            match = 0;
            for (ma = ma_min; ma < ma_max; ++ma) {
                jA = A_j[ma];
                if (col_map_offd_A)
                    jA = col_map_offd_A[jA];
                if (jB == jA) {
                    match = 1;
                    if (ma == ma_min)
                        ++ma_min;
                    break;
                }
            }
            if (match == 0)
                ++num_nonzeros;
        }
    }
    C = hypre_CSRMatrixCreate(num_rows, num_cols, num_nonzeros);
    hypre_CSRMatrixInitialize(C);
    C_i = (C->i);
    C_i[0] = 0;
    C_j = (C->j);
    mc = 0;
    for (i = 0; i < num_rows; ++i) {
        ma_min = A_i[i];
        ma_max = A_i[i + 1];
        for (ma = ma_min; ma < ma_max; ++ma) {
            C_j[mc] = A_j[ma];
            ++mc;
        }
        for (mb = B_i[i]; mb < B_i[i + 1]; ++mb) {
            jB = B_j[mb];
            if (col_map_offd_B)
                jB = col_map_offd_B[jB];
            match = 0;
            for (ma = ma_min; ma < ma_max; ++ma) {
                jA = A_j[ma];
                if (col_map_offd_A)
                    jA = col_map_offd_A[jA];
                if (jB == jA) {
                    match = 1;
                    if (ma == ma_min)
                        ++ma_min;
                    break;
                }
            }
            if (match == 0) {
                C_j[mc] = jC[B_j[mb]];
                ++mc;
            }
        }
        C_i[i + 1] = mc;
    }
    if (!(mc == num_nonzeros)) {
        fprintf(__stderrp, "hypre_assert failed: %s\n", "mc == num_nonzeros");
        hypre_error_handler("amgmk.c", 1058, 1);
    }
    ;
    if (jC) {
        char *_imopVarPre290;
        _imopVarPre290 = (char *) jC;
        hypre_Free(_imopVarPre290);
        (jC = ((void *) 0));
    }
    return C;
}
int hypre_CSRMatrixMatvec(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y) {
    double *A_data = (A->data);
    int *A_i = (A->i);
    int *A_j = (A->j);
    int num_rows = (A->num_rows);
    int num_cols = (A->num_cols);
    int *A_rownnz = (A->rownnz);
    int num_rownnz = (A->num_rownnz);
    double *x_data = (x->data);
    double *y_data = (y->data);
    int x_size = (x->size);
    int y_size = (y->size);
    int num_vectors = (x->num_vectors);
    int idxstride_y = (y->idxstride);
    int vecstride_y = (y->vecstride);
    int idxstride_x = (x->idxstride);
    int vecstride_x = (x->vecstride);
    double temp;
    double tempx;
    int i;
    int j;
    int jj;
    int m;
    double xpar = 0.7;
    int ierr = 0;
    if (!(num_vectors == (y->num_vectors))) {
        fprintf(__stderrp, "hypre_assert failed: %s\n", "num_vectors == hypre_VectorNumVectors(y)");
        hypre_error_handler("amgmk.c", 1112, 1);
    }
    ;
    if (num_cols != x_size)
        ierr = 1;
    if (num_rows != y_size)
        ierr = 2;
    int _imopVarPre292;
    _imopVarPre292 = num_cols != x_size;
    if (_imopVarPre292) {
        _imopVarPre292 = num_rows != y_size;
    }
    if (_imopVarPre292)
        ierr = 3;
    if (alpha == 0.0) {
        for (i = 0; i < num_rows * num_vectors; i++)
            y_data[i] *= beta;
        return ierr;
    }
    temp = beta / alpha;
    if (temp != 1.0) {
        if (temp == 0.0) {
            for (i = 0; i < num_rows * num_vectors; i++)
                y_data[i] = 0.0;
        } else {
            for (i = 0; i < num_rows * num_vectors; i++)
                y_data[i] *= temp;
        }
    }
    if (num_rownnz < xpar * num_rows) {
        for (i = 0; i < num_rownnz; i++) {
            m = A_rownnz[i];
            if (num_vectors == 1) {
                tempx = y_data[m];
                for (jj = A_i[m]; jj < A_i[m + 1]; jj++)
                    tempx += A_data[jj] * x_data[A_j[jj]];
                y_data[m] = tempx;
            } else {
                for (j = 0; j < num_vectors; ++j) {
                    tempx = y_data[j * vecstride_y + m * idxstride_y];
                    for (jj = A_i[m]; jj < A_i[m + 1]; jj++)
                        tempx += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                    y_data[j * vecstride_y + m * idxstride_y] = tempx;
                }
            }
        }
    } else {
#pragma omp parallel private(i, jj, temp)
        {
#pragma omp for schedule(static)
            for (i = 0; i < num_rows; i++) {
                if (num_vectors == 1) {
                    temp = y_data[i];
                    for (jj = A_i[i]; jj < A_i[i + 1]; jj++)
                        temp += A_data[jj] * x_data[A_j[jj]];
                    y_data[i] = temp;
                } else {
                    for (j = 0; j < num_vectors; ++j) {
                        temp = y_data[j * vecstride_y + i * idxstride_y];
                        for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                            temp += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                        }
                        y_data[j * vecstride_y + i * idxstride_y] = temp;
                    }
                }
            }
        }
    }
    if (alpha != 1.0) {
        for (i = 0; i < num_rows * num_vectors; i++)
            y_data[i] *= alpha;
    }
    return ierr;
}
int hypre_CSRMatrixMatvecT(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y) {
    double *A_data = (A->data);
    int *A_i = (A->i);
    int *A_j = (A->j);
    int num_rows = (A->num_rows);
    int num_cols = (A->num_cols);
    double *x_data = (x->data);
    double *y_data = (y->data);
    int x_size = (x->size);
    int y_size = (y->size);
    int num_vectors = (x->num_vectors);
    int idxstride_y = (y->idxstride);
    int vecstride_y = (y->vecstride);
    int idxstride_x = (x->idxstride);
    int vecstride_x = (x->vecstride);
    double temp;
    int i;
    int i1;
    int j;
    int jv;
    int jj;
    int ns;
    int ne;
    int size;
    int rest;
    int numThreads;
    int ierr = 0;
    if (!(num_vectors == (y->num_vectors))) {
        fprintf(__stderrp, "hypre_assert failed: %s\n", "num_vectors == hypre_VectorNumVectors(y)");
        hypre_error_handler("amgmk.c", 1279, 1);
    }
    ;
    if (num_rows != x_size)
        ierr = 1;
    if (num_cols != y_size)
        ierr = 2;
    int _imopVarPre294;
    _imopVarPre294 = num_rows != x_size;
    if (_imopVarPre294) {
        _imopVarPre294 = num_cols != y_size;
    }
    if (_imopVarPre294)
        ierr = 3;
    if (alpha == 0.0) {
        for (i = 0; i < num_cols * num_vectors; i++)
            y_data[i] *= beta;
        return ierr;
    }
    temp = beta / alpha;
    if (temp != 1.0) {
        if (temp == 0.0) {
            for (i = 0; i < num_cols * num_vectors; i++)
                y_data[i] = 0.0;
        } else {
            for (i = 0; i < num_cols * num_vectors; i++)
                y_data[i] *= temp;
        }
    }
    numThreads = 1;
    if (numThreads > 1) {
        for (i1 = 0; i1 < numThreads; i1++) {
            size = num_cols / numThreads;
            rest = num_cols - size * numThreads;
            if (i1 < rest) {
                ns = i1 * size + i1 - 1;
                ne = (i1 + 1) * size + i1 + 1;
            } else {
                ns = i1 * size + rest - 1;
                ne = (i1 + 1) * size + rest;
            }
            if (num_vectors == 1) {
                for (i = 0; i < num_rows; i++) {
                    for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                        j = A_j[jj];
                        int _imopVarPre296;
                        _imopVarPre296 = j > ns;
                        if (_imopVarPre296) {
                            _imopVarPre296 = j < ne;
                        }
                        if (_imopVarPre296)
                            y_data[j] += A_data[jj] * x_data[i];
                    }
                }
            } else {
                for (i = 0; i < num_rows; i++) {
                    for (jv = 0; jv < num_vectors; ++jv) {
                        for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                            j = A_j[jj];
                            int _imopVarPre298;
                            _imopVarPre298 = j > ns;
                            if (_imopVarPre298) {
                                _imopVarPre298 = j < ne;
                            }
                            if (_imopVarPre298)
                                y_data[j * idxstride_y + jv * vecstride_y] += A_data[jj] * x_data[i * idxstride_x + jv * vecstride_x];
                        }
                    }
                }
            }
        }
    } else {
        for (i = 0; i < num_rows; i++) {
            if (num_vectors == 1) {
                for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                    j = A_j[jj];
                    y_data[j] += A_data[jj] * x_data[i];
                }
            } else {
                for (jv = 0; jv < num_vectors; ++jv) {
                    for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                        j = A_j[jj];
                        y_data[j * idxstride_y + jv * vecstride_y] += A_data[jj] * x_data[i * idxstride_x + jv * vecstride_x];
                    }
                }
            }
        }
    }
    if (alpha != 1.0) {
        for (i = 0; i < num_cols * num_vectors; i++)
            y_data[i] *= alpha;
    }
    return ierr;
}
int hypre_CSRMatrixMatvec_FF(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y , int *CF_marker_x , int *CF_marker_y , int fpt) {
    double *A_data = (A->data);
    int *A_i = (A->i);
    int *A_j = (A->j);
    int num_rows = (A->num_rows);
    int num_cols = (A->num_cols);
    double *x_data = (x->data);
    double *y_data = (y->data);
    int x_size = (x->size);
    int y_size = (y->size);
    double temp;
    int i;
    int jj;
    int ierr = 0;
    if (num_cols != x_size)
        ierr = 1;
    if (num_rows != y_size)
        ierr = 2;
    int _imopVarPre300;
    _imopVarPre300 = num_cols != x_size;
    if (_imopVarPre300) {
        _imopVarPre300 = num_rows != y_size;
    }
    if (_imopVarPre300)
        ierr = 3;
    if (alpha == 0.0) {
        for (i = 0; i < num_rows; i++) {
            if (CF_marker_x[i] == fpt)
                y_data[i] *= beta;
        }
        return ierr;
    }
    temp = beta / alpha;
    if (temp != 1.0) {
        if (temp == 0.0) {
            for (i = 0; i < num_rows; i++) {
                if (CF_marker_x[i] == fpt)
                    y_data[i] = 0.0;
            }
        } else {
            for (i = 0; i < num_rows; i++) {
                if (CF_marker_x[i] == fpt)
                    y_data[i] *= temp;
            }
        }
    }
    for (i = 0; i < num_rows; i++) {
        if (CF_marker_x[i] == fpt) {
            temp = y_data[i];
            for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                if (CF_marker_y[A_j[jj]] == fpt)
                    temp += A_data[jj] * x_data[A_j[jj]];
            }
            y_data[i] = temp;
        }
    }
    if (alpha != 1.0) {
        for (i = 0; i < num_rows; i++) {
            if (CF_marker_x[i] == fpt)
                y_data[i] *= alpha;
        }
    }
    return ierr;
}
hypre_Vector *hypre_SeqVectorCreate(int size) {
    hypre_Vector *vector;
    unsigned int _imopVarPre310;
    unsigned int _imopVarPre311;
    char *_imopVarPre312;
    _imopVarPre310 = (unsigned int) sizeof(hypre_Vector);
    _imopVarPre311 = (unsigned int) 1;
    _imopVarPre312 = hypre_CAlloc(_imopVarPre311, _imopVarPre310);
    vector = ((hypre_Vector *) _imopVarPre312);
    (vector->data) = ((void *) 0);
    (vector->size) = size;
    (vector->num_vectors) = 1;
    (vector->multivec_storage_method) = 0;
    (vector->owns_data) = 1;
    return vector;
}
hypre_Vector *hypre_SeqMultiVectorCreate(int size, int num_vectors) {
    struct stUn_imopVarPre15 *_imopVarPre313;
    _imopVarPre313 = hypre_SeqVectorCreate(size);
    hypre_Vector *vector = _imopVarPre313;
    (vector->num_vectors) = num_vectors;
    return vector;
}
int hypre_SeqVectorDestroy(hypre_Vector *vector) {
    int ierr = 0;
    if (vector) {
        if ((vector->owns_data)) {
            char *_imopVarPre317;
            _imopVarPre317 = (char *) (vector->data);
            hypre_Free(_imopVarPre317);
            ((vector->data) = ((void *) 0));
        }
        char *_imopVarPre321;
        _imopVarPre321 = (char *) vector;
        hypre_Free(_imopVarPre321);
        (vector = ((void *) 0));
    }
    return ierr;
}
int hypre_SeqVectorInitialize(hypre_Vector *vector) {
    int size = (vector->size);
    int ierr = 0;
    int num_vectors = (vector->num_vectors);
    int multivec_storage_method = (vector->multivec_storage_method);
    if (!(vector->data)) {
        unsigned int _imopVarPre331;
        unsigned int _imopVarPre332;
        char *_imopVarPre333;
        _imopVarPre331 = (unsigned int) sizeof(double);
        _imopVarPre332 = (unsigned int) (num_vectors * size);
        _imopVarPre333 = hypre_CAlloc(_imopVarPre332, _imopVarPre331);
        (vector->data) = ((double *) _imopVarPre333);
    }
    if (multivec_storage_method == 0) {
        (vector->vecstride) = size;
        (vector->idxstride) = 1;
    } else {
        if (multivec_storage_method == 1) {
            (vector->vecstride) = 1;
            (vector->idxstride) = num_vectors;
        } else
            ++ierr;
    }
    return ierr;
}
int hypre_SeqVectorSetDataOwner(hypre_Vector *vector, int owns_data) {
    int ierr = 0;
    (vector->owns_data) = owns_data;
    return ierr;
}
hypre_Vector *hypre_SeqVectorRead(char *file_name) {
    hypre_Vector *vector;
    FILE *fp;
    double *data;
    int size;
    int j;
    fp = fopen(file_name, "r");
    int *_imopVarPre335;
    _imopVarPre335 = &size;
    fscanf(fp, "%d", _imopVarPre335);
    vector = hypre_SeqVectorCreate(size);
    hypre_SeqVectorInitialize(vector);
    data = (vector->data);
    for (j = 0; j < size; j++) {
        double *_imopVarPre337;
        _imopVarPre337 = &data[j];
        fscanf(fp, "%le", _imopVarPre337);
    }
    fclose(fp);
    if (!((vector->num_vectors) == 1)) {
        fprintf(__stderrp, "hypre_assert failed: %s\n", "hypre_VectorNumVectors(vector) == 1");
        hypre_error_handler("amgmk.c", 1671, 1);
    }
    ;
    return vector;
}
int hypre_SeqVectorPrint(hypre_Vector *vector, char *file_name) {
    FILE *fp;
    double *data;
    int size;
    int num_vectors;
    int vecstride;
    int idxstride;
    int i;
    int j;
    int ierr = 0;
    num_vectors = (vector->num_vectors);
    vecstride = (vector->vecstride);
    idxstride = (vector->idxstride);
    data = (vector->data);
    size = (vector->size);
    fp = fopen(file_name, "w");
    if ((vector->num_vectors) == 1) {
        fprintf(fp, "%d\n", size);
    } else {
        fprintf(fp, "%d vectors of size %d\n", num_vectors, size);
    }
    if (num_vectors > 1) {
        for (j = 0; j < num_vectors; ++j) {
            fprintf(fp, "vector %d\n", j);
            for (i = 0; i < size; i++) {
                double _imopVarPre339;
                _imopVarPre339 = data[j * vecstride + i * idxstride];
                fprintf(fp, "%.14e\n", _imopVarPre339);
            }
        }
    } else {
        for (i = 0; i < size; i++) {
            double _imopVarPre341;
            _imopVarPre341 = data[i];
            fprintf(fp, "%.14e\n", _imopVarPre341);
        }
    }
    fclose(fp);
    return ierr;
}
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value) {
    double *vector_data = (v->data);
    int size = (v->size);
    int i;
    int ierr = 0;
    size *= (v->num_vectors);
    for (i = 0; i < size; i++)
        vector_data[i] = value;
    return ierr;
}
int hypre_SeqVectorCopy(hypre_Vector *x, hypre_Vector *y) {
    double *x_data = (x->data);
    double *y_data = (y->data);
    int size = (x->size);
    int i;
    int ierr = 0;
    size *= (x->num_vectors);
    for (i = 0; i < size; i++)
        y_data[i] = x_data[i];
    return ierr;
}
hypre_Vector *hypre_SeqVectorCloneDeep(hypre_Vector *x) {
    int size = (x->size);
    int num_vectors = (x->num_vectors);
    struct stUn_imopVarPre15 *_imopVarPre342;
    _imopVarPre342 = hypre_SeqMultiVectorCreate(size, num_vectors);
    hypre_Vector *y = _imopVarPre342;
    (y->multivec_storage_method) = (x->multivec_storage_method);
    (y->vecstride) = (x->vecstride);
    (y->idxstride) = (x->idxstride);
    hypre_SeqVectorInitialize(y);
    hypre_SeqVectorCopy(x, y);
    return y;
}
hypre_Vector *hypre_SeqVectorCloneShallow(hypre_Vector *x) {
    int size = (x->size);
    int num_vectors = (x->num_vectors);
    struct stUn_imopVarPre15 *_imopVarPre343;
    _imopVarPre343 = hypre_SeqMultiVectorCreate(size, num_vectors);
    hypre_Vector *y = _imopVarPre343;
    (y->multivec_storage_method) = (x->multivec_storage_method);
    (y->vecstride) = (x->vecstride);
    (y->idxstride) = (x->idxstride);
    (y->data) = (x->data);
    hypre_SeqVectorSetDataOwner(y, 0);
    hypre_SeqVectorInitialize(y);
    return y;
}
int hypre_SeqVectorScale(double alpha, hypre_Vector *y) {
    double *y_data = (y->data);
    int size = (y->size);
    int i;
    int ierr = 0;
    size *= (y->num_vectors);
    for (i = 0; i < size; i++)
        y_data[i] *= alpha;
    return ierr;
}
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y) {
    double *x_data = (x->data);
    double *y_data = (y->data);
    int size = (x->size);
    int i;
    int ierr = 0;
    size *= (x->num_vectors);
    for (i = 0; i < size; i++)
        y_data[i] += alpha * x_data[i];
    return ierr;
}
double hypre_SeqVectorInnerProd(hypre_Vector *x, hypre_Vector *y) {
    double *x_data = (x->data);
    double *y_data = (y->data);
    int size = (x->size);
    int i;
    double result = 0.0;
    size *= (x->num_vectors);
    for (i = 0; i < size; i++)
        result += y_data[i] * x_data[i];
    return result;
}
double hypre_VectorSumElts(hypre_Vector *vector) {
    double sum = 0;
    double *data = (vector->data);
    int size = (vector->size);
    int i;
    for (i = 0; i < size; ++i)
        sum += data[i];
    return sum;
}
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *value , hypre_Vector **rhs_ptr , hypre_Vector **x_ptr , hypre_Vector **sol_ptr) {
    hypre_CSRMatrix *A;
    hypre_Vector *rhs;
    hypre_Vector *x;
    hypre_Vector *sol;
    double *rhs_data;
    double *x_data;
    double *sol_data;
    int *A_i;
    int *A_j;
    double *A_data;
    int ix;
    int iy;
    int iz;
    int cnt;
    int row_index;
    int i;
    int j;
    int grid_size;
    grid_size = nx * ny * nz;
    unsigned int _imopVarPre353;
    unsigned int _imopVarPre354;
    char *_imopVarPre355;
    _imopVarPre353 = (unsigned int) sizeof(int);
    _imopVarPre354 = (unsigned int) (grid_size + 1);
    _imopVarPre355 = hypre_CAlloc(_imopVarPre354, _imopVarPre353);
    A_i = ((int *) _imopVarPre355);
    unsigned int _imopVarPre365;
    unsigned int _imopVarPre366;
    char *_imopVarPre367;
    _imopVarPre365 = (unsigned int) sizeof(double);
    _imopVarPre366 = (unsigned int) grid_size;
    _imopVarPre367 = hypre_CAlloc(_imopVarPre366, _imopVarPre365);
    rhs_data = ((double *) _imopVarPre367);
    unsigned int _imopVarPre377;
    unsigned int _imopVarPre378;
    char *_imopVarPre379;
    _imopVarPre377 = (unsigned int) sizeof(double);
    _imopVarPre378 = (unsigned int) grid_size;
    _imopVarPre379 = hypre_CAlloc(_imopVarPre378, _imopVarPre377);
    x_data = ((double *) _imopVarPre379);
    unsigned int _imopVarPre389;
    unsigned int _imopVarPre390;
    char *_imopVarPre391;
    _imopVarPre389 = (unsigned int) sizeof(double);
    _imopVarPre390 = (unsigned int) grid_size;
    _imopVarPre391 = hypre_CAlloc(_imopVarPre390, _imopVarPre389);
    sol_data = ((double *) _imopVarPre391);
    for (i = 0; i < grid_size; i++) {
        x_data[i] = 0.0;
        sol_data[i] = 0.0;
        rhs_data[i] = 1.0;
    }
    cnt = 1;
    A_i[0] = 0;
    for (iz = 0; iz < nz; iz++) {
        for (iy = 0; iy < ny; iy++) {
            for (ix = 0; ix < nx; ix++) {
                A_i[cnt] = A_i[cnt - 1];
                A_i[cnt]++;
                if (iz)
                    A_i[cnt]++;
                if (iy)
                    A_i[cnt]++;
                if (ix)
                    A_i[cnt]++;
                if (ix + 1 < nx)
                    A_i[cnt]++;
                if (iy + 1 < ny)
                    A_i[cnt]++;
                if (iz + 1 < nz)
                    A_i[cnt]++;
                cnt++;
            }
        }
    }
    unsigned int _imopVarPre401;
    unsigned int _imopVarPre402;
    char *_imopVarPre403;
    _imopVarPre401 = (unsigned int) sizeof(int);
    _imopVarPre402 = (unsigned int) (A_i[grid_size]);
    _imopVarPre403 = hypre_CAlloc(_imopVarPre402, _imopVarPre401);
    A_j = ((int *) _imopVarPre403);
    unsigned int _imopVarPre413;
    unsigned int _imopVarPre414;
    char *_imopVarPre415;
    _imopVarPre413 = (unsigned int) sizeof(double);
    _imopVarPre414 = (unsigned int) (A_i[grid_size]);
    _imopVarPre415 = hypre_CAlloc(_imopVarPre414, _imopVarPre413);
    A_data = ((double *) _imopVarPre415);
    row_index = 0;
    cnt = 0;
    for (iz = 0; iz < nz; iz++) {
        for (iy = 0; iy < ny; iy++) {
            for (ix = 0; ix < nx; ix++) {
                A_j[cnt] = row_index;
                A_data[cnt++] = value[0];
                if (iz) {
                    A_j[cnt] = row_index - nx * ny;
                    A_data[cnt++] = value[3];
                }
                if (iy) {
                    A_j[cnt] = row_index - nx;
                    A_data[cnt++] = value[2];
                }
                if (ix) {
                    A_j[cnt] = row_index - 1;
                    A_data[cnt++] = value[1];
                }
                if (ix + 1 < nx) {
                    A_j[cnt] = row_index + 1;
                    A_data[cnt++] = value[1];
                }
                if (iy + 1 < ny) {
                    A_j[cnt] = row_index + nx;
                    A_data[cnt++] = value[2];
                }
                if (iz + 1 < nz) {
                    A_j[cnt] = row_index + nx * ny;
                    A_data[cnt++] = value[3];
                }
                row_index++;
            }
        }
    }
    int _imopVarPre417;
    struct stUn_imopVarPre14 *_imopVarPre418;
    _imopVarPre417 = A_i[grid_size];
    _imopVarPre418 = hypre_CSRMatrixCreate(grid_size, grid_size, _imopVarPre417);
    A = _imopVarPre418;
    rhs = hypre_SeqVectorCreate(grid_size);
    (rhs->data) = rhs_data;
    x = hypre_SeqVectorCreate(grid_size);
    (x->data) = x_data;
    for (i = 0; i < grid_size; i++) {
        for (j = A_i[i]; j < A_i[i + 1]; j++)
            sol_data[i] += A_data[j];
    }
    sol = hypre_SeqVectorCreate(grid_size);
    (sol->data) = sol_data;
    (A->i) = A_i;
    (A->j) = A_j;
    (A->data) = A_data;
    *rhs_ptr = rhs;
    *x_ptr = x;
    *sol_ptr = sol;
    return A;
}
int hypre_BoomerAMGSeqRelax(hypre_CSRMatrix *A, hypre_Vector *f , hypre_Vector *u) {
    double *A_diag_data = (A->data);
    int *A_diag_i = (A->i);
    int *A_diag_j = (A->j);
    int n = (A->num_rows);
    double *u_data = (u->data);
    double *f_data = (f->data);
    double *tmp_data;
    double res;
    int i;
    int j;
    int ii;
    int jj;
    int ns;
    int ne;
    int size;
    int rest;
    int relax_error = 0;
    int numThreads;
    numThreads = 1;
    if (1) {
        unsigned int _imopVarPre428;
        unsigned int _imopVarPre429;
        char *_imopVarPre430;
        _imopVarPre428 = (unsigned int) sizeof(double);
        _imopVarPre429 = (unsigned int) n;
        _imopVarPre430 = hypre_CAlloc(_imopVarPre429, _imopVarPre428);
        tmp_data = ((double *) _imopVarPre430);
#pragma omp parallel private(numThreads)
        {
            numThreads = omp_get_num_threads();
#pragma omp for private(i)
            for (i = 0; i < n; i++)
                tmp_data[i] = u_data[i];
#pragma omp for private(i, ii, j, jj, ns, ne, res, rest, size)
            for (j = 0; j < numThreads; j++) {
                size = n / numThreads;
                rest = n - size * numThreads;
                if (j < rest) {
                    ns = j * size + j;
                    ne = (j + 1) * size + j + 1;
                } else {
                    ns = j * size + rest;
                    ne = (j + 1) * size + rest;
                }
                for (i = ns; i < ne; i++) {
                    if (A_diag_data[A_diag_i[i]] != 0.0) {
                        res = f_data[i];
                        for (jj = A_diag_i[i] + 1; jj < A_diag_i[i + 1]; jj++) {
                            ii = A_diag_j[jj];
                            int _imopVarPre432;
                            _imopVarPre432 = ii >= ns;
                            if (_imopVarPre432) {
                                _imopVarPre432 = ii < ne;
                            }
                            if (_imopVarPre432)
                                res -= A_diag_data[jj] * u_data[ii];
                            else
                                res -= A_diag_data[jj] * tmp_data[ii];
                        }
                        u_data[i] = res / A_diag_data[A_diag_i[i]];
                    }
                }
            }
        }
        char *_imopVarPre436;
        _imopVarPre436 = (char *) tmp_data;
        hypre_Free(_imopVarPre436);
        (tmp_data = ((void *) 0));
    } else {
        for (i = 0; i < n; i++) {
            if (A_diag_data[A_diag_i[i]] != 0.0) {
                res = f_data[i];
                for (jj = A_diag_i[i] + 1; jj < A_diag_i[i + 1]; jj++) {
                    ii = A_diag_j[jj];
                    res -= A_diag_data[jj] * u_data[ii];
                }
                u_data[i] = res / A_diag_data[A_diag_i[i]];
            }
        }
    }
    return relax_error;
}
int hypre__global_error = 0;
void hypre_error_handler(char *filename, int line , int ierr) {
    hypre__global_error |= ierr;
}
int HYPRE_GetError() {
    return hypre__global_error;
}
int HYPRE_CheckError(int ierr, int hypre_error_code) {
    return ierr & hypre_error_code;
}
void HYPRE_DescribeError(int ierr, char *msg) {
    if (ierr == 0) {
        int _imopVarPre444;
        int _imopVarPre445;
        unsigned int _imopVarPre446;
        _imopVarPre444 = 2 > 1;
        if (_imopVarPre444) {
            _imopVarPre445 = 1;
        } else {
            _imopVarPre445 = 0;
        }
        _imopVarPre446 = __builtin_object_size(msg, _imopVarPre445);
        __builtin___sprintf_chk(msg, 0, _imopVarPre446, "[No error] ");
    }
    if (ierr & 1) {
        int _imopVarPre454;
        int _imopVarPre455;
        unsigned int _imopVarPre456;
        _imopVarPre454 = 2 > 1;
        if (_imopVarPre454) {
            _imopVarPre455 = 1;
        } else {
            _imopVarPre455 = 0;
        }
        _imopVarPre456 = __builtin_object_size(msg, _imopVarPre455);
        __builtin___sprintf_chk(msg, 0, _imopVarPre456, "[Generic error] ");
    }
    if (ierr & 2) {
        int _imopVarPre464;
        int _imopVarPre465;
        unsigned int _imopVarPre466;
        _imopVarPre464 = 2 > 1;
        if (_imopVarPre464) {
            _imopVarPre465 = 1;
        } else {
            _imopVarPre465 = 0;
        }
        _imopVarPre466 = __builtin_object_size(msg, _imopVarPre465);
        __builtin___sprintf_chk(msg, 0, _imopVarPre466, "[Memory error] ");
    }
    if (ierr & 4) {
        int _imopVarPre473;
        int _imopVarPre476;
        int _imopVarPre477;
        unsigned int _imopVarPre478;
        _imopVarPre473 = HYPRE_GetErrorArg();
        _imopVarPre476 = 2 > 1;
        if (_imopVarPre476) {
            _imopVarPre477 = 1;
        } else {
            _imopVarPre477 = 0;
        }
        _imopVarPre478 = __builtin_object_size(msg, _imopVarPre477);
        __builtin___sprintf_chk(msg, 0, _imopVarPre478, "[Error in argument %d] ", _imopVarPre473);
    }
    if (ierr & 256) {
        int _imopVarPre486;
        int _imopVarPre487;
        unsigned int _imopVarPre488;
        _imopVarPre486 = 2 > 1;
        if (_imopVarPre486) {
            _imopVarPre487 = 1;
        } else {
            _imopVarPre487 = 0;
        }
        _imopVarPre488 = __builtin_object_size(msg, _imopVarPre487);
        __builtin___sprintf_chk(msg, 0, _imopVarPre488, "[Method did not converge] ");
    }
}
int HYPRE_GetErrorArg() {
    return (hypre__global_error >> 3 & 31);
}
int hypre_OutOfMemory(int size) {
    printf("Out of memory trying to allocate %d bytes\n", size);
    fflush(__stdoutp);
    hypre_error_handler("amgmk.c", 2270, 2);
    return 0;
}
char *hypre_MAlloc(int size) {
    char *ptr;
    if (size > 0) {
        ptr = malloc(size);
        if (ptr == ((void *) 0)) {
            hypre_OutOfMemory(size);
        }
    } else {
        ptr = ((void *) 0);
    }
    return ptr;
}
char *hypre_CAlloc(int count, int elt_size) {
    char *ptr;
    int size = count * elt_size;
    if (size > 0) {
        ptr = calloc(count, elt_size);
        if (ptr == ((void *) 0)) {
            hypre_OutOfMemory(size);
        }
    } else {
        ptr = ((void *) 0);
    }
    return ptr;
}
char *hypre_ReAlloc(char *ptr, int size) {
    if (ptr == ((void *) 0)) {
        ptr = malloc(size);
    } else {
        ptr = realloc(ptr, size);
    }
    int _imopVarPre490;
    _imopVarPre490 = (ptr == ((void *) 0));
    if (_imopVarPre490) {
        _imopVarPre490 = (size > 0);
    }
    if (_imopVarPre490) {
        hypre_OutOfMemory(size);
    }
    return ptr;
}
void hypre_Free(char *ptr) {
    if (ptr) {
        free(ptr);
    }
}
const int testIter = 500;
double totalWallTime = 0.0;
double totalCPUTime = 0.0;
void test_Matvec();
void test_Relax();
void test_Axpy();
int main(int argc, char *argv[]) {
    struct timeval t0;
    struct timeval t1;
    clock_t t0_cpu = 0;
    clock_t t1_cpu = 0;
    double del_wtime = 0.0;
    printf("\n");
    printf("//------------ \n");
    printf("// \n");
    printf("//  Sequoia Benchmark Version 1.0 \n");
    printf("// \n");
    printf("//------------ \n");
    void *_imopVarPre493;
    struct timeval *_imopVarPre494;
    _imopVarPre493 = ((void *) 0);
    _imopVarPre494 = &t0;
    gettimeofday(_imopVarPre494, _imopVarPre493);
    t0_cpu = clock();
    totalWallTime = 0.0;
    totalCPUTime = 0.0;
    test_Matvec();
    printf("\n");
    printf("//------------ \n");
    printf("// \n");
    printf("//   MATVEC\n");
    printf("// \n");
    printf("//------------ \n");
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    totalWallTime = 0.0;
    totalCPUTime = 0.0;
    test_Relax();
    printf("\n");
    printf("//------------ \n");
    printf("// \n");
    printf("//   Relax\n");
    printf("// \n");
    printf("//------------ \n");
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    totalWallTime = 0.0;
    totalCPUTime = 0.0;
    test_Axpy();
    printf("\n");
    printf("//------------ \n");
    printf("// \n");
    printf("//   Axpy\n");
    printf("// \n");
    printf("//------------ \n");
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    void *_imopVarPre497;
    struct timeval *_imopVarPre498;
    _imopVarPre497 = ((void *) 0);
    _imopVarPre498 = &t1;
    gettimeofday(_imopVarPre498, _imopVarPre497);
    t1_cpu = clock();
    del_wtime = (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    printf("\nTotal Wall time = %f seconds. \n", del_wtime);
    double _imopVarPre500;
    _imopVarPre500 = ((double) (t1_cpu - t0_cpu)) / 1000000;
    printf("\nTotal CPU  time = %f seconds. \n", _imopVarPre500);
    return 0;
}
void test_Matvec() {
    struct timeval t0;
    struct timeval t1;
    clock_t t0_cpu = 0;
    clock_t t1_cpu = 0;
    hypre_CSRMatrix *A;
    hypre_Vector *x;
    hypre_Vector *y;
    hypre_Vector *sol;
    int nx;
    int ny;
    int nz;
    int i;
    double *values;
    double *y_data;
    double *sol_data;
    double error;
    double diff;
    nx = 50;
    ny = 50;
    nz = 50;
    unsigned int _imopVarPre510;
    unsigned int _imopVarPre511;
    char *_imopVarPre512;
    _imopVarPre510 = (unsigned int) sizeof(double);
    _imopVarPre511 = (unsigned int) 4;
    _imopVarPre512 = hypre_CAlloc(_imopVarPre511, _imopVarPre510);
    values = ((double *) _imopVarPre512);
    values[0] = 6;
    values[1] = -1;
    values[2] = -1;
    values[3] = -1;
    struct stUn_imopVarPre15 **_imopVarPre516;
    struct stUn_imopVarPre15 **_imopVarPre517;
    struct stUn_imopVarPre15 **_imopVarPre518;
    struct stUn_imopVarPre14 *_imopVarPre519;
    _imopVarPre516 = &sol;
    _imopVarPre517 = &x;
    _imopVarPre518 = &y;
    _imopVarPre519 = GenerateSeqLaplacian(nx, ny, nz, values, _imopVarPre518, _imopVarPre517, _imopVarPre516);
    A = _imopVarPre519;
    hypre_SeqVectorSetConstantValues(x, 1);
    hypre_SeqVectorSetConstantValues(y, 0);
    void *_imopVarPre522;
    struct timeval *_imopVarPre523;
    _imopVarPre522 = ((void *) 0);
    _imopVarPre523 = &t0;
    gettimeofday(_imopVarPre523, _imopVarPre522);
    t0_cpu = clock();
    for (i = 0; i < testIter; ++i)
        hypre_CSRMatrixMatvec(1, A, x, 0, y);
    void *_imopVarPre526;
    struct timeval *_imopVarPre527;
    _imopVarPre526 = ((void *) 0);
    _imopVarPre527 = &t1;
    gettimeofday(_imopVarPre527, _imopVarPre526);
    t1_cpu = clock();
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    y_data = (y->data);
    sol_data = (sol->data);
    error = 0;
    for (i = 0; i < nx * ny * nz; i++) {
        double _imopVarPre529;
        double _imopVarPre530;
        _imopVarPre529 = y_data[i] - sol_data[i];
        _imopVarPre530 = fabs(_imopVarPre529);
        diff = _imopVarPre530;
        if (diff > error)
            error = diff;
    }
    if (error > 0)
        printf(" \n Matvec: error: %e\n", error);
    char *_imopVarPre534;
    _imopVarPre534 = (char *) values;
    hypre_Free(_imopVarPre534);
    (values = ((void *) 0));
    hypre_CSRMatrixDestroy(A);
    hypre_SeqVectorDestroy(x);
    hypre_SeqVectorDestroy(y);
    hypre_SeqVectorDestroy(sol);
}
void test_Relax() {
    struct timeval t0;
    struct timeval t1;
    clock_t t0_cpu = 0;
    clock_t t1_cpu = 0;
    hypre_CSRMatrix *A;
    hypre_Vector *x;
    hypre_Vector *y;
    hypre_Vector *sol;
    int nx;
    int ny;
    int nz;
    int i;
    double *values;
    double *x_data;
    double diff;
    double error;
    nx = 50;
    ny = 50;
    nz = 50;
    unsigned int _imopVarPre544;
    unsigned int _imopVarPre545;
    char *_imopVarPre546;
    _imopVarPre544 = (unsigned int) sizeof(double);
    _imopVarPre545 = (unsigned int) 4;
    _imopVarPre546 = hypre_CAlloc(_imopVarPre545, _imopVarPre544);
    values = ((double *) _imopVarPre546);
    values[0] = 6;
    values[1] = -1;
    values[2] = -1;
    values[3] = -1;
    struct stUn_imopVarPre15 **_imopVarPre550;
    struct stUn_imopVarPre15 **_imopVarPre551;
    struct stUn_imopVarPre15 **_imopVarPre552;
    struct stUn_imopVarPre14 *_imopVarPre553;
    _imopVarPre550 = &sol;
    _imopVarPre551 = &x;
    _imopVarPre552 = &y;
    _imopVarPre553 = GenerateSeqLaplacian(nx, ny, nz, values, _imopVarPre552, _imopVarPre551, _imopVarPre550);
    A = _imopVarPre553;
    hypre_SeqVectorSetConstantValues(x, 1);
    void *_imopVarPre556;
    struct timeval *_imopVarPre557;
    _imopVarPre556 = ((void *) 0);
    _imopVarPre557 = &t0;
    gettimeofday(_imopVarPre557, _imopVarPre556);
    t0_cpu = clock();
    for (i = 0; i < testIter; ++i)
        hypre_BoomerAMGSeqRelax(A, sol, x);
    void *_imopVarPre560;
    struct timeval *_imopVarPre561;
    _imopVarPre560 = ((void *) 0);
    _imopVarPre561 = &t1;
    gettimeofday(_imopVarPre561, _imopVarPre560);
    t1_cpu = clock();
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    x_data = (x->data);
    error = 0;
    for (i = 0; i < nx * ny * nz; i++) {
        double _imopVarPre563;
        double _imopVarPre564;
        _imopVarPre563 = x_data[i] - 1;
        _imopVarPre564 = fabs(_imopVarPre563);
        diff = _imopVarPre564;
        if (diff > error)
            error = diff;
    }
    if (error > 0)
        printf(" \n Relax: error: %e\n", error);
    char *_imopVarPre568;
    _imopVarPre568 = (char *) values;
    hypre_Free(_imopVarPre568);
    (values = ((void *) 0));
    hypre_CSRMatrixDestroy(A);
    hypre_SeqVectorDestroy(x);
    hypre_SeqVectorDestroy(y);
    hypre_SeqVectorDestroy(sol);
}
void test_Axpy() {
    struct timeval t0;
    struct timeval t1;
    clock_t t0_cpu = 0;
    clock_t t1_cpu = 0;
    hypre_Vector *x;
    hypre_Vector *y;
    int nx;
    int i;
    double alpha = 0.5;
    double diff;
    double error;
    double *y_data;
    nx = 125000;
    x = hypre_SeqVectorCreate(nx);
    y = hypre_SeqVectorCreate(nx);
    hypre_SeqVectorInitialize(x);
    hypre_SeqVectorInitialize(y);
    hypre_SeqVectorSetConstantValues(x, 1);
    hypre_SeqVectorSetConstantValues(y, 1);
    void *_imopVarPre571;
    struct timeval *_imopVarPre572;
    _imopVarPre571 = ((void *) 0);
    _imopVarPre572 = &t0;
    gettimeofday(_imopVarPre572, _imopVarPre571);
    t0_cpu = clock();
    for (i = 0; i < testIter; ++i)
        hypre_SeqVectorAxpy(alpha, x, y);
    void *_imopVarPre575;
    struct timeval *_imopVarPre576;
    _imopVarPre575 = ((void *) 0);
    _imopVarPre576 = &t1;
    gettimeofday(_imopVarPre576, _imopVarPre575);
    t1_cpu = clock();
    y_data = (y->data);
    error = 0;
    for (i = 0; i < nx; i++) {
        double _imopVarPre578;
        double _imopVarPre579;
        _imopVarPre578 = y_data[i] - 1 - 0.5 * (double) testIter;
        _imopVarPre579 = fabs(_imopVarPre578);
        diff = _imopVarPre579;
        if (diff > error)
            error = diff;
    }
    if (error > 0)
        printf(" \n Axpy: error: %e\n", error);
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    hypre_SeqVectorDestroy(x);
    hypre_SeqVectorDestroy(y);
}
