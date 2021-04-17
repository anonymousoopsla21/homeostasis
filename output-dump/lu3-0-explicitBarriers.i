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
    if (_imopVarPre14) {
        return (*_p->_p++ = _c);
    } else {
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
    uint64_t ri_interval_max_phys_footprint;
    uint64_t ri_unused[1];
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
void *malloc(size_t __size);
void *calloc(size_t __count, size_t __size);
void free(void *);
void *realloc(void *__ptr, size_t __size);
void *valloc(size_t );
int posix_memalign(void **__memptr, size_t __alignment , size_t __size);
void abort(void );
int abs(int );
int atexit(void (*)(void ));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long atoll(const char *);
void *bsearch(const void *__key, const void *__base , size_t __nel , size_t __width , int ( *__compar )(const void *, const void *));
div_t div(int , int );
void exit(int );
char *getenv(const char *);
long labs(long );
ldiv_t ldiv(long , long );
long long llabs(long long );
lldiv_t lldiv(long long , long long );
int mblen(const char *__s, size_t __n);
size_t mbstowcs(wchar_t *restrict , const char *restrict  , size_t );
int mbtowc(wchar_t *restrict , const char *restrict  , size_t );
void qsort(void *__base, size_t __nel , size_t __width , int ( *__compar )(const void *, const void *));
int rand(void );
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
struct stUn_imopVarPre11 {
    unsigned char _x[64];
} ;
typedef struct stUn_imopVarPre11 omp_lock_t;
struct stUn_imopVarPre12 {
    unsigned char _x[80];
} ;
typedef struct stUn_imopVarPre12 omp_nest_lock_t;
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
typedef int boolean;
struct stUn_imopVarPre13 {
    double real;
    double imag;
} ;
typedef struct stUn_imopVarPre13 dcomplex;
extern double randlc(double *, double );
extern void vranlc(int , double * , double  , double *);
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static int nx;
static int ny;
static int nz;
static int nx0;
static int ny0;
static int nz0;
static int ist;
static int iend;
static int jst;
static int jend;
static int ii1;
static int ii2;
static int ji1;
static int ji2;
static int ki1;
static int ki2;
static double dxi;
static double deta;
static double dzeta;
static double tx1;
static double tx2;
static double tx3;
static double ty1;
static double ty2;
static double ty3;
static double tz1;
static double tz2;
static double tz3;
static double dx1;
static double dx2;
static double dx3;
static double dx4;
static double dx5;
static double dy1;
static double dy2;
static double dy3;
static double dy4;
static double dy5;
static double dz1;
static double dz2;
static double dz3;
static double dz4;
static double dz5;
static double dssp;
static double u[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static double rsd[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static double frct[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static double flux[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
static int ipr;
static int inorm;
static int itmax;
static int invert;
static double dt;
static double omega;
static double tolrsd[5];
static double rsdnm[5];
static double errnm[5];
static double frc;
static double ttotal;
static double a[12][12][5][5];
static double b[12][12][5][5];
static double c[12][12][5][5];
static double d[12][12][5][5];
static double ce[5][13];
static double maxtime;
static boolean flag[12 / 2 * 2 + 1];
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
static void domain(void );
static void erhs(void );
static void error(void );
static void exact(int i, int j , int k , double u000ijk[5]);
static void jacld(int k);
static void jacu(int k);
static void l2norm(int nx0, int ny0 , int nz0 , int ist , int iend , int jst , int jend , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double sum[5]);
static void pintgr(void );
static void read_input(void );
static void rhs(void );
static void setbv(void );
static void setcoeff(void );
static void setiv(void );
static void ssor(void );
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified);
int main(int argc, char **argv) {
    char class;
    boolean verified;
    double mflops;
    int nthreads = 1;
    read_input();
    domain();
    setcoeff();
    setbv();
    setiv();
    erhs();
#pragma omp parallel
    {
#pragma omp master
        {
            nthreads = omp_get_num_threads();
        }
    }
    ssor();
    error();
    pintgr();
    int *_imopVarPre144;
    char *_imopVarPre145;
    _imopVarPre144 = &verified;
    _imopVarPre145 = &class;
    verify(rsdnm, errnm, frc, _imopVarPre145, _imopVarPre144);
    mflops = (double) itmax * (1984.77 * (double) nx0 * (double) ny0 * (double) nz0 - 10923.3 * (((double) (nx0 + ny0 + nz0) / 3.0) * ((double) (nx0 + ny0 + nz0) / 3.0)) + 27770.9 * (double) (nx0 + ny0 + nz0) / 3.0 - 144010.0) / (maxtime * 1000000.0);
    c_print_results("LU", class, nx0, ny0, nz0, itmax, nthreads, maxtime, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
}
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
    int i;
    int j;
    int m;
    double tmp;
    double tmp1;
    double tmat[5][5];
#pragma omp for nowait schedule(static)
    for (i = ist; i <= iend; i++) {
        for (j = jst; j <= jend; j++) {
            for (m = 0; m < 5; m++) {
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldz[i][j][m][0] * v[i][j][k - 1][0] + ldz[i][j][m][1] * v[i][j][k - 1][1] + ldz[i][j][m][2] * v[i][j][k - 1][2] + ldz[i][j][m][3] * v[i][j][k - 1][3] + ldz[i][j][m][4] * v[i][j][k - 1][4]);
            }
        }
    }
#pragma omp for nowait schedule(static)
    for (i = ist; i <= iend; i++) {
        if (i != ist) {
            while (flag[i - 1] == 0) {
                {
#pragma omp flush(flag)
                    ;
                }
            }
        }
        if (i != iend) {
            while (flag[i] == 1) {
                {
#pragma omp flush(flag)
                    ;
                }
            }
        }
        for (j = jst; j <= jend; j++) {
            for (m = 0; m < 5; m++) {
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldy[i][j][m][0] * v[i][j - 1][k][0] + ldx[i][j][m][0] * v[i - 1][j][k][0] + ldy[i][j][m][1] * v[i][j - 1][k][1] + ldx[i][j][m][1] * v[i - 1][j][k][1] + ldy[i][j][m][2] * v[i][j - 1][k][2] + ldx[i][j][m][2] * v[i - 1][j][k][2] + ldy[i][j][m][3] * v[i][j - 1][k][3] + ldx[i][j][m][3] * v[i - 1][j][k][3] + ldy[i][j][m][4] * v[i][j - 1][k][4] + ldx[i][j][m][4] * v[i - 1][j][k][4]);
            }
            for (m = 0; m < 5; m++) {
                tmat[m][0] = d[i][j][m][0];
                tmat[m][1] = d[i][j][m][1];
                tmat[m][2] = d[i][j][m][2];
                tmat[m][3] = d[i][j][m][3];
                tmat[m][4] = d[i][j][m][4];
            }
            tmp1 = 1.0 / tmat[0][0];
            tmp = tmp1 * tmat[1][0];
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            v[i][j][k][1] = v[i][j][k][1] - v[i][j][k][0] * tmp;
            tmp = tmp1 * tmat[2][0];
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][0] * tmp;
            tmp = tmp1 * tmat[3][0];
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][0] * tmp;
            tmp = tmp1 * tmat[4][0];
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][0] * tmp;
            tmp1 = 1.0 / tmat[1][1];
            tmp = tmp1 * tmat[2][1];
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][1] * tmp;
            tmp = tmp1 * tmat[3][1];
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][1] * tmp;
            tmp = tmp1 * tmat[4][1];
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][1] * tmp;
            tmp1 = 1.0 / tmat[2][2];
            tmp = tmp1 * tmat[3][2];
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][2] * tmp;
            tmp = tmp1 * tmat[4][2];
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][2] * tmp;
            tmp1 = 1.0 / tmat[3][3];
            tmp = tmp1 * tmat[4][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][3] * tmp;
            v[i][j][k][4] = v[i][j][k][4] / tmat[4][4];
            v[i][j][k][3] = v[i][j][k][3] - tmat[3][4] * v[i][j][k][4];
            v[i][j][k][3] = v[i][j][k][3] / tmat[3][3];
            v[i][j][k][2] = v[i][j][k][2] - tmat[2][3] * v[i][j][k][3] - tmat[2][4] * v[i][j][k][4];
            v[i][j][k][2] = v[i][j][k][2] / tmat[2][2];
            v[i][j][k][1] = v[i][j][k][1] - tmat[1][2] * v[i][j][k][2] - tmat[1][3] * v[i][j][k][3] - tmat[1][4] * v[i][j][k][4];
            v[i][j][k][1] = v[i][j][k][1] / tmat[1][1];
            v[i][j][k][0] = v[i][j][k][0] - tmat[0][1] * v[i][j][k][1] - tmat[0][2] * v[i][j][k][2] - tmat[0][3] * v[i][j][k][3] - tmat[0][4] * v[i][j][k][4];
            v[i][j][k][0] = v[i][j][k][0] / tmat[0][0];
        }
        if (i != ist) {
            flag[i - 1] = 0;
        }
        if (i != iend) {
            flag[i] = 1;
        }
#pragma omp flush(flag)
    }
}
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
    int i;
    int j;
    int m;
    double tmp;
    double tmp1;
    double tmat[5][5];
#pragma omp for nowait schedule(static)
    for (i = iend; i >= ist; i--) {
        for (j = jend; j >= jst; j--) {
            for (m = 0; m < 5; m++) {
                tv[i][j][m] = omega * (udz[i][j][m][0] * v[i][j][k + 1][0] + udz[i][j][m][1] * v[i][j][k + 1][1] + udz[i][j][m][2] * v[i][j][k + 1][2] + udz[i][j][m][3] * v[i][j][k + 1][3] + udz[i][j][m][4] * v[i][j][k + 1][4]);
            }
        }
    }
