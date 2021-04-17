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
    if (_imopVarPre13) {
        return (*_p->_p++ = _c);
    } else {
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
typedef __darwin_time_t time_t;
typedef __darwin_suseconds_t suseconds_t;
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
struct stUn_imopVarPre7 {
    unsigned char _x[64];
} ;
typedef struct stUn_imopVarPre7 omp_lock_t;
struct stUn_imopVarPre8 {
    unsigned char _x[80];
} ;
typedef struct stUn_imopVarPre8 omp_nest_lock_t;
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
extern void *OSCR_calloc(size_t nmemb, size_t size);
extern void OSCR_error(const char *mensaje, int errInfo);
void OSCR_init(int numThreads, char *description , char *usage , int numArgs , char *argNames[] , char *defaultValues[] , int numTimers , int numReportedTimers , char *reportedTimerNames[] , int argc , char *argv[]);
extern int OSCR_getarg_int(int ind);
extern double OSCR_getarg_double(int ind);
extern char *OSCR_getarg_string(int ind);
extern void OSCR_timer_clear(int );
extern void OSCR_timer_start(int );
extern void OSCR_timer_stop(int );
extern double OSCR_timer_read(int );
extern void OSCR_report();
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
    union stUn_imopVarPre9 {
        float __f;
        unsigned int __u;
    } ;
    union stUn_imopVarPre9 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 31);
}
extern __inline int __inline_signbitd(double __x) {
    union stUn_imopVarPre10 {
        double __f;
        unsigned long long __u;
    } ;
    union stUn_imopVarPre10 __u;
    __u.__f = __x;
    return (int) (__u.__u >> 63);
}
extern __inline int __inline_signbitl(long double __x) {
    union stUn_imopVarPre12 {
        long double __ld;
        struct stUn_imopVarPre11 {
            unsigned long long __m;
            unsigned short __sexp;
        } __p;
    } ;
    union stUn_imopVarPre12 __u;
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
int NPARTS;
int NSTEPS;
typedef double vnd_t[3];
double v(double x);
double dv(double x);
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc);
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr);
double dot_prod(int n, vnd_t x , vnd_t y);
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p);
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt);
int main(int argc, char **argv);
double v(double x) {
    if (x < 1.57079632679489661923132169163975144) {
        double _imopVarPre142;
        double _imopVarPre143;
        _imopVarPre142 = sin(x);
        _imopVarPre143 = pow(_imopVarPre142, 2.0);
        return _imopVarPre143;
    } else {
        return 1.0;
    }
}
double dv(double x) {
    if (x < 1.57079632679489661923132169163975144) {
        double _imopVarPre146;
        double _imopVarPre147;
        _imopVarPre146 = sin(x);
        _imopVarPre147 = cos(x);
        return 2.0 * _imopVarPre146 * _imopVarPre147;
    } else {
        return 0.0;
    }
}
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc) {
    int i;
    int j;
    double x;
    srand(4711L);
    for (i = 0; i < np; i++) {
        for (j = 0; j < nd; j++) {
            int _imopVarPre149;
            _imopVarPre149 = rand();
            x = _imopVarPre149 % 10000 / (double) 10000.0;
            pos[i][j] = box[j] * x;
            vel[i][j] = 0.0;
            acc[i][j] = 0.0;
        }
    }
}
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr) {
    int i;
    double d;
    d = 0.0;
    for (i = 0; i < nd; i++) {
        dr[i] = r1[i] - r2[i];
        d += dr[i] * dr[i];
    }
    double _imopVarPre150;
    _imopVarPre150 = sqrt(d);
    return _imopVarPre150;
}
double dot_prod(int n, vnd_t x , vnd_t y) {
    int i;
    double t = 0.0;
    for (i = 0; i < n; i++) {
        t += x[i] * y[i];
    }
    return t;
}
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p) {
    int i;
    int j;
    int k;
    vnd_t rij;
    double d;
    double pot;
    double kin;
    pot = 0.0;
    kin = 0.0;
#pragma omp parallel default(shared) private(i, j, k, rij, d)
    {
#pragma omp for reduction(+:pot, kin) nowait
        for (i = 0; i < np; i++) {
            for (j = 0; j < nd; j++) {
                f[i][j] = 0.0;
            }
            for (j = 0; j < np; j++) {
                if (i != j) {
                    double *_imopVarPre153;
                    double *_imopVarPre154;
                    double _imopVarPre155;
                    _imopVarPre153 = pos[j];
                    _imopVarPre154 = pos[i];
                    _imopVarPre155 = dist(nd, _imopVarPre154, _imopVarPre153, rij);
                    d = _imopVarPre155;
                    double _imopVarPre157;
                    _imopVarPre157 = v(d);
                    pot = pot + 0.5 * _imopVarPre157;
                    for (k = 0; k < nd; k++) {
                        double _imopVarPre159;
                        _imopVarPre159 = dv(d);
                        f[i][k] = f[i][k] - rij[k] * _imopVarPre159 / d;
                    }
                }
            }
            double *_imopVarPre163;
            double *_imopVarPre164;
            double _imopVarPre165;
            _imopVarPre163 = vel[j];
            _imopVarPre164 = vel[i];
            _imopVarPre165 = dot_prod(nd, _imopVarPre164, _imopVarPre163);
            kin = kin + _imopVarPre165;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    kin = kin * 0.5 * mass;
    *pot_p = pot;
    *kin_p = kin;
}
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt) {
    int i;
    int j;
    double rmass;
    rmass = 1.0 / mass;
#pragma omp parallel default(shared) private(i, j) firstprivate(rmass, dt)
    {
#pragma omp for nowait
        for (i = 0; i < np; i++) {
            for (j = 0; j < nd; j++) {
                pos[i][j] = pos[i][j] + vel[i][j] * dt + 0.5 * dt * dt * a[i][j];
                vel[i][j] = vel[i][j] + 0.5 * dt * (f[i][j] * rmass + a[i][j]);
                a[i][j] = f[i][j] * rmass;
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
}
int main(int argc, char **argv) {
    double mass = 1.0;
    double dt = 1.0e-4;
    vnd_t box;
    vnd_t *position;
    vnd_t *velocity;
    vnd_t *force;
    vnd_t *accel;
    double potential;
    double kinetic;
    double E0;
    int i;
    int NUMTHREADS;
    double total_time;
    char *PARAM_NAMES[2] = {"Nparts", "Nsteps"};
    char *TIMERS_NAMES[1] = {"Total_time"};
    char *DEFAULT_VALUES[2] = {"8192", "10"};
    NUMTHREADS = omp_get_max_threads();
    OSCR_init(NUMTHREADS, "Molecular dynamic simulation", "Use md <Nparts> <Nsteps>", 2, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    NPARTS = OSCR_getarg_int(1);
    NSTEPS = OSCR_getarg_int(2);
    unsigned long int _imopVarPre167;
    void *_imopVarPre168;
    _imopVarPre167 = sizeof(vnd_t);
    _imopVarPre168 = OSCR_calloc(NPARTS, _imopVarPre167);
    position = _imopVarPre168;
    unsigned long int _imopVarPre170;
    void *_imopVarPre171;
    _imopVarPre170 = sizeof(vnd_t);
    _imopVarPre171 = OSCR_calloc(NPARTS, _imopVarPre170);
    velocity = _imopVarPre171;
    unsigned long int _imopVarPre173;
    void *_imopVarPre174;
    _imopVarPre173 = sizeof(vnd_t);
    _imopVarPre174 = OSCR_calloc(NPARTS, _imopVarPre173);
    force = _imopVarPre174;
    unsigned long int _imopVarPre176;
    void *_imopVarPre177;
    _imopVarPre176 = sizeof(vnd_t);
    _imopVarPre177 = OSCR_calloc(NPARTS, _imopVarPre176);
    accel = _imopVarPre177;
    NUMTHREADS = omp_get_max_threads();
    for (i = 0; i < 3; i++) {
        box[i] = 10.0;
    }
    initialize(NPARTS, 3, box, position, velocity, accel);
    OSCR_timer_start(0);
    double *_imopVarPre180;
    double *_imopVarPre181;
    _imopVarPre180 = &kinetic;
    _imopVarPre181 = &potential;
    compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre181, _imopVarPre180);
    E0 = potential + kinetic;
    for (i = 0; i < NSTEPS; i++) {
        double *_imopVarPre184;
        double *_imopVarPre185;
        _imopVarPre184 = &kinetic;
        _imopVarPre185 = &potential;
        compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre185, _imopVarPre184);
        update(NPARTS, 3, position, velocity, force, accel, mass, dt);
    }
    OSCR_timer_stop(0);
    total_time = OSCR_timer_read(0);
    OSCR_report(1, TIMERS_NAMES);
    printf("\n \t# THREADS \tTIME (secs.) \n");
    printf("\t %d \t\t%14.6lf\n", NUMTHREADS, total_time);
    return 0;
}