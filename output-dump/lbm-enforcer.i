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
    int _imopVarPre20;
    int _imopVarPre24;
    _imopVarPre20 = --_p->_w >= 0;
    if (!_imopVarPre20) {
        _imopVarPre24 = _p->_w >= _p->_lbfsize;
        if (_imopVarPre24) {
            _imopVarPre24 = (char) _c != '\n';
        }
        _imopVarPre20 = _imopVarPre24;
    }
    if (_imopVarPre20) {
        return (*_p->_p++ = _c);
    } else {
        int _imopVarPre26;
        _imopVarPre26 = __swbuf(_c, _p);
        return _imopVarPre26;
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
struct tms {
    clock_t tms_utime;
    clock_t tms_stime;
    clock_t tms_cutime;
    clock_t tms_cstime;
} ;
clock_t times(struct tms *);
struct accessx_descriptor {
    unsigned int ad_name_offset;
    int ad_flags;
    int ad_pad[2];
} ;
int getattrlistbulk(int , void * , void * , size_t  , uint64_t );
int getattrlistat(int , const char * , void * , void * , size_t  , unsigned long );
int setattrlistat(int , const char * , void * , void * , size_t  , uint32_t );
typedef __darwin_gid_t gid_t;
int faccessat(int , const char * , int  , int );
int fchownat(int , const char * , uid_t  , gid_t  , int );
int linkat(int , const char * , int  , const char * , int );
ssize_t readlinkat(int , const char * , char * , size_t );
int symlinkat(const char *, int  , const char *);
int unlinkat(int , const char * , int );
typedef __darwin_useconds_t useconds_t;
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
int pselect(int , fd_set *restrict  , fd_set *restrict  , fd_set *restrict  , const struct timespec *restrict  , const sigset_t *restrict );
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
    int _imopVarPre105;
    float _imopVarPre106;
    float _imopVarPre107;
    _imopVarPre105 = __x == __x;
    if (_imopVarPre105) {
        _imopVarPre106 = __builtin_fabsf(__x);
        _imopVarPre107 = __builtin_inff();
        _imopVarPre105 = _imopVarPre106 != _imopVarPre107;
    }
    return _imopVarPre105;
}
extern __inline int __inline_isfinited(double __x) {
    int _imopVarPre111;
    double _imopVarPre112;
    double _imopVarPre113;
    _imopVarPre111 = __x == __x;
    if (_imopVarPre111) {
        _imopVarPre112 = __builtin_fabs(__x);
        _imopVarPre113 = __builtin_inf();
        _imopVarPre111 = _imopVarPre112 != _imopVarPre113;
    }
    return _imopVarPre111;
}
extern __inline int __inline_isfinitel(long double __x) {
    int _imopVarPre117;
    long double _imopVarPre118;
    long double _imopVarPre119;
    _imopVarPre117 = __x == __x;
    if (_imopVarPre117) {
        _imopVarPre118 = __builtin_fabsl(__x);
        _imopVarPre119 = __builtin_infl();
        _imopVarPre117 = _imopVarPre118 != _imopVarPre119;
    }
    return _imopVarPre117;
}
extern __inline int __inline_isinff(float __x) {
    float _imopVarPre122;
    float _imopVarPre123;
    _imopVarPre122 = __builtin_fabsf(__x);
    _imopVarPre123 = __builtin_inff();
    return _imopVarPre122 == _imopVarPre123;
}
extern __inline int __inline_isinfd(double __x) {
    double _imopVarPre126;
    double _imopVarPre127;
    _imopVarPre126 = __builtin_fabs(__x);
    _imopVarPre127 = __builtin_inf();
    return _imopVarPre126 == _imopVarPre127;
}
extern __inline int __inline_isinfl(long double __x) {
    long double _imopVarPre130;
    long double _imopVarPre131;
    _imopVarPre130 = __builtin_fabsl(__x);
    _imopVarPre131 = __builtin_infl();
    return _imopVarPre130 == _imopVarPre131;
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
    int _imopVarPre134;
    float _imopVarPre135;
    _imopVarPre134 = __inline_isfinitef(__x);
    if (_imopVarPre134) {
        _imopVarPre135 = __builtin_fabsf(__x);
        _imopVarPre134 = _imopVarPre135 >= 1.17549435082228750797e-38F;
    }
    return _imopVarPre134;
}
extern __inline int __inline_isnormald(double __x) {
    int _imopVarPre138;
    double _imopVarPre139;
    _imopVarPre138 = __inline_isfinited(__x);
    if (_imopVarPre138) {
        _imopVarPre139 = __builtin_fabs(__x);
        _imopVarPre138 = _imopVarPre139 >= ((double) 2.22507385850720138309e-308L);
    }
    return _imopVarPre138;
}
extern __inline int __inline_isnormall(long double __x) {
    int _imopVarPre142;
    long double _imopVarPre143;
    _imopVarPre142 = __inline_isfinitel(__x);
    if (_imopVarPre142) {
        _imopVarPre143 = __builtin_fabsl(__x);
        _imopVarPre142 = _imopVarPre143 >= 3.36210314311209350626e-4932L;
    }
    return _imopVarPre142;
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
    struct __float2 _imopVarPre144;
    _imopVarPre144 = __sincosf_stret(__x);
    const struct __float2 __stret = _imopVarPre144;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincos(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre145;
    _imopVarPre145 = __sincos_stret(__x);
    const struct __double2 __stret = _imopVarPre145;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre146;
    _imopVarPre146 = __sincospif_stret(__x);
    const struct __float2 __stret = _imopVarPre146;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre147;
    _imopVarPre147 = __sincospi_stret(__x);
    const struct __double2 __stret = _imopVarPre147;
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
typedef __darwin_blkcnt_t blkcnt_t;
typedef __darwin_blksize_t blksize_t;
typedef __darwin_ino_t ino_t;
typedef __darwin_ino64_t ino64_t;
typedef __uint16_t nlink_t;
struct ostat {
    __uint16_t st_dev;
    ino_t st_ino;
    mode_t st_mode;
    nlink_t st_nlink;
    __uint16_t st_uid;
    __uint16_t st_gid;
    __uint16_t st_rdev;
    __int32_t st_size;
    struct timespec st_atimespec;
    struct timespec st_mtimespec;
    struct timespec st_ctimespec;
    __int32_t st_blksize;
    __int32_t st_blocks;
    __uint32_t st_flags;
    __uint32_t st_gen;
} ;
struct stat {
    dev_t st_dev;
    mode_t st_mode;
    nlink_t st_nlink;
    __darwin_ino64_t st_ino;
    uid_t st_uid;
    gid_t st_gid;
    dev_t st_rdev;
    struct timespec st_atimespec;
    struct timespec st_mtimespec;
    struct timespec st_ctimespec;
    struct timespec st_birthtimespec;
    off_t st_size;
    blkcnt_t st_blocks;
    blksize_t st_blksize;
    __uint32_t st_flags;
    __uint32_t st_gen;
    __int32_t st_lspare;
    __int64_t st_qspare[2];
} ;
struct stat64 {
    dev_t st_dev;
    mode_t st_mode;
    nlink_t st_nlink;
    __darwin_ino64_t st_ino;
    uid_t st_uid;
    gid_t st_gid;
    dev_t st_rdev;
    struct timespec st_atimespec;
    struct timespec st_mtimespec;
    struct timespec st_ctimespec;
    struct timespec st_birthtimespec;
    off_t st_size;
    blkcnt_t st_blocks;
    blksize_t st_blksize;
    __uint32_t st_flags;
    __uint32_t st_gen;
    __int32_t st_lspare;
    __int64_t st_qspare[2];
} ;
int chmod(const char *, mode_t );
int fchmod(int , mode_t );
int fstat(int , struct stat *);
int lstat(const char *, struct stat *);
int mkdir(const char *, mode_t );
int mkfifo(const char *, mode_t );
int stat(const char *, struct stat *);
int mknod(const char *, mode_t  , dev_t );
mode_t umask(mode_t );
int fchmodat(int , const char * , mode_t  , int );
int fstatat(int , const char * , struct stat * , int );
int mkdirat(int , const char * , mode_t );
int futimens(int __fd, const struct timespec __times[2]);
int utimensat(int __fd, const char *__path , const struct timespec __times[2] , int __flag);
struct _filesec ;
typedef struct _filesec *filesec_t;
int chflags(const char *, __uint32_t );
int chmodx_np(const char *, filesec_t );
int fchflags(int , __uint32_t );
int fchmodx_np(int , filesec_t );
int fstatx_np(int , struct stat * , filesec_t );
int lchflags(const char *, __uint32_t );
int lchmod(const char *, mode_t );
int lstatx_np(const char *, struct stat * , filesec_t );
int mkdirx_np(const char *, filesec_t );
int mkfifox_np(const char *, filesec_t );
int statx_np(const char *, struct stat * , filesec_t );
int umaskx_np(filesec_t );
int fstatx64_np(int , struct stat64 * , filesec_t );
int lstatx64_np(const char *, struct stat64 * , filesec_t );
int statx64_np(const char *, struct stat64 * , filesec_t );
int fstat64(int , struct stat64 *);
int lstat64(const char *, struct stat64 *);
int stat64(const char *, struct stat64 *);
struct pb_Parameters {
    char *outFile;
    char **inpFiles;
} ;
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv);
void pb_FreeParameters(struct pb_Parameters *p);
int pb_Parameters_CountInputs(struct pb_Parameters *p);
typedef unsigned long long pb_Timestamp;
enum pb_TimerState {
    pb_Timer_STOPPED, pb_Timer_RUNNING
} ;
struct pb_Timer {
    enum pb_TimerState state;
    pb_Timestamp elapsed;
    pb_Timestamp init;
} ;
void pb_ResetTimer(struct pb_Timer *timer);
void pb_StartTimer(struct pb_Timer *timer);
void pb_StopTimer(struct pb_Timer *timer);
double pb_GetElapsedTime(struct pb_Timer *timer);
enum pb_TimerID {
    pb_TimerID_NONE = 0, pb_TimerID_IO , pb_TimerID_KERNEL , pb_TimerID_COPY , pb_TimerID_DRIVER , pb_TimerID_COPY_ASYNC , pb_TimerID_COMPUTE , pb_TimerID_OVERLAP , pb_TimerID_LAST
} ;
struct pb_async_time_marker_list {
    char *label;
    enum pb_TimerID timerID;
    void *marker;
    struct pb_async_time_marker_list *next;
} ;
struct pb_SubTimer {
    char *label;
    struct pb_Timer timer;
    struct pb_SubTimer *next;
} ;
struct pb_SubTimerList {
    struct pb_SubTimer *current;
    struct pb_SubTimer *subtimer_list;
} ;
struct pb_TimerSet {
    enum pb_TimerID current;
    struct pb_async_time_marker_list *async_markers;
    pb_Timestamp async_begin;
    pb_Timestamp wall_begin;
    struct pb_Timer timers[pb_TimerID_LAST];
    struct pb_SubTimerList *sub_timer_list[pb_TimerID_LAST];
} ;
void pb_InitializeTimerSet(struct pb_TimerSet *timers);
void pb_AddSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID pb_Category);
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer);
void pb_SwitchToSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID category);
void pb_PrintTimerSet(struct pb_TimerSet *timers);
void pb_DestroyTimerSet(struct pb_TimerSet *timers);
void pb_SetOpenCL(void *clContextPtr, void *clCommandQueuePtr);
struct stUn_imopVarPre14 {
    float timeScale;
    clock_t tickStart, tickStop;
    struct tms timeStart, timeStop;
} ;
typedef struct stUn_imopVarPre14 MAIN_Time;
enum enum_imopVarPre15 {
    NOTHING = 0, COMPARE , STORE
} ;
typedef enum enum_imopVarPre15 MAIN_Action;
enum enum_imopVarPre16 {
    LDC = 0, CHANNEL
} ;
typedef enum enum_imopVarPre16 MAIN_SimType;
struct stUn_imopVarPre17 {
    int nTimeSteps;
    char *resultFilename;
    MAIN_Action action;
    MAIN_SimType simType;
    char *obstacleFilename;
} ;
typedef struct stUn_imopVarPre17 MAIN_Param;
void MAIN_parseCommandLine(int nArgs, char *arg[] , MAIN_Param *param , struct pb_Parameters *);
void MAIN_printInfo(const MAIN_Param *param);
void MAIN_initialize(const MAIN_Param *param);
void MAIN_finalize(const MAIN_Param *param);
void MAIN_startClock(MAIN_Time *time);
void MAIN_stopClock(MAIN_Time *time, const MAIN_Param *param);
enum enum_imopVarPre18 {
    C = 0, N , S , E , W , T , B , NE , NW , SE , SW , NT , NB , ST , SB , ET , EB , WT , WB , FLAGS , N_CELL_ENTRIES
} ;
typedef enum enum_imopVarPre18 CELL_ENTRIES;
typedef float LBM_Grid[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
typedef LBM_Grid *LBM_GridPtr;
enum enum_imopVarPre19 {
    OBSTACLE = 1 << 0, ACCEL = 1 << 1 , IN_OUT_FLOW = 1 << 2
} ;
typedef enum enum_imopVarPre19 CELL_FLAGS;
void LBM_allocateGrid(float **ptr);
void LBM_freeGrid(float **ptr);
void LBM_initializeGrid(LBM_Grid grid);
void LBM_initializeSpecialCellsForLDC(LBM_Grid grid);
void LBM_loadObstacleFile(LBM_Grid grid, const char *filename);
void LBM_initializeSpecialCellsForChannel(LBM_Grid grid);
void LBM_swapGrids(LBM_GridPtr *grid1, LBM_GridPtr *grid2);
void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid);
void LBM_handleInOutFlow(LBM_Grid srcGrid);
void LBM_showGridStatistics(LBM_Grid Grid);
void LBM_storeVelocityField(LBM_Grid grid, const char *filename , const int binary);
void LBM_compareVelocityField(LBM_Grid grid, const char *filename , const int binary);
void LBM_allocateGrid(float **ptr) {
    const size_t margin = 2 * (1 * 120) * (1 * 120) * N_CELL_ENTRIES;
    const size_t size = sizeof(LBM_Grid) + 2 * margin * sizeof(float);
    void *_imopVarPre148;
    _imopVarPre148 = malloc(size);
    *ptr = _imopVarPre148;
    if (!*ptr) {
        double _imopVarPre150;
        _imopVarPre150 = size / (1024.0 * 1024.0);
        printf("LBM_allocateGrid: could not allocate %.1f MByte\n", _imopVarPre150);
        exit(1);
    }
    double _imopVarPre152;
    _imopVarPre152 = size / (1024.0 * 1024.0);
    printf("LBM_allocateGrid: allocated %.1f MByte\n", _imopVarPre152);
    *ptr += margin;
}
void LBM_freeGrid(float **ptr) {
    const size_t margin = 2 * (1 * 120) * (1 * 120) * N_CELL_ENTRIES;
    float *_imopVarPre154;
    _imopVarPre154 = *ptr - margin;
    free(_imopVarPre154);
    *ptr = ((void *) 0);
}
void LBM_initializeGrid(LBM_Grid grid) {
    int i;
#pragma omp parallel
    {
#pragma omp for
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (150 + 2) * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            ((grid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0);
            ((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            ((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            ((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            {
                unsigned int *const _aux_ = ((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))));
                (*_aux_) = 0;
            }
            ;
        }
    }
}
void LBM_swapGrids(LBM_GridPtr *grid1, LBM_GridPtr *grid2) {
    LBM_GridPtr aux = *grid1;
    *grid1 = *grid2;
    *grid2 = aux;
}
void LBM_loadObstacleFile(LBM_Grid grid, const char *filename) {
    int x;
    int y;
    int z;
    struct __sFILE *_imopVarPre155;
    _imopVarPre155 = fopen(filename, "rb");
    FILE *file = _imopVarPre155;
    for (z = 0; z < 150; z++) {
        for (y = 0; y < (1 * 120); y++) {
            for (x = 0; x < (1 * 120); x++) {
                int _imopVarPre157;
                _imopVarPre157 = fgetc(file);
                if (_imopVarPre157 != '.') {
                    unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                    (*_aux_) |= OBSTACLE;
                }
                ;
            }
            fgetc(file);
        }
        fgetc(file);
    }
    fclose(file);
}
void LBM_initializeSpecialCellsForLDC(LBM_Grid grid) {
    int x;
    int y;
    int z;
#pragma omp parallel private(x, y)
    {
#pragma omp for
        for (z = -2; z < 150 + 2; z++) {
            for (y = 0; y < (1 * 120); y++) {
                for (x = 0; x < (1 * 120); x++) {
                    int _imopVarPre158;
                    int _imopVarPre159;
                    int _imopVarPre160;
                    int _imopVarPre161;
                    int _imopVarPre162;
                    _imopVarPre158 = x == 0;
                    if (!_imopVarPre158) {
                        _imopVarPre159 = x == (1 * 120) - 1;
                        if (!_imopVarPre159) {
                            _imopVarPre160 = y == 0;
                            if (!_imopVarPre160) {
                                _imopVarPre161 = y == (1 * 120) - 1;
                                if (!_imopVarPre161) {
                                    _imopVarPre162 = z == 0;
                                    if (!_imopVarPre162) {
                                        _imopVarPre162 = z == 150 - 1;
                                    }
                                    _imopVarPre161 = _imopVarPre162;
                                }
                                _imopVarPre160 = _imopVarPre161;
                            }
                            _imopVarPre159 = _imopVarPre160;
                        }
                        _imopVarPre158 = _imopVarPre159;
                    }
                    if (_imopVarPre158) {
                        {
                            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                            (*_aux_) |= OBSTACLE;
                        }
                        ;
                    } else {
                        int _imopVarPre168;
                        int _imopVarPre169;
                        int _imopVarPre170;
                        int _imopVarPre171;
                        int _imopVarPre172;
                        _imopVarPre168 = z == 1;
                        if (!_imopVarPre168) {
                            _imopVarPre168 = z == 150 - 2;
                        }
                        _imopVarPre169 = _imopVarPre168;
                        if (_imopVarPre169) {
                            _imopVarPre170 = x > 1;
                            if (_imopVarPre170) {
                                _imopVarPre171 = x < (1 * 120) - 2;
                                if (_imopVarPre171) {
                                    _imopVarPre172 = y > 1;
                                    if (_imopVarPre172) {
                                        _imopVarPre172 = y < (1 * 120) - 2;
                                    }
                                    _imopVarPre171 = _imopVarPre172;
                                }
                                _imopVarPre170 = _imopVarPre171;
                            }
                            _imopVarPre169 = _imopVarPre170;
                        }
                        if (_imopVarPre169) {
                            {
                                unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                                (*_aux_) |= ACCEL;
                            }
                            ;
                        }
                    }
                }
            }
        }
    }
}
void LBM_initializeSpecialCellsForChannel(LBM_Grid grid) {
    int x;
    int y;
    int z;
#pragma omp parallel private(x, y)
    {
#pragma omp for
        for (z = -2; z < 150 + 2; z++) {
            for (y = 0; y < (1 * 120); y++) {
                for (x = 0; x < (1 * 120); x++) {
                    int _imopVarPre173;
                    int _imopVarPre174;
                    int _imopVarPre175;
                    _imopVarPre173 = x == 0;
                    if (!_imopVarPre173) {
                        _imopVarPre174 = x == (1 * 120) - 1;
                        if (!_imopVarPre174) {
                            _imopVarPre175 = y == 0;
                            if (!_imopVarPre175) {
                                _imopVarPre175 = y == (1 * 120) - 1;
                            }
                            _imopVarPre174 = _imopVarPre175;
                        }
                        _imopVarPre173 = _imopVarPre174;
                    }
                    if (_imopVarPre173) {
                        {
                            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                            (*_aux_) |= OBSTACLE;
                        }
                        ;
                        int _imopVarPre178;
                        int _imopVarPre179;
                        _imopVarPre178 = z == 0;
                        if (!_imopVarPre178) {
                            _imopVarPre178 = z == 150 - 1;
                        }
                        _imopVarPre179 = _imopVarPre178;
                        if (_imopVarPre179) {
                            _imopVarPre179 = !((*((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))))) & OBSTACLE);
                        }
                        if (_imopVarPre179) {
                            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                            (*_aux_) |= IN_OUT_FLOW;
                        }
                        ;
                    }
                }
            }
        }
    }
}
void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid) {
    int i;
    float ux;
    float uy;
    float uz;
    float u2;
    float rho;
#pragma omp parallel private(ux, uy, uz, u2, rho)
    {
#pragma omp for
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            if (((*((unsigned int *) ((void *) (&(((srcGrid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & OBSTACLE)) {
                (((dstGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(S + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(N + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(W + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(E + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(SW + N_CELL_ENTRIES * ((-1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(SE + N_CELL_ENTRIES * ((+1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(NW + N_CELL_ENTRIES * ((-1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(NE + N_CELL_ENTRIES * ((+1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(SB + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(ST + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(NB + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(NT + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(WB + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(WT + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(EB + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                (((dstGrid[(ET + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                continue;
            }
            rho = +(((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            ux = +(((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            uy = +(((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            uz = +(((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            ux /= rho;
            uy /= rho;
            uz /= rho;
            if (((*((unsigned int *) ((void *) (&(((srcGrid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & ACCEL)) {
                ux = 0.005f;
                uy = 0.002f;
                uz = 0.000f;
            }
            u2 = 1.5f * (ux * ux + uy * uy + uz * uz);
            (((dstGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 3.0) * 1.95f * rho * (1.0f - u2);
            (((dstGrid[(N + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uy * (4.5f * uy + 3.0f) - u2);
            (((dstGrid[(S + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uy * (4.5f * uy - 3.0f) - u2);
            (((dstGrid[(E + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + ux * (4.5f * ux + 3.0f) - u2);
            (((dstGrid[(W + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + ux * (4.5f * ux - 3.0f) - u2);
            (((dstGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uz * (4.5f * uz + 3.0f) - u2);
            (((dstGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uz * (4.5f * uz - 3.0f) - u2);
            (((dstGrid[(NE + N_CELL_ENTRIES * ((+1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux + uy) * (4.5f * (+ux + uy) + 3.0f) - u2);
            (((dstGrid[(NW + N_CELL_ENTRIES * ((-1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux + uy) * (4.5f * (-ux + uy) + 3.0f) - u2);
            (((dstGrid[(SE + N_CELL_ENTRIES * ((+1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux - uy) * (4.5f * (+ux - uy) + 3.0f) - u2);
            (((dstGrid[(SW + N_CELL_ENTRIES * ((-1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux - uy) * (4.5f * (-ux - uy) + 3.0f) - u2);
            (((dstGrid[(NT + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+uy + uz) * (4.5f * (+uy + uz) + 3.0f) - u2);
            (((dstGrid[(NB + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+uy - uz) * (4.5f * (+uy - uz) + 3.0f) - u2);
            (((dstGrid[(ST + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-uy + uz) * (4.5f * (-uy + uz) + 3.0f) - u2);
            (((dstGrid[(SB + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-uy - uz) * (4.5f * (-uy - uz) + 3.0f) - u2);
            (((dstGrid[(ET + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux + uz) * (4.5f * (+ux + uz) + 3.0f) - u2);
            (((dstGrid[(EB + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux - uz) * (4.5f * (+ux - uz) + 3.0f) - u2);
            (((dstGrid[(WT + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux + uz) * (4.5f * (-ux + uz) + 3.0f) - u2);
            (((dstGrid[(WB + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux - uz) * (4.5f * (-ux - uz) + 3.0f) - u2);
        }
    }
}
void LBM_handleInOutFlow(LBM_Grid srcGrid) {
    float ux;
    float uy;
    float uz;
    float rho;
    float ux1;
    float uy1;
    float uz1;
    float rho1;
    float ux2;
    float uy2;
    float uz2;
    float rho2;
    float u2;
    float px;
    float py;
    int i;
#pragma omp parallel private(ux, uy, uz, rho, ux1, uy1, uz1, rho1, ux2, uy2, uz2, rho2, u2, px, py)
    {
#pragma omp for
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            rho1 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]);
            rho2 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]);
            rho = 2.0 * rho1 - rho2;
            px = (((i / N_CELL_ENTRIES) % (1 * 120)) / (0.5 * ((1 * 120) - 1))) - 1.0;
            py = ((((i / N_CELL_ENTRIES) / (1 * 120)) % (1 * 120)) / (0.5 * ((1 * 120) - 1))) - 1.0;
            ux = 0.00;
            uy = 0.00;
            uz = 0.01 * (1.0 - px * px) * (1.0 - py * py);
            u2 = 1.5 * (ux * ux + uy * uy + uz * uz);
            ((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0) * rho * (1.0 - u2);
            ((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy + 3.0) - u2);
            ((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy - 3.0) - u2);
            ((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux + 3.0) - u2);
            ((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux - 3.0) - u2);
            ((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz + 3.0) - u2);
            ((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz - 3.0) - u2);
            ((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uy) * (4.5 * (+ux + uy) + 3.0) - u2);
            ((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uy) * (4.5 * (-ux + uy) + 3.0) - u2);
            ((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uy) * (4.5 * (+ux - uy) + 3.0) - u2);
            ((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uy) * (4.5 * (-ux - uy) + 3.0) - u2);
            ((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy + uz) * (4.5 * (+uy + uz) + 3.0) - u2);
            ((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy - uz) * (4.5 * (+uy - uz) + 3.0) - u2);
            ((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy + uz) * (4.5 * (-uy + uz) + 3.0) - u2);
            ((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy - uz) * (4.5 * (-uy - uz) + 3.0) - u2);
            ((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uz) * (4.5 * (+ux + uz) + 3.0) - u2);
            ((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uz) * (4.5 * (+ux - uz) + 3.0) - u2);
            ((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uz) * (4.5 * (-ux + uz) + 3.0) - u2);
            ((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uz) * (4.5 * (-ux - uz) + 3.0) - u2);
        }
    }
#pragma omp parallel private(ux, uy, uz, rho, ux1, uy1, uz1, rho1, ux2, uy2, uz2, rho2, u2, px, py)
    {
#pragma omp for
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (150 - 1) * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            rho1 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            ux1 = +(srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            uy1 = +(srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            uz1 = +(srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            ux1 /= rho1;
            uy1 /= rho1;
            uz1 /= rho1;
            rho2 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            ux2 = +(srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            uy2 = +(srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            uz2 = +(srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            ux2 /= rho2;
            uy2 /= rho2;
            uz2 /= rho2;
            rho = 1.0;
            ux = 2 * ux1 - ux2;
            uy = 2 * uy1 - uy2;
            uz = 2 * uz1 - uz2;
            u2 = 1.5 * (ux * ux + uy * uy + uz * uz);
            ((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0) * rho * (1.0 - u2);
            ((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy + 3.0) - u2);
            ((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy - 3.0) - u2);
            ((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux + 3.0) - u2);
            ((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux - 3.0) - u2);
            ((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz + 3.0) - u2);
            ((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz - 3.0) - u2);
            ((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uy) * (4.5 * (+ux + uy) + 3.0) - u2);
            ((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uy) * (4.5 * (-ux + uy) + 3.0) - u2);
            ((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uy) * (4.5 * (+ux - uy) + 3.0) - u2);
            ((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uy) * (4.5 * (-ux - uy) + 3.0) - u2);
            ((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy + uz) * (4.5 * (+uy + uz) + 3.0) - u2);
            ((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy - uz) * (4.5 * (+uy - uz) + 3.0) - u2);
            ((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy + uz) * (4.5 * (-uy + uz) + 3.0) - u2);
            ((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy - uz) * (4.5 * (-uy - uz) + 3.0) - u2);
            ((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uz) * (4.5 * (+ux + uz) + 3.0) - u2);
            ((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uz) * (4.5 * (+ux - uz) + 3.0) - u2);
            ((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uz) * (4.5 * (-ux + uz) + 3.0) - u2);
            ((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uz) * (4.5 * (-ux - uz) + 3.0) - u2);
        }
    }
}
void LBM_showGridStatistics(LBM_Grid grid) {
    int nObstacleCells = 0;
    int nAccelCells = 0;
    int nFluidCells = 0;
    float ux;
    float uy;
    float uz;
    float minU2 = 1e+30;
    float maxU2 = -1e+30;
    float u2;
    float minRho = 1e+30;
    float maxRho = -1e+30;
    float rho;
    float mass = 0;
    int i;
    for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
        rho = +((grid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
        if (rho < minRho) {
            minRho = rho;
        }
        if (rho > maxRho) {
            maxRho = rho;
        }
        mass += rho;
        if (((*((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & OBSTACLE)) {
            nObstacleCells++;
        } else {
            if (((*((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & ACCEL)) {
                nAccelCells++;
            } else {
                nFluidCells++;
            }
            ux = +((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            uy = +((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            uz = +((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            u2 = (ux * ux + uy * uy + uz * uz) / (rho * rho);
            if (u2 < minU2) {
                minU2 = u2;
            }
            if (u2 > maxU2) {
                maxU2 = u2;
            }
        }
    }
    double _imopVarPre182;
    double _imopVarPre183;
    _imopVarPre182 = sqrt(maxU2);
    _imopVarPre183 = sqrt(minU2);
    printf("LBM_showGridStatistics:\n" "\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n" "\tminRho: %8.4f maxRho: %8.4f mass: %e\n" "\tminU: %e maxU: %e\n\n", nObstacleCells, nAccelCells, nFluidCells, minRho, maxRho, mass, _imopVarPre183, _imopVarPre182);
}
static void storeValue(FILE *file, float *v) {
    const int litteBigEndianTest = 1;
    if ((*((unsigned char *) &litteBigEndianTest)) == 0) {
        const char *vPtr = (char *) v;
        char buffer[sizeof(float)];
        int i;
        for (i = 0; i < sizeof(float); i++) {
            buffer[i] = vPtr[sizeof(float) - i - 1];
        }
        unsigned long int _imopVarPre185;
        _imopVarPre185 = sizeof(float);
        fwrite(buffer, _imopVarPre185, 1, file);
    } else {
        unsigned long int _imopVarPre187;
        _imopVarPre187 = sizeof(float);
        fwrite(v, _imopVarPre187, 1, file);
    }
}
static void loadValue(FILE *file, float *v) {
    const int litteBigEndianTest = 1;
    if ((*((unsigned char *) &litteBigEndianTest)) == 0) {
        char *vPtr = (char *) v;
        char buffer[sizeof(float)];
        int i;
        unsigned long int _imopVarPre189;
        _imopVarPre189 = sizeof(float);
        fread(buffer, _imopVarPre189, 1, file);
        for (i = 0; i < sizeof(float); i++) {
            vPtr[i] = buffer[sizeof(float) - i - 1];
        }
    } else {
        unsigned long int _imopVarPre191;
        _imopVarPre191 = sizeof(float);
        fread(v, _imopVarPre191, 1, file);
    }
}
void LBM_storeVelocityField(LBM_Grid grid, const char *filename , const int binary) {
    int x;
    int y;
    int z;
    float rho;
    float ux;
    float uy;
    float uz;
    int _imopVarPre198;
    char *_imopVarPre199;
    struct __sFILE *_imopVarPre200;
    _imopVarPre198 = binary;
    if (_imopVarPre198) {
        _imopVarPre199 = "wb";
    } else {
        _imopVarPre199 = "w";
    }
    _imopVarPre200 = fopen(filename, _imopVarPre199);
    FILE *file = _imopVarPre200;
    for (z = 0; z < 150; z++) {
        for (y = 0; y < (1 * 120); y++) {
            for (x = 0; x < (1 * 120); x++) {
                rho = +(grid[(C + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                ux = +(grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                uy = +(grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                uz = +(grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                ux /= rho;
                uy /= rho;
                uz /= rho;
                if (binary) {
                    float *_imopVarPre202;
                    _imopVarPre202 = &ux;
                    storeValue(file, _imopVarPre202);
                    float *_imopVarPre204;
                    _imopVarPre204 = &uy;
                    storeValue(file, _imopVarPre204);
                    float *_imopVarPre206;
                    _imopVarPre206 = &uz;
                    storeValue(file, _imopVarPre206);
                } else {
                    fprintf(file, "%e %e %e\n", ux, uy, uz);
                }
            }
        }
    }
    fclose(file);
}
void LBM_compareVelocityField(LBM_Grid grid, const char *filename , const int binary) {
    int x;
    int y;
    int z;
    float rho;
    float ux;
    float uy;
    float uz;
    float fileUx;
    float fileUy;
    float fileUz;
    float dUx;
    float dUy;
    float dUz;
    float diff2;
    float maxDiff2 = -1e+30;
    int _imopVarPre213;
    char *_imopVarPre214;
    struct __sFILE *_imopVarPre215;
    _imopVarPre213 = binary;
    if (_imopVarPre213) {
        _imopVarPre214 = "rb";
    } else {
        _imopVarPre214 = "r";
    }
    _imopVarPre215 = fopen(filename, _imopVarPre214);
    FILE *file = _imopVarPre215;
    for (z = 0; z < 150; z++) {
        for (y = 0; y < (1 * 120); y++) {
            for (x = 0; x < (1 * 120); x++) {
                rho = +(grid[(C + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                ux = +(grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                uy = +(grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                uz = +(grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                ux /= rho;
                uy /= rho;
                uz /= rho;
                if (binary) {
                    float *_imopVarPre217;
                    _imopVarPre217 = &fileUx;
                    loadValue(file, _imopVarPre217);
                    float *_imopVarPre219;
                    _imopVarPre219 = &fileUy;
                    loadValue(file, _imopVarPre219);
                    float *_imopVarPre221;
                    _imopVarPre221 = &fileUz;
                    loadValue(file, _imopVarPre221);
                } else {
                    if (sizeof(float) == sizeof(double)) {
                        float *_imopVarPre225;
                        float *_imopVarPre226;
                        float *_imopVarPre227;
                        _imopVarPre225 = &fileUz;
                        _imopVarPre226 = &fileUy;
                        _imopVarPre227 = &fileUx;
                        fscanf(file, "%lf %lf %lf\n", _imopVarPre227, _imopVarPre226, _imopVarPre225);
                    } else {
                        float *_imopVarPre231;
                        float *_imopVarPre232;
                        float *_imopVarPre233;
                        _imopVarPre231 = &fileUz;
                        _imopVarPre232 = &fileUy;
                        _imopVarPre233 = &fileUx;
                        fscanf(file, "%f %f %f\n", _imopVarPre233, _imopVarPre232, _imopVarPre231);
                    }
                }
                dUx = ux - fileUx;
                dUy = uy - fileUy;
                dUz = uz - fileUz;
                diff2 = dUx * dUx + dUy * dUy + dUz * dUz;
                if (diff2 > maxDiff2) {
                    maxDiff2 = diff2;
                }
            }
        }
    }
    double _imopVarPre240;
    int _imopVarPre241;
    char *_imopVarPre242;
    double _imopVarPre243;
    _imopVarPre240 = sqrt(maxDiff2);
    _imopVarPre241 = _imopVarPre240 > 1e-5;
    if (_imopVarPre241) {
        _imopVarPre242 = "##### ERROR #####";
    } else {
        _imopVarPre242 = "OK";
    }
    _imopVarPre243 = sqrt(maxDiff2);
    printf("LBM_compareVelocityField: maxDiff = %e  ==>  %s\n\n", _imopVarPre243, _imopVarPre242);
    fclose(file);
}
static void free_string_array(char **string_array) {
    char **p;
    if (!string_array) {
        return;
    }
    for (p = string_array; *p; p++) {
        char *_imopVarPre245;
        _imopVarPre245 = *p;
        free(_imopVarPre245);
    }
    free(string_array);
}
static char **read_string_array(char *in) {
    char **ret;
    int i;
    int count;
    char *substring;
    count = 1;
    for (i = 0; in[i]; i++) {
        if (in[i] == ',') {
            count++;
        }
    }
    unsigned long int _imopVarPre248;
    void *_imopVarPre249;
    _imopVarPre248 = (count + 1) * sizeof(char *);
    _imopVarPre249 = malloc(_imopVarPre248);
    ret = (char **) _imopVarPre249;
    substring = in;
    for (i = 0; i < count; i++) {
        char *substring_end;
        int substring_length;
        int _imopVarPre251;
        substring_end = substring;
        _imopVarPre251 = (*substring_end != ',');
        if (_imopVarPre251) {
            _imopVarPre251 = (*substring_end != 0);
        }
        for (; _imopVarPre251; ) {
            ;
            substring_end++;
            _imopVarPre251 = (*substring_end != ',');
            if (_imopVarPre251) {
                _imopVarPre251 = (*substring_end != 0);
            }
        }
        substring_length = substring_end - substring;
        int _imopVarPre254;
        void *_imopVarPre255;
        _imopVarPre254 = substring_length + 1;
        _imopVarPre255 = malloc(_imopVarPre254);
        ret[i] = (char *) _imopVarPre255;
        char *_imopVarPre261;
        unsigned int _imopVarPre262;
        char *_imopVarPre263;
        _imopVarPre261 = ret[i];
        _imopVarPre262 = __builtin_object_size(_imopVarPre261, 0);
        _imopVarPre263 = ret[i];
        __builtin___memcpy_chk(_imopVarPre263, substring, substring_length, _imopVarPre262);
        ret[i][substring_length] = 0;
        substring = substring_end + 1;
    }
    ret[i] = ((void *) 0);
    return ret;
}
struct argparse {
    int argc;
    char **argv;
    int argn;
    char **argv_get;
    char **argv_put;
} ;
static void initialize_argparse(struct argparse *ap, int argc , char **argv) {
    ap->argc = argc;
    ap->argn = 0;
    ap->argv_get = ap->argv_put = ap->argv = argv;
}
static void finalize_argparse(struct argparse *ap) {
    for (; ap->argn < ap->argc; ap->argn++) {
        *ap->argv_put++ = *ap->argv_get++;
    }
}
static void delete_argument(struct argparse *ap) {
    if (ap->argn >= ap->argc) {
        fprintf(__stderrp, "delete_argument\n");
    }
    ap->argc--;
    ap->argv_get++;
}
static void next_argument(struct argparse *ap) {
    if (ap->argn >= ap->argc) {
        fprintf(__stderrp, "next_argument\n");
    }
    *ap->argv_put++ = *ap->argv_get++;
    ap->argn++;
}
static int is_end_of_arguments(struct argparse *ap) {
    return ap->argn == ap->argc;
}
static char *get_argument(struct argparse *ap) {
    return *ap->argv_get;
}
static char *consume_argument(struct argparse *ap) {
    char *_imopVarPre264;
    _imopVarPre264 = get_argument(ap);
    char *ret = _imopVarPre264;
    delete_argument(ap);
    return ret;
}
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv) {
    char *err_message;
    struct argparse ap;
    unsigned long int _imopVarPre267;
    void *_imopVarPre268;
    _imopVarPre267 = sizeof(struct pb_Parameters);
    _imopVarPre268 = malloc(_imopVarPre267);
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre268;
    ret->outFile = ((void *) 0);
    unsigned long int _imopVarPre271;
    void *_imopVarPre272;
    _imopVarPre271 = sizeof(char *);
    _imopVarPre272 = malloc(_imopVarPre271);
    ret->inpFiles = (char **) _imopVarPre272;
    ret->inpFiles[0] = ((void *) 0);
    int _imopVarPre275;
    struct argparse *_imopVarPre276;
    _imopVarPre275 = *_argc;
    _imopVarPre276 = &ap;
    initialize_argparse(_imopVarPre276, _imopVarPre275, argv);
    struct argparse *_imopVarPre279;
    int _imopVarPre280;
    _imopVarPre279 = &ap;
    _imopVarPre280 = is_end_of_arguments(_imopVarPre279);
    while (!_imopVarPre280) {
        {
            struct argparse *_imopVarPre282;
            char *_imopVarPre283;
            _imopVarPre282 = &ap;
            _imopVarPre283 = get_argument(_imopVarPre282);
            char *arg = _imopVarPre283;
            int _imopVarPre286;
            int _imopVarPre287;
            _imopVarPre286 = (arg[0] == '-');
            if (_imopVarPre286) {
                _imopVarPre287 = (arg[1] != 0);
                if (_imopVarPre287) {
                    _imopVarPre287 = (arg[2] == 0);
                }
                _imopVarPre286 = _imopVarPre287;
            }
            if (_imopVarPre286) {
                struct argparse *_imopVarPre289;
                _imopVarPre289 = &ap;
                delete_argument(_imopVarPre289);
                switch (arg[1]) {
                    {
                        case 'o': {
                            struct argparse *_imopVarPre291;
                            int _imopVarPre292;
                            _imopVarPre291 = &ap;
                            _imopVarPre292 = is_end_of_arguments(_imopVarPre291);
                            if (_imopVarPre292) {
                                err_message = "Expecting file name after '-o'\n";
                                goto error;
                            }
                        }
                        char *_imopVarPre294;
                        _imopVarPre294 = ret->outFile;
                        free(_imopVarPre294);
                        struct argparse *_imopVarPre299;
                        char *_imopVarPre300;
                        char *_imopVarPre301;
                        _imopVarPre299 = &ap;
                        _imopVarPre300 = consume_argument(_imopVarPre299);
                        _imopVarPre301 = strdup(_imopVarPre300);
                        ret->outFile = _imopVarPre301;
                        break;
                        case 'i': {
                            struct argparse *_imopVarPre303;
                            int _imopVarPre304;
                            _imopVarPre303 = &ap;
                            _imopVarPre304 = is_end_of_arguments(_imopVarPre303);
                            if (_imopVarPre304) {
                                err_message = "Expecting file name after '-i'\n";
                                goto error;
                            }
                        }
                        struct argparse *_imopVarPre309;
                        char *_imopVarPre310;
                        char **_imopVarPre311;
                        _imopVarPre309 = &ap;
                        _imopVarPre310 = consume_argument(_imopVarPre309);
                        _imopVarPre311 = read_string_array(_imopVarPre310);
                        ret->inpFiles = _imopVarPre311;
                        break;
                        case '-': goto end_of_options;
                        default: err_message = "Unexpected command-line parameter\n";
                        goto error;
                    }
                }
            } else {
                struct argparse *_imopVarPre313;
                _imopVarPre313 = &ap;
                next_argument(_imopVarPre313);
            }
        }
        _imopVarPre279 = &ap;
        _imopVarPre280 = is_end_of_arguments(_imopVarPre279);
    }
    end_of_options: *_argc = ap.argc;
    struct argparse *_imopVarPre315;
    _imopVarPre315 = &ap;
    finalize_argparse(_imopVarPre315);
    return ret;
    error: fputs(err_message, __stderrp);
    pb_FreeParameters(ret);
    return ((void *) 0);
}
void pb_FreeParameters(struct pb_Parameters *p) {
    char **cpp;
    char *_imopVarPre317;
    _imopVarPre317 = p->outFile;
    free(_imopVarPre317);
    char **_imopVarPre319;
    _imopVarPre319 = p->inpFiles;
    free_string_array(_imopVarPre319);
    free(p);
}
int pb_Parameters_CountInputs(struct pb_Parameters *p) {
    int n;
    for (n = 0; p->inpFiles[n]; n++) {
        ;
    }
    return n;
}
static void accumulate_time(pb_Timestamp *accum, pb_Timestamp start , pb_Timestamp end) {
    *accum += end - start;
}
static pb_Timestamp get_time() {
    struct timeval tv;
    void *_imopVarPre322;
    struct timeval *_imopVarPre323;
    _imopVarPre322 = ((void *) 0);
    _imopVarPre323 = &tv;
    gettimeofday(_imopVarPre323, _imopVarPre322);
    return (pb_Timestamp) (tv.tv_sec * 1000000l + tv.tv_usec);
}
void pb_ResetTimer(struct pb_Timer *timer) {
    timer->state = pb_Timer_STOPPED;
    timer->elapsed = 0;
}
void pb_StartTimer(struct pb_Timer *timer) {
    if (timer->state != pb_Timer_STOPPED) {
        fputs("Ignoring attempt to start a running timer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_RUNNING;
    {
        struct timeval tv;
        void *_imopVarPre326;
        struct timeval *_imopVarPre327;
        _imopVarPre326 = ((void *) 0);
        _imopVarPre327 = &tv;
        gettimeofday(_imopVarPre327, _imopVarPre326);
        timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
    }
}
void pb_StartTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
    unsigned int numNotStopped = 0x3;
    if (timer->state != pb_Timer_STOPPED) {
        fputs("Warning: Timer was not stopped\n", __stderrp);
        numNotStopped &= 0x1;
    }
    if (subtimer->state != pb_Timer_STOPPED) {
        fputs("Warning: Subtimer was not stopped\n", __stderrp);
        numNotStopped &= 0x2;
    }
    if (numNotStopped == 0x0) {
        fputs("Ignoring attempt to start running timer and subtimer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_RUNNING;
    subtimer->state = pb_Timer_RUNNING;
    {
        struct timeval tv;
        void *_imopVarPre330;
        struct timeval *_imopVarPre331;
        _imopVarPre330 = ((void *) 0);
        _imopVarPre331 = &tv;
        gettimeofday(_imopVarPre331, _imopVarPre330);
        if (numNotStopped & 0x2) {
            timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
        }
        if (numNotStopped & 0x1) {
            subtimer->init = tv.tv_sec * 1000000l + tv.tv_usec;
        }
    }
}
void pb_StopTimer(struct pb_Timer *timer) {
    pb_Timestamp fini;
    if (timer->state != pb_Timer_RUNNING) {
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_STOPPED;
    {
        struct timeval tv;
        void *_imopVarPre334;
        struct timeval *_imopVarPre335;
        _imopVarPre334 = ((void *) 0);
        _imopVarPre335 = &tv;
        gettimeofday(_imopVarPre335, _imopVarPre334);
        fini = tv.tv_sec * 1000000l + tv.tv_usec;
    }
    unsigned long long int _imopVarPre338;
    unsigned long long int *_imopVarPre339;
    _imopVarPre338 = timer->init;
    _imopVarPre339 = &timer->elapsed;
    accumulate_time(_imopVarPre339, _imopVarPre338, fini);
    timer->init = fini;
}
void pb_StopTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
    pb_Timestamp fini;
    unsigned int numNotRunning = 0x3;
    if (timer->state != pb_Timer_RUNNING) {
        fputs("Warning: Timer was not running\n", __stderrp);
        numNotRunning &= 0x1;
    }
    if (subtimer->state != pb_Timer_RUNNING) {
        fputs("Warning: Subtimer was not running\n", __stderrp);
        numNotRunning &= 0x2;
    }
    if (numNotRunning == 0x0) {
        fputs("Ignoring attempt to stop stopped timer and subtimer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_STOPPED;
    subtimer->state = pb_Timer_STOPPED;
    {
        struct timeval tv;
        void *_imopVarPre342;
        struct timeval *_imopVarPre343;
        _imopVarPre342 = ((void *) 0);
        _imopVarPre343 = &tv;
        gettimeofday(_imopVarPre343, _imopVarPre342);
        fini = tv.tv_sec * 1000000l + tv.tv_usec;
    }
    if (numNotRunning & 0x2) {
        unsigned long long int _imopVarPre346;
        unsigned long long int *_imopVarPre347;
        _imopVarPre346 = timer->init;
        _imopVarPre347 = &timer->elapsed;
        accumulate_time(_imopVarPre347, _imopVarPre346, fini);
        timer->init = fini;
    }
    if (numNotRunning & 0x1) {
        unsigned long long int _imopVarPre350;
        unsigned long long int *_imopVarPre351;
        _imopVarPre350 = subtimer->init;
        _imopVarPre351 = &subtimer->elapsed;
        accumulate_time(_imopVarPre351, _imopVarPre350, fini);
        subtimer->init = fini;
    }
}
double pb_GetElapsedTime(struct pb_Timer *timer) {
    double ret;
    if (timer->state != pb_Timer_STOPPED) {
        fputs("Elapsed time from a running timer is inaccurate\n", __stderrp);
    }
    ret = timer->elapsed / 1e6;
    return ret;
}
void pb_InitializeTimerSet(struct pb_TimerSet *timers) {
    int n;
    unsigned long long int _imopVarPre352;
    _imopVarPre352 = get_time();
    timers->wall_begin = _imopVarPre352;
    timers->current = pb_TimerID_NONE;
    timers->async_markers = ((void *) 0);
    for (n = 0; n < pb_TimerID_LAST; n++) {
        struct pb_Timer *_imopVarPre354;
        _imopVarPre354 = &timers->timers[n];
        pb_ResetTimer(_imopVarPre354);
        timers->sub_timer_list[n] = ((void *) 0);
    }
}
void pb_AddSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID pb_Category) {
    unsigned long int _imopVarPre357;
    void *_imopVarPre358;
    _imopVarPre357 = sizeof(struct pb_SubTimer);
    _imopVarPre358 = malloc(_imopVarPre357);
    struct pb_SubTimer *subtimer = (struct pb_SubTimer *) _imopVarPre358;
    unsigned long int _imopVarPre359;
    _imopVarPre359 = strlen(label);
    int len = _imopVarPre359;
    unsigned long int _imopVarPre362;
    void *_imopVarPre363;
    _imopVarPre362 = sizeof(char) * (len + 1);
    _imopVarPre363 = malloc(_imopVarPre362);
    subtimer->label = (char *) _imopVarPre363;
    int _imopVarPre375;
    int _imopVarPre376;
    char *_imopVarPre377;
    unsigned int _imopVarPre378;
    char *_imopVarPre379;
    _imopVarPre375 = 2 > 1;
    if (_imopVarPre375) {
        _imopVarPre376 = 1;
    } else {
        _imopVarPre376 = 0;
    }
    _imopVarPre377 = subtimer->label;
    _imopVarPre378 = __builtin_object_size(_imopVarPre377, _imopVarPre376);
    _imopVarPre379 = subtimer->label;
    __builtin___sprintf_chk(_imopVarPre379, 0, _imopVarPre378, "%s\0", label);
    struct pb_Timer *_imopVarPre381;
    _imopVarPre381 = &subtimer->timer;
    pb_ResetTimer(_imopVarPre381);
    subtimer->next = ((void *) 0);
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[pb_Category];
    if (subtimerlist == ((void *) 0)) {
        unsigned long int _imopVarPre384;
        void *_imopVarPre385;
        _imopVarPre384 = sizeof(struct pb_SubTimerList);
        _imopVarPre385 = malloc(_imopVarPre384);
        subtimerlist = (struct pb_SubTimerList *) _imopVarPre385;
        subtimerlist->subtimer_list = subtimer;
        timers->sub_timer_list[pb_Category] = subtimerlist;
    } else {
        struct pb_SubTimer *element = subtimerlist->subtimer_list;
        while (element->next != ((void *) 0)) {
            {
                element = element->next;
            }
        }
        element->next = subtimer;
    }
}
void pb_SwitchToSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID category) {
    struct pb_Timer *topLevelToStop = ((void *) 0);
    int _imopVarPre387;
    _imopVarPre387 = timers->current != category;
    if (_imopVarPre387) {
        _imopVarPre387 = timers->current != pb_TimerID_NONE;
    }
    if (_imopVarPre387) {
        topLevelToStop = &timers->timers[timers->current];
    }
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
    int _imopVarPre388;
    void *_imopVarPre389;
    _imopVarPre388 = (subtimerlist == ((void *) 0));
    if (_imopVarPre388) {
        _imopVarPre389 = ((void *) 0);
    } else {
        _imopVarPre389 = subtimerlist->current;
    }
    struct pb_SubTimer *curr = _imopVarPre389;
    if (timers->current != pb_TimerID_NONE) {
        int _imopVarPre391;
        _imopVarPre391 = curr != ((void *) 0);
        if (_imopVarPre391) {
            _imopVarPre391 = topLevelToStop != ((void *) 0);
        }
        if (_imopVarPre391) {
            struct pb_Timer *_imopVarPre393;
            _imopVarPre393 = &curr->timer;
            pb_StopTimerAndSubTimer(topLevelToStop, _imopVarPre393);
        } else {
            if (curr != ((void *) 0)) {
                struct pb_Timer *_imopVarPre395;
                _imopVarPre395 = &curr->timer;
                pb_StopTimer(_imopVarPre395);
            } else {
                pb_StopTimer(topLevelToStop);
            }
        }
    }
    subtimerlist = timers->sub_timer_list[category];
    struct pb_SubTimer *subtimer = ((void *) 0);
    if (label != ((void *) 0)) {
        subtimer = subtimerlist->subtimer_list;
        while (subtimer != ((void *) 0)) {
            {
                char *_imopVarPre398;
                int _imopVarPre399;
                _imopVarPre398 = subtimer->label;
                _imopVarPre399 = strcmp(_imopVarPre398, label);
                if (_imopVarPre399 == 0) {
                    break;
                } else {
                    subtimer = subtimer->next;
                }
            }
        }
    }
    if (category != pb_TimerID_NONE) {
        if (subtimerlist != ((void *) 0)) {
            subtimerlist->current = subtimer;
        }
        int _imopVarPre401;
        _imopVarPre401 = category != timers->current;
        if (_imopVarPre401) {
            _imopVarPre401 = subtimer != ((void *) 0);
        }
        if (_imopVarPre401) {
            struct pb_Timer *_imopVarPre404;
            struct pb_Timer *_imopVarPre405;
            _imopVarPre404 = &subtimer->timer;
            _imopVarPre405 = &timers->timers[category];
            pb_StartTimerAndSubTimer(_imopVarPre405, _imopVarPre404);
        } else {
            if (subtimer != ((void *) 0)) {
                struct pb_Timer *_imopVarPre407;
                _imopVarPre407 = &subtimer->timer;
                pb_StartTimer(_imopVarPre407);
            } else {
                struct pb_Timer *_imopVarPre409;
                _imopVarPre409 = &timers->timers[category];
                pb_StartTimer(_imopVarPre409);
            }
        }
    }
    timers->current = category;
}
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer) {
    if (timers->current != pb_TimerID_NONE) {
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        if (subtimerlist != ((void *) 0)) {
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        if (currSubTimer != ((void *) 0)) {
            struct pb_Timer *_imopVarPre412;
            struct pb_Timer *_imopVarPre413;
            _imopVarPre412 = &currSubTimer->timer;
            _imopVarPre413 = &timers->timers[timers->current];
            pb_StopTimerAndSubTimer(_imopVarPre413, _imopVarPre412);
        } else {
            struct pb_Timer *_imopVarPre415;
            _imopVarPre415 = &timers->timers[timers->current];
            pb_StopTimer(_imopVarPre415);
        }
    }
    timers->current = timer;
    if (timer != pb_TimerID_NONE) {
        struct pb_Timer *_imopVarPre417;
        _imopVarPre417 = &timers->timers[timer];
        pb_StartTimer(_imopVarPre417);
    }
}
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    unsigned long long int _imopVarPre418;
    _imopVarPre418 = get_time();
    pb_Timestamp wall_end = _imopVarPre418;
    struct pb_Timer *t = timers->timers;
    struct pb_SubTimer *sub = ((void *) 0);
    int maxSubLength;
    const char *categories[] = {"IO", "Kernel" , "Copy" , "Driver" , "Copy Async" , "Compute"};
    const int maxCategoryLength = 10;
    int i;
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        struct pb_Timer *_imopVarPre421;
        double _imopVarPre422;
        _imopVarPre421 = &t[i];
        _imopVarPre422 = pb_GetElapsedTime(_imopVarPre421);
        if (_imopVarPre422 != 0) {
            struct pb_Timer *_imopVarPre428;
            double _imopVarPre429;
            char *_imopVarPre430;
            _imopVarPre428 = &t[i];
            _imopVarPre429 = pb_GetElapsedTime(_imopVarPre428);
            _imopVarPre430 = categories[i - 1];
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre430, _imopVarPre429);
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                sub = timers->sub_timer_list[i]->subtimer_list;
                maxSubLength = 0;
                while (sub != ((void *) 0)) {
                    {
                        char *_imopVarPre433;
                        unsigned long int _imopVarPre434;
                        _imopVarPre433 = sub->label;
                        _imopVarPre434 = strlen(_imopVarPre433);
                        if (_imopVarPre434 > maxSubLength) {
                            char *_imopVarPre436;
                            unsigned long int _imopVarPre437;
                            _imopVarPre436 = sub->label;
                            _imopVarPre437 = strlen(_imopVarPre436);
                            maxSubLength = _imopVarPre437;
                        }
                        sub = sub->next;
                    }
                }
                if (maxSubLength <= maxCategoryLength) {
                    maxSubLength = maxCategoryLength;
                }
                sub = timers->sub_timer_list[i]->subtimer_list;
                while (sub != ((void *) 0)) {
                    {
                        struct pb_Timer *_imopVarPre443;
                        double _imopVarPre444;
                        char *_imopVarPre445;
                        _imopVarPre443 = &sub->timer;
                        _imopVarPre444 = pb_GetElapsedTime(_imopVarPre443);
                        _imopVarPre445 = sub->label;
                        printf(" -%-*s: %f\n", maxSubLength, _imopVarPre445, _imopVarPre444);
                        sub = sub->next;
                    }
                }
            }
        }
    }
    struct pb_Timer *_imopVarPre448;
    double _imopVarPre449;
    _imopVarPre448 = &t[pb_TimerID_OVERLAP];
    _imopVarPre449 = pb_GetElapsedTime(_imopVarPre448);
    if (_imopVarPre449 != 0) {
        struct pb_Timer *_imopVarPre454;
        double _imopVarPre455;
        _imopVarPre454 = &t[pb_TimerID_OVERLAP];
        _imopVarPre455 = pb_GetElapsedTime(_imopVarPre454);
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre455);
    }
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    printf("Timer Wall Time: %f\n", walltime);
}
void pb_DestroyTimerSet(struct pb_TimerSet *timers) {
    struct pb_async_time_marker_list **event = &(timers->async_markers);
    while (*event != ((void *) 0)) {
        {
            struct pb_async_time_marker_list **next = &((*event)->next);
            struct pb_async_time_marker_list *_imopVarPre457;
            _imopVarPre457 = *event;
            free(_imopVarPre457);
            (*event) = ((void *) 0);
            event = next;
        }
    }
    int i = 0;
    for (i = 0; i < pb_TimerID_LAST; ++i) {
        if (timers->sub_timer_list[i] != ((void *) 0)) {
            struct pb_SubTimer *subtimer = timers->sub_timer_list[i]->subtimer_list;
            struct pb_SubTimer *prev = ((void *) 0);
            while (subtimer != ((void *) 0)) {
                {
                    char *_imopVarPre459;
                    _imopVarPre459 = subtimer->label;
                    free(_imopVarPre459);
                    prev = subtimer;
                    subtimer = subtimer->next;
                    free(prev);
                }
            }
            struct pb_SubTimerList *_imopVarPre461;
            _imopVarPre461 = timers->sub_timer_list[i];
            free(_imopVarPre461);
        }
    }
}
static LBM_GridPtr srcGrid;
static LBM_GridPtr dstGrid;
struct pb_TimerSet timers;
int main(int nArgs, char *arg[]) {
    MAIN_Param param;
    MAIN_Time time;
    int t;
    struct pb_TimerSet *_imopVarPre463;
    _imopVarPre463 = &timers;
    pb_InitializeTimerSet(_imopVarPre463);
    struct pb_TimerSet *_imopVarPre465;
    _imopVarPre465 = &timers;
    pb_SwitchToTimer(_imopVarPre465, pb_TimerID_COMPUTE);
    struct pb_Parameters *params;
    int *_imopVarPre467;
    struct pb_Parameters *_imopVarPre468;
    _imopVarPre467 = &nArgs;
    _imopVarPre468 = pb_ReadParameters(_imopVarPre467, arg);
    params = _imopVarPre468;
    struct stUn_imopVarPre17 *_imopVarPre470;
    _imopVarPre470 = &param;
    MAIN_parseCommandLine(nArgs, arg, _imopVarPre470, params);
    struct stUn_imopVarPre17 *_imopVarPre472;
    _imopVarPre472 = &param;
    MAIN_printInfo(_imopVarPre472);
    struct stUn_imopVarPre17 *_imopVarPre474;
    _imopVarPre474 = &param;
    MAIN_initialize(_imopVarPre474);
    struct stUn_imopVarPre14 *_imopVarPre476;
    _imopVarPre476 = &time;
    MAIN_startClock(_imopVarPre476);
    for (t = 1; t <= param.nTimeSteps; t++) {
        if (param.simType == CHANNEL) {
            float *_imopVarPre478;
            _imopVarPre478 = *srcGrid;
            LBM_handleInOutFlow(_imopVarPre478);
        }
        float *_imopVarPre481;
        float *_imopVarPre482;
        _imopVarPre481 = *dstGrid;
        _imopVarPre482 = *srcGrid;
        LBM_performStreamCollide(_imopVarPre482, _imopVarPre481);
        float ( **_imopVarPre485 )[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
        float ( **_imopVarPre486 )[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
        _imopVarPre485 = &dstGrid;
        _imopVarPre486 = &srcGrid;
        LBM_swapGrids(_imopVarPre486, _imopVarPre485);
        if ((t & 63) == 0) {
            printf("timestep: %i\n", t);
        }
    }
    struct stUn_imopVarPre17 *_imopVarPre489;
    struct stUn_imopVarPre14 *_imopVarPre490;
    _imopVarPre489 = &param;
    _imopVarPre490 = &time;
    MAIN_stopClock(_imopVarPre490, _imopVarPre489);
    struct stUn_imopVarPre17 *_imopVarPre492;
    _imopVarPre492 = &param;
    MAIN_finalize(_imopVarPre492);
    struct pb_TimerSet *_imopVarPre494;
    _imopVarPre494 = &timers;
    pb_SwitchToTimer(_imopVarPre494, pb_TimerID_NONE);
    struct pb_TimerSet *_imopVarPre496;
    _imopVarPre496 = &timers;
    pb_PrintTimerSet(_imopVarPre496);
    pb_FreeParameters(params);
    return 0;
}
void MAIN_parseCommandLine(int nArgs, char *arg[] , MAIN_Param *param , struct pb_Parameters *params) {
    struct stat fileStat;
    if (nArgs < 2) {
        printf("syntax: lbm <time steps>\n");
        exit(1);
    }
    char *_imopVarPre498;
    int _imopVarPre499;
    _imopVarPre498 = arg[1];
    _imopVarPre499 = atoi(_imopVarPre498);
    param->nTimeSteps = _imopVarPre499;
    if (params->inpFiles[0] != ((void *) 0)) {
        param->obstacleFilename = params->inpFiles[0];
        struct stat *_imopVarPre503;
        char *_imopVarPre504;
        int _imopVarPre505;
        _imopVarPre503 = &fileStat;
        _imopVarPre504 = param->obstacleFilename;
        _imopVarPre505 = stat(_imopVarPre504, _imopVarPre503);
        if (_imopVarPre505 != 0) {
            char *_imopVarPre507;
            _imopVarPre507 = param->obstacleFilename;
            printf("MAIN_parseCommandLine: cannot stat obstacle file '%s'\n", _imopVarPre507);
            exit(1);
        }
        if (fileStat.st_size != (1 * 120) * (1 * 120) * 150 + ((1 * 120) + 1) * 150) {
            int _imopVarPre511;
            int _imopVarPre512;
            char *_imopVarPre513;
            _imopVarPre511 = (1 * 120) * (1 * 120) * 150 + ((1 * 120) + 1) * 150;
            _imopVarPre512 = (int) fileStat.st_size;
            _imopVarPre513 = param->obstacleFilename;
            printf("MAIN_parseCommandLine:\n" "\tsize of file '%s' is %i bytes\n" "\texpected size is %i bytes\n", _imopVarPre513, _imopVarPre512, _imopVarPre511);
            exit(1);
        }
    } else {
        param->obstacleFilename = ((void *) 0);
    }
    param->resultFilename = params->outFile;
    param->action = STORE;
    param->simType = LDC;
}
void MAIN_printInfo(const MAIN_Param *param) {
    const char actionString[3][32] = {"nothing", "compare" , "store"};
    const char simTypeString[3][32] = {"lid-driven cavity", "channel flow"};
    int _imopVarPre523;
    char *_imopVarPre524;
    char *_imopVarPre525;
    char *_imopVarPre526;
    char *_imopVarPre527;
    int _imopVarPre528;
    double _imopVarPre529;
    int _imopVarPre530;
    int _imopVarPre531;
    _imopVarPre523 = (param->obstacleFilename == ((void *) 0));
    if (_imopVarPre523) {
        _imopVarPre524 = "<none>";
    } else {
        _imopVarPre524 = param->obstacleFilename;
    }
    _imopVarPre525 = simTypeString[param->simType];
    _imopVarPre526 = actionString[param->action];
    _imopVarPre527 = param->resultFilename;
    _imopVarPre528 = param->nTimeSteps;
    _imopVarPre529 = 1e-6 * (1 * 120) * (1 * 120) * 150;
    _imopVarPre530 = (1 * 120);
    _imopVarPre531 = (1 * 120);
    printf("MAIN_printInfo:\n" "\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n" "\tnTimeSteps     : %i\n" "\tresult file    : %s\n" "\taction         : %s\n" "\tsimulation type: %s\n" "\tobstacle file  : %s\n\n", _imopVarPre531, _imopVarPre530, 150, _imopVarPre529, _imopVarPre528, _imopVarPre527, _imopVarPre526, _imopVarPre525, _imopVarPre524);
}
void MAIN_initialize(const MAIN_Param *param) {
    float **_imopVarPre533;
    _imopVarPre533 = (float **) &srcGrid;
    LBM_allocateGrid(_imopVarPre533);
    float **_imopVarPre535;
    _imopVarPre535 = (float **) &dstGrid;
    LBM_allocateGrid(_imopVarPre535);
    float *_imopVarPre537;
    _imopVarPre537 = *srcGrid;
    LBM_initializeGrid(_imopVarPre537);
    float *_imopVarPre539;
    _imopVarPre539 = *dstGrid;
    LBM_initializeGrid(_imopVarPre539);
    if (param->obstacleFilename != ((void *) 0)) {
        char *_imopVarPre542;
        float *_imopVarPre543;
        _imopVarPre542 = param->obstacleFilename;
        _imopVarPre543 = *srcGrid;
        LBM_loadObstacleFile(_imopVarPre543, _imopVarPre542);
        char *_imopVarPre546;
        float *_imopVarPre547;
        _imopVarPre546 = param->obstacleFilename;
        _imopVarPre547 = *dstGrid;
        LBM_loadObstacleFile(_imopVarPre547, _imopVarPre546);
    }
    if (param->simType == CHANNEL) {
        float *_imopVarPre549;
        _imopVarPre549 = *srcGrid;
        LBM_initializeSpecialCellsForChannel(_imopVarPre549);
        float *_imopVarPre551;
        _imopVarPre551 = *dstGrid;
        LBM_initializeSpecialCellsForChannel(_imopVarPre551);
    } else {
        float *_imopVarPre553;
        _imopVarPre553 = *srcGrid;
        LBM_initializeSpecialCellsForLDC(_imopVarPre553);
        float *_imopVarPre555;
        _imopVarPre555 = *dstGrid;
        LBM_initializeSpecialCellsForLDC(_imopVarPre555);
    }
    float *_imopVarPre557;
    _imopVarPre557 = *srcGrid;
    LBM_showGridStatistics(_imopVarPre557);
}
void MAIN_finalize(const MAIN_Param *param) {
    float *_imopVarPre559;
    _imopVarPre559 = *srcGrid;
    LBM_showGridStatistics(_imopVarPre559);
    if (param->action == COMPARE) {
        int _imopVarPre563;
        char *_imopVarPre564;
        float *_imopVarPre565;
        _imopVarPre563 = (-1);
        _imopVarPre564 = param->resultFilename;
        _imopVarPre565 = *srcGrid;
        LBM_compareVelocityField(_imopVarPre565, _imopVarPre564, _imopVarPre563);
    }
    if (param->action == STORE) {
        int _imopVarPre569;
        char *_imopVarPre570;
        float *_imopVarPre571;
        _imopVarPre569 = (-1);
        _imopVarPre570 = param->resultFilename;
        _imopVarPre571 = *srcGrid;
        LBM_storeVelocityField(_imopVarPre571, _imopVarPre570, _imopVarPre569);
    }
    float **_imopVarPre573;
    _imopVarPre573 = (float **) &srcGrid;
    LBM_freeGrid(_imopVarPre573);
    float **_imopVarPre575;
    _imopVarPre575 = (float **) &dstGrid;
    LBM_freeGrid(_imopVarPre575);
}
void MAIN_startClock(MAIN_Time *time) {
    signed long int _imopVarPre577;
    _imopVarPre577 = sysconf(3);
    time->timeScale = 1.0 / _imopVarPre577;
    struct tms *_imopVarPre579;
    unsigned long int _imopVarPre580;
    _imopVarPre579 = &(time->timeStart);
    _imopVarPre580 = times(_imopVarPre579);
    time->tickStart = _imopVarPre580;
}
void MAIN_stopClock(MAIN_Time *time, const MAIN_Param *param) {
    struct tms *_imopVarPre582;
    unsigned long int _imopVarPre583;
    _imopVarPre582 = &(time->timeStop);
    _imopVarPre583 = times(_imopVarPre582);
    time->tickStop = _imopVarPre583;
    double _imopVarPre589;
    float _imopVarPre590;
    float _imopVarPre591;
    float _imopVarPre592;
    float _imopVarPre593;
    _imopVarPre589 = 1.0e-6 * (1 * 120) * (1 * 120) * 150 * param->nTimeSteps / (time->tickStop - time->tickStart) / time->timeScale;
    _imopVarPre590 = (time->tickStop - time->tickStart) * time->timeScale;
    _imopVarPre591 = (time->timeStop.tms_utime - time->timeStart.tms_utime + time->timeStop.tms_stime - time->timeStart.tms_stime) * time->timeScale;
    _imopVarPre592 = (time->timeStop.tms_stime - time->timeStart.tms_stime) * time->timeScale;
    _imopVarPre593 = (time->timeStop.tms_utime - time->timeStart.tms_utime) * time->timeScale;
    printf("MAIN_stopClock:\n" "\tusr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\n\n", _imopVarPre593, _imopVarPre592, _imopVarPre591, _imopVarPre590, _imopVarPre589);
}