#pragma omp for nowait schedule(static)
    for (i = iend; i >= ist; i--) {
        if (i != iend) {
            while (flag[i + 1] == 0) {
                {
#pragma omp flush(flag)
                    ;
                }
            }
        }
        if (i != ist) {
            while (flag[i] == 1) {
                {
#pragma omp flush(flag)
                    ;
                }
            }
        }
        for (j = jend; j >= jst; j--) {
            for (m = 0; m < 5; m++) {
                tv[i][j][m] = tv[i][j][m] + omega * (udy[i][j][m][0] * v[i][j + 1][k][0] + udx[i][j][m][0] * v[i + 1][j][k][0] + udy[i][j][m][1] * v[i][j + 1][k][1] + udx[i][j][m][1] * v[i + 1][j][k][1] + udy[i][j][m][2] * v[i][j + 1][k][2] + udx[i][j][m][2] * v[i + 1][j][k][2] + udy[i][j][m][3] * v[i][j + 1][k][3] + udx[i][j][m][3] * v[i + 1][j][k][3] + udy[i][j][m][4] * v[i][j + 1][k][4] + udx[i][j][m][4] * v[i + 1][j][k][4]);
            }
            for (m = 0; m < 5; m++) {
                tmat[m][0] = d[i][j][m][0];
                tmat[m][1] = d[i][j][m][1];
                tmat[m][2] = d[i][j][m][2];
                tmat[m][3] = d[i][j][m][3];
                tmat[m][4] = d[i][j][m][4];
            }
            tmp1 = 1.0 / tmat[0][0];
            tmp = tmp1 * tmat[1][0];
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            tv[i][j][1] = tv[i][j][1] - tv[i][j][0] * tmp;
            tmp = tmp1 * tmat[2][0];
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            tv[i][j][2] = tv[i][j][2] - tv[i][j][0] * tmp;
            tmp = tmp1 * tmat[3][0];
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            tv[i][j][3] = tv[i][j][3] - tv[i][j][0] * tmp;
            tmp = tmp1 * tmat[4][0];
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            tv[i][j][4] = tv[i][j][4] - tv[i][j][0] * tmp;
            tmp1 = 1.0 / tmat[1][1];
            tmp = tmp1 * tmat[2][1];
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            tv[i][j][2] = tv[i][j][2] - tv[i][j][1] * tmp;
            tmp = tmp1 * tmat[3][1];
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            tv[i][j][3] = tv[i][j][3] - tv[i][j][1] * tmp;
            tmp = tmp1 * tmat[4][1];
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            tv[i][j][4] = tv[i][j][4] - tv[i][j][1] * tmp;
            tmp1 = 1.0 / tmat[2][2];
            tmp = tmp1 * tmat[3][2];
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            tv[i][j][3] = tv[i][j][3] - tv[i][j][2] * tmp;
            tmp = tmp1 * tmat[4][2];
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            tv[i][j][4] = tv[i][j][4] - tv[i][j][2] * tmp;
            tmp1 = 1.0 / tmat[3][3];
            tmp = tmp1 * tmat[4][3];
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            tv[i][j][4] = tv[i][j][4] - tv[i][j][3] * tmp;
            tv[i][j][4] = tv[i][j][4] / tmat[4][4];
            tv[i][j][3] = tv[i][j][3] - tmat[3][4] * tv[i][j][4];
            tv[i][j][3] = tv[i][j][3] / tmat[3][3];
            tv[i][j][2] = tv[i][j][2] - tmat[2][3] * tv[i][j][3] - tmat[2][4] * tv[i][j][4];
            tv[i][j][2] = tv[i][j][2] / tmat[2][2];
            tv[i][j][1] = tv[i][j][1] - tmat[1][2] * tv[i][j][2] - tmat[1][3] * tv[i][j][3] - tmat[1][4] * tv[i][j][4];
            tv[i][j][1] = tv[i][j][1] / tmat[1][1];
            tv[i][j][0] = tv[i][j][0] - tmat[0][1] * tv[i][j][1] - tmat[0][2] * tv[i][j][2] - tmat[0][3] * tv[i][j][3] - tmat[0][4] * tv[i][j][4];
            tv[i][j][0] = tv[i][j][0] / tmat[0][0];
            v[i][j][k][0] = v[i][j][k][0] - tv[i][j][0];
            v[i][j][k][1] = v[i][j][k][1] - tv[i][j][1];
            v[i][j][k][2] = v[i][j][k][2] - tv[i][j][2];
            v[i][j][k][3] = v[i][j][k][3] - tv[i][j][3];
            v[i][j][k][4] = v[i][j][k][4] - tv[i][j][4];
        }
        if (i != iend) {
            flag[i + 1] = 0;
        }
        if (i != ist) {
            flag[i] = 1;
        }
#pragma omp flush(flag)
    }
}
static void domain() {
    nx = nx0;
    ny = ny0;
    nz = nz0;
    int _imopVarPre146;
    int _imopVarPre147;
    _imopVarPre146 = nx < 4;
    if (!_imopVarPre146) {
        _imopVarPre147 = ny < 4;
        if (!_imopVarPre147) {
            _imopVarPre147 = nz < 4;
        }
        _imopVarPre146 = _imopVarPre147;
    }
    if (_imopVarPre146) {
        printf("     SUBDOMAIN SIZE IS TOO SMALL - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE GREATER THAN OR EQUAL\n" "     TO 4 THEY ARE CURRENTLY%3d%3d%3d\n", nx, ny, nz);
        exit(1);
    }
    int _imopVarPre148;
    int _imopVarPre149;
    _imopVarPre148 = nx > 12;
    if (!_imopVarPre148) {
        _imopVarPre149 = ny > 12;
        if (!_imopVarPre149) {
            _imopVarPre149 = nz > 12;
        }
        _imopVarPre148 = _imopVarPre149;
    }
    if (_imopVarPre148) {
        printf("     SUBDOMAIN SIZE IS TOO LARGE - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE LESS THAN OR EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY.  THEY ARE\n" "     CURRENTLY%4d%4d%4d\n", nx, ny, nz);
        exit(1);
    }
    ist = 1;
    iend = nx - 2;
    jst = 1;
    jend = ny - 2;
}
static void erhs() {
#pragma omp parallel
    {
        int i;
        int j;
        int k;
        int m;
        int iglob;
        int jglob;
        int L1;
        int L2;
        int ist1;
        int iend1;
        int jst1;
        int jend1;
        double dsspm;
        double xi;
        double eta;
        double zeta;
        double q;
        double u21;
        double u31;
        double u41;
        double tmp;
        double u21i;
        double u31i;
        double u41i;
        double u51i;
        double u21j;
        double u31j;
        double u41j;
        double u51j;
        double u21k;
        double u31k;
        double u41k;
        double u51k;
        double u21im1;
        double u31im1;
        double u41im1;
        double u51im1;
        double u21jm1;
        double u31jm1;
        double u41jm1;
        double u51jm1;
        double u21km1;
        double u31km1;
        double u41km1;
        double u51km1;
        dsspm = dssp;
#pragma omp for nowait
        for (i = 0; i < nx; i++) {
            for (j = 0; j < ny; j++) {
                for (k = 0; k < nz; k++) {
                    for (m = 0; m < 5; m++) {
                        frct[i][j][k][m] = 0.0;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = 0; i < nx; i++) {
            iglob = i;
            xi = ((double) iglob) / (nx0 - 1);
            for (j = 0; j < ny; j++) {
                jglob = j;
                eta = ((double) jglob) / (ny0 - 1);
                for (k = 0; k < nz; k++) {
                    zeta = ((double) k) / (nz - 1);
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        L1 = 0;
        L2 = nx - 1;
#pragma omp for nowait
        for (i = L1; i <= L2; i++) {
            for (j = jst; j <= jend; j++) {
                for (k = 1; k < nz - 1; k++) {
                    flux[i][j][k][0] = rsd[i][j][k][1];
                    u21 = rsd[i][j][k][1] / rsd[i][j][k][0];
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    flux[i][j][k][1] = rsd[i][j][k][1] * u21 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    flux[i][j][k][2] = rsd[i][j][k][2] * u21;
                    flux[i][j][k][3] = rsd[i][j][k][3] * u21;
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (j = jst; j <= jend; j++) {
            for (k = 1; k <= nz - 2; k++) {
                for (i = ist; i <= iend; i++) {
                    for (m = 0; m < 5; m++) {
                        frct[i][j][k][m] = frct[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                for (i = ist; i <= L2; i++) {
                    tmp = 1.0 / rsd[i][j][k][0];
                    u21i = tmp * rsd[i][j][k][1];
                    u31i = tmp * rsd[i][j][k][2];
                    u41i = tmp * rsd[i][j][k][3];
                    u51i = tmp * rsd[i][j][k][4];
                    tmp = 1.0 / rsd[i - 1][j][k][0];
                    u21im1 = tmp * rsd[i - 1][j][k][1];
                    u31im1 = tmp * rsd[i - 1][j][k][2];
                    u41im1 = tmp * rsd[i - 1][j][k][3];
                    u51im1 = tmp * rsd[i - 1][j][k][4];
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * ((u21i * u21i + u31i * u31i + u41i * u41i) - (u21im1 * u21im1 + u31im1 * u31im1 + u41im1 * u41im1)) + (1.0 / 6.0) * tx3 * (u21i * u21i - u21im1 * u21im1) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                for (i = ist; i <= iend; i++) {
                    frct[i][j][k][0] = frct[i][j][k][0] + dx1 * tx1 * (rsd[i - 1][j][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i + 1][j][k][0]);
                    frct[i][j][k][1] = frct[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (rsd[i - 1][j][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i + 1][j][k][1]);
                    frct[i][j][k][2] = frct[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (rsd[i - 1][j][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i + 1][j][k][2]);
                    frct[i][j][k][3] = frct[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (rsd[i - 1][j][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i + 1][j][k][3]);
                    frct[i][j][k][4] = frct[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (rsd[i - 1][j][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i + 1][j][k][4]);
                }
                for (m = 0; m < 5; m++) {
                    frct[1][j][k][m] = frct[1][j][k][m] - dsspm * (+5.0 * rsd[1][j][k][m] - 4.0 * rsd[2][j][k][m] + rsd[3][j][k][m]);
                    frct[2][j][k][m] = frct[2][j][k][m] - dsspm * (-4.0 * rsd[1][j][k][m] + 6.0 * rsd[2][j][k][m] - 4.0 * rsd[3][j][k][m] + rsd[4][j][k][m]);
                }
                ist1 = 3;
                iend1 = nx - 4;
                for (i = ist1; i <= iend1; i++) {
                    for (m = 0; m < 5; m++) {
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i - 2][j][k][m] - 4.0 * rsd[i - 1][j][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i + 1][j][k][m] + rsd[i + 2][j][k][m]);
                    }
                }
                for (m = 0; m < 5; m++) {
                    frct[nx - 3][j][k][m] = frct[nx - 3][j][k][m] - dsspm * (rsd[nx - 5][j][k][m] - 4.0 * rsd[nx - 4][j][k][m] + 6.0 * rsd[nx - 3][j][k][m] - 4.0 * rsd[nx - 2][j][k][m]);
                    frct[nx - 2][j][k][m] = frct[nx - 2][j][k][m] - dsspm * (rsd[nx - 4][j][k][m] - 4.0 * rsd[nx - 3][j][k][m] + 5.0 * rsd[nx - 2][j][k][m]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        L1 = 0;
        L2 = ny - 1;
#pragma omp for nowait
        for (i = ist; i <= iend; i++) {
            for (j = L1; j <= L2; j++) {
                for (k = 1; k <= nz - 2; k++) {
                    flux[i][j][k][0] = rsd[i][j][k][2];
                    u31 = rsd[i][j][k][2] / rsd[i][j][k][0];
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    flux[i][j][k][1] = rsd[i][j][k][1] * u31;
                    flux[i][j][k][2] = rsd[i][j][k][2] * u31 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    flux[i][j][k][3] = rsd[i][j][k][3] * u31;
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = ist; i <= iend; i++) {
            for (k = 1; k <= nz - 2; k++) {
                for (j = jst; j <= jend; j++) {
                    for (m = 0; m < 5; m++) {
                        frct[i][j][k][m] = frct[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                for (j = jst; j <= L2; j++) {
                    tmp = 1.0 / rsd[i][j][k][0];
                    u21j = tmp * rsd[i][j][k][1];
                    u31j = tmp * rsd[i][j][k][2];
                    u41j = tmp * rsd[i][j][k][3];
                    u51j = tmp * rsd[i][j][k][4];
                    tmp = 1.0 / rsd[i][j - 1][k][0];
                    u21jm1 = tmp * rsd[i][j - 1][k][1];
                    u31jm1 = tmp * rsd[i][j - 1][k][2];
                    u41jm1 = tmp * rsd[i][j - 1][k][3];
                    u51jm1 = tmp * rsd[i][j - 1][k][4];
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * ((u21j * u21j + u31j * u31j + u41j * u41j) - (u21jm1 * u21jm1 + u31jm1 * u31jm1 + u41jm1 * u41jm1)) + (1.0 / 6.0) * ty3 * (u31j * u31j - u31jm1 * u31jm1) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                for (j = jst; j <= jend; j++) {
                    frct[i][j][k][0] = frct[i][j][k][0] + dy1 * ty1 * (rsd[i][j - 1][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j + 1][k][0]);
                    frct[i][j][k][1] = frct[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (rsd[i][j - 1][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j + 1][k][1]);
                    frct[i][j][k][2] = frct[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (rsd[i][j - 1][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j + 1][k][2]);
                    frct[i][j][k][3] = frct[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (rsd[i][j - 1][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j + 1][k][3]);
                    frct[i][j][k][4] = frct[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (rsd[i][j - 1][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j + 1][k][4]);
                }
                for (m = 0; m < 5; m++) {
                    frct[i][1][k][m] = frct[i][1][k][m] - dsspm * (+5.0 * rsd[i][1][k][m] - 4.0 * rsd[i][2][k][m] + rsd[i][3][k][m]);
                    frct[i][2][k][m] = frct[i][2][k][m] - dsspm * (-4.0 * rsd[i][1][k][m] + 6.0 * rsd[i][2][k][m] - 4.0 * rsd[i][3][k][m] + rsd[i][4][k][m]);
                }
                jst1 = 3;
                jend1 = ny - 4;
                for (j = jst1; j <= jend1; j++) {
                    for (m = 0; m < 5; m++) {
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j - 2][k][m] - 4.0 * rsd[i][j - 1][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j + 1][k][m] + rsd[i][j + 2][k][m]);
                    }
                }
                for (m = 0; m < 5; m++) {
                    frct[i][ny - 3][k][m] = frct[i][ny - 3][k][m] - dsspm * (rsd[i][ny - 5][k][m] - 4.0 * rsd[i][ny - 4][k][m] + 6.0 * rsd[i][ny - 3][k][m] - 4.0 * rsd[i][ny - 2][k][m]);
                    frct[i][ny - 2][k][m] = frct[i][ny - 2][k][m] - dsspm * (rsd[i][ny - 4][k][m] - 4.0 * rsd[i][ny - 3][k][m] + 5.0 * rsd[i][ny - 2][k][m]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = ist; i <= iend; i++) {
            for (j = jst; j <= jend; j++) {
                for (k = 0; k <= nz - 1; k++) {
                    flux[i][j][k][0] = rsd[i][j][k][3];
                    u41 = rsd[i][j][k][3] / rsd[i][j][k][0];
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    flux[i][j][k][1] = rsd[i][j][k][1] * u41;
                    flux[i][j][k][2] = rsd[i][j][k][2] * u41;
                    flux[i][j][k][3] = rsd[i][j][k][3] * u41 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                for (k = 1; k <= nz - 2; k++) {
                    for (m = 0; m < 5; m++) {
                        frct[i][j][k][m] = frct[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                for (k = 1; k <= nz - 1; k++) {
                    tmp = 1.0 / rsd[i][j][k][0];
                    u21k = tmp * rsd[i][j][k][1];
                    u31k = tmp * rsd[i][j][k][2];
                    u41k = tmp * rsd[i][j][k][3];
                    u51k = tmp * rsd[i][j][k][4];
                    tmp = 1.0 / rsd[i][j][k - 1][0];
                    u21km1 = tmp * rsd[i][j][k - 1][1];
                    u31km1 = tmp * rsd[i][j][k - 1][2];
                    u41km1 = tmp * rsd[i][j][k - 1][3];
                    u51km1 = tmp * rsd[i][j][k - 1][4];
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * ((u21k * u21k + u31k * u31k + u41k * u41k) - (u21km1 * u21km1 + u31km1 * u31km1 + u41km1 * u41km1)) + (1.0 / 6.0) * tz3 * (u41k * u41k - u41km1 * u41km1) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                for (k = 1; k <= nz - 2; k++) {
                    frct[i][j][k][0] = frct[i][j][k][0] + dz1 * tz1 * (rsd[i][j][k + 1][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j][k - 1][0]);
                    frct[i][j][k][1] = frct[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (rsd[i][j][k + 1][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j][k - 1][1]);
                    frct[i][j][k][2] = frct[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (rsd[i][j][k + 1][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j][k - 1][2]);
                    frct[i][j][k][3] = frct[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (rsd[i][j][k + 1][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j][k - 1][3]);
                    frct[i][j][k][4] = frct[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (rsd[i][j][k + 1][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j][k - 1][4]);
                }
                for (m = 0; m < 5; m++) {
                    frct[i][j][1][m] = frct[i][j][1][m] - dsspm * (+5.0 * rsd[i][j][1][m] - 4.0 * rsd[i][j][2][m] + rsd[i][j][3][m]);
                    frct[i][j][2][m] = frct[i][j][2][m] - dsspm * (-4.0 * rsd[i][j][1][m] + 6.0 * rsd[i][j][2][m] - 4.0 * rsd[i][j][3][m] + rsd[i][j][4][m]);
                }
                for (k = 3; k <= nz - 4; k++) {
                    for (m = 0; m < 5; m++) {
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j][k - 2][m] - 4.0 * rsd[i][j][k - 1][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j][k + 1][m] + rsd[i][j][k + 2][m]);
                    }
                }
                for (m = 0; m < 5; m++) {
                    frct[i][j][nz - 3][m] = frct[i][j][nz - 3][m] - dsspm * (rsd[i][j][nz - 5][m] - 4.0 * rsd[i][j][nz - 4][m] + 6.0 * rsd[i][j][nz - 3][m] - 4.0 * rsd[i][j][nz - 2][m]);
                    frct[i][j][nz - 2][m] = frct[i][j][nz - 2][m] - dsspm * (rsd[i][j][nz - 4][m] - 4.0 * rsd[i][j][nz - 3][m] + 5.0 * rsd[i][j][nz - 2][m]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
}
static void error() {
    int i;
    int j;
    int k;
    int m;
    int iglob;
    int jglob;
    double tmp;
    double u000ijk[5];
    for (m = 0; m < 5; m++) {
        errnm[m] = 0.0;
    }
    for (i = ist; i <= iend; i++) {
        iglob = i;
        for (j = jst; j <= jend; j++) {
            jglob = j;
            for (k = 1; k <= nz - 2; k++) {
                exact(iglob, jglob, k, u000ijk);
                for (m = 0; m < 5; m++) {
                    tmp = (u000ijk[m] - u[i][j][k][m]);
                    errnm[m] = errnm[m] + tmp * tmp;
                }
            }
        }
    }
    for (m = 0; m < 5; m++) {
        double _imopVarPre151;
        double _imopVarPre152;
        _imopVarPre151 = errnm[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
        _imopVarPre152 = sqrt(_imopVarPre151);
        errnm[m] = _imopVarPre152;
    }
}
static void exact(int i, int j , int k , double u000ijk[5]) {
    int m;
    double xi;
    double eta;
    double zeta;
    xi = ((double) i) / (nx0 - 1);
    eta = ((double) j) / (ny0 - 1);
    zeta = ((double) k) / (nz - 1);
    for (m = 0; m < 5; m++) {
        u000ijk[m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
    }
}
static void jacld(int k) {
    int i;
    int j;
    double r43;
    double c1345;
    double c34;
    double tmp1;
    double tmp2;
    double tmp3;
    r43 = (4.0 / 3.0);
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    c34 = 1.00e-01 * 1.00e+00;
#pragma omp for nowait schedule(static)
    for (i = ist; i <= iend; i++) {
        for (j = jst; j <= jend; j++) {
            tmp1 = 1.0 / u[i][j][k][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            d[i][j][0][1] = 0.0;
            d[i][j][0][2] = 0.0;
            d[i][j][0][3] = 0.0;
            d[i][j][0][4] = 0.0;
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            d[i][j][1][2] = 0.0;
            d[i][j][1][3] = 0.0;
            d[i][j][1][4] = 0.0;
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            d[i][j][2][1] = 0.0;
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            d[i][j][2][3] = 0.0;
            d[i][j][2][4] = 0.0;
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            d[i][j][3][1] = 0.0;
            d[i][j][3][2] = 0.0;
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            d[i][j][3][4] = 0.0;
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            tmp1 = 1.0 / u[i][j][k - 1][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            a[i][j][0][0] = -dt * tz1 * dz1;
            a[i][j][0][1] = 0.0;
            a[i][j][0][2] = 0.0;
            a[i][j][0][3] = -dt * tz2;
            a[i][j][0][4] = 0.0;
            a[i][j][1][0] = -dt * tz2 * (-(u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][1]);
            a[i][j][1][1] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            a[i][j][1][2] = 0.0;
            a[i][j][1][3] = -dt * tz2 * (u[i][j][k - 1][1] * tmp1);
            a[i][j][1][4] = 0.0;
            a[i][j][2][0] = -dt * tz2 * (-(u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][2]);
            a[i][j][2][1] = 0.0;
            a[i][j][2][2] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            a[i][j][2][3] = -dt * tz2 * (u[i][j][k - 1][2] * tmp1);
            a[i][j][2][4] = 0.0;
            a[i][j][3][0] = -dt * tz2 * (-(u[i][j][k - 1][3] * tmp1) * (u[i][j][k - 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k - 1][3]);
            a[i][j][3][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * tmp1));
            a[i][j][3][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * tmp1));
            a[i][j][3][3] = -dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            a[i][j][3][4] = -dt * tz2 * 0.40e+00;
            a[i][j][4][0] = -dt * tz2 * ((0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k - 1][4] * tmp1)) * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (u[i][j][k - 1][1] * u[i][j][k - 1][1]) - (c34 - c1345) * tmp3 * (u[i][j][k - 1][2] * u[i][j][k - 1][2]) - (r43 * c34 - c1345) * tmp3 * (u[i][j][k - 1][3] * u[i][j][k - 1][3]) - c1345 * tmp2 * u[i][j][k - 1][4]);
            a[i][j][4][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][1];
            a[i][j][4][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][2];
            a[i][j][4][3] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + 3.0 * u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k - 1][3];
            a[i][j][4][4] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
            tmp1 = 1.0 / u[i][j - 1][k][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            b[i][j][0][0] = -dt * ty1 * dy1;
            b[i][j][0][1] = 0.0;
            b[i][j][0][2] = -dt * ty2;
            b[i][j][0][3] = 0.0;
            b[i][j][0][4] = 0.0;
            b[i][j][1][0] = -dt * ty2 * (-(u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][1]);
            b[i][j][1][1] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            b[i][j][1][2] = -dt * ty2 * (u[i][j - 1][k][1] * tmp1);
            b[i][j][1][3] = 0.0;
            b[i][j][1][4] = 0.0;
            b[i][j][2][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * tmp1) * (u[i][j - 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j - 1][k][2]);
            b[i][j][2][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * tmp1));
            b[i][j][2][2] = -dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            b[i][j][2][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][3] * tmp1));
            b[i][j][2][4] = -dt * ty2 * 0.40e+00;
            b[i][j][3][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][3]);
            b[i][j][3][1] = 0.0;
            b[i][j][3][2] = -dt * ty2 * (u[i][j - 1][k][3] * tmp1);
            b[i][j][3][3] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            b[i][j][3][4] = 0.0;
            b[i][j][4][0] = -dt * ty2 * ((0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j - 1][k][4] * tmp1)) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j - 1][k][1]) * (u[i][j - 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j - 1][k][2]) * (u[i][j - 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j - 1][k][3]) * (u[i][j - 1][k][3]))) - c1345 * tmp2 * u[i][j - 1][k][4]);
            b[i][j][4][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][1];
            b[i][j][4][2] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + 3.0 * u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j - 1][k][2];
            b[i][j][4][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][3];
            b[i][j][4][4] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            tmp1 = 1.0 / u[i - 1][j][k][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            c[i][j][0][0] = -dt * tx1 * dx1;
            c[i][j][0][1] = -dt * tx2;
            c[i][j][0][2] = 0.0;
            c[i][j][0][3] = 0.0;
            c[i][j][0][4] = 0.0;
            c[i][j][1][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * tmp1) * (u[i - 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i - 1][j][k][1]);
            c[i][j][1][1] = -dt * tx2 * ((2.0 - 0.40e+00) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            c[i][j][1][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * tmp1));
            c[i][j][1][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * tmp1));
            c[i][j][1][4] = -dt * tx2 * 0.40e+00;
            c[i][j][2][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][2]);
            c[i][j][2][1] = -dt * tx2 * (u[i - 1][j][k][2] * tmp1);
            c[i][j][2][2] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            c[i][j][2][3] = 0.0;
            c[i][j][2][4] = 0.0;
            c[i][j][3][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][3]);
            c[i][j][3][1] = -dt * tx2 * (u[i - 1][j][k][3] * tmp1);
            c[i][j][3][2] = 0.0;
            c[i][j][3][3] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            c[i][j][3][4] = 0.0;
            c[i][j][4][0] = -dt * tx2 * ((0.40e+00 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i - 1][j][k][4] * tmp1)) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i - 1][j][k][1]) * (u[i - 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][2]) * (u[i - 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][3]) * (u[i - 1][j][k][3]))) - c1345 * tmp2 * u[i - 1][j][k][4]);
            c[i][j][4][1] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i - 1][j][k][1];
            c[i][j][4][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][2];
            c[i][j][4][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][3];
            c[i][j][4][4] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
        }
    }
}
static void jacu(int k) {
    int i;
    int j;
    double r43;
    double c1345;
    double c34;
    double tmp1;
    double tmp2;
    double tmp3;
    r43 = (4.0 / 3.0);
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    c34 = 1.00e-01 * 1.00e+00;
#pragma omp for nowait schedule(static)
    for (i = iend; i >= ist; i--) {
        for (j = jend; j >= jst; j--) {
            tmp1 = 1.0 / u[i][j][k][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            d[i][j][0][1] = 0.0;
            d[i][j][0][2] = 0.0;
            d[i][j][0][3] = 0.0;
            d[i][j][0][4] = 0.0;
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            d[i][j][1][2] = 0.0;
            d[i][j][1][3] = 0.0;
            d[i][j][1][4] = 0.0;
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            d[i][j][2][1] = 0.0;
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            d[i][j][2][3] = 0.0;
            d[i][j][2][4] = 0.0;
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            d[i][j][3][1] = 0.0;
            d[i][j][3][2] = 0.0;
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            d[i][j][3][4] = 0.0;
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            tmp1 = 1.0 / u[i + 1][j][k][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            a[i][j][0][0] = -dt * tx1 * dx1;
            a[i][j][0][1] = dt * tx2;
            a[i][j][0][2] = 0.0;
            a[i][j][0][3] = 0.0;
            a[i][j][0][4] = 0.0;
            a[i][j][1][0] = dt * tx2 * (-(u[i + 1][j][k][1] * tmp1) * (u[i + 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i + 1][j][k][1]);
            a[i][j][1][1] = dt * tx2 * ((2.0 - 0.40e+00) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            a[i][j][1][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * tmp1));
            a[i][j][1][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * tmp1));
            a[i][j][1][4] = dt * tx2 * 0.40e+00;
            a[i][j][2][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][2]);
            a[i][j][2][1] = dt * tx2 * (u[i + 1][j][k][2] * tmp1);
            a[i][j][2][2] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            a[i][j][2][3] = 0.0;
            a[i][j][2][4] = 0.0;
            a[i][j][3][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][3]);
            a[i][j][3][1] = dt * tx2 * (u[i + 1][j][k][3] * tmp1);
            a[i][j][3][2] = 0.0;
            a[i][j][3][3] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            a[i][j][3][4] = 0.0;
            a[i][j][4][0] = dt * tx2 * ((0.40e+00 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i + 1][j][k][4] * tmp1)) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i + 1][j][k][1]) * (u[i + 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][2]) * (u[i + 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][3]) * (u[i + 1][j][k][3]))) - c1345 * tmp2 * u[i + 1][j][k][4]);
            a[i][j][4][1] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i + 1][j][k][1];
            a[i][j][4][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][2];
            a[i][j][4][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][3];
            a[i][j][4][4] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
            tmp1 = 1.0 / u[i][j + 1][k][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            b[i][j][0][0] = -dt * ty1 * dy1;
            b[i][j][0][1] = 0.0;
            b[i][j][0][2] = dt * ty2;
            b[i][j][0][3] = 0.0;
            b[i][j][0][4] = 0.0;
            b[i][j][1][0] = dt * ty2 * (-(u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][1]);
            b[i][j][1][1] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            b[i][j][1][2] = dt * ty2 * (u[i][j + 1][k][1] * tmp1);
            b[i][j][1][3] = 0.0;
            b[i][j][1][4] = 0.0;
            b[i][j][2][0] = dt * ty2 * (-(u[i][j + 1][k][2] * tmp1) * (u[i][j + 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j + 1][k][2]);
            b[i][j][2][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * tmp1));
            b[i][j][2][2] = dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            b[i][j][2][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][3] * tmp1));
            b[i][j][2][4] = dt * ty2 * 0.40e+00;
            b[i][j][3][0] = dt * ty2 * (-(u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][3]);
            b[i][j][3][1] = 0.0;
            b[i][j][3][2] = dt * ty2 * (u[i][j + 1][k][3] * tmp1);
            b[i][j][3][3] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            b[i][j][3][4] = 0.0;
            b[i][j][4][0] = dt * ty2 * ((0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j + 1][k][4] * tmp1)) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j + 1][k][1]) * (u[i][j + 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j + 1][k][2]) * (u[i][j + 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j + 1][k][3]) * (u[i][j + 1][k][3]))) - c1345 * tmp2 * u[i][j + 1][k][4]);
            b[i][j][4][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][1];
            b[i][j][4][2] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + 3.0 * u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j + 1][k][2];
            b[i][j][4][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][3];
            b[i][j][4][4] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            tmp1 = 1.0 / u[i][j][k + 1][0];
            tmp2 = tmp1 * tmp1;
            tmp3 = tmp1 * tmp2;
            c[i][j][0][0] = -dt * tz1 * dz1;
            c[i][j][0][1] = 0.0;
            c[i][j][0][2] = 0.0;
            c[i][j][0][3] = dt * tz2;
            c[i][j][0][4] = 0.0;
            c[i][j][1][0] = dt * tz2 * (-(u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][1]);
            c[i][j][1][1] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            c[i][j][1][2] = 0.0;
            c[i][j][1][3] = dt * tz2 * (u[i][j][k + 1][1] * tmp1);
            c[i][j][1][4] = 0.0;
            c[i][j][2][0] = dt * tz2 * (-(u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][2]);
            c[i][j][2][1] = 0.0;
            c[i][j][2][2] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            c[i][j][2][3] = dt * tz2 * (u[i][j][k + 1][2] * tmp1);
            c[i][j][2][4] = 0.0;
            c[i][j][3][0] = dt * tz2 * (-(u[i][j][k + 1][3] * tmp1) * (u[i][j][k + 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k + 1][3]);
            c[i][j][3][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * tmp1));
            c[i][j][3][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * tmp1));
            c[i][j][3][3] = dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            c[i][j][3][4] = dt * tz2 * 0.40e+00;
            c[i][j][4][0] = dt * tz2 * ((0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k + 1][4] * tmp1)) * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k + 1][1]) * (u[i][j][k + 1][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k + 1][2]) * (u[i][j][k + 1][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k + 1][3]) * (u[i][j][k + 1][3]))) - c1345 * tmp2 * u[i][j][k + 1][4]);
            c[i][j][4][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][1];
            c[i][j][4][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][2];
            c[i][j][4][3] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + 3.0 * u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k + 1][3];
            c[i][j][4][4] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
        }
    }
}
static void l2norm(int nx0, int ny0 , int nz0 , int ist , int iend , int jst , int jend , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double sum[5]) {
#pragma omp parallel
    {
        int i;
        int j;
        int k;
        int m;
        double sum0 = 0.0;
        double sum1 = 0.0;
        double sum2 = 0.0;
        double sum3 = 0.0;
        double sum4 = 0.0;
#pragma omp single nowait
        {
            for (m = 0; m < 5; m++) {
                sum[m] = 0.0;
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = ist; i <= iend; i++) {
            for (j = jst; j <= jend; j++) {
                for (k = 1; k <= nz0 - 2; k++) {
                    sum0 = sum0 + v[i][j][k][0] * v[i][j][k][0];
                    sum1 = sum1 + v[i][j][k][1] * v[i][j][k][1];
                    sum2 = sum2 + v[i][j][k][2] * v[i][j][k][2];
                    sum3 = sum3 + v[i][j][k][3] * v[i][j][k][3];
                    sum4 = sum4 + v[i][j][k][4] * v[i][j][k][4];
                }
            }
        }
#pragma omp critical
        {
            sum[0] += sum0;
            sum[1] += sum1;
            sum[2] += sum2;
            sum[3] += sum3;
            sum[4] += sum4;
        }
#pragma omp barrier
#pragma omp single nowait
        {
            for (m = 0; m < 5; m++) {
                double _imopVarPre154;
                double _imopVarPre155;
                _imopVarPre154 = sum[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
                _imopVarPre155 = sqrt(_imopVarPre154);
                sum[m] = _imopVarPre155;
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
}
static void pintgr() {
    int i;
    int j;
    int k;
    int ibeg;
    int ifin;
    int ifin1;
    int jbeg;
    int jfin;
    int jfin1;
    int iglob;
    int iglob1;
    int iglob2;
    int jglob;
    int jglob1;
    int jglob2;
    double phi1[12 + 2][12 + 2];
    double phi2[12 + 2][12 + 2];
    double frc1;
    double frc2;
    double frc3;
    ibeg = nx;
    ifin = 0;
    iglob1 = -1;
    iglob2 = nx - 1;
    int _imopVarPre157;
    _imopVarPre157 = iglob1 >= ii1;
    if (_imopVarPre157) {
        _imopVarPre157 = iglob2 < ii2 + nx;
    }
    if (_imopVarPre157) {
        ibeg = 0;
    }
    int _imopVarPre159;
    _imopVarPre159 = iglob1 >= ii1 - nx;
    if (_imopVarPre159) {
        _imopVarPre159 = iglob2 <= ii2;
    }
    if (_imopVarPre159) {
        ifin = nx;
    }
    int _imopVarPre161;
    _imopVarPre161 = ii1 >= iglob1;
    if (_imopVarPre161) {
        _imopVarPre161 = ii1 <= iglob2;
    }
    if (_imopVarPre161) {
        ibeg = ii1;
    }
    int _imopVarPre163;
    _imopVarPre163 = ii2 >= iglob1;
    if (_imopVarPre163) {
        _imopVarPre163 = ii2 <= iglob2;
    }
    if (_imopVarPre163) {
        ifin = ii2;
    }
    jbeg = ny;
    jfin = -1;
    jglob1 = 0;
    jglob2 = ny - 1;
    int _imopVarPre165;
    _imopVarPre165 = jglob1 >= ji1;
    if (_imopVarPre165) {
        _imopVarPre165 = jglob2 < ji2 + ny;
    }
    if (_imopVarPre165) {
        jbeg = 0;
    }
    int _imopVarPre167;
    _imopVarPre167 = jglob1 > ji1 - ny;
    if (_imopVarPre167) {
        _imopVarPre167 = jglob2 <= ji2;
    }
    if (_imopVarPre167) {
        jfin = ny;
    }
    int _imopVarPre169;
    _imopVarPre169 = ji1 >= jglob1;
    if (_imopVarPre169) {
        _imopVarPre169 = ji1 <= jglob2;
    }
    if (_imopVarPre169) {
        jbeg = ji1;
    }
    int _imopVarPre171;
    _imopVarPre171 = ji2 >= jglob1;
    if (_imopVarPre171) {
        _imopVarPre171 = ji2 <= jglob2;
    }
    if (_imopVarPre171) {
        jfin = ji2;
    }
    ifin1 = ifin;
    jfin1 = jfin;
    if (ifin1 == ii2) {
        ifin1 = ifin - 1;
    }
    if (jfin1 == ji2) {
        jfin1 = jfin - 1;
    }
    for (i = 0; i <= 12 + 1; i++) {
        for (k = 0; k <= 12 + 1; k++) {
            phi1[i][k] = 0.0;
            phi2[i][k] = 0.0;
        }
    }
    for (i = ibeg; i <= ifin; i++) {
        iglob = i;
        for (j = jbeg; j <= jfin; j++) {
            jglob = j;
            k = ki1;
            phi1[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
            k = ki2;
            phi2[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
        }
    }
    frc1 = 0.0;
    for (i = ibeg; i <= ifin1; i++) {
        for (j = jbeg; j <= jfin1; j++) {
            frc1 = frc1 + (phi1[i][j] + phi1[i + 1][j] + phi1[i][j + 1] + phi1[i + 1][j + 1] + phi2[i][j] + phi2[i + 1][j] + phi2[i][j + 1] + phi2[i + 1][j + 1]);
        }
    }
    frc1 = dxi * deta * frc1;
    for (i = 0; i <= 12 + 1; i++) {
        for (k = 0; k <= 12 + 1; k++) {
            phi1[i][k] = 0.0;
            phi2[i][k] = 0.0;
        }
    }
    jglob = jbeg;
    if (jglob == ji1) {
        for (i = ibeg; i <= ifin; i++) {
            iglob = i;
            for (k = ki1; k <= ki2; k++) {
                phi1[i][k] = 0.40e+00 * (u[i][jbeg][k][4] - 0.50 * (((u[i][jbeg][k][1]) * (u[i][jbeg][k][1])) + ((u[i][jbeg][k][2]) * (u[i][jbeg][k][2])) + ((u[i][jbeg][k][3]) * (u[i][jbeg][k][3]))) / u[i][jbeg][k][0]);
            }
        }
    }
    jglob = jfin;
    if (jglob == ji2) {
        for (i = ibeg; i <= ifin; i++) {
            iglob = i;
            for (k = ki1; k <= ki2; k++) {
                phi2[i][k] = 0.40e+00 * (u[i][jfin][k][4] - 0.50 * (((u[i][jfin][k][1]) * (u[i][jfin][k][1])) + ((u[i][jfin][k][2]) * (u[i][jfin][k][2])) + ((u[i][jfin][k][3]) * (u[i][jfin][k][3]))) / u[i][jfin][k][0]);
            }
        }
    }
    frc2 = 0.0;
    for (i = ibeg; i <= ifin1; i++) {
        for (k = ki1; k <= ki2 - 1; k++) {
            frc2 = frc2 + (phi1[i][k] + phi1[i + 1][k] + phi1[i][k + 1] + phi1[i + 1][k + 1] + phi2[i][k] + phi2[i + 1][k] + phi2[i][k + 1] + phi2[i + 1][k + 1]);
        }
    }
    frc2 = dxi * dzeta * frc2;
    for (i = 0; i <= 12 + 1; i++) {
        for (k = 0; k <= 12 + 1; k++) {
            phi1[i][k] = 0.0;
            phi2[i][k] = 0.0;
        }
    }
    iglob = ibeg;
    if (iglob == ii1) {
        for (j = jbeg; j <= jfin; j++) {
            jglob = j;
            for (k = ki1; k <= ki2; k++) {
                phi1[j][k] = 0.40e+00 * (u[ibeg][j][k][4] - 0.50 * (((u[ibeg][j][k][1]) * (u[ibeg][j][k][1])) + ((u[ibeg][j][k][2]) * (u[ibeg][j][k][2])) + ((u[ibeg][j][k][3]) * (u[ibeg][j][k][3]))) / u[ibeg][j][k][0]);
            }
        }
    }
    iglob = ifin;
    if (iglob == ii2) {
        for (j = jbeg; j <= jfin; j++) {
            jglob = j;
            for (k = ki1; k <= ki2; k++) {
                phi2[j][k] = 0.40e+00 * (u[ifin][j][k][4] - 0.50 * (((u[ifin][j][k][1]) * (u[ifin][j][k][1])) + ((u[ifin][j][k][2]) * (u[ifin][j][k][2])) + ((u[ifin][j][k][3]) * (u[ifin][j][k][3]))) / u[ifin][j][k][0]);
            }
        }
    }
    frc3 = 0.0;
    for (j = jbeg; j <= jfin1; j++) {
        for (k = ki1; k <= ki2 - 1; k++) {
            frc3 = frc3 + (phi1[j][k] + phi1[j + 1][k] + phi1[j][k + 1] + phi1[j + 1][k + 1] + phi2[j][k] + phi2[j + 1][k] + phi2[j][k + 1] + phi2[j + 1][k + 1]);
        }
    }
    frc3 = deta * dzeta * frc3;
    frc = 0.25 * (frc1 + frc2 + frc3);
}
static void read_input() {
    FILE *fp;
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - LU Benchmark\n\n");
    fp = fopen("inputlu.data", "r");
    if (fp != ((void *) 0)) {
        printf(" Reading from input file inputlu.data\n");
        int _imopVarPre173;
        _imopVarPre173 = fgetc(fp);
        while (_imopVarPre173 != '\n') {
            ;
            _imopVarPre173 = fgetc(fp);
        }
        int _imopVarPre175;
        _imopVarPre175 = fgetc(fp);
        while (_imopVarPre175 != '\n') {
            ;
            _imopVarPre175 = fgetc(fp);
        }
        int *_imopVarPre178;
        int *_imopVarPre179;
        _imopVarPre178 = &inorm;
        _imopVarPre179 = &ipr;
        fscanf(fp, "%d%d", _imopVarPre179, _imopVarPre178);
        int _imopVarPre181;
        _imopVarPre181 = fgetc(fp);
        while (_imopVarPre181 != '\n') {
            ;
            _imopVarPre181 = fgetc(fp);
        }
        int _imopVarPre183;
        _imopVarPre183 = fgetc(fp);
        while (_imopVarPre183 != '\n') {
            ;
            _imopVarPre183 = fgetc(fp);
        }
        int _imopVarPre185;
        _imopVarPre185 = fgetc(fp);
        while (_imopVarPre185 != '\n') {
            ;
            _imopVarPre185 = fgetc(fp);
        }
        int *_imopVarPre187;
        _imopVarPre187 = &itmax;
        fscanf(fp, "%d", _imopVarPre187);
        int _imopVarPre189;
        _imopVarPre189 = fgetc(fp);
        while (_imopVarPre189 != '\n') {
            ;
            _imopVarPre189 = fgetc(fp);
        }
        int _imopVarPre191;
        _imopVarPre191 = fgetc(fp);
        while (_imopVarPre191 != '\n') {
            ;
            _imopVarPre191 = fgetc(fp);
        }
        int _imopVarPre193;
        _imopVarPre193 = fgetc(fp);
        while (_imopVarPre193 != '\n') {
            ;
            _imopVarPre193 = fgetc(fp);
        }
        double *_imopVarPre195;
        _imopVarPre195 = &dt;
        fscanf(fp, "%lf", _imopVarPre195);
        int _imopVarPre197;
        _imopVarPre197 = fgetc(fp);
        while (_imopVarPre197 != '\n') {
            ;
            _imopVarPre197 = fgetc(fp);
        }
        int _imopVarPre199;
        _imopVarPre199 = fgetc(fp);
        while (_imopVarPre199 != '\n') {
            ;
            _imopVarPre199 = fgetc(fp);
        }
        int _imopVarPre201;
        _imopVarPre201 = fgetc(fp);
        while (_imopVarPre201 != '\n') {
            ;
            _imopVarPre201 = fgetc(fp);
        }
        double *_imopVarPre203;
        _imopVarPre203 = &omega;
        fscanf(fp, "%lf", _imopVarPre203);
        int _imopVarPre205;
        _imopVarPre205 = fgetc(fp);
        while (_imopVarPre205 != '\n') {
            ;
            _imopVarPre205 = fgetc(fp);
        }
        int _imopVarPre207;
        _imopVarPre207 = fgetc(fp);
        while (_imopVarPre207 != '\n') {
            ;
            _imopVarPre207 = fgetc(fp);
        }
        int _imopVarPre209;
        _imopVarPre209 = fgetc(fp);
        while (_imopVarPre209 != '\n') {
            ;
            _imopVarPre209 = fgetc(fp);
        }
        double *_imopVarPre215;
        double *_imopVarPre216;
        double *_imopVarPre217;
        double *_imopVarPre218;
        double *_imopVarPre219;
        _imopVarPre215 = &tolrsd[4];
        _imopVarPre216 = &tolrsd[3];
        _imopVarPre217 = &tolrsd[2];
        _imopVarPre218 = &tolrsd[1];
        _imopVarPre219 = &tolrsd[0];
        fscanf(fp, "%lf%lf%lf%lf%lf", _imopVarPre219, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215);
        int _imopVarPre221;
        _imopVarPre221 = fgetc(fp);
        while (_imopVarPre221 != '\n') {
            ;
            _imopVarPre221 = fgetc(fp);
        }
        int _imopVarPre223;
        _imopVarPre223 = fgetc(fp);
        while (_imopVarPre223 != '\n') {
            ;
            _imopVarPre223 = fgetc(fp);
        }
        int _imopVarPre225;
        _imopVarPre225 = fgetc(fp);
        while (_imopVarPre225 != '\n') {
            ;
            _imopVarPre225 = fgetc(fp);
        }
        int *_imopVarPre229;
        int *_imopVarPre230;
        int *_imopVarPre231;
        _imopVarPre229 = &nz0;
        _imopVarPre230 = &ny0;
        _imopVarPre231 = &nx0;
        fscanf(fp, "%d%d%d", _imopVarPre231, _imopVarPre230, _imopVarPre229);
        int _imopVarPre233;
        _imopVarPre233 = fgetc(fp);
        while (_imopVarPre233 != '\n') {
            ;
            _imopVarPre233 = fgetc(fp);
        }
        fclose(fp);
    } else {
        ipr = 1;
        inorm = 50;
        itmax = 50;
        dt = 0.5;
        omega = 1.2;
        tolrsd[0] = 1.0e-8;
        tolrsd[1] = 1.0e-8;
        tolrsd[2] = 1.0e-8;
        tolrsd[3] = 1.0e-8;
        tolrsd[4] = 1.0e-8;
        nx0 = 12;
        ny0 = 12;
        nz0 = 12;
    }
    int _imopVarPre234;
    int _imopVarPre235;
    _imopVarPre234 = nx0 < 4;
    if (!_imopVarPre234) {
        _imopVarPre235 = ny0 < 4;
        if (!_imopVarPre235) {
            _imopVarPre235 = nz0 < 4;
        }
        _imopVarPre234 = _imopVarPre235;
    }
    if (_imopVarPre234) {
        printf("     PROBLEM SIZE IS TOO SMALL - \n" "     SET EACH OF NX, NY AND NZ AT LEAST EQUAL TO 5\n");
        exit(1);
    }
    int _imopVarPre236;
    int _imopVarPre237;
    _imopVarPre236 = nx0 > 12;
    if (!_imopVarPre236) {
        _imopVarPre237 = ny0 > 12;
        if (!_imopVarPre237) {
            _imopVarPre237 = nz0 > 12;
        }
        _imopVarPre236 = _imopVarPre237;
    }
    if (_imopVarPre236) {
        printf("     PROBLEM SIZE IS TOO LARGE - \n" "     NX, NY AND NZ SHOULD BE EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY\n");
        exit(1);
    }
    printf(" Size: %3dx%3dx%3d\n", nx0, ny0, nz0);
    printf(" Iterations: %3d\n", itmax);
}
static void rhs() {
#pragma omp parallel
    {
        int i;
        int j;
        int k;
        int m;
        int L1;
        int L2;
        int ist1;
        int iend1;
        int jst1;
        int jend1;
        double q;
        double u21;
        double u31;
        double u41;
        double tmp;
        double u21i;
        double u31i;
        double u41i;
        double u51i;
        double u21j;
        double u31j;
        double u41j;
        double u51j;
        double u21k;
        double u31k;
        double u41k;
        double u51k;
        double u21im1;
        double u31im1;
        double u41im1;
        double u51im1;
        double u21jm1;
        double u31jm1;
        double u41jm1;
        double u51jm1;
        double u21km1;
        double u31km1;
        double u41km1;
        double u51km1;
#pragma omp for nowait
        for (i = 0; i <= nx - 1; i++) {
            for (j = 0; j <= ny - 1; j++) {
                for (k = 0; k <= nz - 1; k++) {
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = -frct[i][j][k][m];
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        L1 = 0;
        L2 = nx - 1;
#pragma omp for nowait
        for (i = L1; i <= L2; i++) {
            for (j = jst; j <= jend; j++) {
                for (k = 1; k <= nz - 2; k++) {
                    flux[i][j][k][0] = u[i][j][k][1];
                    u21 = u[i][j][k][1] / u[i][j][k][0];
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    flux[i][j][k][1] = u[i][j][k][1] * u21 + 0.40e+00 * (u[i][j][k][4] - q);
                    flux[i][j][k][2] = u[i][j][k][2] * u21;
                    flux[i][j][k][3] = u[i][j][k][3] * u21;
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (j = jst; j <= jend; j++) {
            for (k = 1; k <= nz - 2; k++) {
                for (i = ist; i <= iend; i++) {
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                L2 = nx - 1;
                for (i = ist; i <= L2; i++) {
                    tmp = 1.0 / u[i][j][k][0];
                    u21i = tmp * u[i][j][k][1];
                    u31i = tmp * u[i][j][k][2];
                    u41i = tmp * u[i][j][k][3];
                    u51i = tmp * u[i][j][k][4];
                    tmp = 1.0 / u[i - 1][j][k][0];
                    u21im1 = tmp * u[i - 1][j][k][1];
                    u31im1 = tmp * u[i - 1][j][k][2];
                    u41im1 = tmp * u[i - 1][j][k][3];
                    u51im1 = tmp * u[i - 1][j][k][4];
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * (((u21i * u21i) + (u31i * u31i) + (u41i * u41i)) - ((u21im1 * u21im1) + (u31im1 * u31im1) + (u41im1 * u41im1))) + (1.0 / 6.0) * tx3 * ((u21i * u21i) - (u21im1 * u21im1)) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                for (i = ist; i <= iend; i++) {
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dx1 * tx1 * (u[i - 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i + 1][j][k][0]);
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (u[i - 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i + 1][j][k][1]);
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (u[i - 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i + 1][j][k][2]);
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (u[i - 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i + 1][j][k][3]);
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (u[i - 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i + 1][j][k][4]);
                }
                for (m = 0; m < 5; m++) {
                    rsd[1][j][k][m] = rsd[1][j][k][m] - dssp * (+5.0 * u[1][j][k][m] - 4.0 * u[2][j][k][m] + u[3][j][k][m]);
                    rsd[2][j][k][m] = rsd[2][j][k][m] - dssp * (-4.0 * u[1][j][k][m] + 6.0 * u[2][j][k][m] - 4.0 * u[3][j][k][m] + u[4][j][k][m]);
                }
                ist1 = 3;
                iend1 = nx - 4;
                for (i = ist1; i <= iend1; i++) {
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                    }
                }
                for (m = 0; m < 5; m++) {
                    rsd[nx - 3][j][k][m] = rsd[nx - 3][j][k][m] - dssp * (u[nx - 5][j][k][m] - 4.0 * u[nx - 4][j][k][m] + 6.0 * u[nx - 3][j][k][m] - 4.0 * u[nx - 2][j][k][m]);
                    rsd[nx - 2][j][k][m] = rsd[nx - 2][j][k][m] - dssp * (u[nx - 4][j][k][m] - 4.0 * u[nx - 3][j][k][m] + 5.0 * u[nx - 2][j][k][m]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        L1 = 0;
        L2 = ny - 1;
#pragma omp for nowait
        for (i = ist; i <= iend; i++) {
            for (j = L1; j <= L2; j++) {
                for (k = 1; k <= nz - 2; k++) {
                    flux[i][j][k][0] = u[i][j][k][2];
                    u31 = u[i][j][k][2] / u[i][j][k][0];
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    flux[i][j][k][1] = u[i][j][k][1] * u31;
                    flux[i][j][k][2] = u[i][j][k][2] * u31 + 0.40e+00 * (u[i][j][k][4] - q);
                    flux[i][j][k][3] = u[i][j][k][3] * u31;
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = ist; i <= iend; i++) {
            for (k = 1; k <= nz - 2; k++) {
                for (j = jst; j <= jend; j++) {
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = rsd[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                L2 = ny - 1;
                for (j = jst; j <= L2; j++) {
                    tmp = 1.0 / u[i][j][k][0];
                    u21j = tmp * u[i][j][k][1];
                    u31j = tmp * u[i][j][k][2];
                    u41j = tmp * u[i][j][k][3];
                    u51j = tmp * u[i][j][k][4];
                    tmp = 1.0 / u[i][j - 1][k][0];
                    u21jm1 = tmp * u[i][j - 1][k][1];
                    u31jm1 = tmp * u[i][j - 1][k][2];
                    u41jm1 = tmp * u[i][j - 1][k][3];
                    u51jm1 = tmp * u[i][j - 1][k][4];
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * (((u21j * u21j) + (u31j * u31j) + (u41j * u41j)) - ((u21jm1 * u21jm1) + (u31jm1 * u31jm1) + (u41jm1 * u41jm1))) + (1.0 / 6.0) * ty3 * ((u31j * u31j) - (u31jm1 * u31jm1)) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                for (j = jst; j <= jend; j++) {
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dy1 * ty1 * (u[i][j - 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j + 1][k][0]);
                    rsd[i][j][k][1] = rsd[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (u[i][j - 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j + 1][k][1]);
                    rsd[i][j][k][2] = rsd[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (u[i][j - 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j + 1][k][2]);
                    rsd[i][j][k][3] = rsd[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (u[i][j - 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j + 1][k][3]);
                    rsd[i][j][k][4] = rsd[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (u[i][j - 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j + 1][k][4]);
                }
                for (m = 0; m < 5; m++) {
                    rsd[i][1][k][m] = rsd[i][1][k][m] - dssp * (+5.0 * u[i][1][k][m] - 4.0 * u[i][2][k][m] + u[i][3][k][m]);
                    rsd[i][2][k][m] = rsd[i][2][k][m] - dssp * (-4.0 * u[i][1][k][m] + 6.0 * u[i][2][k][m] - 4.0 * u[i][3][k][m] + u[i][4][k][m]);
                }
                jst1 = 3;
                jend1 = ny - 4;
                for (j = jst1; j <= jend1; j++) {
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                    }
                }
                for (m = 0; m < 5; m++) {
                    rsd[i][ny - 3][k][m] = rsd[i][ny - 3][k][m] - dssp * (u[i][ny - 5][k][m] - 4.0 * u[i][ny - 4][k][m] + 6.0 * u[i][ny - 3][k][m] - 4.0 * u[i][ny - 2][k][m]);
                    rsd[i][ny - 2][k][m] = rsd[i][ny - 2][k][m] - dssp * (u[i][ny - 4][k][m] - 4.0 * u[i][ny - 3][k][m] + 5.0 * u[i][ny - 2][k][m]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = ist; i <= iend; i++) {
            for (j = jst; j <= jend; j++) {
                for (k = 0; k <= nz - 1; k++) {
                    flux[i][j][k][0] = u[i][j][k][3];
                    u41 = u[i][j][k][3] / u[i][j][k][0];
                    q = 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) / u[i][j][k][0];
                    flux[i][j][k][1] = u[i][j][k][1] * u41;
                    flux[i][j][k][2] = u[i][j][k][2] * u41;
                    flux[i][j][k][3] = u[i][j][k][3] * u41 + 0.40e+00 * (u[i][j][k][4] - q);
                    flux[i][j][k][4] = (1.40e+00 * u[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                for (k = 1; k <= nz - 2; k++) {
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = rsd[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                for (k = 1; k <= nz - 1; k++) {
                    tmp = 1.0 / u[i][j][k][0];
                    u21k = tmp * u[i][j][k][1];
                    u31k = tmp * u[i][j][k][2];
                    u41k = tmp * u[i][j][k][3];
                    u51k = tmp * u[i][j][k][4];
                    tmp = 1.0 / u[i][j][k - 1][0];
                    u21km1 = tmp * u[i][j][k - 1][1];
                    u31km1 = tmp * u[i][j][k - 1][2];
                    u41km1 = tmp * u[i][j][k - 1][3];
                    u51km1 = tmp * u[i][j][k - 1][4];
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * (((u21k * u21k) + (u31k * u31k) + (u41k * u41k)) - ((u21km1 * u21km1) + (u31km1 * u31km1) + (u41km1 * u41km1))) + (1.0 / 6.0) * tz3 * ((u41k * u41k) - (u41km1 * u41km1)) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                for (k = 1; k <= nz - 2; k++) {
                    rsd[i][j][k][0] = rsd[i][j][k][0] + dz1 * tz1 * (u[i][j][k - 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k + 1][0]);
                    rsd[i][j][k][1] = rsd[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (u[i][j][k - 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k + 1][1]);
                    rsd[i][j][k][2] = rsd[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (u[i][j][k - 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k + 1][2]);
                    rsd[i][j][k][3] = rsd[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (u[i][j][k - 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k + 1][3]);
                    rsd[i][j][k][4] = rsd[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (u[i][j][k - 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k + 1][4]);
                }
                for (m = 0; m < 5; m++) {
                    rsd[i][j][1][m] = rsd[i][j][1][m] - dssp * (+5.0 * u[i][j][1][m] - 4.0 * u[i][j][2][m] + u[i][j][3][m]);
                    rsd[i][j][2][m] = rsd[i][j][2][m] - dssp * (-4.0 * u[i][j][1][m] + 6.0 * u[i][j][2][m] - 4.0 * u[i][j][3][m] + u[i][j][4][m]);
                }
                for (k = 3; k <= nz - 4; k++) {
                    for (m = 0; m < 5; m++) {
                        rsd[i][j][k][m] = rsd[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                    }
                }
                for (m = 0; m < 5; m++) {
                    rsd[i][j][nz - 3][m] = rsd[i][j][nz - 3][m] - dssp * (u[i][j][nz - 5][m] - 4.0 * u[i][j][nz - 4][m] + 6.0 * u[i][j][nz - 3][m] - 4.0 * u[i][j][nz - 2][m]);
                    rsd[i][j][nz - 2][m] = rsd[i][j][nz - 2][m] - dssp * (u[i][j][nz - 4][m] - 4.0 * u[i][j][nz - 3][m] + 5.0 * u[i][j][nz - 2][m]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
}
static void setbv() {
#pragma omp parallel
    {
        int i;
        int j;
        int k;
        int iglob;
        int jglob;
#pragma omp for nowait
        for (i = 0; i < nx; i++) {
            iglob = i;
            for (j = 0; j < ny; j++) {
                jglob = j;
                double *_imopVarPre239;
                _imopVarPre239 = &u[i][j][0][0];
                exact(iglob, jglob, 0, _imopVarPre239);
                double *_imopVarPre242;
                int _imopVarPre243;
                _imopVarPre242 = &u[i][j][nz - 1][0];
                _imopVarPre243 = nz - 1;
                exact(iglob, jglob, _imopVarPre243, _imopVarPre242);
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = 0; i < nx; i++) {
            iglob = i;
            for (k = 0; k < nz; k++) {
                double *_imopVarPre245;
                _imopVarPre245 = &u[i][0][k][0];
                exact(iglob, 0, k, _imopVarPre245);
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = 0; i < nx; i++) {
            iglob = i;
            for (k = 0; k < nz; k++) {
                double *_imopVarPre248;
                int _imopVarPre249;
                _imopVarPre248 = &u[i][ny - 1][k][0];
                _imopVarPre249 = ny0 - 1;
                exact(iglob, _imopVarPre249, k, _imopVarPre248);
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (j = 0; j < ny; j++) {
            jglob = j;
            for (k = 0; k < nz; k++) {
                double *_imopVarPre251;
                _imopVarPre251 = &u[0][j][k][0];
                exact(0, jglob, k, _imopVarPre251);
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (j = 0; j < ny; j++) {
            jglob = j;
            for (k = 0; k < nz; k++) {
                double *_imopVarPre254;
                int _imopVarPre255;
                _imopVarPre254 = &u[nx - 1][j][k][0];
                _imopVarPre255 = nx0 - 1;
                exact(_imopVarPre255, jglob, k, _imopVarPre254);
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
}
static void setcoeff() {
    dxi = 1.0 / (nx0 - 1);
    deta = 1.0 / (ny0 - 1);
    dzeta = 1.0 / (nz0 - 1);
    tx1 = 1.0 / (dxi * dxi);
    tx2 = 1.0 / (2.0 * dxi);
    tx3 = 1.0 / dxi;
    ty1 = 1.0 / (deta * deta);
    ty2 = 1.0 / (2.0 * deta);
    ty3 = 1.0 / deta;
    tz1 = 1.0 / (dzeta * dzeta);
    tz2 = 1.0 / (2.0 * dzeta);
    tz3 = 1.0 / dzeta;
    ii1 = 1;
    ii2 = nx0 - 2;
    ji1 = 1;
    ji2 = ny0 - 3;
    ki1 = 2;
    ki2 = nz0 - 2;
    dx1 = 0.75;
    dx2 = dx1;
    dx3 = dx1;
    dx4 = dx1;
    dx5 = dx1;
    dy1 = 0.75;
    dy2 = dy1;
    dy3 = dy1;
    dy4 = dy1;
    dy5 = dy1;
    dz1 = 1.00;
    dz2 = dz1;
    dz3 = dz1;
    dz4 = dz1;
    dz5 = dz1;
    int _imopVarPre348;
    double _imopVarPre349;
    int _imopVarPre350;
    double _imopVarPre351;
    int _imopVarPre358;
    double _imopVarPre359;
    _imopVarPre348 = (dy1 > dz1);
    if (_imopVarPre348) {
        _imopVarPre349 = dy1;
    } else {
        _imopVarPre349 = dz1;
    }
    _imopVarPre350 = (dx1 > _imopVarPre349);
    if (_imopVarPre350) {
        _imopVarPre351 = dx1;
    } else {
        _imopVarPre358 = (dy1 > dz1);
        if (_imopVarPre358) {
            _imopVarPre359 = dy1;
        } else {
            _imopVarPre359 = dz1;
        }
        _imopVarPre351 = _imopVarPre359;
    }
    dssp = _imopVarPre351 / 4.0;
    ce[0][0] = 2.0;
    ce[0][1] = 0.0;
    ce[0][2] = 0.0;
    ce[0][3] = 4.0;
    ce[0][4] = 5.0;
    ce[0][5] = 3.0;
    ce[0][6] = 5.0e-01;
    ce[0][7] = 2.0e-02;
    ce[0][8] = 1.0e-02;
    ce[0][9] = 3.0e-02;
    ce[0][10] = 5.0e-01;
    ce[0][11] = 4.0e-01;
    ce[0][12] = 3.0e-01;
    ce[1][0] = 1.0;
    ce[1][1] = 0.0;
    ce[1][2] = 0.0;
    ce[1][3] = 0.0;
    ce[1][4] = 1.0;
    ce[1][5] = 2.0;
    ce[1][6] = 3.0;
    ce[1][7] = 1.0e-02;
    ce[1][8] = 3.0e-02;
    ce[1][9] = 2.0e-02;
    ce[1][10] = 4.0e-01;
    ce[1][11] = 3.0e-01;
    ce[1][12] = 5.0e-01;
    ce[2][0] = 2.0;
    ce[2][1] = 2.0;
    ce[2][2] = 0.0;
    ce[2][3] = 0.0;
    ce[2][4] = 0.0;
    ce[2][5] = 2.0;
    ce[2][6] = 3.0;
    ce[2][7] = 4.0e-02;
    ce[2][8] = 3.0e-02;
    ce[2][9] = 5.0e-02;
    ce[2][10] = 3.0e-01;
    ce[2][11] = 5.0e-01;
    ce[2][12] = 4.0e-01;
    ce[3][0] = 2.0;
    ce[3][1] = 2.0;
    ce[3][2] = 0.0;
    ce[3][3] = 0.0;
    ce[3][4] = 0.0;
    ce[3][5] = 2.0;
    ce[3][6] = 3.0;
    ce[3][7] = 3.0e-02;
    ce[3][8] = 5.0e-02;
    ce[3][9] = 4.0e-02;
    ce[3][10] = 2.0e-01;
    ce[3][11] = 1.0e-01;
    ce[3][12] = 3.0e-01;
    ce[4][0] = 5.0;
    ce[4][1] = 4.0;
    ce[4][2] = 3.0;
    ce[4][3] = 2.0;
    ce[4][4] = 1.0e-01;
    ce[4][5] = 4.0e-01;
    ce[4][6] = 3.0e-01;
    ce[4][7] = 5.0e-02;
    ce[4][8] = 4.0e-02;
    ce[4][9] = 3.0e-02;
    ce[4][10] = 1.0e-01;
    ce[4][11] = 3.0e-01;
    ce[4][12] = 2.0e-01;
}
static void setiv() {
#pragma omp parallel
    {
        int i;
        int j;
        int k;
        int m;
        int iglob;
        int jglob;
        double xi;
        double eta;
        double zeta;
        double pxi;
        double peta;
        double pzeta;
        double ue_1jk[5];
        double ue_nx0jk[5];
        double ue_i1k[5];
        double ue_iny0k[5];
        double ue_ij1[5];
        double ue_ijnz[5];
#pragma omp for nowait
        for (j = 0; j < ny; j++) {
            jglob = j;
            for (k = 1; k < nz - 1; k++) {
                zeta = ((double) k) / (nz - 1);
                int _imopVarPre361;
                _imopVarPre361 = jglob != 0;
                if (_imopVarPre361) {
                    _imopVarPre361 = jglob != ny0 - 1;
                }
                if (_imopVarPre361) {
                    eta = ((double) jglob) / (ny0 - 1);
                    for (i = 0; i < nx; i++) {
                        iglob = i;
                        int _imopVarPre363;
                        _imopVarPre363 = iglob != 0;
                        if (_imopVarPre363) {
                            _imopVarPre363 = iglob != nx0 - 1;
                        }
                        if (_imopVarPre363) {
                            xi = ((double) iglob) / (nx0 - 1);
                            exact(0, jglob, k, ue_1jk);
                            int _imopVarPre365;
                            _imopVarPre365 = nx0 - 1;
                            exact(_imopVarPre365, jglob, k, ue_nx0jk);
                            exact(iglob, 0, k, ue_i1k);
                            int _imopVarPre367;
                            _imopVarPre367 = ny0 - 1;
                            exact(iglob, _imopVarPre367, k, ue_iny0k);
                            exact(iglob, jglob, 0, ue_ij1);
                            int _imopVarPre369;
                            _imopVarPre369 = nz - 1;
                            exact(iglob, jglob, _imopVarPre369, ue_ijnz);
                            for (m = 0; m < 5; m++) {
                                pxi = (1.0 - xi) * ue_1jk[m] + xi * ue_nx0jk[m];
                                peta = (1.0 - eta) * ue_i1k[m] + eta * ue_iny0k[m];
                                pzeta = (1.0 - zeta) * ue_ij1[m] + zeta * ue_ijnz[m];
                                u[i][j][k][m] = pxi + peta + pzeta - pxi * peta - peta * pzeta - pzeta * pxi + pxi * peta * pzeta;
                            }
                        }
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
}
static void ssor() {
    int i;
    int j;
    int k;
    int m;
    int istep;
    double tmp;
    double delunm[5];
    double tv[12][12][5];
    tmp = 1.0 / (omega * (2.0 - omega));
#pragma omp parallel private(i, j, k, m)
    {
#pragma omp for nowait
        for (i = 0; i < 12; i++) {
            for (j = 0; j < 12; j++) {
                for (k = 0; k < 5; k++) {
                    for (m = 0; m < 5; m++) {
                        a[i][j][k][m] = 0.0;
                        b[i][j][k][m] = 0.0;
                        c[i][j][k][m] = 0.0;
                        d[i][j][k][m] = 0.0;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    rhs();
    l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
    timer_clear(1);
    timer_start(1);
    for (istep = 1; istep <= itmax; istep++) {
        int _imopVarPre370;
        int _imopVarPre371;
        _imopVarPre370 = istep % 20 == 0;
        if (!_imopVarPre370) {
            _imopVarPre371 = istep == itmax;
            if (!_imopVarPre371) {
                _imopVarPre371 = istep == 1;
            }
            _imopVarPre370 = _imopVarPre371;
        }
        if (_imopVarPre370) {
#pragma omp master
            {
                printf(" Time step %4d\n", istep);
            }
        }
#pragma omp parallel private(istep, i, j, k, m)
        {
#pragma omp for nowait
            for (i = ist; i <= iend; i++) {
                for (j = jst; j <= jend; j++) {
                    for (k = 1; k <= nz - 2; k++) {
                        for (m = 0; m < 5; m++) {
                            rsd[i][j][k][m] = dt * rsd[i][j][k][m];
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            for (k = 1; k <= nz - 2; k++) {
                jacld(k);
                blts(nx, ny, nz, k, omega, rsd, a, b, c, d, ist, iend, jst, jend, nx0, ny0);
            }
#pragma omp barrier
            for (k = nz - 2; k >= 1; k--) {
                jacu(k);
                buts(nx, ny, nz, k, omega, rsd, tv, d, a, b, c, ist, iend, jst, jend, nx0, ny0);
            }
#pragma omp barrier
#pragma omp for nowait
            for (i = ist; i <= iend; i++) {
                for (j = jst; j <= jend; j++) {
                    for (k = 1; k <= nz - 2; k++) {
                        for (m = 0; m < 5; m++) {
                            u[i][j][k][m] = u[i][j][k][m] + tmp * rsd[i][j][k][m];
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        }
        if (istep % inorm == 0) {
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, delunm);
        }
        rhs();
        int _imopVarPre372;
        _imopVarPre372 = (istep % inorm == 0);
        if (!_imopVarPre372) {
            _imopVarPre372 = (istep == itmax);
        }
        if (_imopVarPre372) {
            l2norm(nx0, ny0, nz0, ist, iend, jst, jend, rsd, rsdnm);
        }
        int _imopVarPre377;
        int _imopVarPre378;
        int _imopVarPre379;
        int _imopVarPre380;
        _imopVarPre377 = (rsdnm[0] < tolrsd[0]);
        if (_imopVarPre377) {
            _imopVarPre378 = (rsdnm[1] < tolrsd[1]);
            if (_imopVarPre378) {
                _imopVarPre379 = (rsdnm[2] < tolrsd[2]);
                if (_imopVarPre379) {
                    _imopVarPre380 = (rsdnm[3] < tolrsd[3]);
                    if (_imopVarPre380) {
                        _imopVarPre380 = (rsdnm[4] < tolrsd[4]);
                    }
                    _imopVarPre379 = _imopVarPre380;
                }
                _imopVarPre378 = _imopVarPre379;
            }
            _imopVarPre377 = _imopVarPre378;
        }
        if (_imopVarPre377) {
            exit(1);
        }
    }
    timer_stop(1);
    maxtime = timer_read(1);
}
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified) {
    double xcrref[5];
    double xceref[5];
    double xciref;
    double xcrdif[5];
    double xcedif[5];
    double xcidif;
    double epsilon;
    double dtref;
    int m;
    epsilon = 1.0e-08;
    *class = 'U';
    *verified = 1;
    for (m = 0; m < 5; m++) {
        xcrref[m] = 1.0;
        xceref[m] = 1.0;
    }
    xciref = 1.0;
    int _imopVarPre384;
    int _imopVarPre385;
    int _imopVarPre386;
    _imopVarPre384 = nx0 == 12;
    if (_imopVarPre384) {
        _imopVarPre385 = ny0 == 12;
        if (_imopVarPre385) {
            _imopVarPre386 = nz0 == 12;
            if (_imopVarPre386) {
                _imopVarPre386 = itmax == 50;
            }
            _imopVarPre385 = _imopVarPre386;
        }
        _imopVarPre384 = _imopVarPre385;
    }
    if (_imopVarPre384) {
        *class = 'S';
        dtref = 5.0e-1;
        xcrref[0] = 1.6196343210976702e-02;
        xcrref[1] = 2.1976745164821318e-03;
        xcrref[2] = 1.5179927653399185e-03;
        xcrref[3] = 1.5029584435994323e-03;
        xcrref[4] = 3.4264073155896461e-02;
        xceref[0] = 6.4223319957960924e-04;
        xceref[1] = 8.4144342047347926e-05;
        xceref[2] = 5.8588269616485186e-05;
        xceref[3] = 5.8474222595157350e-05;
        xceref[4] = 1.3103347914111294e-03;
        xciref = 7.8418928865937083;
    } else {
        int _imopVarPre390;
        int _imopVarPre391;
        int _imopVarPre392;
        _imopVarPre390 = nx0 == 33;
        if (_imopVarPre390) {
            _imopVarPre391 = ny0 == 33;
            if (_imopVarPre391) {
                _imopVarPre392 = nz0 == 33;
                if (_imopVarPre392) {
                    _imopVarPre392 = itmax == 300;
                }
                _imopVarPre391 = _imopVarPre392;
            }
            _imopVarPre390 = _imopVarPre391;
        }
        if (_imopVarPre390) {
            *class = 'W';
            dtref = 1.5e-3;
            xcrref[0] = 0.1236511638192e+02;
            xcrref[1] = 0.1317228477799e+01;
            xcrref[2] = 0.2550120713095e+01;
            xcrref[3] = 0.2326187750252e+01;
            xcrref[4] = 0.2826799444189e+02;
            xceref[0] = 0.4867877144216;
            xceref[1] = 0.5064652880982e-01;
            xceref[2] = 0.9281818101960e-01;
            xceref[3] = 0.8570126542733e-01;
            xceref[4] = 0.1084277417792e+01;
            xciref = 0.1161399311023e+02;
        } else {
            int _imopVarPre396;
            int _imopVarPre397;
            int _imopVarPre398;
            _imopVarPre396 = nx0 == 64;
            if (_imopVarPre396) {
                _imopVarPre397 = ny0 == 64;
                if (_imopVarPre397) {
                    _imopVarPre398 = nz0 == 64;
                    if (_imopVarPre398) {
                        _imopVarPre398 = itmax == 250;
                    }
                    _imopVarPre397 = _imopVarPre398;
                }
                _imopVarPre396 = _imopVarPre397;
            }
            if (_imopVarPre396) {
                *class = 'A';
                dtref = 2.0e+0;
                xcrref[0] = 7.7902107606689367e+02;
                xcrref[1] = 6.3402765259692870e+01;
                xcrref[2] = 1.9499249727292479e+02;
                xcrref[3] = 1.7845301160418537e+02;
                xcrref[4] = 1.8384760349464247e+03;
                xceref[0] = 2.9964085685471943e+01;
                xceref[1] = 2.8194576365003349;
                xceref[2] = 7.3473412698774742;
                xceref[3] = 6.7139225687777051;
                xceref[4] = 7.0715315688392578e+01;
                xciref = 2.6030925604886277e+01;
            } else {
                int _imopVarPre402;
                int _imopVarPre403;
                int _imopVarPre404;
                _imopVarPre402 = nx0 == 102;
                if (_imopVarPre402) {
                    _imopVarPre403 = ny0 == 102;
                    if (_imopVarPre403) {
                        _imopVarPre404 = nz0 == 102;
                        if (_imopVarPre404) {
                            _imopVarPre404 = itmax == 250;
                        }
                        _imopVarPre403 = _imopVarPre404;
                    }
                    _imopVarPre402 = _imopVarPre403;
                }
                if (_imopVarPre402) {
                    *class = 'B';
                    dtref = 2.0e+0;
                    xcrref[0] = 3.5532672969982736e+03;
                    xcrref[1] = 2.6214750795310692e+02;
                    xcrref[2] = 8.8333721850952190e+02;
                    xcrref[3] = 7.7812774739425265e+02;
                    xcrref[4] = 7.3087969592545314e+03;
                    xceref[0] = 1.1401176380212709e+02;
                    xceref[1] = 8.1098963655421574;
                    xceref[2] = 2.8480597317698308e+01;
                    xceref[3] = 2.5905394567832939e+01;
                    xceref[4] = 2.6054907504857413e+02;
                    xciref = 4.7887162703308227e+01;
                } else {
                    int _imopVarPre408;
                    int _imopVarPre409;
                    int _imopVarPre410;
                    _imopVarPre408 = nx0 == 162;
                    if (_imopVarPre408) {
                        _imopVarPre409 = ny0 == 162;
                        if (_imopVarPre409) {
                            _imopVarPre410 = nz0 == 162;
                            if (_imopVarPre410) {
                                _imopVarPre410 = itmax == 250;
                            }
                            _imopVarPre409 = _imopVarPre410;
                        }
                        _imopVarPre408 = _imopVarPre409;
                    }
                    if (_imopVarPre408) {
                        *class = 'C';
                        dtref = 2.0e+0;
                        xcrref[0] = 1.03766980323537846e+04;
                        xcrref[1] = 8.92212458801008552e+02;
                        xcrref[2] = 2.56238814582660871e+03;
                        xcrref[3] = 2.19194343857831427e+03;
                        xcrref[4] = 1.78078057261061185e+04;
                        xceref[0] = 2.15986399716949279e+02;
                        xceref[1] = 1.55789559239863600e+01;
                        xceref[2] = 5.41318863077207766e+01;
                        xceref[3] = 4.82262643154045421e+01;
                        xceref[4] = 4.55902910043250358e+02;
                        xciref = 6.66404553572181300e+01;
                    } else {
                        *verified = 0;
                    }
                }
            }
        }
    }
    for (m = 0; m < 5; m++) {
        double _imopVarPre412;
        double _imopVarPre413;
        _imopVarPre412 = (xcr[m] - xcrref[m]) / xcrref[m];
        _imopVarPre413 = fabs(_imopVarPre412);
        xcrdif[m] = _imopVarPre413;
        double _imopVarPre415;
        double _imopVarPre416;
        _imopVarPre415 = (xce[m] - xceref[m]) / xceref[m];
        _imopVarPre416 = fabs(_imopVarPre415);
        xcedif[m] = _imopVarPre416;
    }
    double _imopVarPre418;
    double _imopVarPre419;
    _imopVarPre418 = (xci - xciref) / xciref;
    _imopVarPre419 = fabs(_imopVarPre418);
    xcidif = _imopVarPre419;
    if (*class != 'U') {
        char _imopVarPre421;
        _imopVarPre421 = *class;
        printf("\n Verification being performed for class %1c\n", _imopVarPre421);
        printf(" Accuracy setting for epsilon = %20.13e\n", epsilon);
        double _imopVarPre424;
        double _imopVarPre425;
        _imopVarPre424 = dt - dtref;
        _imopVarPre425 = fabs(_imopVarPre424);
        if (_imopVarPre425 > epsilon) {
            *verified = 0;
            *class = 'U';
            printf(" DT does not match the reference value of %15.8e\n", dtref);
        }
    } else {
        printf(" Unknown class\n");
    }
    if (*class != 'U') {
        printf(" Comparison of RMS-norms of residual\n");
    } else {
        printf(" RMS-norms of residual\n");
    }
    for (m = 0; m < 5; m++) {
        if (*class == 'U') {
            double _imopVarPre427;
            _imopVarPre427 = xcr[m];
            printf("          %2d  %20.13e\n", m, _imopVarPre427);
        } else {
            if (xcrdif[m] > epsilon) {
                *verified = 0;
                double _imopVarPre431;
                double _imopVarPre432;
                double _imopVarPre433;
                _imopVarPre431 = xcrdif[m];
                _imopVarPre432 = xcrref[m];
                _imopVarPre433 = xcr[m];
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre433, _imopVarPre432, _imopVarPre431);
            } else {
                double _imopVarPre437;
                double _imopVarPre438;
                double _imopVarPre439;
                _imopVarPre437 = xcrdif[m];
                _imopVarPre438 = xcrref[m];
                _imopVarPre439 = xcr[m];
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre439, _imopVarPre438, _imopVarPre437);
            }
        }
    }
    if (*class != 'U') {
        printf(" Comparison of RMS-norms of solution error\n");
    } else {
        printf(" RMS-norms of solution error\n");
    }
    for (m = 0; m < 5; m++) {
        if (*class == 'U') {
            double _imopVarPre441;
            _imopVarPre441 = xce[m];
            printf("          %2d  %20.13e\n", m, _imopVarPre441);
        } else {
            if (xcedif[m] > epsilon) {
                *verified = 0;
                double _imopVarPre445;
                double _imopVarPre446;
                double _imopVarPre447;
                _imopVarPre445 = xcedif[m];
                _imopVarPre446 = xceref[m];
                _imopVarPre447 = xce[m];
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre447, _imopVarPre446, _imopVarPre445);
            } else {
                double _imopVarPre451;
                double _imopVarPre452;
                double _imopVarPre453;
                _imopVarPre451 = xcedif[m];
                _imopVarPre452 = xceref[m];
                _imopVarPre453 = xce[m];
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre453, _imopVarPre452, _imopVarPre451);
            }
        }
    }
    if (*class != 'U') {
        printf(" Comparison of surface integral\n");
    } else {
        printf(" Surface integral\n");
    }
    if (*class == 'U') {
        printf("              %20.13e\n", xci);
    } else {
        if (xcidif > epsilon) {
            *verified = 0;
            printf(" FAILURE:     %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
        } else {
            printf("              %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
        }
    }
    if (*class == 'U') {
        printf(" No reference values provided\n");
        printf(" No verification performed\n");
    } else {
        if (*verified) {
            printf(" Verification Successful\n");
        } else {
            printf(" Verification failed\n");
        }
    }
}
