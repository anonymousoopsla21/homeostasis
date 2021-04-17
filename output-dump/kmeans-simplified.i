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
    int _imopVarPre14;
    int _imopVarPre18;
    _imopVarPre14 = --_p->_w >= 0;
    if (!_imopVarPre14) {
        _imopVarPre18 = _p->_w >= _p->_lbfsize;
        if (_imopVarPre18) {
            _imopVarPre18 = (char) _c != '\n';
        }
        _imopVarPre14 = _imopVarPre18;
    }
    if (_imopVarPre14)
        return (*_p->_p++ = _c);
    else {
        int _imopVarPre20;
        _imopVarPre20 = __swbuf(_c, _p);
        return _imopVarPre20;
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
void *memchr(const void *__s, int __c , size_t __n);
int memcmp(const void *__s1, const void *__s2 , size_t __n);
void *memcpy(void *__dst, const void *__src , size_t __n);
void *memmove(void *__dst, const void *__src , size_t __len);
void *memset(void *__b, int __c , size_t __len);
char *strcat(char *__s1, const char *__s2);
char *strchr(const char *__s, int __c);
int strcmp(const char *__s1, const char *__s2);
int strcoll(const char *__s1, const char *__s2);
char *strcpy(char *__dst, const char *__src);
size_t strcspn(const char *__s, const char *__charset);
char *strerror(int __errnum);
size_t strlen(const char *__s);
char *strncat(char *__s1, const char *__s2 , size_t __n);
int strncmp(const char *__s1, const char *__s2 , size_t __n);
char *strncpy(char *__dst, const char *__src , size_t __n);
char *strpbrk(const char *__s, const char *__charset);
char *strrchr(const char *__s, int __c);
size_t strspn(const char *__s, const char *__charset);
char *strstr(const char *__big, const char *__little);
char *strtok(char *__str, const char *__sep);
size_t strxfrm(char *__s1, const char *__s2 , size_t __n);
char *strtok_r(char *__str, const char *__sep , char **__lasts);
int strerror_r(int __errnum, char *__strerrbuf , size_t __buflen);
char *strdup(const char *__s1);
void *memccpy(void *__dst, const void *__src , int __c , size_t __n);
char *stpcpy(char *__dst, const char *__src);
char *stpncpy(char *__dst, const char *__src , size_t __n);
char *strndup(const char *__s1, size_t __n);
size_t strnlen(const char *__s1, size_t __n);
char *strsignal(int __sig);
typedef __darwin_size_t rsize_t;
typedef int errno_t;
errno_t memset_s(void *__s, rsize_t __smax , int __c , rsize_t __n);
void *memmem(const void *__big, size_t __big_len , const void *__little , size_t __little_len);
void memset_pattern4(void *__b, const void *__pattern4 , size_t __len);
void memset_pattern8(void *__b, const void *__pattern8 , size_t __len);
void memset_pattern16(void *__b, const void *__pattern16 , size_t __len);
char *strcasestr(const char *__big, const char *__little);
char *strnstr(const char *__big, const char *__little , size_t __len);
size_t strlcat(char *__dst, const char *__source , size_t __size);
size_t strlcpy(char *__dst, const char *__source , size_t __size);
void strmode(int __mode, char *__bp);
char *strsep(char **__stringp, const char *__delim);
void swab(const void *restrict , void *restrict  , ssize_t );
int timingsafe_bcmp(const void *__b1, const void *__b2 , size_t __len);
int bcmp(const void *, const void * , size_t );
void bcopy(const void *, void * , size_t );
void bzero(void *, size_t );
char *index(const char *, int );
char *rindex(const char *, int );
int ffs(int );
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char * , size_t );
int ffsl(long );
int ffsll(long long );
int fls(int );
int flsl(long );
int flsll(long long );
extern int *__error(void );
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
    int _imopVarPre99;
    float _imopVarPre100;
    float _imopVarPre101;
    _imopVarPre99 = __x == __x;
    if (_imopVarPre99) {
        _imopVarPre100 = __builtin_fabsf(__x);
        _imopVarPre101 = __builtin_inff();
        _imopVarPre99 = _imopVarPre100 != _imopVarPre101;
    }
    return _imopVarPre99;
}
extern __inline int __inline_isfinited(double __x) {
    int _imopVarPre105;
    double _imopVarPre106;
    double _imopVarPre107;
    _imopVarPre105 = __x == __x;
    if (_imopVarPre105) {
        _imopVarPre106 = __builtin_fabs(__x);
        _imopVarPre107 = __builtin_inf();
        _imopVarPre105 = _imopVarPre106 != _imopVarPre107;
    }
    return _imopVarPre105;
}
extern __inline int __inline_isfinitel(long double __x) {
    int _imopVarPre111;
    long double _imopVarPre112;
    long double _imopVarPre113;
    _imopVarPre111 = __x == __x;
    if (_imopVarPre111) {
        _imopVarPre112 = __builtin_fabsl(__x);
        _imopVarPre113 = __builtin_infl();
        _imopVarPre111 = _imopVarPre112 != _imopVarPre113;
    }
    return _imopVarPre111;
}
extern __inline int __inline_isinff(float __x) {
    float _imopVarPre116;
    float _imopVarPre117;
    _imopVarPre116 = __builtin_fabsf(__x);
    _imopVarPre117 = __builtin_inff();
    return _imopVarPre116 == _imopVarPre117;
}
extern __inline int __inline_isinfd(double __x) {
    double _imopVarPre120;
    double _imopVarPre121;
    _imopVarPre120 = __builtin_fabs(__x);
    _imopVarPre121 = __builtin_inf();
    return _imopVarPre120 == _imopVarPre121;
}
extern __inline int __inline_isinfl(long double __x) {
    long double _imopVarPre124;
    long double _imopVarPre125;
    _imopVarPre124 = __builtin_fabsl(__x);
    _imopVarPre125 = __builtin_infl();
    return _imopVarPre124 == _imopVarPre125;
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
    union stUn_imopVarPre7 {
        float __f;
        unsigned int __u;
    } ;
    union stUn_imopVarPre7 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 31);
}
extern __inline int __inline_signbitd(double __x) {
    union stUn_imopVarPre8 {
        double __f;
        unsigned long long __u;
    } ;
    union stUn_imopVarPre8 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 63);
}
extern __inline int __inline_signbitl(long double __x) {
    union stUn_imopVarPre10 {
        long double __ld;
        struct stUn_imopVarPre9 {
            unsigned long long __m;
            unsigned short __sexp;
        } __p;
    } ;
    union stUn_imopVarPre10 __u;
    __u.__ld = __x;
    return (int) (__u.__p.__sexp >> 15);
}
extern __inline int __inline_isnormalf(float __x) {
    int _imopVarPre128;
    float _imopVarPre129;
    _imopVarPre128 = __inline_isfinitef(__x);
    if (_imopVarPre128) {
        _imopVarPre129 = __builtin_fabsf(__x);
        _imopVarPre128 = _imopVarPre129 >= 1.17549435082228750797e-38F;
    }
    return _imopVarPre128;
}
extern __inline int __inline_isnormald(double __x) {
    int _imopVarPre132;
    double _imopVarPre133;
    _imopVarPre132 = __inline_isfinited(__x);
    if (_imopVarPre132) {
        _imopVarPre133 = __builtin_fabs(__x);
        _imopVarPre132 = _imopVarPre133 >= ((double) 2.22507385850720138309e-308L);
    }
    return _imopVarPre132;
}
extern __inline int __inline_isnormall(long double __x) {
    int _imopVarPre136;
    long double _imopVarPre137;
    _imopVarPre136 = __inline_isfinitel(__x);
    if (_imopVarPre136) {
        _imopVarPre137 = __builtin_fabsl(__x);
        _imopVarPre136 = _imopVarPre137 >= 3.36210314311209350626e-4932L;
    }
    return _imopVarPre136;
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
    struct __float2 _imopVarPre138;
    _imopVarPre138 = __sincosf_stret(__x);
    const struct __float2 __stret = _imopVarPre138;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincos(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre139;
    _imopVarPre139 = __sincos_stret(__x);
    const struct __double2 __stret = _imopVarPre139;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre140;
    _imopVarPre140 = __sincospif_stret(__x);
    const struct __float2 __stret = _imopVarPre140;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre141;
    _imopVarPre141 = __sincospi_stret(__x);
    const struct __double2 __stret = _imopVarPre141;
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
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t *qaddr_t;
typedef char *caddr_t;
typedef int32_t daddr_t;
typedef u_int32_t fixpt_t;
typedef __darwin_blkcnt_t blkcnt_t;
typedef __darwin_blksize_t blksize_t;
typedef __darwin_gid_t gid_t;
typedef __uint32_t in_addr_t;
typedef __uint16_t in_port_t;
typedef __darwin_ino_t ino_t;
typedef __darwin_ino64_t ino64_t;
typedef __int32_t key_t;
typedef __uint16_t nlink_t;
typedef int32_t segsz_t;
typedef int32_t swblk_t;
typedef __darwin_clock_t clock_t;
typedef __darwin_time_t time_t;
typedef __darwin_useconds_t useconds_t;
typedef __darwin_suseconds_t suseconds_t;
struct fd_set {
    __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0)? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} ;
typedef struct fd_set fd_set;
static __inline int __darwin_fd_isset(int _n, const struct fd_set *_p) {
    return (_p->fds_bits[(unsigned long) _n / (sizeof(__int32_t) * 8)] & ((__int32_t) (((unsigned long) 1) << ((unsigned long) _n % (sizeof(__int32_t) * 8)))));
}
typedef __int32_t fd_mask;
typedef __darwin_pthread_cond_t pthread_cond_t;
typedef __darwin_pthread_condattr_t pthread_condattr_t;
typedef __darwin_pthread_mutex_t pthread_mutex_t;
typedef __darwin_pthread_mutexattr_t pthread_mutexattr_t;
typedef __darwin_pthread_once_t pthread_once_t;
typedef __darwin_pthread_rwlock_t pthread_rwlock_t;
typedef __darwin_pthread_rwlockattr_t pthread_rwlockattr_t;
typedef __darwin_pthread_t pthread_t;
typedef __darwin_pthread_key_t pthread_key_t;
typedef __darwin_fsblkcnt_t fsblkcnt_t;
typedef __darwin_fsfilcnt_t fsfilcnt_t;
struct iovec {
    void *iov_base;
    size_t iov_len;
} ;
enum uio_rw {
    UIO_READ, UIO_WRITE
} ;
ssize_t readv(int , const struct iovec * , int );
ssize_t writev(int , const struct iovec * , int );
struct accessx_descriptor {
    unsigned int ad_name_offset;
    int ad_flags;
    int ad_pad[2];
} ;
int getattrlistbulk(int , void * , void * , size_t  , uint64_t );
int getattrlistat(int , const char * , void * , void * , size_t  , unsigned long );
int setattrlistat(int , const char * , void * , void * , size_t  , uint32_t );
int faccessat(int , const char * , int  , int );
int fchownat(int , const char * , uid_t  , gid_t  , int );
int linkat(int , const char * , int  , const char * , int );
ssize_t readlinkat(int , const char * , char * , size_t );
int symlinkat(const char *, int  , const char *);
int unlinkat(int , const char * , int );
void _exit(int );
int access(const char *, int );
unsigned int alarm(unsigned int );
int chdir(const char *);
int chown(const char *, uid_t  , gid_t );
int close(int );
int dup(int );
int dup2(int , int );
int execl(const char *__path, const char *__arg0, ...);
int execle(const char *__path, const char *__arg0, ...);
int execlp(const char *__file, const char *__arg0, ...);
int execv(const char *__path, char *const *__argv);
int execve(const char *__file, char *const *__argv , char *const *__envp);
int execvp(const char *__file, char *const *__argv);
pid_t fork(void );
long fpathconf(int , int );
char *getcwd(char *, size_t );
gid_t getegid(void );
uid_t geteuid(void );
gid_t getgid(void );
int getgroups(int , gid_t []);
char *getlogin(void );
pid_t getpgrp(void );
pid_t getpid(void );
pid_t getppid(void );
uid_t getuid(void );
int isatty(int );
int link(const char *, const char *);
off_t lseek(int , off_t  , int );
long pathconf(const char *, int );
int pause(void );
int pipe(int [2]);
ssize_t read(int , void * , size_t );
int rmdir(const char *);
int setgid(gid_t );
int setpgid(pid_t , pid_t );
pid_t setsid(void );
int setuid(uid_t );
unsigned int sleep(unsigned int );
long sysconf(int );
pid_t tcgetpgrp(int );
int tcsetpgrp(int , pid_t );
char *ttyname(int );
int ttyname_r(int , char * , size_t );
int unlink(const char *);
ssize_t write(int __fd, const void *__buf , size_t __nbyte);
size_t confstr(int , char * , size_t );
int getopt(int , char *const [] , const char *);
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
void *brk(const void *);
int chroot(const char *);
char *crypt(const char *, const char *);
void encrypt(char *, int );
int fchdir(int );
long gethostid(void );
pid_t getpgid(pid_t );
pid_t getsid(pid_t );
int getdtablesize(void );
int getpagesize(void );
char *getpass(const char *);
char *getwd(char *);
int lchown(const char *, uid_t  , gid_t );
int lockf(int , int  , off_t );
int nice(int );
ssize_t pread(int __fd, void *__buf , size_t __nbyte , off_t __offset);
ssize_t pwrite(int __fd, const void *__buf , size_t __nbyte , off_t __offset);
void *sbrk(int );
pid_t setpgrp(void );
int setregid(gid_t , gid_t );
int setreuid(uid_t , uid_t );
void swab(const void *restrict , void *restrict  , ssize_t );
void sync(void );
int truncate(const char *, off_t );
useconds_t ualarm(useconds_t , useconds_t );
int usleep(useconds_t );
pid_t vfork(void );
int fsync(int );
int ftruncate(int , off_t );
int getlogin_r(char *, size_t );
int fchown(int , uid_t  , gid_t );
int gethostname(char *, size_t );
ssize_t readlink(const char *restrict , char *restrict  , size_t );
int setegid(gid_t );
int seteuid(uid_t );
int symlink(const char *, const char *);
struct timespec {
    __darwin_time_t tv_sec;
    long tv_nsec;
} ;
int pselect(int , fd_set *restrict  , fd_set *restrict  , fd_set *restrict  , const struct timespec *restrict  , const sigset_t *restrict );
int select(int , fd_set *restrict  , fd_set *restrict  , fd_set *restrict  , struct timeval *restrict );
typedef __darwin_uuid_t uuid_t;
void _Exit(int );
int accessx_np(const struct accessx_descriptor *, size_t  , int * , uid_t );
int acct(const char *);
int add_profil(char *, size_t  , unsigned long  , unsigned int );
void endusershell(void );
int execvP(const char *__file, const char *__searchpath , char *const *__argv);
char *fflagstostr(unsigned long );
int getdomainname(char *, int );
int getgrouplist(const char *, int  , int * , int *);
int gethostuuid(uuid_t , const struct timespec *);
mode_t getmode(const void *, mode_t );
int getpeereid(int , uid_t * , gid_t *);
int getsgroups_np(int *, uuid_t );
char *getusershell(void );
int getwgroups_np(int *, uuid_t );
int initgroups(const char *, int );
int issetugid(void );
char *mkdtemp(char *);
int mknod(const char *, mode_t  , dev_t );
int mkpath_np(const char *path, mode_t omode);
int mkpathat_np(int dfd, const char *path , mode_t omode);
int mkstemp(char *);
int mkstemps(char *, int );
char *mktemp(char *);
int mkostemp(char *path, int oflags);
int mkostemps(char *path, int slen , int oflags);
int mkstemp_dprotected_np(char *path, int dpclass , int dpflags);
char *mkdtempat_np(int dfd, char *path);
int mkstempsat_np(int dfd, char *path , int slen);
int mkostempsat_np(int dfd, char *path , int slen , int oflags);
int nfssvc(int , void *);
int profil(char *, size_t  , unsigned long  , unsigned int );
int pthread_setugid_np(uid_t , gid_t );
int pthread_getugid_np(uid_t *, gid_t *);
int reboot(int );
int revoke(const char *);
int rcmd(char **, int  , const char * , const char * , const char * , int *);
int rcmd_af(char **, int  , const char * , const char * , const char * , int * , int );
int rresvport(int *);
int rresvport_af(int *, int );
int iruserok(unsigned long , int  , const char * , const char *);
int iruserok_sa(const void *, int  , int  , const char * , const char *);
int ruserok(const char *, int  , const char * , const char *);
int setdomainname(const char *, int );
int setgroups(int , const gid_t *);
void sethostid(long );
int sethostname(const char *, int );
void setkey(const char *);
int setlogin(const char *);
void *setmode(const char *);
int setrgid(gid_t );
int setruid(uid_t );
int setsgroups_np(int , const uuid_t );
void setusershell(void );
int setwgroups_np(int , const uuid_t );
int strtofflags(char **, unsigned long * , unsigned long *);
int swapon(const char *);
int ttyslot(void );
int undelete(const char *);
int unwhiteout(const char *);
void *valloc(size_t );
int syscall(int , ...);
extern char *suboptarg;
int getsubopt(char **, char *const * , char **);
int fgetattrlist(int , void * , void * , size_t  , unsigned int );
int fsetattrlist(int , void * , void * , size_t  , unsigned int );
int getattrlist(const char *, void * , void * , size_t  , unsigned int );
int setattrlist(const char *, void * , void * , size_t  , unsigned int );
int exchangedata(const char *, const char * , unsigned int );
int getdirentriesattr(int , void * , void * , size_t  , unsigned int * , unsigned int * , unsigned int * , unsigned int );
struct fssearchblock ;
struct searchstate ;
int searchfs(const char *, struct fssearchblock * , unsigned long * , unsigned int  , unsigned int  , struct searchstate *);
int fsctl(const char *, unsigned long  , void * , unsigned int );
int ffsctl(int , unsigned long  , void * , unsigned int );
int fsync_volume_np(int , int );
int sync_volume_np(const char *, int );
extern int optreset;
struct flock {
    off_t l_start;
    off_t l_len;
    pid_t l_pid;
    short l_type;
    short l_whence;
} ;
struct flocktimeout {
    struct flock fl;
    struct timespec timeout;
} ;
struct radvisory {
    off_t ra_offset;
    int ra_count;
} ;
struct fcodeblobs {
    void *f_cd_hash;
    size_t f_hash_size;
    void *f_cd_buffer;
    size_t f_cd_size;
    unsigned int *f_out_size;
    int f_arch;
    int __padding;
} ;
typedef struct fcodeblobs fcodeblobs_t;
struct fsignatures {
    off_t fs_file_start;
    void *fs_blob_start;
    size_t fs_blob_size;
} ;
typedef struct fsignatures fsignatures_t;
struct fchecklv {
    off_t lv_file_start;
    size_t lv_error_message_size;
    void *lv_error_message;
} ;
typedef struct fchecklv fchecklv_t;
struct fstore {
    unsigned int fst_flags;
    int fst_posmode;
    off_t fst_offset;
    off_t fst_length;
    off_t fst_bytesalloc;
} ;
typedef struct fstore fstore_t;
struct fpunchhole {
    unsigned int fp_flags;
    unsigned int reserved;
    off_t fp_offset;
    off_t fp_length;
} ;
typedef struct fpunchhole fpunchhole_t;
struct ftrimactivefile {
    off_t fta_offset;
    off_t fta_length;
} ;
typedef struct ftrimactivefile ftrimactivefile_t;
struct fbootstraptransfer {
    off_t fbt_offset;
    size_t fbt_length;
    void *fbt_buffer;
} ;
typedef struct fbootstraptransfer fbootstraptransfer_t;
#pragma pack(4)
struct log2phys {
    unsigned int l2p_flags;
    off_t l2p_contigbytes;
    off_t l2p_devoffset;
} ;
#pragma pack()
struct _filesec ;
typedef struct _filesec *filesec_t;
enum enum_imopVarPre11 {
    FILESEC_OWNER = 1, FILESEC_GROUP = 2 , FILESEC_UUID = 3 , FILESEC_MODE = 4 , FILESEC_ACL = 5 , FILESEC_GRPUUID = 6 , FILESEC_ACL_RAW = 100 , FILESEC_ACL_ALLOCSIZE = 101
} ;
typedef enum enum_imopVarPre11 filesec_property_t;
int open(const char *, int , ...);
int openat(int , const char * , int , ...);
int creat(const char *, mode_t );
int fcntl(int , int , ...);
int openx_np(const char *, int  , filesec_t );
int open_dprotected_np(const char *, int  , int  , int , ...);
int flock(int , int );
filesec_t filesec_init(void );
filesec_t filesec_dup(filesec_t );
void filesec_free(filesec_t );
int filesec_get_property(filesec_t , filesec_property_t  , void *);
int filesec_query_property(filesec_t , filesec_property_t  , int *);
int filesec_set_property(filesec_t , filesec_property_t  , const void *);
int filesec_unset_property(filesec_t , filesec_property_t );
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
float multid_feuclid_dist(float *, float * , int );
float euclid_dist_2(float *, float * , int );
int find_nearest_point(float *, int  , float ** , int );
void sum_fuzzy_members(float **, int  , float ** , int  , int  , float  , float *);
float **fuzzy_kmeans_cluster(int , float ** , int  , int  , int  , float  , float );
float fuzzy_validity(float **, int  , int  , float ** , int  , float );
float *extract_moments(float *, int  , int );
void zscore_transform(float **, int  , int );
int cluster(int , int  , int  , int  , int  , int  , float ** , int  , int  , int  , float  , float  , int * , float *** , int * , float * , double * , double *);
float **kmeans_clustering(int , float ** , int  , int  , int  , float  , int *);
int _debug;
extern double wtime(void );
__inline float multid_feuclid_dist(float *pt1, float *pt2 , int numdims) {
    float ans = 0.0;
    int i;
    for (i = 0; i < numdims; i++)
        ans += ((pt1[i] - pt2[i]) * (pt1[i] - pt2[i]));
    double _imopVarPre143;
    double _imopVarPre144;
    _imopVarPre143 = (double) ans;
    _imopVarPre144 = sqrt(_imopVarPre143);
    ans = _imopVarPre144;
    return ans;
}
__inline int find_nearest_point(float *pt, int nfeatures , float **pts , int npts) {
    int index;
    int i;
    float max_dist = 3.40282346638528859812e+38F;
    for (i = 0; i < npts; i++) {
        float dist;
        float *_imopVarPre146;
        float _imopVarPre147;
        _imopVarPre146 = pts[i];
        _imopVarPre147 = euclid_dist_2(pt, _imopVarPre146, nfeatures);
        dist = _imopVarPre147;
        if (dist < max_dist) {
            max_dist = dist;
            index = i;
        }
    }
    return index;
}
__inline void sum_fuzzy_members(float **feature, int npoints , float **cluster_centres , int nclusters , int nfeatures , float fuzzyq , float *sum_points) {
    int i;
    int j;
    float distance;
#pragma omp parallel shared(sum_points, feature, cluster_centres) firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, distance)
    {
#pragma omp for schedule(static)
        for (i = 0; i < npoints; i++) {
            sum_points[i] = 0.0;
            for (j = 0; j < nclusters; j++) {
                float *_imopVarPre150;
                float *_imopVarPre151;
                float _imopVarPre152;
                _imopVarPre150 = cluster_centres[j];
                _imopVarPre151 = feature[i];
                _imopVarPre152 = euclid_dist_2(_imopVarPre151, _imopVarPre150, nfeatures);
                distance = _imopVarPre152;
                double _imopVarPre155;
                double _imopVarPre156;
                double _imopVarPre157;
                _imopVarPre155 = 1.0 / (fuzzyq - 1);
                _imopVarPre156 = 1.0 / (distance + 0.00001);
                _imopVarPre157 = pow(_imopVarPre156, _imopVarPre155);
                sum_points[i] += _imopVarPre157;
            }
        }
    }
}
float **fuzzy_kmeans_cluster(int is_perform_atomic, float **feature , int nfeatures , int npoints , int nclusters , float fuzzyq , float delta_centres_threshold) {
    float **cluster_centres;
    float max_delta_centres = 0.0;
    float *sum_points;
    int i;
    int j;
    int k;
    int index;
    int loop = 0;
    double timing;
    float sqd_dist;
    float membership;
    int nthreads;
    float **new_centre;
    float *sum;
    float **partial_sum;
    float ***partial_new_centre;
    nthreads = omp_get_max_threads();
    unsigned long int _imopVarPre160;
    void *_imopVarPre161;
    _imopVarPre160 = sizeof(float);
    _imopVarPre161 = calloc(nclusters, _imopVarPre160);
    sum = (float *) _imopVarPre161;
    unsigned long int _imopVarPre164;
    void *_imopVarPre165;
    _imopVarPre164 = nclusters * sizeof(float *);
    _imopVarPre165 = malloc(_imopVarPre164);
    new_centre = (float **) _imopVarPre165;
    unsigned long int _imopVarPre169;
    int _imopVarPre170;
    void *_imopVarPre171;
    _imopVarPre169 = sizeof(float);
    _imopVarPre170 = nclusters * nfeatures;
    _imopVarPre171 = calloc(_imopVarPre170, _imopVarPre169);
    new_centre[0] = (float *) _imopVarPre171;
    for (i = 1; i < nclusters; i++)
        new_centre[i] = new_centre[i - 1] + nfeatures;
    if (!is_perform_atomic) {
        unsigned long int _imopVarPre174;
        void *_imopVarPre175;
        _imopVarPre174 = nthreads * sizeof(float *);
        _imopVarPre175 = malloc(_imopVarPre174);
        partial_sum = (float **) _imopVarPre175;
        unsigned long int _imopVarPre179;
        int _imopVarPre180;
        void *_imopVarPre181;
        _imopVarPre179 = sizeof(float);
        _imopVarPre180 = nthreads * nclusters;
        _imopVarPre181 = calloc(_imopVarPre180, _imopVarPre179);
        partial_sum[0] = (float *) _imopVarPre181;
        for (i = 1; i < nthreads; i++)
            partial_sum[i] = partial_sum[i - 1] + nclusters;
        unsigned long int _imopVarPre184;
        void *_imopVarPre185;
        _imopVarPre184 = nthreads * sizeof(float **);
        _imopVarPre185 = malloc(_imopVarPre184);
        partial_new_centre = (float ***) _imopVarPre185;
        unsigned long int _imopVarPre188;
        void *_imopVarPre189;
        _imopVarPre188 = nthreads * nclusters * sizeof(float *);
        _imopVarPre189 = malloc(_imopVarPre188);
        partial_new_centre[0] = (float **) _imopVarPre189;
        for (i = 1; i < nthreads; i++)
            partial_new_centre[i] = partial_new_centre[i - 1] + nclusters;
        for (i = 0; i < nthreads; i++) {
            for (j = 0; j < nclusters; j++) {
                unsigned long int _imopVarPre192;
                void *_imopVarPre193;
                _imopVarPre192 = sizeof(float);
                _imopVarPre193 = calloc(nfeatures, _imopVarPre192);
                partial_new_centre[i][j] = (float *) _imopVarPre193;
            }
        }
    }
    unsigned long int _imopVarPre196;
    void *_imopVarPre197;
    _imopVarPre196 = nclusters * sizeof(float *);
    _imopVarPre197 = malloc(_imopVarPre196);
    cluster_centres = (float **) _imopVarPre197;
    unsigned long int _imopVarPre200;
    void *_imopVarPre201;
    _imopVarPre200 = nclusters * nfeatures * sizeof(float);
    _imopVarPre201 = malloc(_imopVarPre200);
    cluster_centres[0] = (float *) _imopVarPre201;
    for (i = 1; i < nclusters; i++)
        cluster_centres[i] = cluster_centres[i - 1] + nfeatures;
    for (i = 0; i < nclusters; i++) {
        signed long int _imopVarPre203;
        _imopVarPre203 = random();
        int n = (int) _imopVarPre203 % npoints;
        for (j = 0; j < nfeatures; j++)
            cluster_centres[i][j] = feature[n][j];
    }
    unsigned long int _imopVarPre206;
    void *_imopVarPre207;
    _imopVarPre206 = npoints * sizeof(float);
    _imopVarPre207 = malloc(_imopVarPre206);
    sum_points = (float *) _imopVarPre207;
    if (_debug)
        timing = omp_get_wtime();
    int _imopVarPre237;
    do {
        {
            max_delta_centres = 0.0;
            sum_fuzzy_members(feature, npoints, cluster_centres, nclusters, nfeatures, fuzzyq, sum_points);
            if (is_perform_atomic) {
#pragma omp parallel firstprivate(npoints, nclusters, nfeatures, fuzzyq) shared(feature, cluster_centres, sum, new_centre) private(i, j, k, sqd_dist, membership)
                {
#pragma omp for schedule(static)
                    for (j = 0; j < npoints; j++) {
                        for (i = 0; i < nclusters; i++) {
                            float *_imopVarPre210;
                            float *_imopVarPre211;
                            float _imopVarPre212;
                            _imopVarPre210 = cluster_centres[i];
                            _imopVarPre211 = feature[j];
                            _imopVarPre212 = euclid_dist_2(_imopVarPre211, _imopVarPre210, nfeatures);
                            sqd_dist = _imopVarPre212;
                            double _imopVarPre216;
                            double _imopVarPre217;
                            double _imopVarPre218;
                            _imopVarPre216 = 1.0 / (fuzzyq - 1);
                            _imopVarPre217 = 1.0 / (sqd_dist + 0.00001);
                            _imopVarPre218 = pow(_imopVarPre217, _imopVarPre216);
                            membership = _imopVarPre218 / (sum_points[j] + 0.00001);
                            membership = pow(membership, fuzzyq);
#pragma omp atomic
                            sum[i] += membership;
                            for (k = 0; k < nfeatures; k++) {
#pragma omp atomic
                                new_centre[i][k] += membership * feature[j][k];
                            }
                        }
                    }
                }
            } else {
#pragma omp parallel shared(feature, cluster_centres, partial_sum, new_centre)
                {
                    int _imopVarPre219;
                    _imopVarPre219 = omp_get_thread_num();
                    int tid = _imopVarPre219;
#pragma omp for firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, k, sqd_dist, membership) schedule(static)
                    for (j = 0; j < npoints; j++) {
                        for (i = 0; i < nclusters; i++) {
                            float *_imopVarPre222;
                            float *_imopVarPre223;
                            float _imopVarPre224;
                            _imopVarPre222 = cluster_centres[i];
                            _imopVarPre223 = feature[j];
                            _imopVarPre224 = euclid_dist_2(_imopVarPre223, _imopVarPre222, nfeatures);
                            sqd_dist = _imopVarPre224;
                            double _imopVarPre228;
                            double _imopVarPre229;
                            double _imopVarPre230;
                            _imopVarPre228 = 1.0 / (fuzzyq - 1);
                            _imopVarPre229 = 1.0 / (sqd_dist + 0.00001);
                            _imopVarPre230 = pow(_imopVarPre229, _imopVarPre228);
                            membership = _imopVarPre230 / (sum_points[j] + 0.00001);
                            membership = pow(membership, fuzzyq);
                            partial_sum[tid][i] += membership;
                            for (k = 0; k < nfeatures; k++)
                                partial_new_centre[tid][i][k] += membership * feature[j][k];
                        }
                    }
                }
                for (i = 0; i < nclusters; i++) {
                    sum[i] = 0.0;
                    for (k = 0; k < nfeatures; k++)
                        new_centre[i][k] = 0.0;
                    for (j = 0; j < nthreads; j++) {
                        sum[i] += partial_sum[j][i];
                        partial_sum[j][i] = 0.0;
                        for (k = 0; k < nfeatures; k++) {
                            new_centre[i][k] += partial_new_centre[j][i][k];
                            partial_new_centre[j][i][k] = 0.0;
                        }
                    }
                }
            }
            for (i = 0; i < nclusters; i++) {
                float delta_centre;
                for (k = 0; k < nfeatures; k++)
                    new_centre[i][k] /= sum[i];
                sum[i] = 0.0;
                float *_imopVarPre233;
                float *_imopVarPre234;
                float _imopVarPre235;
                _imopVarPre233 = new_centre[i];
                _imopVarPre234 = cluster_centres[i];
                _imopVarPre235 = multid_feuclid_dist(_imopVarPre234, _imopVarPre233, nfeatures);
                delta_centre = _imopVarPre235;
                for (j = 0; j < nfeatures; j++) {
                    cluster_centres[i][j] = new_centre[i][j];
                    new_centre[i][j] = 0.0;
                }
                if (delta_centre > max_delta_centres)
                    max_delta_centres = delta_centre;
            }
        }
        _imopVarPre237 = max_delta_centres > delta_centres_threshold;
        if (_imopVarPre237) {
            _imopVarPre237 = loop++ < 500;
        }
    } while (_imopVarPre237);
    if (_debug) {
        double _imopVarPre239;
        _imopVarPre239 = omp_get_wtime();
        timing = _imopVarPre239 - timing;
        printf("nloops = %2d (T = %7.4f)", loop, timing);
    }
    free(sum);
    float *_imopVarPre241;
    _imopVarPre241 = new_centre[0];
    free(_imopVarPre241);
    free(new_centre);
    free(sum_points);
    return cluster_centres;
}
float fuzzy_validity(float **feature, int nfeatures , int npoints , float **cluster_centres , int nclusters , float fuzzyq) {
    int i;
    int j;
    int k;
    int nearest_cluster;
    int *numpoints_in_clusters;
    float *sum_points;
    float valid_sum = 0.0;
    float min_dist = 3.40282346638528859812e+38F;
    float ret;
    float penalty;
    float sqd_dist;
    float memb_fuzzyq;
    float membership;
    if (nclusters < 2)
        return 3.40282346638528859812e+38F;
    unsigned long int _imopVarPre244;
    void *_imopVarPre245;
    _imopVarPre244 = sizeof(int);
    _imopVarPre245 = calloc(nclusters, _imopVarPre244);
    numpoints_in_clusters = (int *) _imopVarPre245;
#pragma omp parallel shared(feature, cluster_centres, numpoints_in_clusters) firstprivate(npoints, nfeatures, nclusters) private(i, nearest_cluster)
    {
#pragma omp for schedule(static)
        for (i = 0; i < npoints; i++) {
            float *_imopVarPre247;
            int _imopVarPre248;
            _imopVarPre247 = feature[i];
            _imopVarPre248 = find_nearest_point(_imopVarPre247, nfeatures, cluster_centres, nclusters);
            nearest_cluster = _imopVarPre248;
#pragma omp atomic
            numpoints_in_clusters[nearest_cluster]++;
        }
    }
    penalty = 0.0;
#pragma omp parallel shared(numpoints_in_clusters) firstprivate(nclusters) private(i)
    {
#pragma omp for schedule(static) reduction(+:penalty)
        for (i = 0; i < nclusters; i++)
            penalty += 1.0 / (1.0 + ((float) numpoints_in_clusters[i]));
    }
    penalty /= (float) nclusters;
    free(numpoints_in_clusters);
    unsigned long int _imopVarPre251;
    void *_imopVarPre252;
    _imopVarPre251 = npoints * sizeof(float);
    _imopVarPre252 = malloc(_imopVarPre251);
    sum_points = (float *) _imopVarPre252;
    sum_fuzzy_members(feature, npoints, cluster_centres, nclusters, nfeatures, fuzzyq, sum_points);
#pragma omp parallel shared(feature, cluster_centres) firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, sqd_dist, memb_fuzzyq, membership)
    {
#pragma omp for schedule(static) reduction(+:valid_sum)
        for (j = 0; j < npoints; j++) {
            for (i = 0; i < nclusters; i++) {
                float *_imopVarPre255;
                float *_imopVarPre256;
                float _imopVarPre257;
                _imopVarPre255 = cluster_centres[i];
                _imopVarPre256 = feature[j];
                _imopVarPre257 = euclid_dist_2(_imopVarPre256, _imopVarPre255, nfeatures);
                sqd_dist = _imopVarPre257;
                double _imopVarPre261;
                double _imopVarPre262;
                double _imopVarPre263;
                _imopVarPre261 = 1.0 / (fuzzyq - 1);
                _imopVarPre262 = 1.0 / (sqd_dist + 0.00001);
                _imopVarPre263 = pow(_imopVarPre262, _imopVarPre261);
                membership = _imopVarPre263 / (sum_points[j] + 0.00001);
                memb_fuzzyq = pow(membership, fuzzyq);
                valid_sum += sqd_dist * memb_fuzzyq;
            }
        }
    }
    free(sum_points);
    min_dist = 0.0;
    for (i = 0; i < nclusters - 1; i++) {
        float this_cluster_min_dist = 3.40282346638528859812e+38F;
        for (j = i + 1; j < nclusters; j++) {
            float tmp_dist;
            float *_imopVarPre266;
            float *_imopVarPre267;
            float _imopVarPre268;
            _imopVarPre266 = cluster_centres[j];
            _imopVarPre267 = cluster_centres[i];
            _imopVarPre268 = multid_feuclid_dist(_imopVarPre267, _imopVarPre266, nfeatures);
            tmp_dist = _imopVarPre268;
            if (tmp_dist < this_cluster_min_dist)
                this_cluster_min_dist = tmp_dist;
        }
        min_dist += this_cluster_min_dist;
    }
    min_dist = (((min_dist / (float) (nclusters - 1))) * ((min_dist / (float) (nclusters - 1))));
    ret = (float) (valid_sum / (npoints * min_dist) + penalty);
    return ret;
}
extern double wtime(void );
__inline float euclid_dist_2(float *pt1, float *pt2 , int numdims) {
    int i;
    float ans = 0.0;
    for (i = 0; i < numdims; i++)
        ans += (pt1[i] - pt2[i]) * (pt1[i] - pt2[i]);
    return ans;
}
float **kmeans_clustering(int is_perform_atomic, float **feature , int nfeatures , int npoints , int nclusters , float threshold , int *membership) {
    int i;
    int j;
    int k;
    int index;
    int loop = 0;
    int *new_centers_len;
    float delta;
    float **clusters;
    float **new_centers;
    double timing;
    int nthreads;
    int **partial_new_centers_len;
    float ***partial_new_centers;
    nthreads = omp_get_max_threads();
    unsigned long int _imopVarPre271;
    void *_imopVarPre272;
    _imopVarPre271 = nclusters * sizeof(float *);
    _imopVarPre272 = malloc(_imopVarPre271);
    clusters = (float **) _imopVarPre272;
    unsigned long int _imopVarPre275;
    void *_imopVarPre276;
    _imopVarPre275 = nclusters * nfeatures * sizeof(float);
    _imopVarPre276 = malloc(_imopVarPre275);
    clusters[0] = (float *) _imopVarPre276;
    for (i = 1; i < nclusters; i++)
        clusters[i] = clusters[i - 1] + nfeatures;
    for (i = 0; i < nclusters; i++) {
        signed long int _imopVarPre278;
        _imopVarPre278 = random();
        int n = (int) _imopVarPre278 % npoints;
        for (j = 0; j < nfeatures; j++)
            clusters[i][j] = feature[n][j];
    }
    for (i = 0; i < npoints; i++)
        membership[i] = -1;
    unsigned long int _imopVarPre281;
    void *_imopVarPre282;
    _imopVarPre281 = sizeof(int);
    _imopVarPre282 = calloc(nclusters, _imopVarPre281);
    new_centers_len = (int *) _imopVarPre282;
    unsigned long int _imopVarPre285;
    void *_imopVarPre286;
    _imopVarPre285 = nclusters * sizeof(float *);
    _imopVarPre286 = malloc(_imopVarPre285);
    new_centers = (float **) _imopVarPre286;
    unsigned long int _imopVarPre290;
    int _imopVarPre291;
    void *_imopVarPre292;
    _imopVarPre290 = sizeof(float);
    _imopVarPre291 = nclusters * nfeatures;
    _imopVarPre292 = calloc(_imopVarPre291, _imopVarPre290);
    new_centers[0] = (float *) _imopVarPre292;
    for (i = 1; i < nclusters; i++)
        new_centers[i] = new_centers[i - 1] + nfeatures;
    if (!is_perform_atomic) {
        unsigned long int _imopVarPre295;
        void *_imopVarPre296;
        _imopVarPre295 = nthreads * sizeof(int *);
        _imopVarPre296 = malloc(_imopVarPre295);
        partial_new_centers_len = (int **) _imopVarPre296;
        unsigned long int _imopVarPre300;
        int _imopVarPre301;
        void *_imopVarPre302;
        _imopVarPre300 = sizeof(int);
        _imopVarPre301 = nthreads * nclusters;
        _imopVarPre302 = calloc(_imopVarPre301, _imopVarPre300);
        partial_new_centers_len[0] = (int *) _imopVarPre302;
        for (i = 1; i < nthreads; i++)
            partial_new_centers_len[i] = partial_new_centers_len[i - 1] + nclusters;
        unsigned long int _imopVarPre305;
        void *_imopVarPre306;
        _imopVarPre305 = nthreads * sizeof(float **);
        _imopVarPre306 = malloc(_imopVarPre305);
        partial_new_centers = (float ***) _imopVarPre306;
        unsigned long int _imopVarPre309;
        void *_imopVarPre310;
        _imopVarPre309 = nthreads * nclusters * sizeof(float *);
        _imopVarPre310 = malloc(_imopVarPre309);
        partial_new_centers[0] = (float **) _imopVarPre310;
        for (i = 1; i < nthreads; i++)
            partial_new_centers[i] = partial_new_centers[i - 1] + nclusters;
        for (i = 0; i < nthreads; i++) {
            for (j = 0; j < nclusters; j++) {
                unsigned long int _imopVarPre313;
                void *_imopVarPre314;
                _imopVarPre313 = sizeof(float);
                _imopVarPre314 = calloc(nfeatures, _imopVarPre313);
                partial_new_centers[i][j] = (float *) _imopVarPre314;
            }
        }
    }
    if (_debug)
        timing = omp_get_wtime();
    int _imopVarPre323;
    do {
        {
            delta = 0.0;
            if (is_perform_atomic) {
#pragma omp parallel private(i, j, index) firstprivate(npoints, nclusters, nfeatures) shared(feature, clusters, membership, new_centers, new_centers_len)
                {
#pragma omp for schedule(static) reduction(+:delta)
                    for (i = 0; i < npoints; i++) {
                        float *_imopVarPre316;
                        int _imopVarPre317;
                        _imopVarPre316 = feature[i];
                        _imopVarPre317 = find_nearest_point(_imopVarPre316, nfeatures, clusters, nclusters);
                        index = _imopVarPre317;
                        if (membership[i] != index)
                            delta += 1.0;
                        membership[i] = index;
#pragma omp atomic
                        new_centers_len[index]++;
                        for (j = 0; j < nfeatures; j++)
#pragma omp atomic
                        new_centers[index][j] += feature[i][j];
                    }
                }
            } else {
#pragma omp parallel shared(feature, clusters, membership, partial_new_centers, partial_new_centers_len)
                {
                    int _imopVarPre318;
                    _imopVarPre318 = omp_get_thread_num();
                    int tid = _imopVarPre318;
#pragma omp for private(i, j, index) firstprivate(npoints, nclusters, nfeatures) schedule(static) reduction(+:delta)
                    for (i = 0; i < npoints; i++) {
                        float *_imopVarPre320;
                        int _imopVarPre321;
                        _imopVarPre320 = feature[i];
                        _imopVarPre321 = find_nearest_point(_imopVarPre320, nfeatures, clusters, nclusters);
                        index = _imopVarPre321;
                        if (membership[i] != index)
                            delta += 1.0;
                        membership[i] = index;
                        partial_new_centers_len[tid][index]++;
                        for (j = 0; j < nfeatures; j++)
                            partial_new_centers[tid][index][j] += feature[i][j];
                    }
                }
                for (i = 0; i < nclusters; i++) {
                    for (j = 0; j < nthreads; j++) {
                        new_centers_len[i] += partial_new_centers_len[j][i];
                        partial_new_centers_len[j][i] = 0.0;
                        for (k = 0; k < nfeatures; k++) {
                            new_centers[i][k] += partial_new_centers[j][i][k];
                            partial_new_centers[j][i][k] = 0.0;
                        }
                    }
                }
            }
            for (i = 0; i < nclusters; i++) {
                for (j = 0; j < nfeatures; j++) {
                    if (new_centers_len[i] > 0)
                        clusters[i][j] = new_centers[i][j] / new_centers_len[i];
                    new_centers[i][j] = 0.0;
                }
                new_centers_len[i] = 0;
            }
            delta /= npoints;
        }
        _imopVarPre323 = delta > threshold;
        if (_imopVarPre323) {
            _imopVarPre323 = loop++ < 500;
        }
    } while (_imopVarPre323);
    if (_debug) {
        double _imopVarPre325;
        _imopVarPre325 = omp_get_wtime();
        timing = _imopVarPre325 - timing;
        printf("nloops = %2d (T = %7.4f)", loop, timing);
    }
    float *_imopVarPre327;
    _imopVarPre327 = new_centers[0];
    free(_imopVarPre327);
    free(new_centers);
    free(new_centers_len);
    return clusters;
}
float *extract_moments(float *data, int num_elts , int num_moments) {
    int i;
    int j;
    float *moments;
    unsigned long int _imopVarPre330;
    void *_imopVarPre331;
    _imopVarPre330 = sizeof(float);
    _imopVarPre331 = calloc(num_moments, _imopVarPre330);
    moments = (float *) _imopVarPre331;
    for (i = 0; i < num_elts; i++)
        moments[0] += data[i];
    moments[0] = moments[0] / num_elts;
    for (j = 1; j < num_moments; j++) {
        moments[j] = 0;
        for (i = 0; i < num_elts; i++) {
            int _imopVarPre334;
            float _imopVarPre335;
            double _imopVarPre336;
            _imopVarPre334 = j + 1;
            _imopVarPre335 = (data[i] - moments[0]);
            _imopVarPre336 = pow(_imopVarPre335, _imopVarPre334);
            moments[j] += _imopVarPre336;
        }
        moments[j] = moments[j] / num_elts;
    }
    return moments;
}
void zscore_transform(float **data, int numObjects , int numAttributes) {
    float *single_variable;
    float *moments;
    int i;
    int j;
    unsigned long int _imopVarPre339;
    void *_imopVarPre340;
    _imopVarPre339 = sizeof(float);
    _imopVarPre340 = calloc(numObjects, _imopVarPre339);
    single_variable = (float *) _imopVarPre340;
    for (i = 0; i < numAttributes; i++) {
        for (j = 0; j < numObjects; j++)
            single_variable[j] = data[j][i];
        moments = extract_moments(single_variable, numObjects, 2);
        double _imopVarPre343;
        double _imopVarPre344;
        _imopVarPre343 = (double) moments[1];
        _imopVarPre344 = sqrt(_imopVarPre343);
        moments[1] = (float) _imopVarPre344;
        for (j = 0; j < numObjects; j++)
            data[j][i] = (data[j][i] - moments[0]) / moments[1];
        free(moments);
    }
    free(single_variable);
}
int cluster(int perform_fuzzy_kmeans, int is_perform_valid , int is_perform_atomic , int is_perform_assign , int numObjects , int numAttributes , float **attributes , int use_zscore_transform , int min_nclusters , int max_nclusters , float fuzzyq , float threshold , int *best_nclusters , float ***cluster_centres , int *cluster_assign , float *validity , double *cluster_timing , double *valid_timing) {
    int i;
    int j;
    int itime;
    int nclusters;
    int *membership;
    float **tmp_cluster_centres;
    float min_valid = 3.40282346638528859812e+38F;
    double assign_timing;
    if (!perform_fuzzy_kmeans) {
        unsigned long int _imopVarPre347;
        void *_imopVarPre348;
        _imopVarPre347 = numObjects * sizeof(int);
        _imopVarPre348 = malloc(_imopVarPre347);
        membership = (int *) _imopVarPre348;
    }
    if (use_zscore_transform)
        zscore_transform(attributes, numObjects, numAttributes);
    if (_debug)
        printf("Initial min_nclusters = %d max_nclusters = %d\n", min_nclusters, max_nclusters);
    itime = 0;
    for (nclusters = min_nclusters; nclusters <= max_nclusters; nclusters++) {
        srandom(7);
        double _imopVarPre349;
        _imopVarPre349 = omp_get_wtime();
        cluster_timing[itime] = _imopVarPre349;
        if (perform_fuzzy_kmeans) {
            tmp_cluster_centres = fuzzy_kmeans_cluster(is_perform_atomic, attributes, numAttributes, numObjects, nclusters, fuzzyq, threshold);
        } else {
            tmp_cluster_centres = kmeans_clustering(is_perform_atomic, attributes, numAttributes, numObjects, nclusters, threshold, membership);
        }
        double _imopVarPre351;
        _imopVarPre351 = omp_get_wtime();
        cluster_timing[itime] = _imopVarPre351 - cluster_timing[itime];
        if (is_perform_valid) {
            double _imopVarPre352;
            _imopVarPre352 = omp_get_wtime();
            valid_timing[itime] = _imopVarPre352;
            float _imopVarPre353;
            _imopVarPre353 = fuzzy_validity(attributes, numAttributes, numObjects, tmp_cluster_centres, nclusters, fuzzyq);
            validity[itime] = _imopVarPre353;
            if (_debug) {
                float _imopVarPre355;
                _imopVarPre355 = validity[itime];
                printf("K = %2d  validity = %6.4f\n", nclusters, _imopVarPre355);
            }
            if (validity[itime] < min_valid) {
                if (*cluster_centres) {
                    float *_imopVarPre357;
                    _imopVarPre357 = (*cluster_centres)[0];
                    free(_imopVarPre357);
                    float **_imopVarPre359;
                    _imopVarPre359 = *cluster_centres;
                    free(_imopVarPre359);
                }
                *cluster_centres = tmp_cluster_centres;
                min_valid = validity[itime];
                *best_nclusters = nclusters;
                if (!perform_fuzzy_kmeans) {
                    unsigned int _imopVarPre362;
                    unsigned long int _imopVarPre363;
                    _imopVarPre362 = __builtin_object_size(cluster_assign, 0);
                    _imopVarPre363 = numObjects * sizeof(int);
                    __builtin___memcpy_chk(cluster_assign, membership, _imopVarPre363, _imopVarPre362);
                }
            } else {
                float *_imopVarPre365;
                _imopVarPre365 = tmp_cluster_centres[0];
                free(_imopVarPre365);
                free(tmp_cluster_centres);
            }
            double _imopVarPre367;
            _imopVarPre367 = omp_get_wtime();
            valid_timing[itime] = _imopVarPre367 - valid_timing[itime];
        } else {
            if (*cluster_centres) {
                float *_imopVarPre369;
                _imopVarPre369 = (*cluster_centres)[0];
                free(_imopVarPre369);
                float **_imopVarPre371;
                _imopVarPre371 = *cluster_centres;
                free(_imopVarPre371);
            }
            *cluster_centres = tmp_cluster_centres;
            *best_nclusters = nclusters;
        }
        if (_debug) {
            double _imopVarPre373;
            _imopVarPre373 = cluster_timing[itime];
            printf("K = %2d T_cluster = %7.4f", nclusters, _imopVarPre373);
            if (is_perform_valid) {
                double _imopVarPre375;
                _imopVarPre375 = valid_timing[itime];
                printf(" T_valid = %7.4f", _imopVarPre375);
            }
            printf("\n");
        }
        itime++;
    }
    if (perform_fuzzy_kmeans) {
        if (is_perform_assign) {
            if (_debug)
                assign_timing = omp_get_wtime();
#pragma omp parallel shared(cluster_assign, attributes, cluster_centres, best_nclusters) firstprivate(numObjects, numAttributes) private(i)
            {
#pragma omp for schedule(static)
                for (i = 0; i < numObjects; i++) {
                    int _imopVarPre379;
                    float **_imopVarPre380;
                    float *_imopVarPre381;
                    int _imopVarPre382;
                    _imopVarPre379 = *best_nclusters;
                    _imopVarPre380 = *cluster_centres;
                    _imopVarPre381 = attributes[i];
                    _imopVarPre382 = find_nearest_point(_imopVarPre381, numAttributes, _imopVarPre380, _imopVarPre379);
                    cluster_assign[i] = _imopVarPre382;
                }
            }
            if (_debug) {
                double _imopVarPre384;
                _imopVarPre384 = omp_get_wtime();
                assign_timing = _imopVarPre384 - assign_timing;
                printf("cluster assign timing = %8.4f sec\n", assign_timing);
            }
        }
    }
    if (!perform_fuzzy_kmeans)
        free(membership);
    return 0;
}
void usage(char *argv0) {
    char *help = "Usage: %s [switches] -i filename\n" "       -i filename:     file containing data to be clustered\n" "       -b               input file is in binary format\n" "       -q fuzziness:    fuzziness factor for fuzzy clustering\n" "                        1.0 is non-fuzzy up to infinity\n" "       -f               to perform fuzzy kmeans clustering\n" "                        default is regular kmeans clustering\n" "       -m max_clusters: maximum number of clusters allowed\n" "       -n min_clusters: minimum number of clusters allowed\n" "       -z             : don't zscore transform data\n" "       -t threshold   : threshold value\n" "       -p nproc       : number of threads\n" "       -v             : calculate the validity \n" "       -a             : perform atomic OpenMP pragma\n" "       -s             : perform object assignment if fuzzy performs\n" "       -o             : output timing results, default 0\n" "       -d             : enable debug mode\n";
    fprintf(__stderrp, help, argv0);
    int _imopVarPre386;
    _imopVarPre386 = -1;
    exit(_imopVarPre386);
}
int main(int argc, char **argv) {
    int opt;
    extern char *optarg;
    extern int optind;
    float fuzzyq = 1.5;
    int max_nclusters = 13;
    int min_nclusters = 4;
    char *filename = 0;
    FILE *cluster_centre_file;
    FILE *clustering_file;
    float *buf;
    float **attributes;
    float **cluster_centres = ((void *) 0);
    float **tmp_cluster_centres;
    int i;
    int j;
    int nclusters;
    int best_nclusters;
    int *cluster_assign;
    int numAttributes;
    int numObjects;
    int use_zscore_transform = 1;
    char line[1024];
    char outFileName[1024];
    int isBinaryFile = 0;
    int nloops;
    int len;
    int nthreads;
    int perform_fuzzy_kmeans = 0;
    int is_perform_valid = 0;
    int is_perform_atomic = 0;
    int is_perform_assign = 0;
    int is_perform_output = 0;
    int _timing_tables;
    float *validity;
    float threshold = 0.001;
    double sum;
    double timing;
    double min_timing = 3.40282346638528859812e+38F;
    double io_timing;
    double *clustering_timing;
    double *valid_timing;
    double *min_cluster_timing;
    double *min_valid_timing;
    _debug = 0;
    nthreads = 0;
    int _imopVarPre388;
    _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
    while ((opt = _imopVarPre388) != (-1)) {
        {
            switch (opt) {
                {
                    case 'i': filename = optarg;
                    break;
                    case 'b': isBinaryFile = 1;
                    break;
                    case 'q': fuzzyq = atof(optarg);
                    break;
                    case 'f': perform_fuzzy_kmeans = 1;
                    break;
                    case 't': threshold = atof(optarg);
                    break;
                    case 'm': max_nclusters = atoi(optarg);
                    break;
                    case 'n': min_nclusters = atoi(optarg);
                    break;
                    case 'z': use_zscore_transform = 0;
                    break;
                    case 'p': nthreads = atoi(optarg);
                    break;
                    case 'v': is_perform_valid = 1;
                    break;
                    case 'a': is_perform_atomic = 1;
                    break;
                    case 's': is_perform_assign = 1;
                    break;
                    case 'o': is_perform_output = 1;
                    break;
                    case 'd': _debug = 1;
                    break;
                    {
                        char *_imopVarPre390;
                        case '?': _imopVarPre390 = argv[0];
                        usage(_imopVarPre390);
                    }
                    break;
                    {
                        char *_imopVarPre392;
                        default: _imopVarPre392 = argv[0];
                        usage(_imopVarPre392);
                    }
                    break;
                }
            }
        }
        _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
    }
    if (filename == 0) {
        char *_imopVarPre394;
        _imopVarPre394 = argv[0];
        usage(_imopVarPre394);
    }
    if (nthreads > 0)
        omp_set_num_threads(nthreads);
    numAttributes = numObjects = 0;
    io_timing = omp_get_wtime();
    if (isBinaryFile) {
        int infile;
        int _imopVarPre396;
        _imopVarPre396 = open(filename, 0x0000, "0600");
        if ((infile = _imopVarPre396) == -1) {
            int *_imopVarPre416;
            int _imopVarPre417;
            char *_imopVarPre418;
            _imopVarPre416 = __error();
            _imopVarPre417 = (*_imopVarPre416);
            _imopVarPre418 = strerror(_imopVarPre417);
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre418);
            exit(1);
        }
        unsigned long int _imopVarPre421;
        int *_imopVarPre422;
        _imopVarPre421 = sizeof(int);
        _imopVarPre422 = &numObjects;
        read(infile, _imopVarPre422, _imopVarPre421);
        unsigned long int _imopVarPre425;
        int *_imopVarPre426;
        _imopVarPre425 = sizeof(int);
        _imopVarPre426 = &numAttributes;
        read(infile, _imopVarPre426, _imopVarPre425);
        if (_debug) {
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
        }
        unsigned long int _imopVarPre429;
        void *_imopVarPre430;
        _imopVarPre429 = numObjects * numAttributes * sizeof(float);
        _imopVarPre430 = malloc(_imopVarPre429);
        buf = (float *) _imopVarPre430;
        unsigned long int _imopVarPre433;
        void *_imopVarPre434;
        _imopVarPre433 = numObjects * sizeof(float *);
        _imopVarPre434 = malloc(_imopVarPre433);
        attributes = (float **) _imopVarPre434;
        unsigned long int _imopVarPre437;
        void *_imopVarPre438;
        _imopVarPre437 = numObjects * numAttributes * sizeof(float);
        _imopVarPre438 = malloc(_imopVarPre437);
        attributes[0] = (float *) _imopVarPre438;
        for (i = 1; i < numObjects; i++)
            attributes[i] = attributes[i - 1] + numAttributes;
        unsigned long int _imopVarPre440;
        _imopVarPre440 = numObjects * numAttributes * sizeof(float);
        read(infile, buf, _imopVarPre440);
        close(infile);
    } else {
        FILE *infile;
        struct __sFILE *_imopVarPre442;
        _imopVarPre442 = fopen(filename, "r");
        if ((infile = _imopVarPre442) == ((void *) 0)) {
            int *_imopVarPre462;
            int _imopVarPre463;
            char *_imopVarPre464;
            _imopVarPre462 = __error();
            _imopVarPre463 = (*_imopVarPre462);
            _imopVarPre464 = strerror(_imopVarPre463);
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre464);
            exit(1);
        }
        char *_imopVarPre466;
        _imopVarPre466 = fgets(line, 1024, infile);
        while (_imopVarPre466 != ((void *) 0)) {
            {
                char *_imopVarPre468;
                _imopVarPre468 = strtok(line, " \t\n");
                if (_imopVarPre468 != 0)
                    numObjects++;
            }
            _imopVarPre466 = fgets(line, 1024, infile);
        }
        rewind(infile);
        char *_imopVarPre470;
        _imopVarPre470 = fgets(line, 1024, infile);
        while (_imopVarPre470 != ((void *) 0)) {
            {
                char *_imopVarPre472;
                _imopVarPre472 = strtok(line, " \t\n");
                if (_imopVarPre472 != 0) {
                    void *_imopVarPre475;
                    char *_imopVarPre476;
                    _imopVarPre475 = ((void *) 0);
                    _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                    while (_imopVarPre476 != ((void *) 0)) {
                        numAttributes++;
                        _imopVarPre475 = ((void *) 0);
                        _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                    }
                    break;
                }
            }
            _imopVarPre470 = fgets(line, 1024, infile);
        }
        if (_debug) {
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
        }
        unsigned long int _imopVarPre479;
        void *_imopVarPre480;
        _imopVarPre479 = numObjects * numAttributes * sizeof(float);
        _imopVarPre480 = malloc(_imopVarPre479);
        buf = (float *) _imopVarPre480;
        unsigned long int _imopVarPre483;
        void *_imopVarPre484;
        _imopVarPre483 = numObjects * sizeof(float *);
        _imopVarPre484 = malloc(_imopVarPre483);
        attributes = (float **) _imopVarPre484;
        unsigned long int _imopVarPre487;
        void *_imopVarPre488;
        _imopVarPre487 = numObjects * numAttributes * sizeof(float);
        _imopVarPre488 = malloc(_imopVarPre487);
        attributes[0] = (float *) _imopVarPre488;
        for (i = 1; i < numObjects; i++)
            attributes[i] = attributes[i - 1] + numAttributes;
        rewind(infile);
        i = 0;
        char *_imopVarPre490;
        _imopVarPre490 = fgets(line, 1024, infile);
        while (_imopVarPre490 != ((void *) 0)) {
            {
                char *_imopVarPre492;
                _imopVarPre492 = strtok(line, " \t\n");
                if (_imopVarPre492 == ((void *) 0))
                    continue;
                for (j = 0; j < numAttributes; j++) {
                    void *_imopVarPre497;
                    char *_imopVarPre498;
                    double _imopVarPre499;
                    _imopVarPre497 = ((void *) 0);
                    _imopVarPre498 = strtok(_imopVarPre497, " ,\t\n");
                    _imopVarPre499 = atof(_imopVarPre498);
                    buf[i] = _imopVarPre499;
                    i++;
                }
            }
            _imopVarPre490 = fgets(line, 1024, infile);
        }
        fclose(infile);
    }
    double _imopVarPre501;
    _imopVarPre501 = omp_get_wtime();
    io_timing = _imopVarPre501 - io_timing;
    unsigned long int _imopVarPre504;
    void *_imopVarPre505;
    _imopVarPre504 = numObjects * sizeof(int);
    _imopVarPre505 = malloc(_imopVarPre504);
    cluster_assign = (int *) _imopVarPre505;
    nloops = 8;
    len = max_nclusters - min_nclusters + 1;
    unsigned long int _imopVarPre508;
    void *_imopVarPre509;
    _imopVarPre508 = sizeof(float);
    _imopVarPre509 = calloc(len, _imopVarPre508);
    validity = (float *) _imopVarPre509;
    unsigned long int _imopVarPre512;
    void *_imopVarPre513;
    _imopVarPre512 = sizeof(double);
    _imopVarPre513 = calloc(len, _imopVarPre512);
    clustering_timing = (double *) _imopVarPre513;
    unsigned long int _imopVarPre516;
    void *_imopVarPre517;
    _imopVarPre516 = sizeof(double);
    _imopVarPre517 = calloc(len, _imopVarPre516);
    valid_timing = (double *) _imopVarPre517;
    unsigned long int _imopVarPre520;
    void *_imopVarPre521;
    _imopVarPre520 = sizeof(double);
    _imopVarPre521 = calloc(len, _imopVarPre520);
    min_cluster_timing = (double *) _imopVarPre521;
    unsigned long int _imopVarPre524;
    void *_imopVarPre525;
    _imopVarPre524 = sizeof(double);
    _imopVarPre525 = calloc(len, _imopVarPre524);
    min_valid_timing = (double *) _imopVarPre525;
    for (i = 0; i < nloops; i++) {
        float *_imopVarPre532;
        unsigned int _imopVarPre533;
        unsigned long int _imopVarPre534;
        float *_imopVarPre535;
        _imopVarPre532 = attributes[0];
        _imopVarPre533 = __builtin_object_size(_imopVarPre532, 0);
        _imopVarPre534 = numObjects * numAttributes * sizeof(float);
        _imopVarPre535 = attributes[0];
        __builtin___memcpy_chk(_imopVarPre535, buf, _imopVarPre534, _imopVarPre533);
        timing = omp_get_wtime();
        cluster_centres = ((void *) 0);
        float ***_imopVarPre538;
        int *_imopVarPre539;
        _imopVarPre538 = &cluster_centres;
        _imopVarPre539 = &best_nclusters;
        cluster(perform_fuzzy_kmeans, is_perform_valid, is_perform_atomic, is_perform_assign, numObjects, numAttributes, attributes, use_zscore_transform, min_nclusters, max_nclusters, fuzzyq, threshold, _imopVarPre539, _imopVarPre538, cluster_assign, validity, clustering_timing, valid_timing);
        double _imopVarPre541;
        _imopVarPre541 = omp_get_wtime();
        timing = _imopVarPre541 - timing;
        if (_debug)
            printf("nloop = %d cluster() time = %.4f\n", i, timing);
        if (timing < min_timing) {
            min_timing = timing;
            for (j = 0; j < len; j++) {
                min_cluster_timing[j] = clustering_timing[j];
                min_valid_timing[j] = valid_timing[j];
            }
        }
    }
    if (is_perform_output) {
        int _imopVarPre543;
        _imopVarPre543 = omp_get_max_threads();
        printf("Number of threads = %d\n", _imopVarPre543);
        printf("File %s contains  numObjects = %d, each of size %d\n", filename, numObjects, numAttributes);
        if (perform_fuzzy_kmeans) {
            if (is_perform_assign)
                printf("**** Fuzzy Kmeans (Loop N first) with assign ****");
            else
                printf("**** Fuzzy Kmeans (Loop N first) without assign ****");
        } else
            printf("Performing **** Regular Kmeans (Loop N first) ****");
        if (is_perform_atomic)
            printf(" use atomic pragma ******\n");
        else
            printf(" use array reduction ******\n");
        _timing_tables = 1;
        if (_timing_tables)
            printf(" K, Tcluster,   Tvalid,   Tsum\n");
        for (i = 0; i < len; i++) {
            if (_timing_tables) {
                double _imopVarPre548;
                double _imopVarPre549;
                double _imopVarPre550;
                int _imopVarPre551;
                _imopVarPre548 = min_cluster_timing[i] + min_valid_timing[i];
                _imopVarPre549 = min_valid_timing[i];
                _imopVarPre550 = min_cluster_timing[i];
                _imopVarPre551 = min_nclusters + i;
                printf("%2d, %8.4f, %8.4f, %8.4f\n", _imopVarPre551, _imopVarPre550, _imopVarPre549, _imopVarPre548);
            } else {
                int _imopVarPre553;
                _imopVarPre553 = min_nclusters + i;
                printf("for %2d clusters: ", _imopVarPre553);
                float _imopVarPre555;
                _imopVarPre555 = validity[i];
                printf("validity = %6.4f", _imopVarPre555);
                double _imopVarPre557;
                _imopVarPre557 = min_cluster_timing[i];
                printf(" T_cluster = %8.4f", _imopVarPre557);
                double _imopVarPre559;
                _imopVarPre559 = min_valid_timing[i];
                printf(" T_valid = %8.4f", _imopVarPre559);
                double _imopVarPre561;
                _imopVarPre561 = min_cluster_timing[i] + min_valid_timing[i];
                printf(" T_sum = %8.4f\n", _imopVarPre561);
            }
        }
        for (i = 0; i < 79; i++)
            printf("-");
        printf("\n");
        sum = 0.0;
        for (i = 0; i < len; i++)
            sum += min_cluster_timing[i];
        if (_timing_tables)
            printf("  , %8.4f,", sum);
        else
            printf("sum                                              %.4f", sum);
        sum = 0.0;
        for (i = 0; i < len; i++)
            sum += min_valid_timing[i];
        if (_timing_tables)
            printf(" %8.4f,", sum);
        else
            printf("           %8.4f", sum);
        for (i = 0; i < len; i++)
            sum += min_cluster_timing[i];
        if (_timing_tables)
            printf(" %8.4f\n", sum);
        else
            printf("           %.4f\n", sum);
        printf("I/O time = %8.4f\n", io_timing);
        if (!_timing_tables) {
            printf("Conclude : best no. of clusters found = %d\n", best_nclusters);
            printf("Total timing = %10.4f sec\n", min_timing);
        }
        for (i = 0; i < 79; i++)
            printf("-");
        printf("\n");
    }
    free(min_valid_timing);
    free(min_cluster_timing);
    free(valid_timing);
    free(clustering_timing);
    free(validity);
    free(cluster_assign);
    free(attributes);
    float *_imopVarPre563;
    _imopVarPre563 = cluster_centres[0];
    free(_imopVarPre563);
    free(cluster_centres);
    free(buf);
    return 0;
}
