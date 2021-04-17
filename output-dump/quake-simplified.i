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
    int _imopVarPre13;
    int _imopVarPre17;
    _imopVarPre13 = --_p->_w >= 0;
    if (!_imopVarPre13) {
        _imopVarPre17 = _p->_w >= _p->_lbfsize;
        if (_imopVarPre17) {
            _imopVarPre17 = (char) _c != '\n';
        }
        _imopVarPre13 = _imopVarPre17;
    }
    if (_imopVarPre13)
        return (*_p->_p++ = _c);
    else {
        int _imopVarPre19;
        _imopVarPre19 = __swbuf(_c, _p);
        return _imopVarPre19;
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
    int _imopVarPre98;
    float _imopVarPre99;
    float _imopVarPre100;
    _imopVarPre98 = __x == __x;
    if (_imopVarPre98) {
        _imopVarPre99 = __builtin_fabsf(__x);
        _imopVarPre100 = __builtin_inff();
        _imopVarPre98 = _imopVarPre99 != _imopVarPre100;
    }
    return _imopVarPre98;
}
extern __inline int __inline_isfinited(double __x) {
    int _imopVarPre104;
    double _imopVarPre105;
    double _imopVarPre106;
    _imopVarPre104 = __x == __x;
    if (_imopVarPre104) {
        _imopVarPre105 = __builtin_fabs(__x);
        _imopVarPre106 = __builtin_inf();
        _imopVarPre104 = _imopVarPre105 != _imopVarPre106;
    }
    return _imopVarPre104;
}
extern __inline int __inline_isfinitel(long double __x) {
    int _imopVarPre110;
    long double _imopVarPre111;
    long double _imopVarPre112;
    _imopVarPre110 = __x == __x;
    if (_imopVarPre110) {
        _imopVarPre111 = __builtin_fabsl(__x);
        _imopVarPre112 = __builtin_infl();
        _imopVarPre110 = _imopVarPre111 != _imopVarPre112;
    }
    return _imopVarPre110;
}
extern __inline int __inline_isinff(float __x) {
    float _imopVarPre115;
    float _imopVarPre116;
    _imopVarPre115 = __builtin_fabsf(__x);
    _imopVarPre116 = __builtin_inff();
    return _imopVarPre115 == _imopVarPre116;
}
extern __inline int __inline_isinfd(double __x) {
    double _imopVarPre119;
    double _imopVarPre120;
    _imopVarPre119 = __builtin_fabs(__x);
    _imopVarPre120 = __builtin_inf();
    return _imopVarPre119 == _imopVarPre120;
}
extern __inline int __inline_isinfl(long double __x) {
    long double _imopVarPre123;
    long double _imopVarPre124;
    _imopVarPre123 = __builtin_fabsl(__x);
    _imopVarPre124 = __builtin_infl();
    return _imopVarPre123 == _imopVarPre124;
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
    int _imopVarPre127;
    float _imopVarPre128;
    _imopVarPre127 = __inline_isfinitef(__x);
    if (_imopVarPre127) {
        _imopVarPre128 = __builtin_fabsf(__x);
        _imopVarPre127 = _imopVarPre128 >= 1.17549435082228750797e-38F;
    }
    return _imopVarPre127;
}
extern __inline int __inline_isnormald(double __x) {
    int _imopVarPre131;
    double _imopVarPre132;
    _imopVarPre131 = __inline_isfinited(__x);
    if (_imopVarPre131) {
        _imopVarPre132 = __builtin_fabs(__x);
        _imopVarPre131 = _imopVarPre132 >= ((double) 2.22507385850720138309e-308L);
    }
    return _imopVarPre131;
}
extern __inline int __inline_isnormall(long double __x) {
    int _imopVarPre135;
    long double _imopVarPre136;
    _imopVarPre135 = __inline_isfinitel(__x);
    if (_imopVarPre135) {
        _imopVarPre136 = __builtin_fabsl(__x);
        _imopVarPre135 = _imopVarPre136 >= 3.36210314311209350626e-4932L;
    }
    return _imopVarPre135;
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
    struct __float2 _imopVarPre137;
    _imopVarPre137 = __sincosf_stret(__x);
    const struct __float2 __stret = _imopVarPre137;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincos(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre138;
    _imopVarPre138 = __sincos_stret(__x);
    const struct __double2 __stret = _imopVarPre138;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre139;
    _imopVarPre139 = __sincospif_stret(__x);
    const struct __float2 __stret = _imopVarPre139;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre140;
    _imopVarPre140 = __sincospi_stret(__x);
    const struct __double2 __stret = _imopVarPre140;
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
struct options {
    int quiet;
    int help;
} ;
struct excitation {
    double dt;
    double duration;
    double t0;
} ;
struct damping {
    double zeta, consta , constb , freq;
} ;
struct properties {
    double cp;
    double cs;
    double den;
} ;
struct source {
    double dip, strike , rake , fault;
    double xyz[3];
    double epixyz[3];
    int sourcenode;
    int epicenternode;
} ;
struct smallarray_s {
    double first;
    double second;
    double third;
    double pad;
} ;
typedef struct smallarray_s smallarray_t;
struct options options;
FILE *packfile;
int ARCHnodes;
int ARCHpriv;
int ARCHmine;
int ARCHelems;
int ARCHglobalnodes;
int ARCHmesh_dim;
int ARCHglobalelems;
int ARCHcorners;
int ARCHsubdomains;
double ARCHduration;
int ARCHmatrixlen;
int ARCHcholeskylen;
int *ARCHglobalnode;
int *ARCHglobalelem;
double **ARCHcoord;
int **ARCHvertex;
int *ARCHmatrixcol;
int *ARCHmatrixindex;
void arch_init(int argc, char **argv , struct options *op);
void mem_init(void );
void arch_readnodevector(double *v, int n);
void slip(double *u, double *v , double *w);
double distance(double p1[], double p2[]);
void centroid(double x[][3], double xc[]);
double point2fault(double x[]);
void abe_matrix(double vertices[][3], int bv[] , struct properties *prop , double Ce[]);
void element_matrices(double vertices[][3], struct properties *prop , double Ke[][12] , double Me[]);
void vv12x12(double v1[], double v2[] , double u[]);
void mv12x12(double m[][12], double v[]);
void smvp(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]);
void smvp_opt(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]);
double phi0(double t);
double phi1(double t);
double phi2(double t);
int *nodekind;
double *nodekindf;
int *source_elms;
double ( *M )[3];
double ( *C )[3];
double ( *M23 )[3];
double ( *C23 )[3];
double ( *V23 )[3];
double ( *vel )[3];
double ( **disp )[3];
double ( *K )[3][3];
smallarray_t **w1;
int **w2;
int my_cpu_id;
int numthreads;
struct source Src;
struct excitation Exc;
struct damping Damp;
int main(int argc, char **argv) {
    int i;
    int j;
    int k;
    int ii;
    int jj;
    int kk;
    int iter;
    int timesteps;
    int disptplus;
    int dispt;
    int disptminus;
    int verticesonbnd;
    int cor[4];
    int bv[4];
    int Step_stride;
    int *temp1;
    int *temp2;
    double time;
    double Ke[12][12];
    double Me[12];
    double Ce[12];
    double Mexv[12];
    double Cexv[12];
    double v[12];
    double alpha;
    double c0[3];
    double d1;
    double d2;
    double *bigdist1;
    double *bigdist2;
    double xc[3];
    double uf[3];
    double vertices[4][3];
    struct properties prop;
    numthreads = 1;
    struct options *_imopVarPre142;
    _imopVarPre142 = &options;
    arch_init(argc, argv, _imopVarPre142);
    mem_init();
    arch_readnodevector(nodekindf, ARCHnodes);
    if (!options.quiet) {
        char *_imopVarPre144;
        _imopVarPre144 = argv[0];
        fprintf(__stderrp, "%s: Beginning simulation.\n", _imopVarPre144);
    }
    Exc.dt = 0.0024;
    Exc.duration = ARCHduration;
    Exc.t0 = 0.6;
    timesteps = Exc.duration / Exc.dt + 1;
    Damp.zeta = 30.0;
    Damp.consta = 0.00533333;
    Damp.constb = 0.06666667;
    Damp.freq = 0.5;
    Src.strike = 111.0 * 3.141592653589793238 / 180.0;
    Src.dip = 44.0 * 3.141592653589793238 / 180.0;
    Src.rake = 70.0 * 3.141592653589793238 / 180.0;
    Src.fault = 29.640788;
    Src.xyz[0] = 32.264153;
    Src.xyz[1] = 23.814432;
    Src.xyz[2] = -11.25;
    Src.epixyz[0] = Src.xyz[0];
    Src.epixyz[1] = Src.xyz[1];
    Src.epixyz[2] = 0.0;
    Src.sourcenode = -1;
    Src.epicenternode = -1;
    uf[0] = uf[1] = uf[2] = 0.0;
    double *_imopVarPre148;
    double *_imopVarPre149;
    double *_imopVarPre150;
    _imopVarPre148 = &uf[2];
    _imopVarPre149 = &uf[1];
    _imopVarPre150 = &uf[0];
    slip(_imopVarPre150, _imopVarPre149, _imopVarPre148);
    uf[0] *= Src.fault;
    uf[1] *= Src.fault;
    uf[2] *= Src.fault;
    prop.cp = 6.0;
    prop.cs = 3.2;
    prop.den = 2.0;
    Step_stride = 30;
    disptplus = 0;
    dispt = 1;
    disptminus = 2;
    fprintf(__stderrp, "\n");
    fprintf(__stderrp, "CASE SUMMARY\n");
    fprintf(__stderrp, "Fault information\n");
    double _imopVarPre152;
    _imopVarPre152 = Src.strike;
    fprintf(__stderrp, "  Orientation:  strike: %f\n", _imopVarPre152);
    double _imopVarPre154;
    _imopVarPre154 = Src.dip;
    fprintf(__stderrp, "                   dip: %f\n", _imopVarPre154);
    double _imopVarPre156;
    _imopVarPre156 = Src.rake;
    fprintf(__stderrp, "                  rake: %f\n", _imopVarPre156);
    double _imopVarPre158;
    _imopVarPre158 = Src.fault;
    fprintf(__stderrp, "           dislocation: %f cm\n", _imopVarPre158);
    double _imopVarPre162;
    double _imopVarPre163;
    double _imopVarPre164;
    _imopVarPre162 = Src.xyz[2];
    _imopVarPre163 = Src.xyz[1];
    _imopVarPre164 = Src.xyz[0];
    fprintf(__stderrp, "Hypocenter: (%f, %f, %f) Km\n", _imopVarPre164, _imopVarPre163, _imopVarPre162);
    fprintf(__stderrp, "Excitation characteristics\n");
    double _imopVarPre166;
    _imopVarPre166 = Exc.dt;
    fprintf(__stderrp, "     Time step: %f sec\n", _imopVarPre166);
    double _imopVarPre168;
    _imopVarPre168 = Exc.duration;
    fprintf(__stderrp, "      Duration: %f sec\n", _imopVarPre168);
    double _imopVarPre170;
    _imopVarPre170 = Exc.t0;
    fprintf(__stderrp, "     Rise time: %f sec\n", _imopVarPre170);
    fprintf(__stderrp, "\n");
    fflush(__stderrp);
    for (i = 0; i < ARCHnodes; i++) {
        nodekind[i] = (int) nodekindf[i];
        if (nodekind[i] == 3)
            nodekind[i] = 1;
    }
    unsigned long int _imopVarPre173;
    void *_imopVarPre174;
    _imopVarPre173 = sizeof(int) * numthreads;
    _imopVarPre174 = malloc(_imopVarPre173);
    temp1 = (int *) _imopVarPre174;
    if (temp1 == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for temp1\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre177;
    void *_imopVarPre178;
    _imopVarPre177 = sizeof(int) * numthreads;
    _imopVarPre178 = malloc(_imopVarPre177);
    temp2 = (int *) _imopVarPre178;
    if (temp2 == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for temp2\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre181;
    void *_imopVarPre182;
    _imopVarPre181 = sizeof(double) * numthreads;
    _imopVarPre182 = malloc(_imopVarPre181);
    bigdist1 = (double *) _imopVarPre182;
    if (bigdist1 == (double *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for bigdist1\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre185;
    void *_imopVarPre186;
    _imopVarPre185 = sizeof(double) * numthreads;
    _imopVarPre186 = malloc(_imopVarPre185);
    bigdist2 = (double *) _imopVarPre186;
    if (bigdist2 == (double *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for bigdist2\n");
        fflush(__stderrp);
        exit(0);
    }
#pragma omp parallel private(my_cpu_id, d1, d2, c0)
    {
        my_cpu_id = 0;
        temp1[my_cpu_id] = -1;
        temp2[my_cpu_id] = -1;
        bigdist1[my_cpu_id] = 1000000.0;
        bigdist2[my_cpu_id] = 1000000.0;
#pragma omp for
        for (i = 0; i < ARCHnodes; i++) {
            c0[0] = ARCHcoord[i][0];
            c0[1] = ARCHcoord[i][1];
            c0[2] = ARCHcoord[i][2];
            double *_imopVarPre188;
            double _imopVarPre189;
            _imopVarPre188 = Src.xyz;
            _imopVarPre189 = distance(c0, _imopVarPre188);
            d1 = _imopVarPre189;
            double *_imopVarPre191;
            double _imopVarPre192;
            _imopVarPre191 = Src.epixyz;
            _imopVarPre192 = distance(c0, _imopVarPre191);
            d2 = _imopVarPre192;
            if (d1 < bigdist1[my_cpu_id]) {
                bigdist1[my_cpu_id] = d1;
                temp1[my_cpu_id] = i;
            }
            if (d2 < bigdist2[my_cpu_id]) {
                bigdist2[my_cpu_id] = d2;
                temp2[my_cpu_id] = i;
            }
        }
    }
    d1 = bigdist1[0];
    d2 = bigdist2[0];
    Src.sourcenode = temp1[0];
    Src.epicenternode = temp2[0];
    for (i = 0; i < numthreads; i++) {
        if (bigdist1[i] < d1) {
            d1 = bigdist1[i];
            Src.sourcenode = temp1[i];
        }
        if (bigdist2[i] < d2) {
            d2 = bigdist2[i];
            Src.epicenternode = temp2[i];
        }
    }
    free(bigdist1);
    free(bigdist2);
    free(temp1);
    free(temp2);
    int _imopVarPre194;
    _imopVarPre194 = Src.sourcenode != 0;
    if (_imopVarPre194) {
        _imopVarPre194 = Src.sourcenode <= ARCHmine;
    }
    if (_imopVarPre194) {
        double _imopVarPre199;
        double _imopVarPre200;
        double _imopVarPre201;
        int _imopVarPre202;
        _imopVarPre199 = ARCHcoord[Src.sourcenode][2];
        _imopVarPre200 = ARCHcoord[Src.sourcenode][1];
        _imopVarPre201 = ARCHcoord[Src.sourcenode][0];
        _imopVarPre202 = ARCHglobalnode[Src.sourcenode];
        fprintf(__stderrp, "The source is node %d at (%f  %f  %f)\n", _imopVarPre202, _imopVarPre201, _imopVarPre200, _imopVarPre199);
        fflush(__stderrp);
    }
    int _imopVarPre204;
    _imopVarPre204 = Src.epicenternode != 0;
    if (_imopVarPre204) {
        _imopVarPre204 = Src.epicenternode <= ARCHmine;
    }
    if (_imopVarPre204) {
        double _imopVarPre209;
        double _imopVarPre210;
        double _imopVarPre211;
        int _imopVarPre212;
        _imopVarPre209 = ARCHcoord[Src.epicenternode][2];
        _imopVarPre210 = ARCHcoord[Src.epicenternode][1];
        _imopVarPre211 = ARCHcoord[Src.epicenternode][0];
        _imopVarPre212 = ARCHglobalnode[Src.epicenternode];
        fprintf(__stderrp, "The epicenter is node %d at (%f  %f  %f)\n", _imopVarPre212, _imopVarPre211, _imopVarPre210, _imopVarPre209);
        fflush(__stderrp);
    }
    if (Src.sourcenode != 0) {
#pragma omp parallel private(cor, j, k, xc, vertices)
        {
#pragma omp for
            for (i = 0; i < ARCHelems; i++) {
                for (j = 0; j < 4; j++)
                    cor[j] = ARCHvertex[i][j];
                int _imopVarPre213;
                int _imopVarPre214;
                int _imopVarPre215;
                _imopVarPre213 = cor[0] == Src.sourcenode;
                if (!_imopVarPre213) {
                    _imopVarPre214 = cor[1] == Src.sourcenode;
                    if (!_imopVarPre214) {
                        _imopVarPre215 = cor[2] == Src.sourcenode;
                        if (!_imopVarPre215) {
                            _imopVarPre215 = cor[3] == Src.sourcenode;
                        }
                        _imopVarPre214 = _imopVarPre215;
                    }
                    _imopVarPre213 = _imopVarPre214;
                }
                if (_imopVarPre213) {
                    for (j = 0; j < 4; j++) {
                        for (k = 0; k < 3; k++)
                            vertices[j][k] = ARCHcoord[cor[j]][k];
                    }
                    centroid(vertices, xc);
                    source_elms[i] = 2;
                    double _imopVarPre217;
                    _imopVarPre217 = point2fault(xc);
                    if (_imopVarPre217 >= 0)
                        source_elms[i] = 3;
                }
            }
        }
    }
    for (i = 0; i < ARCHelems; i++) {
        for (j = 0; j < 12; j++) {
            Me[j] = 0.0;
            Ce[j] = 0.0;
            v[j] = 0.0;
            for (k = 0; k < 12; k++)
                Ke[j][k] = 0.0;
        }
        for (j = 0; j < 4; j++) {
            cor[j] = ARCHvertex[i][j];
        }
        verticesonbnd = 0;
        for (j = 0; j < 4; j++) {
            if (nodekind[cor[j]] != 1)
                bv[verticesonbnd++] = j;
        }
        if (verticesonbnd == 3) {
            for (j = 0; j < 3; j++) {
                for (k = 0; k < 3; k++)
                    vertices[j][k] = ARCHcoord[cor[bv[j]]][k];
            }
            struct properties *_imopVarPre219;
            _imopVarPre219 = &prop;
            abe_matrix(vertices, bv, _imopVarPre219, Ce);
        }
        for (j = 0; j < 4; j++) {
            for (k = 0; k < 3; k++)
                vertices[j][k] = ARCHcoord[cor[j]][k];
        }
        struct properties *_imopVarPre221;
        _imopVarPre221 = &prop;
        element_matrices(vertices, _imopVarPre221, Ke, Me);
        centroid(vertices, xc);
        if (xc[2] < -11.5)
            alpha = 2.0 * Damp.zeta / 100.0 * (2.0 * 3.141592653589793238 * Damp.freq);
        else
            alpha = 4.0 * 3.141592653589793238 * Damp.consta * 0.95 / (prop.cs + Damp.constb);
        for (j = 0; j < 12; j++)
            Ce[j] = Ce[j] + alpha * Me[j];
        int _imopVarPre222;
        _imopVarPre222 = source_elms[i] == 2;
        if (!_imopVarPre222) {
            _imopVarPre222 = source_elms[i] == 3;
        }
        if (_imopVarPre222) {
            for (j = 0; j < 4; j++) {
                if (cor[j] == Src.sourcenode) {
                    v[3 * j] = uf[0];
                    v[3 * j + 1] = uf[1];
                    v[3 * j + 2] = uf[2];
                } else {
                    v[3 * j] = 0;
                    v[3 * j + 1] = 0;
                    v[3 * j + 2] = 0;
                }
            }
            vv12x12(Me, v, Mexv);
            vv12x12(Ce, v, Cexv);
            mv12x12(Ke, v);
            if (source_elms[i] == 3) {
                for (j = 0; j < 12; j++) {
                    v[j] = -v[j];
                    Mexv[j] = -Mexv[j];
                    Cexv[j] = -Cexv[j];
                }
            }
            for (j = 0; j < 4; j++) {
                V23[ARCHvertex[i][j]][0] += v[j * 3];
                V23[ARCHvertex[i][j]][1] += v[j * 3 + 1];
                V23[ARCHvertex[i][j]][2] += v[j * 3 + 2];
                M23[ARCHvertex[i][j]][0] += Mexv[j * 3];
                M23[ARCHvertex[i][j]][1] += Mexv[j * 3 + 1];
                M23[ARCHvertex[i][j]][2] += Mexv[j * 3 + 2];
                C23[ARCHvertex[i][j]][0] += Cexv[j * 3];
                C23[ARCHvertex[i][j]][1] += Cexv[j * 3 + 1];
                C23[ARCHvertex[i][j]][2] += Cexv[j * 3 + 2];
            }
        }
        for (j = 0; j < 4; j++) {
            M[ARCHvertex[i][j]][0] += Me[j * 3];
            M[ARCHvertex[i][j]][1] += Me[j * 3 + 1];
            M[ARCHvertex[i][j]][2] += Me[j * 3 + 2];
            C[ARCHvertex[i][j]][0] += Ce[j * 3];
            C[ARCHvertex[i][j]][1] += Ce[j * 3 + 1];
            C[ARCHvertex[i][j]][2] += Ce[j * 3 + 2];
            for (k = 0; k < 4; k++) {
                if (ARCHvertex[i][j] <= ARCHvertex[i][k]) {
                    kk = ARCHmatrixindex[ARCHvertex[i][j]];
                    while (ARCHmatrixcol[kk] != ARCHvertex[i][k]) {
                        {
                            kk++;
                            if (kk >= ARCHmatrixindex[ARCHvertex[i][k] + 1]) {
                                int _imopVarPre225;
                                int _imopVarPre226;
                                _imopVarPre225 = ARCHvertex[i][k];
                                _imopVarPre226 = ARCHvertex[i][j];
                                printf("K indexing error!!! %d %d\n", _imopVarPre226, _imopVarPre225);
                                exit(1);
                            }
                        }
                    }
                    for (ii = 0; ii < 3; ii++) {
                        for (jj = 0; jj < 3; jj++)
                            K[kk][ii][jj] += Ke[j * 3 + ii][k * 3 + jj];
                    }
                }
            }
        }
    }
    fprintf(__stderrp, "\n");
    for (iter = 1; iter <= timesteps; iter++) {
#pragma omp parallel private(j)
        {
#pragma omp for
            for (i = 0; i < ARCHnodes; i++) {
                for (j = 0; j < 3; j++)
                    disp[disptplus][i][j] = 0.0;
            }
        }
        double ( *_imopVarPre229 )[3];
        double ( *_imopVarPre230 )[3];
        _imopVarPre229 = disp[disptplus];
        _imopVarPre230 = disp[dispt];
        smvp(ARCHnodes, K, ARCHmatrixcol, ARCHmatrixindex, _imopVarPre230, _imopVarPre229);
        time = iter * Exc.dt;
#pragma omp parallel private(j)
        {
#pragma omp for
            for (i = 0; i < ARCHnodes; i++) {
                for (j = 0; j < 3; j++) {
                    disp[disptplus][i][j] *= -Exc.dt * Exc.dt;
                    double _imopVarPre240;
                    double _imopVarPre241;
                    double _imopVarPre242;
                    _imopVarPre240 = phi2(time);
                    _imopVarPre241 = phi1(time);
                    _imopVarPre242 = phi0(time);
                    disp[disptplus][i][j] += 2.0 * M[i][j] * disp[dispt][i][j] - (M[i][j] - Exc.dt / 2.0 * C[i][j]) * disp[disptminus][i][j] - Exc.dt * Exc.dt * (M23[i][j] * _imopVarPre240 / 2.0 + C23[i][j] * _imopVarPre241 / 2.0 + V23[i][j] * _imopVarPre242 / 2.0);
                    disp[disptplus][i][j] = disp[disptplus][i][j] / (M[i][j] + Exc.dt / 2.0 * C[i][j]);
                    vel[i][j] = 0.5 / Exc.dt * (disp[disptplus][i][j] - disp[disptminus][i][j]);
                }
            }
        }
        if (iter % Step_stride == 0) {
            fprintf(__stderrp, "Time step %d\n", iter);
            if (Src.sourcenode <= ARCHmine) {
                double _imopVarPre247;
                double _imopVarPre248;
                double _imopVarPre249;
                int _imopVarPre250;
                _imopVarPre247 = disp[disptplus][Src.sourcenode][2];
                _imopVarPre248 = disp[disptplus][Src.sourcenode][1];
                _imopVarPre249 = disp[disptplus][Src.sourcenode][0];
                _imopVarPre250 = ARCHglobalnode[Src.sourcenode];
                printf("%d: %.2e %.2e %.2e\n", _imopVarPre250, _imopVarPre249, _imopVarPre248, _imopVarPre247);
            }
            if (Src.epicenternode <= ARCHmine) {
                double _imopVarPre255;
                double _imopVarPre256;
                double _imopVarPre257;
                int _imopVarPre258;
                _imopVarPre255 = disp[disptplus][Src.epicenternode][2];
                _imopVarPre256 = disp[disptplus][Src.epicenternode][1];
                _imopVarPre257 = disp[disptplus][Src.epicenternode][0];
                _imopVarPre258 = ARCHglobalnode[Src.epicenternode];
                printf("%d: %.2e %.2e %.2e\n", _imopVarPre258, _imopVarPre257, _imopVarPre256, _imopVarPre255);
            }
            fflush(__stdoutp);
        }
        i = disptminus;
        disptminus = dispt;
        dispt = disptplus;
        disptplus = i;
    }
    for (i = 0; i < numthreads; i++) {
        struct smallarray_s *_imopVarPre260;
        _imopVarPre260 = w1[i];
        free(_imopVarPre260);
    }
    free(w1);
    fprintf(__stderrp, "%d nodes %d elems %d timesteps\n", ARCHglobalnodes, ARCHglobalelems, timesteps);
    fprintf(__stderrp, "\n");
    fflush(__stderrp);
    if (!options.quiet) {
        fprintf(__stderrp, "Done. Terminating the simulation.\n");
    }
    return 0;
}
void shape_ders(double ds[][4]) {
    ds[0][0] = -1;
    ds[1][0] = -1;
    ds[2][0] = -1;
    ds[0][1] = 1;
    ds[1][1] = 0;
    ds[2][1] = 0;
    ds[0][2] = 0;
    ds[1][2] = 1;
    ds[2][2] = 0;
    ds[0][3] = 0;
    ds[1][3] = 0;
    ds[2][3] = 1;
}
void get_Enu(struct properties *prop, double *E , double *nu) {
    double ratio;
    ratio = prop->cp / prop->cs;
    ratio = ratio * ratio;
    *nu = 0.5 * (ratio - 2.0) / (ratio - 1.0);
    *E = 2.0 * prop->den * prop->cs * prop->cs * (1.0 + *nu);
}
void inv_J(double a[][3], double *det) {
    double d1;
    double c[3][3];
    int i;
    int j;
    c[0][0] = a[1][1] * a[2][2] - a[2][1] * a[1][2];
    c[0][1] = a[0][2] * a[2][1] - a[0][1] * a[2][2];
    c[0][2] = a[0][1] * a[1][2] - a[0][2] * a[1][1];
    c[1][0] = a[1][2] * a[2][0] - a[1][0] * a[2][2];
    c[1][1] = a[0][0] * a[2][2] - a[0][2] * a[2][0];
    c[1][2] = a[0][2] * a[1][0] - a[0][0] * a[1][2];
    c[2][0] = a[1][0] * a[2][1] - a[1][1] * a[2][0];
    c[2][1] = a[0][1] * a[2][0] - a[0][0] * a[2][1];
    c[2][2] = a[0][0] * a[1][1] - a[0][1] * a[1][0];
    *det = a[0][0] * c[0][0] + a[0][1] * c[1][0] + a[0][2] * c[2][0];
    d1 = 1.0 / *det;
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++)
            a[i][j] = c[i][j] * d1;
    }
}
void element_matrices(double vertices[][3], struct properties *prop , double Ke[][12] , double Me[]) {
    double ds[3][4];
    double sum[3];
    double jacobian[3][3];
    double det;
    double volume;
    double E;
    double nu;
    double c1;
    double c2;
    double c3;
    double tt;
    double ts;
    int i;
    int j;
    int m;
    int n;
    int row;
    int column;
    shape_ders(ds);
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            sum[0] = 0.0;
            for (m = 0; m < 4; m++)
                sum[0] = sum[0] + ds[i][m] * vertices[m][j];
            jacobian[j][i] = sum[0];
        }
    }
    double *_imopVarPre262;
    _imopVarPre262 = &det;
    inv_J(jacobian, _imopVarPre262);
    for (m = 0; m < 4; m++) {
        for (i = 0; i < 3; i++) {
            sum[i] = 0.0;
            for (j = 0; j < 3; j++)
                sum[i] = sum[i] + jacobian[j][i] * ds[j][m];
        }
        for (i = 0; i < 3; i++)
            ds[i][m] = sum[i];
    }
    volume = det / 6.0;
    if (volume <= 0) {
        fprintf(__stderrp, "Warning: Element volume = %f !\n", volume);
    }
    double *_imopVarPre265;
    double *_imopVarPre266;
    _imopVarPre265 = &nu;
    _imopVarPre266 = &E;
    get_Enu(prop, _imopVarPre266, _imopVarPre265);
    c1 = E / (2.0 * (nu + 1.0) * (1.0 - nu * 2.0)) * volume;
    c2 = E * nu / ((nu + 1.0) * (1.0 - nu * 2.0)) * volume;
    c3 = E / ((nu + 1.0) * 2.0) * volume;
    row = -1;
    for (m = 0; m < 4; m++) {
        for (i = 0; i < 3; ++i) {
            ++row;
            column = -1;
            for (n = 0; n <= m; n++) {
                for (j = 0; j < 3; j++) {
                    ++column;
                    ts = ds[i][m] * ds[j][n];
                    if (i == j) {
                        ts = ts * c1;
                        tt = (ds[0][m] * ds[0][n] + ds[1][m] * ds[1][n] + ds[2][m] * ds[2][n]) * c3;
                    } else {
                        if (m == n) {
                            ts = ts * c1;
                            tt = 0;
                        } else {
                            ts = ts * c2;
                            tt = ds[j][m] * ds[i][n] * c3;
                        }
                    }
                    Ke[row][column] = Ke[row][column] + ts + tt;
                }
            }
        }
    }
    tt = prop->den * volume / 4.0;
    for (i = 0; i < 12; i++)
        Me[i] = tt;
    for (i = 0; i < 12; i++) {
        for (j = 0; j <= i; j++)
            Ke[j][i] = Ke[i][j];
    }
}
double area_triangle(double vertices[][3]) {
    double a;
    double b;
    double c;
    double x2;
    double y2;
    double z2;
    double p;
    double area;
    x2 = (vertices[0][0] - vertices[1][0]) * (vertices[0][0] - vertices[1][0]);
    y2 = (vertices[0][1] - vertices[1][1]) * (vertices[0][1] - vertices[1][1]);
    z2 = (vertices[0][2] - vertices[1][2]) * (vertices[0][2] - vertices[1][2]);
    double _imopVarPre268;
    double _imopVarPre269;
    _imopVarPre268 = x2 + y2 + z2;
    _imopVarPre269 = sqrt(_imopVarPre268);
    a = _imopVarPre269;
    x2 = (vertices[2][0] - vertices[1][0]) * (vertices[2][0] - vertices[1][0]);
    y2 = (vertices[2][1] - vertices[1][1]) * (vertices[2][1] - vertices[1][1]);
    z2 = (vertices[2][2] - vertices[1][2]) * (vertices[2][2] - vertices[1][2]);
    double _imopVarPre271;
    double _imopVarPre272;
    _imopVarPre271 = x2 + y2 + z2;
    _imopVarPre272 = sqrt(_imopVarPre271);
    b = _imopVarPre272;
    x2 = (vertices[0][0] - vertices[2][0]) * (vertices[0][0] - vertices[2][0]);
    y2 = (vertices[0][1] - vertices[2][1]) * (vertices[0][1] - vertices[2][1]);
    z2 = (vertices[0][2] - vertices[2][2]) * (vertices[0][2] - vertices[2][2]);
    double _imopVarPre274;
    double _imopVarPre275;
    _imopVarPre274 = x2 + y2 + z2;
    _imopVarPre275 = sqrt(_imopVarPre274);
    c = _imopVarPre275;
    p = (a + b + c) / 2.0;
    double _imopVarPre277;
    double _imopVarPre278;
    _imopVarPre277 = p * (p - a) * (p - b) * (p - c);
    _imopVarPre278 = sqrt(_imopVarPre277);
    area = _imopVarPre278;
    return area;
}
void abe_matrix(double vertices[][3], int bv[] , struct properties *prop , double Ce[]) {
    int i;
    int j;
    double area;
    area = area_triangle(vertices);
    for (i = 0; i < 3; i++) {
        j = 3 * bv[i];
        Ce[j] = Ce[j] + prop->cs * prop->den * area / 3.0;
        Ce[j + 1] = Ce[j + 1] + prop->cs * prop->den * area / 3.0;
        Ce[j + 2] = Ce[j + 2] + prop->cp * prop->den * area / 3.0;
    }
}
double phi0(double t) {
    double value;
    if (t <= Exc.t0) {
        double _imopVarPre285;
        double _imopVarPre286;
        _imopVarPre285 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        _imopVarPre286 = sin(_imopVarPre285);
        value = 0.5 / 3.141592653589793238 * (2.0 * 3.141592653589793238 * t / Exc.t0 - _imopVarPre286);
        return value;
    } else
        return 1.0;
}
double phi1(double t) {
    double value;
    if (t <= Exc.t0) {
        double _imopVarPre293;
        double _imopVarPre294;
        _imopVarPre293 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        _imopVarPre294 = cos(_imopVarPre293);
        value = (1.0 - _imopVarPre294) / Exc.t0;
        return value;
    } else
        return 0.0;
}
double phi2(double t) {
    double value;
    if (t <= Exc.t0) {
        double _imopVarPre297;
        double _imopVarPre298;
        _imopVarPre297 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        _imopVarPre298 = sin(_imopVarPre297);
        value = 2.0 * 3.141592653589793238 / Exc.t0 / Exc.t0 * _imopVarPre298;
        return value;
    } else
        return 0.0;
}
void slip(double *u, double *v , double *w) {
    *u = *v = *w = 0.0;
    double _imopVarPre329;
    double _imopVarPre330;
    double _imopVarPre331;
    double _imopVarPre332;
    double _imopVarPre333;
    double _imopVarPre334;
    double _imopVarPre335;
    double _imopVarPre336;
    double _imopVarPre337;
    double _imopVarPre338;
    _imopVarPre329 = Src.rake;
    _imopVarPre330 = cos(_imopVarPre329);
    _imopVarPre331 = Src.strike;
    _imopVarPre332 = sin(_imopVarPre331);
    _imopVarPre333 = Src.rake;
    _imopVarPre334 = sin(_imopVarPre333);
    _imopVarPre335 = Src.strike;
    _imopVarPre336 = cos(_imopVarPre335);
    _imopVarPre337 = Src.dip;
    _imopVarPre338 = cos(_imopVarPre337);
    *u = (_imopVarPre330 * _imopVarPre332 - _imopVarPre334 * _imopVarPre336 * _imopVarPre338);
    double _imopVarPre369;
    double _imopVarPre370;
    double _imopVarPre371;
    double _imopVarPre372;
    double _imopVarPre373;
    double _imopVarPre374;
    double _imopVarPre375;
    double _imopVarPre376;
    double _imopVarPre377;
    double _imopVarPre378;
    _imopVarPre369 = Src.rake;
    _imopVarPre370 = cos(_imopVarPre369);
    _imopVarPre371 = Src.strike;
    _imopVarPre372 = cos(_imopVarPre371);
    _imopVarPre373 = Src.rake;
    _imopVarPre374 = sin(_imopVarPre373);
    _imopVarPre375 = Src.strike;
    _imopVarPre376 = sin(_imopVarPre375);
    _imopVarPre377 = Src.dip;
    _imopVarPre378 = cos(_imopVarPre377);
    *v = (_imopVarPre370 * _imopVarPre372 + _imopVarPre374 * _imopVarPre376 * _imopVarPre378);
    double _imopVarPre383;
    double _imopVarPre384;
    double _imopVarPre385;
    double _imopVarPre386;
    _imopVarPre383 = Src.rake;
    _imopVarPre384 = sin(_imopVarPre383);
    _imopVarPre385 = Src.dip;
    _imopVarPre386 = sin(_imopVarPre385);
    *w = _imopVarPre384 * _imopVarPre386;
}
double distance(double p1[], double p2[]) {
    return ((p1[0] - p2[0]) * (p1[0] - p2[0]) + (p1[1] - p2[1]) * (p1[1] - p2[1]) + (p1[2] - p2[2]) * (p1[2] - p2[2]));
}
void centroid(double x[][3], double xc[]) {
    int i;
    for (i = 0; i < 3; i++)
        xc[i] = (x[0][i] + x[1][i] + x[2][i] + x[3][i]) / 4.0;
}
double point2fault(double x[]) {
    double nx;
    double ny;
    double nz;
    double d0;
    double _imopVarPre391;
    double _imopVarPre392;
    double _imopVarPre393;
    double _imopVarPre394;
    _imopVarPre391 = Src.strike;
    _imopVarPre392 = cos(_imopVarPre391);
    _imopVarPre393 = Src.dip;
    _imopVarPre394 = sin(_imopVarPre393);
    nx = _imopVarPre392 * _imopVarPre394;
    double _imopVarPre399;
    double _imopVarPre400;
    double _imopVarPre401;
    double _imopVarPre402;
    _imopVarPre399 = Src.strike;
    _imopVarPre400 = sin(_imopVarPre399);
    _imopVarPre401 = Src.dip;
    _imopVarPre402 = sin(_imopVarPre401);
    ny = -_imopVarPre400 * _imopVarPre402;
    double _imopVarPre404;
    double _imopVarPre405;
    _imopVarPre404 = Src.dip;
    _imopVarPre405 = cos(_imopVarPre404);
    nz = _imopVarPre405;
    d0 = -(nx * Src.xyz[0] + ny * Src.xyz[1] + nz * Src.xyz[2]);
    return (double) nx * x[0] + ny * x[1] + nz * x[2] + d0;
}
void mv12x12(double m[][12], double v[]) {
    int i;
    int j;
    double u[12];
    for (i = 0; i < 12; i++) {
        u[i] = 0;
        for (j = 0; j < 12; j++)
            u[i] += m[i][j] * v[j];
    }
    for (i = 0; i < 12; i++)
        v[i] = u[i];
}
void vv12x12(double v1[], double v2[] , double u[]) {
    int i;
    for (i = 0; i < 12; i++)
        u[i] = v1[i] * v2[i];
}
void arch_bail() {
    exit(0);
}
void arch_info() {
    printf("\n");
    printf("You are running an Archimedes finite element simulation.\n\n");
    printf("The command syntax is:\n\n");
    printf("quake [-Qh] < packfile\n\n");
    printf("Command line options:\n\n");
    printf("    -Q  Quietly suppress all explanation of what this program is doing\n");
    printf("        unless an error occurs.\n");
    printf("    -h  Print this message and exit.\n");
}
void arch_parsecommandline(int argc, char **argv , struct options *op) {
    int i;
    int j;
    op->quiet = 0;
    op->help = 0;
    for (i = 1; i < argc; i++) {
        if (argv[i][0] == '-') {
            for (j = 1; argv[i][j] != '\0'; j++) {
                if (argv[i][j] == 'Q') {
                    op->quiet = 1;
                }
                int _imopVarPre407;
                _imopVarPre407 = argv[i][j] == 'h';
                if (!_imopVarPre407) {
                    _imopVarPre407 = argv[i][j] == 'H';
                }
                if (_imopVarPre407) {
                    op->help = 1;
                }
            }
        }
    }
    if (op->help) {
        arch_info();
        exit(0);
    }
}
void arch_readnodevector(double *v, int n) {
    int i;
    int type;
    int attributes;
    int *_imopVarPre410;
    int *_imopVarPre411;
    _imopVarPre410 = &attributes;
    _imopVarPre411 = &type;
    fscanf(packfile, "%d %d\n", _imopVarPre411, _imopVarPre410);
    if (type != 2) {
        fprintf(__stderrp, "READNODEVECTOR: unexpected data type\n");
        arch_bail();
    }
    if (attributes != 1) {
        fprintf(__stderrp, "READNODEVECTOR: unexpected number of attributes\n");
        arch_bail();
    }
    for (i = 0; i < n; i++) {
        double *_imopVarPre413;
        _imopVarPre413 = &v[i];
        fscanf(packfile, "%lf", _imopVarPre413);
    }
}
void arch_readelemvector(double *v, int n) {
    int i;
    int type;
    int attributes;
    int *_imopVarPre416;
    int *_imopVarPre417;
    _imopVarPre416 = &attributes;
    _imopVarPre417 = &type;
    fscanf(packfile, "%d %d\n", _imopVarPre417, _imopVarPre416);
    if (type != 1) {
        fprintf(__stderrp, "READELEMVECTOR: unexpected data type\n");
        arch_bail();
    }
    if (attributes != 1) {
        fprintf(__stderrp, "READELEMVECTOR: unexpected number of attributes\n");
        arch_bail();
    }
    for (i = 0; i < n; i++) {
        double *_imopVarPre419;
        _imopVarPre419 = &v[i];
        fscanf(packfile, "%lf", _imopVarPre419);
    }
}
void arch_readdouble(double *v) {
    int type;
    int attributes;
    int *_imopVarPre422;
    int *_imopVarPre423;
    _imopVarPre422 = &attributes;
    _imopVarPre423 = &type;
    fscanf(packfile, "%d %d\n", _imopVarPre423, _imopVarPre422);
    if (type != 3) {
        fprintf(__stderrp, "READDOUBLE: unexpected data type\n");
        arch_bail();
    }
    if (attributes != 1) {
        fprintf(__stderrp, "READDOUBLE: unexpected number of attributes\n");
        arch_bail();
    }
    double *_imopVarPre425;
    _imopVarPre425 = &v[0];
    fscanf(packfile, "%lf", _imopVarPre425);
}
void readpackfile(FILE *packfile, struct options *op) {
    int oldrow;
    int newrow;
    int i;
    int j;
    int temp1;
    int temp2;
    int *_imopVarPre427;
    _imopVarPre427 = &ARCHglobalnodes;
    fscanf(packfile, "%d", _imopVarPre427);
    int *_imopVarPre429;
    _imopVarPre429 = &ARCHmesh_dim;
    fscanf(packfile, "%d", _imopVarPre429);
    int *_imopVarPre431;
    _imopVarPre431 = &ARCHglobalelems;
    fscanf(packfile, "%d", _imopVarPre431);
    int *_imopVarPre433;
    _imopVarPre433 = &ARCHcorners;
    fscanf(packfile, "%d", _imopVarPre433);
    int *_imopVarPre435;
    _imopVarPre435 = &ARCHsubdomains;
    fscanf(packfile, "%d", _imopVarPre435);
    double *_imopVarPre437;
    _imopVarPre437 = &ARCHduration;
    fscanf(packfile, "%lf", _imopVarPre437);
    if (ARCHsubdomains != 1) {
        fprintf(__stderrp, "quake: too many subdomains(%d), rerun slice using -s1\n", ARCHsubdomains);
        arch_bail();
    }
    if (!op->quiet) {
        fprintf(__stderrp, "quake: Reading nodes.\n");
    }
    int *_imopVarPre441;
    int *_imopVarPre442;
    int *_imopVarPre443;
    _imopVarPre441 = &ARCHpriv;
    _imopVarPre442 = &ARCHmine;
    _imopVarPre443 = &ARCHnodes;
    fscanf(packfile, "%d %d %d", _imopVarPre443, _imopVarPre442, _imopVarPre441);
    unsigned long int _imopVarPre446;
    void *_imopVarPre447;
    _imopVarPre446 = ARCHnodes * sizeof(int);
    _imopVarPre447 = malloc(_imopVarPre446);
    ARCHglobalnode = (int *) _imopVarPre447;
    if (ARCHglobalnode == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for ARCHglobalnode\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre450;
    void *_imopVarPre451;
    _imopVarPre450 = ARCHnodes * sizeof(double *);
    _imopVarPre451 = malloc(_imopVarPre450);
    ARCHcoord = (double **) _imopVarPre451;
    for (i = 0; i < ARCHnodes; i++) {
        unsigned long int _imopVarPre454;
        void *_imopVarPre455;
        _imopVarPre454 = 3 * sizeof(double);
        _imopVarPre455 = malloc(_imopVarPre454);
        ARCHcoord[i] = (double *) _imopVarPre455;
    }
    for (i = 0; i < ARCHnodes; i++) {
        int *_imopVarPre457;
        _imopVarPre457 = &ARCHglobalnode[i];
        fscanf(packfile, "%d", _imopVarPre457);
        for (j = 0; j < ARCHmesh_dim; j++) {
            double *_imopVarPre459;
            _imopVarPre459 = &ARCHcoord[i][j];
            fscanf(packfile, "%lf", _imopVarPre459);
        }
    }
    if (!op->quiet)
        fprintf(__stderrp, "quake: Reading elements.\n");
    int *_imopVarPre461;
    _imopVarPre461 = &ARCHelems;
    fscanf(packfile, "%d", _imopVarPre461);
    unsigned long int _imopVarPre464;
    void *_imopVarPre465;
    _imopVarPre464 = ARCHelems * sizeof(int);
    _imopVarPre465 = malloc(_imopVarPre464);
    ARCHglobalelem = (int *) _imopVarPre465;
    if (ARCHglobalelem == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for ARCHglobalelem\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre468;
    void *_imopVarPre469;
    _imopVarPre468 = ARCHelems * sizeof(int *);
    _imopVarPre469 = malloc(_imopVarPre468);
    ARCHvertex = (int **) _imopVarPre469;
    for (i = 0; i < ARCHelems; i++) {
        unsigned long int _imopVarPre472;
        void *_imopVarPre473;
        _imopVarPre472 = 4 * sizeof(int);
        _imopVarPre473 = malloc(_imopVarPre472);
        ARCHvertex[i] = (int *) _imopVarPre473;
    }
    for (i = 0; i < ARCHelems; i++) {
        int *_imopVarPre475;
        _imopVarPre475 = &ARCHglobalelem[i];
        fscanf(packfile, "%d", _imopVarPre475);
        for (j = 0; j < ARCHcorners; j++) {
            int *_imopVarPre477;
            _imopVarPre477 = &ARCHvertex[i][j];
            fscanf(packfile, "%d", _imopVarPre477);
        }
    }
    if (!op->quiet)
        fprintf(__stderrp, "quake: Reading sparse matrix structure.\n");
    int *_imopVarPre480;
    int *_imopVarPre481;
    _imopVarPre480 = &ARCHcholeskylen;
    _imopVarPre481 = &ARCHmatrixlen;
    fscanf(packfile, "%d %d", _imopVarPre481, _imopVarPre480);
    unsigned long int _imopVarPre484;
    void *_imopVarPre485;
    _imopVarPre484 = (ARCHmatrixlen + 1) * sizeof(int);
    _imopVarPre485 = malloc(_imopVarPre484);
    ARCHmatrixcol = (int *) _imopVarPre485;
    if (ARCHmatrixcol == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for ARCHmatrixcol\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre488;
    void *_imopVarPre489;
    _imopVarPre488 = (ARCHnodes + 1) * sizeof(int);
    _imopVarPre489 = malloc(_imopVarPre488);
    ARCHmatrixindex = (int *) _imopVarPre489;
    if (ARCHmatrixindex == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for ARCHmatrixindex\n");
        fflush(__stderrp);
        exit(0);
    }
    oldrow = -1;
    for (i = 0; i < ARCHmatrixlen; i++) {
        int *_imopVarPre491;
        _imopVarPre491 = &newrow;
        fscanf(packfile, "%d", _imopVarPre491);
        int *_imopVarPre493;
        _imopVarPre493 = &ARCHmatrixcol[i];
        fscanf(packfile, "%d", _imopVarPre493);
        while (oldrow < newrow) {
            {
                if (oldrow + 1 >= ARCHnodes + 1) {
                    int _imopVarPre496;
                    int _imopVarPre497;
                    _imopVarPre496 = ARCHnodes + 1;
                    _imopVarPre497 = oldrow + 1;
                    printf("quake: error: (1)idx buffer too small (%d >= %d)\n", _imopVarPre497, _imopVarPre496);
                    arch_bail();
                }
                ARCHmatrixindex[++oldrow] = i;
            }
        }
    }
    while (oldrow < ARCHnodes) {
        {
            ARCHmatrixindex[++oldrow] = ARCHmatrixlen;
        }
    }
    int *_imopVarPre500;
    int *_imopVarPre501;
    _imopVarPre500 = &temp2;
    _imopVarPre501 = &temp1;
    fscanf(packfile, "%d %d", _imopVarPre501, _imopVarPre500);
}
void arch_init(int argc, char **argv , struct options *op) {
    arch_parsecommandline(argc, argv, op);
    packfile = __stdinp;
    readpackfile(packfile, op);
}
void smvp(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]) {
    int i;
    int j;
    int Anext;
    int Alast;
    int col;
    double sum0;
    double sum1;
    double sum2;
    for (j = 0; j < numthreads; j++) {
#pragma omp parallel private(i)
        {
#pragma omp for
            for (i = 0; i < nodes; i++) {
                w2[j][i] = 0;
            }
        }
    }
#pragma omp parallel private(my_cpu_id, i, Anext, Alast, col, sum0, sum1, sum2)
    {
        my_cpu_id = 0;
#pragma omp for
        for (i = 0; i < nodes; i++) {
            Anext = Aindex[i];
            Alast = Aindex[i + 1];
            sum0 = A[Anext][0][0] * v[i][0] + A[Anext][0][1] * v[i][1] + A[Anext][0][2] * v[i][2];
            sum1 = A[Anext][1][0] * v[i][0] + A[Anext][1][1] * v[i][1] + A[Anext][1][2] * v[i][2];
            sum2 = A[Anext][2][0] * v[i][0] + A[Anext][2][1] * v[i][1] + A[Anext][2][2] * v[i][2];
            Anext++;
            while (Anext < Alast) {
                {
                    col = Acol[Anext];
                    sum0 += A[Anext][0][0] * v[col][0] + A[Anext][0][1] * v[col][1] + A[Anext][0][2] * v[col][2];
                    sum1 += A[Anext][1][0] * v[col][0] + A[Anext][1][1] * v[col][1] + A[Anext][1][2] * v[col][2];
                    sum2 += A[Anext][2][0] * v[col][0] + A[Anext][2][1] * v[col][1] + A[Anext][2][2] * v[col][2];
                    if (w2[my_cpu_id][col] == 0) {
                        w2[my_cpu_id][col] = 1;
                        w1[my_cpu_id][col].first = 0.0;
                        w1[my_cpu_id][col].second = 0.0;
                        w1[my_cpu_id][col].third = 0.0;
                    }
                    w1[my_cpu_id][col].first += A[Anext][0][0] * v[i][0] + A[Anext][1][0] * v[i][1] + A[Anext][2][0] * v[i][2];
                    w1[my_cpu_id][col].second += A[Anext][0][1] * v[i][0] + A[Anext][1][1] * v[i][1] + A[Anext][2][1] * v[i][2];
                    w1[my_cpu_id][col].third += A[Anext][0][2] * v[i][0] + A[Anext][1][2] * v[i][1] + A[Anext][2][2] * v[i][2];
                    Anext++;
                }
            }
            if (w2[my_cpu_id][i] == 0) {
                w2[my_cpu_id][i] = 1;
                w1[my_cpu_id][i].first = 0.0;
                w1[my_cpu_id][i].second = 0.0;
                w1[my_cpu_id][i].third = 0.0;
            }
            w1[my_cpu_id][i].first += sum0;
            w1[my_cpu_id][i].second += sum1;
            w1[my_cpu_id][i].third += sum2;
        }
    }
#pragma omp parallel private(j)
    {
#pragma omp for
        for (i = 0; i < nodes; i++) {
            for (j = 0; j < numthreads; j++) {
                if (w2[j][i]) {
                    w[i][0] += w1[j][i].first;
                    w[i][1] += w1[j][i].second;
                    w[i][2] += w1[j][i].third;
                }
            }
        }
    }
}
void smvp_opt(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]) {
    int i;
    int Anext;
    int Alast;
    double vi0;
    double vi1;
    double vi2;
    double sum0;
    double sum1;
    double sum2;
    double value;
    double vcol0;
    double vcol1;
    double vcol2;
    double wcol0;
    double wcol1;
    double wcol2;
    int col;
    for (i = 0; i < nodes; i++) {
        w[i][0] = 0.0;
        w[i][1] = 0.0;
        w[i][2] = 0.0;
    }
    for (i = 0; i < nodes; i++) {
        vi0 = v[i][0];
        vi1 = v[i][1];
        vi2 = v[i][2];
        Anext = Aindex[i];
        Alast = Aindex[i + 1];
        sum0 = w[i][0] + A[Anext][0][0] * vi0 + A[Anext][0][1] * vi1 + A[Anext][0][2] * vi2;
        sum1 = w[i][1] + A[Anext][1][0] * vi0 + A[Anext][1][1] * vi1 + A[Anext][1][2] * vi2;
        sum2 = w[i][2] + A[Anext][2][0] * vi0 + A[Anext][2][1] * vi1 + A[Anext][2][2] * vi2;
        Anext++;
        while (Anext < Alast) {
            {
                col = Acol[Anext];
                vcol0 = v[col][0];
                vcol1 = v[col][1];
                vcol2 = v[col][2];
                value = A[Anext][0][0];
                sum0 += value * vcol0;
                wcol0 = w[col][0] + value * vi0;
                value = A[Anext][0][1];
                sum0 += value * vcol1;
                wcol1 = w[col][1] + value * vi0;
                value = A[Anext][0][2];
                sum0 += value * vcol2;
                wcol2 = w[col][2] + value * vi0;
                value = A[Anext][1][0];
                sum1 += value * vcol0;
                wcol0 += value * vi1;
                value = A[Anext][1][1];
                sum1 += value * vcol1;
                wcol1 += value * vi1;
                value = A[Anext][1][2];
                sum1 += value * vcol2;
                wcol2 += value * vi1;
                value = A[Anext][2][0];
                sum2 += value * vcol0;
                w[col][0] = wcol0 + value * vi2;
                value = A[Anext][2][1];
                sum2 += value * vcol1;
                w[col][1] = wcol1 + value * vi2;
                value = A[Anext][2][2];
                sum2 += value * vcol2;
                w[col][2] = wcol2 + value * vi2;
                Anext++;
            }
        }
        w[i][0] = sum0;
        w[i][1] = sum1;
        w[i][2] = sum2;
    }
}
void mem_init() {
    int i;
    int j;
    int k;
    unsigned long int _imopVarPre504;
    void *_imopVarPre505;
    _imopVarPre504 = ARCHnodes * sizeof(double);
    _imopVarPre505 = malloc(_imopVarPre504);
    nodekindf = (double *) _imopVarPre505;
    if (nodekindf == (double *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for nodekindf\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre508;
    void *_imopVarPre509;
    _imopVarPre508 = ARCHnodes * sizeof(int);
    _imopVarPre509 = malloc(_imopVarPre508);
    nodekind = (int *) _imopVarPre509;
    if (nodekind == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for nodekind\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre512;
    void *_imopVarPre513;
    _imopVarPre512 = ARCHelems * sizeof(int);
    _imopVarPre513 = malloc(_imopVarPre512);
    source_elms = (int *) _imopVarPre513;
    if (source_elms == (int *) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for source_elms\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre516;
    void *_imopVarPre517;
    _imopVarPre516 = ARCHnodes * sizeof(double [3]);
    _imopVarPre517 = malloc(_imopVarPre516);
    vel = (double (*)[3]) _imopVarPre517;
    if (vel == (double (*)[3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for vel\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre520;
    void *_imopVarPre521;
    _imopVarPre520 = ARCHnodes * sizeof(double [3]);
    _imopVarPre521 = malloc(_imopVarPre520);
    M = (double (*)[3]) _imopVarPre521;
    if (M == (double (*)[3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for M\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre524;
    void *_imopVarPre525;
    _imopVarPre524 = ARCHnodes * sizeof(double [3]);
    _imopVarPre525 = malloc(_imopVarPre524);
    C = (double (*)[3]) _imopVarPre525;
    if (C == (double (*)[3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for C\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre528;
    void *_imopVarPre529;
    _imopVarPre528 = ARCHnodes * sizeof(double [3]);
    _imopVarPre529 = malloc(_imopVarPre528);
    M23 = (double (*)[3]) _imopVarPre529;
    if (M23 == (double (*)[3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for M23\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre532;
    void *_imopVarPre533;
    _imopVarPre532 = ARCHnodes * sizeof(double [3]);
    _imopVarPre533 = malloc(_imopVarPre532);
    C23 = (double (*)[3]) _imopVarPre533;
    if (C23 == (double (*)[3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for C23\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre536;
    void *_imopVarPre537;
    _imopVarPre536 = ARCHnodes * sizeof(double [3]);
    _imopVarPre537 = malloc(_imopVarPre536);
    V23 = (double (*)[3]) _imopVarPre537;
    if (V23 == (double (*)[3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for V23\n");
        fflush(__stderrp);
        exit(0);
    }
    unsigned long int _imopVarPre540;
    void *_imopVarPre541;
    _imopVarPre540 = numthreads * sizeof(struct smallarray_s *);
    _imopVarPre541 = malloc(_imopVarPre540);
    w1 = (smallarray_t **) _imopVarPre541;
    if (w1 == (smallarray_t **) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for w1\n");
        fflush(__stderrp);
        exit(0);
    }
    for (i = 0; i < numthreads; i++) {
        unsigned long int _imopVarPre544;
        void *_imopVarPre545;
        _imopVarPre544 = ARCHnodes * sizeof(smallarray_t);
        _imopVarPre545 = malloc(_imopVarPre544);
        w1[i] = (smallarray_t *) _imopVarPre545;
        if (w1[i] == (smallarray_t *) ((void *) 0)) {
            fprintf(__stderrp, "malloc failed for w1[%d]\n", i);
            fflush(__stderrp);
            exit(0);
        }
    }
    for (j = 0; j < numthreads; j++) {
#pragma omp parallel private(i)
        {
#pragma omp for
            for (i = 0; i < ARCHnodes; i++) {
                w1[j][i].first = 0.0;
                w1[j][i].second = 0.0;
                w1[j][i].third = 0.0;
            }
        }
    }
    unsigned long int _imopVarPre548;
    void *_imopVarPre549;
    _imopVarPre548 = numthreads * sizeof(int *);
    _imopVarPre549 = malloc(_imopVarPre548);
    w2 = (int **) _imopVarPre549;
    if (w2 == (int **) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for w2\n");
        fflush(__stderrp);
        exit(0);
    }
    for (i = 0; i < numthreads; i++) {
        unsigned long int _imopVarPre552;
        void *_imopVarPre553;
        _imopVarPre552 = ARCHnodes * sizeof(int);
        _imopVarPre553 = malloc(_imopVarPre552);
        w2[i] = (int *) _imopVarPre553;
        if (w2[i] == (int *) ((void *) 0)) {
            fprintf(__stderrp, "malloc failed for w2[%d]\n", i);
            fflush(__stderrp);
            exit(0);
        }
    }
    for (j = 0; j < numthreads; j++) {
#pragma omp parallel private(i)
        {
#pragma omp for
            for (i = 0; i < ARCHnodes; i++) {
                w2[j][i] = 0;
            }
        }
    }
    unsigned long int _imopVarPre556;
    void *_imopVarPre557;
    _imopVarPre556 = 3 * sizeof(double (*)[3]);
    _imopVarPre557 = malloc(_imopVarPre556);
    disp = (double (**)[3]) _imopVarPre557;
    if (disp == (double (**)[3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for disp\n");
        fflush(__stderrp);
        exit(0);
    }
    for (i = 0; i < 3; i++) {
        unsigned long int _imopVarPre560;
        void *_imopVarPre561;
        _imopVarPre560 = ARCHnodes * sizeof(double [3]);
        _imopVarPre561 = malloc(_imopVarPre560);
        disp[i] = (double (*)[3]) _imopVarPre561;
        if (disp[i] == (double (*)[3]) ((void *) 0)) {
            fprintf(__stderrp, "malloc failed for disp[%d]\n", i);
            fflush(__stderrp);
            exit(0);
        }
    }
    unsigned long int _imopVarPre564;
    void *_imopVarPre565;
    _imopVarPre564 = ARCHmatrixlen * sizeof(double [3][3]);
    _imopVarPre565 = malloc(_imopVarPre564);
    K = (double (*)[3][3]) _imopVarPre565;
    if (K == (double (*)[3][3]) ((void *) 0)) {
        fprintf(__stderrp, "malloc failed for K\n");
        fflush(__stderrp);
        exit(0);
    }
#pragma omp parallel private(j)
    {
#pragma omp for
        for (i = 0; i < ARCHnodes; i++) {
            nodekind[i] = 0;
            for (j = 0; j < 3; j++) {
                M[i][j] = 0.0;
                C[i][j] = 0.0;
                M23[i][j] = 0.0;
                C23[i][j] = 0.0;
                V23[i][j] = 0.0;
                disp[0][i][j] = 0.0;
                disp[1][i][j] = 0.0;
                disp[2][i][j] = 0.0;
            }
        }
    }
    for (i = 0; i < ARCHelems; i++) {
        source_elms[i] = 1;
    }
#pragma omp parallel private(j, k)
    {
#pragma omp for
        for (i = 0; i < ARCHmatrixlen; i++) {
            for (j = 0; j < 3; j++) {
                for (k = 0; k < 3; k++) {
                    K[i][j][k] = 0.0;
                }
            }
        }
    }
}
