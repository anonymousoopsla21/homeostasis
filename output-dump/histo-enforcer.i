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
    int _imopVarPre17;
    int _imopVarPre21;
    _imopVarPre17 = --_p->_w >= 0;
    if (!_imopVarPre17) {
        _imopVarPre21 = _p->_w >= _p->_lbfsize;
        if (_imopVarPre21) {
            _imopVarPre21 = (char) _c != '\n';
        }
        _imopVarPre17 = _imopVarPre21;
    }
    if (_imopVarPre17) {
        return (*_p->_p++ = _c);
    } else {
        int _imopVarPre23;
        _imopVarPre23 = __swbuf(_c, _p);
        return _imopVarPre23;
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
    int _imopVarPre102;
    float _imopVarPre103;
    float _imopVarPre104;
    _imopVarPre102 = __x == __x;
    if (_imopVarPre102) {
        _imopVarPre103 = __builtin_fabsf(__x);
        _imopVarPre104 = __builtin_inff();
        _imopVarPre102 = _imopVarPre103 != _imopVarPre104;
    }
    return _imopVarPre102;
}
extern __inline int __inline_isfinited(double __x) {
    int _imopVarPre108;
    double _imopVarPre109;
    double _imopVarPre110;
    _imopVarPre108 = __x == __x;
    if (_imopVarPre108) {
        _imopVarPre109 = __builtin_fabs(__x);
        _imopVarPre110 = __builtin_inf();
        _imopVarPre108 = _imopVarPre109 != _imopVarPre110;
    }
    return _imopVarPre108;
}
extern __inline int __inline_isfinitel(long double __x) {
    int _imopVarPre114;
    long double _imopVarPre115;
    long double _imopVarPre116;
    _imopVarPre114 = __x == __x;
    if (_imopVarPre114) {
        _imopVarPre115 = __builtin_fabsl(__x);
        _imopVarPre116 = __builtin_infl();
        _imopVarPre114 = _imopVarPre115 != _imopVarPre116;
    }
    return _imopVarPre114;
}
extern __inline int __inline_isinff(float __x) {
    float _imopVarPre119;
    float _imopVarPre120;
    _imopVarPre119 = __builtin_fabsf(__x);
    _imopVarPre120 = __builtin_inff();
    return _imopVarPre119 == _imopVarPre120;
}
extern __inline int __inline_isinfd(double __x) {
    double _imopVarPre123;
    double _imopVarPre124;
    _imopVarPre123 = __builtin_fabs(__x);
    _imopVarPre124 = __builtin_inf();
    return _imopVarPre123 == _imopVarPre124;
}
extern __inline int __inline_isinfl(long double __x) {
    long double _imopVarPre127;
    long double _imopVarPre128;
    _imopVarPre127 = __builtin_fabsl(__x);
    _imopVarPre128 = __builtin_infl();
    return _imopVarPre127 == _imopVarPre128;
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
    int _imopVarPre131;
    float _imopVarPre132;
    _imopVarPre131 = __inline_isfinitef(__x);
    if (_imopVarPre131) {
        _imopVarPre132 = __builtin_fabsf(__x);
        _imopVarPre131 = _imopVarPre132 >= 1.17549435082228750797e-38F;
    }
    return _imopVarPre131;
}
extern __inline int __inline_isnormald(double __x) {
    int _imopVarPre135;
    double _imopVarPre136;
    _imopVarPre135 = __inline_isfinited(__x);
    if (_imopVarPre135) {
        _imopVarPre136 = __builtin_fabs(__x);
        _imopVarPre135 = _imopVarPre136 >= ((double) 2.22507385850720138309e-308L);
    }
    return _imopVarPre135;
}
extern __inline int __inline_isnormall(long double __x) {
    int _imopVarPre139;
    long double _imopVarPre140;
    _imopVarPre139 = __inline_isfinitel(__x);
    if (_imopVarPre139) {
        _imopVarPre140 = __builtin_fabsl(__x);
        _imopVarPre139 = _imopVarPre140 >= 3.36210314311209350626e-4932L;
    }
    return _imopVarPre139;
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
    struct __float2 _imopVarPre141;
    _imopVarPre141 = __sincosf_stret(__x);
    const struct __float2 __stret = _imopVarPre141;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincos(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre142;
    _imopVarPre142 = __sincos_stret(__x);
    const struct __double2 __stret = _imopVarPre142;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre143;
    _imopVarPre143 = __sincospif_stret(__x);
    const struct __float2 __stret = _imopVarPre143;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre144;
    _imopVarPre144 = __sincospi_stret(__x);
    const struct __double2 __stret = _imopVarPre144;
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
static void free_string_array(char **string_array) {
    char **p;
    if (!string_array) {
        return;
    }
    for (p = string_array; *p; p++) {
        char *_imopVarPre146;
        _imopVarPre146 = *p;
        free(_imopVarPre146);
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
    unsigned long int _imopVarPre149;
    void *_imopVarPre150;
    _imopVarPre149 = (count + 1) * sizeof(char *);
    _imopVarPre150 = malloc(_imopVarPre149);
    ret = (char **) _imopVarPre150;
    substring = in;
    for (i = 0; i < count; i++) {
        char *substring_end;
        int substring_length;
        int _imopVarPre152;
        substring_end = substring;
        _imopVarPre152 = (*substring_end != ',');
        if (_imopVarPre152) {
            _imopVarPre152 = (*substring_end != 0);
        }
        for (; _imopVarPre152; ) {
            ;
            substring_end++;
            _imopVarPre152 = (*substring_end != ',');
            if (_imopVarPre152) {
                _imopVarPre152 = (*substring_end != 0);
            }
        }
        substring_length = substring_end - substring;
        int _imopVarPre155;
        void *_imopVarPre156;
        _imopVarPre155 = substring_length + 1;
        _imopVarPre156 = malloc(_imopVarPre155);
        ret[i] = (char *) _imopVarPre156;
        char *_imopVarPre162;
        unsigned int _imopVarPre163;
        char *_imopVarPre164;
        _imopVarPre162 = ret[i];
        _imopVarPre163 = __builtin_object_size(_imopVarPre162, 0);
        _imopVarPre164 = ret[i];
        __builtin___memcpy_chk(_imopVarPre164, substring, substring_length, _imopVarPre163);
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
    char *_imopVarPre165;
    _imopVarPre165 = get_argument(ap);
    char *ret = _imopVarPre165;
    delete_argument(ap);
    return ret;
}
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv) {
    char *err_message;
    struct argparse ap;
    unsigned long int _imopVarPre168;
    void *_imopVarPre169;
    _imopVarPre168 = sizeof(struct pb_Parameters);
    _imopVarPre169 = malloc(_imopVarPre168);
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre169;
    ret->outFile = ((void *) 0);
    unsigned long int _imopVarPre172;
    void *_imopVarPre173;
    _imopVarPre172 = sizeof(char *);
    _imopVarPre173 = malloc(_imopVarPre172);
    ret->inpFiles = (char **) _imopVarPre173;
    ret->inpFiles[0] = ((void *) 0);
    int _imopVarPre176;
    struct argparse *_imopVarPre177;
    _imopVarPre176 = *_argc;
    _imopVarPre177 = &ap;
    initialize_argparse(_imopVarPre177, _imopVarPre176, argv);
    struct argparse *_imopVarPre180;
    int _imopVarPre181;
    _imopVarPre180 = &ap;
    _imopVarPre181 = is_end_of_arguments(_imopVarPre180);
    while (!_imopVarPre181) {
        {
            struct argparse *_imopVarPre183;
            char *_imopVarPre184;
            _imopVarPre183 = &ap;
            _imopVarPre184 = get_argument(_imopVarPre183);
            char *arg = _imopVarPre184;
            int _imopVarPre187;
            int _imopVarPre188;
            _imopVarPre187 = (arg[0] == '-');
            if (_imopVarPre187) {
                _imopVarPre188 = (arg[1] != 0);
                if (_imopVarPre188) {
                    _imopVarPre188 = (arg[2] == 0);
                }
                _imopVarPre187 = _imopVarPre188;
            }
            if (_imopVarPre187) {
                struct argparse *_imopVarPre190;
                _imopVarPre190 = &ap;
                delete_argument(_imopVarPre190);
                switch (arg[1]) {
                    {
                        case 'o': {
                            struct argparse *_imopVarPre192;
                            int _imopVarPre193;
                            _imopVarPre192 = &ap;
                            _imopVarPre193 = is_end_of_arguments(_imopVarPre192);
                            if (_imopVarPre193) {
                                err_message = "Expecting file name after '-o'\n";
                                goto error;
                            }
                        }
                        char *_imopVarPre195;
                        _imopVarPre195 = ret->outFile;
                        free(_imopVarPre195);
                        struct argparse *_imopVarPre200;
                        char *_imopVarPre201;
                        char *_imopVarPre202;
                        _imopVarPre200 = &ap;
                        _imopVarPre201 = consume_argument(_imopVarPre200);
                        _imopVarPre202 = strdup(_imopVarPre201);
                        ret->outFile = _imopVarPre202;
                        break;
                        case 'i': {
                            struct argparse *_imopVarPre204;
                            int _imopVarPre205;
                            _imopVarPre204 = &ap;
                            _imopVarPre205 = is_end_of_arguments(_imopVarPre204);
                            if (_imopVarPre205) {
                                err_message = "Expecting file name after '-i'\n";
                                goto error;
                            }
                        }
                        struct argparse *_imopVarPre210;
                        char *_imopVarPre211;
                        char **_imopVarPre212;
                        _imopVarPre210 = &ap;
                        _imopVarPre211 = consume_argument(_imopVarPre210);
                        _imopVarPre212 = read_string_array(_imopVarPre211);
                        ret->inpFiles = _imopVarPre212;
                        break;
                        case '-': goto end_of_options;
                        default: err_message = "Unexpected command-line parameter\n";
                        goto error;
                    }
                }
            } else {
                struct argparse *_imopVarPre214;
                _imopVarPre214 = &ap;
                next_argument(_imopVarPre214);
            }
        }
        _imopVarPre180 = &ap;
        _imopVarPre181 = is_end_of_arguments(_imopVarPre180);
    }
    end_of_options: *_argc = ap.argc;
    struct argparse *_imopVarPre216;
    _imopVarPre216 = &ap;
    finalize_argparse(_imopVarPre216);
    return ret;
    error: fputs(err_message, __stderrp);
    pb_FreeParameters(ret);
    return ((void *) 0);
}
void pb_FreeParameters(struct pb_Parameters *p) {
    char **cpp;
    char *_imopVarPre218;
    _imopVarPre218 = p->outFile;
    free(_imopVarPre218);
    char **_imopVarPre220;
    _imopVarPre220 = p->inpFiles;
    free_string_array(_imopVarPre220);
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
    void *_imopVarPre223;
    struct timeval *_imopVarPre224;
    _imopVarPre223 = ((void *) 0);
    _imopVarPre224 = &tv;
    gettimeofday(_imopVarPre224, _imopVarPre223);
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
        void *_imopVarPre227;
        struct timeval *_imopVarPre228;
        _imopVarPre227 = ((void *) 0);
        _imopVarPre228 = &tv;
        gettimeofday(_imopVarPre228, _imopVarPre227);
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
        void *_imopVarPre231;
        struct timeval *_imopVarPre232;
        _imopVarPre231 = ((void *) 0);
        _imopVarPre232 = &tv;
        gettimeofday(_imopVarPre232, _imopVarPre231);
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
        void *_imopVarPre235;
        struct timeval *_imopVarPre236;
        _imopVarPre235 = ((void *) 0);
        _imopVarPre236 = &tv;
        gettimeofday(_imopVarPre236, _imopVarPre235);
        fini = tv.tv_sec * 1000000l + tv.tv_usec;
    }
    unsigned long long int _imopVarPre239;
    unsigned long long int *_imopVarPre240;
    _imopVarPre239 = timer->init;
    _imopVarPre240 = &timer->elapsed;
    accumulate_time(_imopVarPre240, _imopVarPre239, fini);
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
        void *_imopVarPre243;
        struct timeval *_imopVarPre244;
        _imopVarPre243 = ((void *) 0);
        _imopVarPre244 = &tv;
        gettimeofday(_imopVarPre244, _imopVarPre243);
        fini = tv.tv_sec * 1000000l + tv.tv_usec;
    }
    if (numNotRunning & 0x2) {
        unsigned long long int _imopVarPre247;
        unsigned long long int *_imopVarPre248;
        _imopVarPre247 = timer->init;
        _imopVarPre248 = &timer->elapsed;
        accumulate_time(_imopVarPre248, _imopVarPre247, fini);
        timer->init = fini;
    }
    if (numNotRunning & 0x1) {
        unsigned long long int _imopVarPre251;
        unsigned long long int *_imopVarPre252;
        _imopVarPre251 = subtimer->init;
        _imopVarPre252 = &subtimer->elapsed;
        accumulate_time(_imopVarPre252, _imopVarPre251, fini);
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
    unsigned long long int _imopVarPre253;
    _imopVarPre253 = get_time();
    timers->wall_begin = _imopVarPre253;
    timers->current = pb_TimerID_NONE;
    timers->async_markers = ((void *) 0);
    for (n = 0; n < pb_TimerID_LAST; n++) {
        struct pb_Timer *_imopVarPre255;
        _imopVarPre255 = &timers->timers[n];
        pb_ResetTimer(_imopVarPre255);
        timers->sub_timer_list[n] = ((void *) 0);
    }
}
void pb_AddSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID pb_Category) {
    unsigned long int _imopVarPre258;
    void *_imopVarPre259;
    _imopVarPre258 = sizeof(struct pb_SubTimer);
    _imopVarPre259 = malloc(_imopVarPre258);
    struct pb_SubTimer *subtimer = (struct pb_SubTimer *) _imopVarPre259;
    unsigned long int _imopVarPre260;
    _imopVarPre260 = strlen(label);
    int len = _imopVarPre260;
    unsigned long int _imopVarPre263;
    void *_imopVarPre264;
    _imopVarPre263 = sizeof(char) * (len + 1);
    _imopVarPre264 = malloc(_imopVarPre263);
    subtimer->label = (char *) _imopVarPre264;
    int _imopVarPre276;
    int _imopVarPre277;
    char *_imopVarPre278;
    unsigned int _imopVarPre279;
    char *_imopVarPre280;
    _imopVarPre276 = 2 > 1;
    if (_imopVarPre276) {
        _imopVarPre277 = 1;
    } else {
        _imopVarPre277 = 0;
    }
    _imopVarPre278 = subtimer->label;
    _imopVarPre279 = __builtin_object_size(_imopVarPre278, _imopVarPre277);
    _imopVarPre280 = subtimer->label;
    __builtin___sprintf_chk(_imopVarPre280, 0, _imopVarPre279, "%s\0", label);
    struct pb_Timer *_imopVarPre282;
    _imopVarPre282 = &subtimer->timer;
    pb_ResetTimer(_imopVarPre282);
    subtimer->next = ((void *) 0);
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[pb_Category];
    if (subtimerlist == ((void *) 0)) {
        unsigned long int _imopVarPre285;
        void *_imopVarPre286;
        _imopVarPre285 = sizeof(struct pb_SubTimerList);
        _imopVarPre286 = malloc(_imopVarPre285);
        subtimerlist = (struct pb_SubTimerList *) _imopVarPre286;
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
    int _imopVarPre288;
    _imopVarPre288 = timers->current != category;
    if (_imopVarPre288) {
        _imopVarPre288 = timers->current != pb_TimerID_NONE;
    }
    if (_imopVarPre288) {
        topLevelToStop = &timers->timers[timers->current];
    }
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
    int _imopVarPre289;
    void *_imopVarPre290;
    _imopVarPre289 = (subtimerlist == ((void *) 0));
    if (_imopVarPre289) {
        _imopVarPre290 = ((void *) 0);
    } else {
        _imopVarPre290 = subtimerlist->current;
    }
    struct pb_SubTimer *curr = _imopVarPre290;
    if (timers->current != pb_TimerID_NONE) {
        int _imopVarPre292;
        _imopVarPre292 = curr != ((void *) 0);
        if (_imopVarPre292) {
            _imopVarPre292 = topLevelToStop != ((void *) 0);
        }
        if (_imopVarPre292) {
            struct pb_Timer *_imopVarPre294;
            _imopVarPre294 = &curr->timer;
            pb_StopTimerAndSubTimer(topLevelToStop, _imopVarPre294);
        } else {
            if (curr != ((void *) 0)) {
                struct pb_Timer *_imopVarPre296;
                _imopVarPre296 = &curr->timer;
                pb_StopTimer(_imopVarPre296);
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
                char *_imopVarPre299;
                int _imopVarPre300;
                _imopVarPre299 = subtimer->label;
                _imopVarPre300 = strcmp(_imopVarPre299, label);
                if (_imopVarPre300 == 0) {
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
        int _imopVarPre302;
        _imopVarPre302 = category != timers->current;
        if (_imopVarPre302) {
            _imopVarPre302 = subtimer != ((void *) 0);
        }
        if (_imopVarPre302) {
            struct pb_Timer *_imopVarPre305;
            struct pb_Timer *_imopVarPre306;
            _imopVarPre305 = &subtimer->timer;
            _imopVarPre306 = &timers->timers[category];
            pb_StartTimerAndSubTimer(_imopVarPre306, _imopVarPre305);
        } else {
            if (subtimer != ((void *) 0)) {
                struct pb_Timer *_imopVarPre308;
                _imopVarPre308 = &subtimer->timer;
                pb_StartTimer(_imopVarPre308);
            } else {
                struct pb_Timer *_imopVarPre310;
                _imopVarPre310 = &timers->timers[category];
                pb_StartTimer(_imopVarPre310);
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
            struct pb_Timer *_imopVarPre313;
            struct pb_Timer *_imopVarPre314;
            _imopVarPre313 = &currSubTimer->timer;
            _imopVarPre314 = &timers->timers[timers->current];
            pb_StopTimerAndSubTimer(_imopVarPre314, _imopVarPre313);
        } else {
            struct pb_Timer *_imopVarPre316;
            _imopVarPre316 = &timers->timers[timers->current];
            pb_StopTimer(_imopVarPre316);
        }
    }
    timers->current = timer;
    if (timer != pb_TimerID_NONE) {
        struct pb_Timer *_imopVarPre318;
        _imopVarPre318 = &timers->timers[timer];
        pb_StartTimer(_imopVarPre318);
    }
}
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    unsigned long long int _imopVarPre319;
    _imopVarPre319 = get_time();
    pb_Timestamp wall_end = _imopVarPre319;
    struct pb_Timer *t = timers->timers;
    struct pb_SubTimer *sub = ((void *) 0);
    int maxSubLength;
    const char *categories[] = {"IO", "Kernel" , "Copy" , "Driver" , "Copy Async" , "Compute"};
    const int maxCategoryLength = 10;
    int i;
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        struct pb_Timer *_imopVarPre322;
        double _imopVarPre323;
        _imopVarPre322 = &t[i];
        _imopVarPre323 = pb_GetElapsedTime(_imopVarPre322);
        if (_imopVarPre323 != 0) {
            struct pb_Timer *_imopVarPre329;
            double _imopVarPre330;
            char *_imopVarPre331;
            _imopVarPre329 = &t[i];
            _imopVarPre330 = pb_GetElapsedTime(_imopVarPre329);
            _imopVarPre331 = categories[i - 1];
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre331, _imopVarPre330);
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                sub = timers->sub_timer_list[i]->subtimer_list;
                maxSubLength = 0;
                while (sub != ((void *) 0)) {
                    {
                        char *_imopVarPre334;
                        unsigned long int _imopVarPre335;
                        _imopVarPre334 = sub->label;
                        _imopVarPre335 = strlen(_imopVarPre334);
                        if (_imopVarPre335 > maxSubLength) {
                            char *_imopVarPre337;
                            unsigned long int _imopVarPre338;
                            _imopVarPre337 = sub->label;
                            _imopVarPre338 = strlen(_imopVarPre337);
                            maxSubLength = _imopVarPre338;
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
                        struct pb_Timer *_imopVarPre344;
                        double _imopVarPre345;
                        char *_imopVarPre346;
                        _imopVarPre344 = &sub->timer;
                        _imopVarPre345 = pb_GetElapsedTime(_imopVarPre344);
                        _imopVarPre346 = sub->label;
                        printf(" -%-*s: %f\n", maxSubLength, _imopVarPre346, _imopVarPre345);
                        sub = sub->next;
                    }
                }
            }
        }
    }
    struct pb_Timer *_imopVarPre349;
    double _imopVarPre350;
    _imopVarPre349 = &t[pb_TimerID_OVERLAP];
    _imopVarPre350 = pb_GetElapsedTime(_imopVarPre349);
    if (_imopVarPre350 != 0) {
        struct pb_Timer *_imopVarPre355;
        double _imopVarPre356;
        _imopVarPre355 = &t[pb_TimerID_OVERLAP];
        _imopVarPre356 = pb_GetElapsedTime(_imopVarPre355);
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre356);
    }
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    printf("Timer Wall Time: %f\n", walltime);
}
void pb_DestroyTimerSet(struct pb_TimerSet *timers) {
    struct pb_async_time_marker_list **event = &(timers->async_markers);
    while (*event != ((void *) 0)) {
        {
            struct pb_async_time_marker_list **next = &((*event)->next);
            struct pb_async_time_marker_list *_imopVarPre358;
            _imopVarPre358 = *event;
            free(_imopVarPre358);
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
                    char *_imopVarPre360;
                    _imopVarPre360 = subtimer->label;
                    free(_imopVarPre360);
                    prev = subtimer;
                    subtimer = subtimer->next;
                    free(prev);
                }
            }
            struct pb_SubTimerList *_imopVarPre362;
            _imopVarPre362 = timers->sub_timer_list[i];
            free(_imopVarPre362);
        }
    }
}
void dump_histo_img(unsigned char *histo, unsigned int height , unsigned int width , const char *filename);
struct stUn_imopVarPre12 {
    unsigned char B;
    unsigned char G;
    unsigned char R;
} ;
typedef struct stUn_imopVarPre12 RGB;
struct stUn_imopVarPre13 {
    unsigned int filesz;
    unsigned short creator1;
    unsigned short creator2;
    unsigned int bmp_offset;
} ;
typedef struct stUn_imopVarPre13 bmpfile_header_t;
struct stUn_imopVarPre14 {
    unsigned int header_sz;
    unsigned int width;
    unsigned int height;
    unsigned short nplanes;
    unsigned short bitspp;
    unsigned int compress_type;
    unsigned int bmp_bytesz;
    unsigned int hres;
    unsigned int vres;
    unsigned int ncolors;
    unsigned int nimpcolors;
} ;
typedef struct stUn_imopVarPre14 bmp_dib_header_t;
enum enum_imopVarPre15 {
    BI_RGB = 0, BI_RLE8 , BI_RLE4 , BI_BITFIELDS , BI_JPEG , BI_PNG
} ;
typedef enum enum_imopVarPre15 bmp_compression_method_t;
struct stUn_imopVarPre16 {
    unsigned char magic[2];
    bmpfile_header_t file_header;
    bmp_dib_header_t dib_header;
    unsigned int *palette;
    void *pixel_map;
} ;
typedef struct stUn_imopVarPre16 bmp_image;
void create_bmp(RGB *bitmap, int height , int width , const char *filename) {
    bmp_image image;
    int padded_width = 4 * (((width * 24) + 31) / 32);
    padded_width -= width * sizeof(RGB);
    unsigned long int _imopVarPre365;
    void *_imopVarPre366;
    _imopVarPre365 = sizeof(char);
    _imopVarPre366 = calloc(padded_width, _imopVarPre365);
    char *pad = (char *) _imopVarPre366;
    image.magic[0] = 'B';
    image.magic[1] = 'M';
    image.file_header.filesz = 2 * sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t) + height * width * sizeof(RGB);
    image.file_header.creator1 = image.file_header.creator2 = 0;
    image.file_header.bmp_offset = 2 * sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t);
    image.dib_header.header_sz = 40;
    image.dib_header.width = width;
    image.dib_header.height = height;
    image.dib_header.nplanes = 1;
    image.dib_header.bitspp = 24;
    image.dib_header.compress_type = 0;
    image.dib_header.bmp_bytesz = width * height * sizeof(RGB);
    image.dib_header.hres = 0;
    image.dib_header.vres = 0;
    image.dib_header.ncolors = 0;
    image.dib_header.nimpcolors = 0;
    struct __sFILE *_imopVarPre367;
    _imopVarPre367 = fopen(filename, "wb");
    FILE *out_file = _imopVarPre367;
    unsigned long int _imopVarPre370;
    unsigned char *_imopVarPre371;
    _imopVarPre370 = sizeof(char);
    _imopVarPre371 = image.magic;
    fwrite(_imopVarPre371, _imopVarPre370, 2, out_file);
    unsigned long int _imopVarPre375;
    unsigned long int _imopVarPre376;
    struct stUn_imopVarPre13 *_imopVarPre377;
    _imopVarPre375 = sizeof(bmpfile_header_t);
    _imopVarPre376 = sizeof(char);
    _imopVarPre377 = &(image.file_header);
    fwrite(_imopVarPre377, _imopVarPre376, _imopVarPre375, out_file);
    unsigned long int _imopVarPre381;
    unsigned long int _imopVarPre382;
    struct stUn_imopVarPre14 *_imopVarPre383;
    _imopVarPre381 = sizeof(bmp_dib_header_t);
    _imopVarPre382 = sizeof(char);
    _imopVarPre383 = &(image.dib_header);
    fwrite(_imopVarPre383, _imopVarPre382, _imopVarPre381, out_file);
    int h;
    for (h = height - 1; h >= 0; h--) {
        unsigned long int _imopVarPre386;
        struct stUn_imopVarPre12 *_imopVarPre387;
        _imopVarPre386 = sizeof(RGB);
        _imopVarPre387 = &bitmap[h * width];
        fwrite(_imopVarPre387, _imopVarPre386, width, out_file);
        unsigned long int _imopVarPre389;
        _imopVarPre389 = sizeof(char);
        fwrite(pad, _imopVarPre389, padded_width, out_file);
    }
    fclose(out_file);
}
RGB HSVtoRGB(float h, float s , float v) {
    int i;
    float f;
    float p;
    float q;
    float t;
    float r;
    float g;
    float b;
    RGB value = {0, 0 , 0};
    if (s == 0) {
        r = g = b = v;
        return value;
    }
    h /= 60;
    i = floor(h);
    f = h - i;
    p = v * (1 - s);
    q = v * (1 - s * f);
    t = v * (1 - s * (1 - f));
    switch (i) {
        {
            case 0: r = v;
            g = t;
            b = p;
            break;
            case 1: r = q;
            g = v;
            b = p;
            break;
            case 2: r = p;
            g = v;
            b = t;
            break;
            case 3: r = p;
            g = q;
            b = v;
            break;
            case 4: r = t;
            g = p;
            b = v;
            break;
            default: r = v;
            g = p;
            b = q;
            break;
        }
    }
    unsigned int temp = r * 255;
    value.R = temp;
    temp = g * 255;
    value.G = temp;
    temp = b * 255;
    value.B = temp;
    return value;
}
void dump_histo_img(unsigned char *histo, unsigned int height , unsigned int width , const char *filename) {
    unsigned long int _imopVarPre392;
    void *_imopVarPre393;
    _imopVarPre392 = height * width * sizeof(RGB);
    _imopVarPre393 = malloc(_imopVarPre392);
    RGB *pixel_map = (RGB *) _imopVarPre393;
    size_t y;
    size_t x;
    for (y = 0; y < height; ++y) {
        for (x = 0; x < width; ++x) {
            unsigned char value = histo[y * width + x];
            if (value == 0) {
                pixel_map[y * width + x].R = 0;
                pixel_map[y * width + x].G = 0;
                pixel_map[y * width + x].B = 0;
            } else {
                double _imopVarPre401;
                double _imopVarPre402;
                double _imopVarPre403;
                struct stUn_imopVarPre12 _imopVarPre404;
                _imopVarPre401 = 1 + 63.0 * ((float) value) / ((float) 255);
                _imopVarPre402 = cbrt(_imopVarPre401);
                _imopVarPre403 = _imopVarPre402 / 4;
                _imopVarPre404 = HSVtoRGB(0.0, 1.0, _imopVarPre403);
                pixel_map[y * width + x] = _imopVarPre404;
            }
        }
    }
    create_bmp(pixel_map, height, width, filename);
    free(pixel_map);
}
int main(int argc, char *argv[]) {
    struct pb_TimerSet timers;
    struct pb_Parameters *parameters;
    printf("Base implementation of histogramming.\n");
    printf("Maintained by Nady Obeid <obeid1@ece.uiuc.edu>\n");
    int *_imopVarPre406;
    struct pb_Parameters *_imopVarPre407;
    _imopVarPre406 = &argc;
    _imopVarPre407 = pb_ReadParameters(_imopVarPre406, argv);
    parameters = _imopVarPre407;
    if (!parameters) {
        return -1;
    }
    if (!parameters->inpFiles[0]) {
        fputs("Input file expected\n", __stderrp);
        return -1;
    }
    int numIterations;
    if (argc >= 2) {
        char *_imopVarPre409;
        int _imopVarPre410;
        _imopVarPre409 = argv[1];
        _imopVarPre410 = atoi(_imopVarPre409);
        numIterations = _imopVarPre410;
    } else {
        fputs("Expected at least one command line argument\n", __stderrp);
        return -1;
    }
    struct pb_TimerSet *_imopVarPre412;
    _imopVarPre412 = &timers;
    pb_InitializeTimerSet(_imopVarPre412);
    char *inputStr = "Input";
    char *outputStr = "Output";
    struct pb_TimerSet *_imopVarPre414;
    _imopVarPre414 = &timers;
    pb_AddSubTimer(_imopVarPre414, inputStr, pb_TimerID_IO);
    struct pb_TimerSet *_imopVarPre416;
    _imopVarPre416 = &timers;
    pb_AddSubTimer(_imopVarPre416, outputStr, pb_TimerID_IO);
    struct pb_TimerSet *_imopVarPre418;
    _imopVarPre418 = &timers;
    pb_SwitchToSubTimer(_imopVarPre418, inputStr, pb_TimerID_IO);
    unsigned int img_width;
    unsigned int img_height;
    unsigned int histo_width;
    unsigned int histo_height;
    char *_imopVarPre420;
    struct __sFILE *_imopVarPre421;
    _imopVarPre420 = parameters->inpFiles[0];
    _imopVarPre421 = fopen(_imopVarPre420, "rb");
    FILE *f = _imopVarPre421;
    int result = 0;
    unsigned long int _imopVarPre424;
    unsigned int *_imopVarPre425;
    unsigned long int _imopVarPre426;
    _imopVarPre424 = sizeof(unsigned int);
    _imopVarPre425 = &img_width;
    _imopVarPre426 = fread(_imopVarPre425, _imopVarPre424, 1, f);
    result += _imopVarPre426;
    unsigned long int _imopVarPre429;
    unsigned int *_imopVarPre430;
    unsigned long int _imopVarPre431;
    _imopVarPre429 = sizeof(unsigned int);
    _imopVarPre430 = &img_height;
    _imopVarPre431 = fread(_imopVarPre430, _imopVarPre429, 1, f);
    result += _imopVarPre431;
    unsigned long int _imopVarPre434;
    unsigned int *_imopVarPre435;
    unsigned long int _imopVarPre436;
    _imopVarPre434 = sizeof(unsigned int);
    _imopVarPre435 = &histo_width;
    _imopVarPre436 = fread(_imopVarPre435, _imopVarPre434, 1, f);
    result += _imopVarPre436;
    unsigned long int _imopVarPre439;
    unsigned int *_imopVarPre440;
    unsigned long int _imopVarPre441;
    _imopVarPre439 = sizeof(unsigned int);
    _imopVarPre440 = &histo_height;
    _imopVarPre441 = fread(_imopVarPre440, _imopVarPre439, 1, f);
    result += _imopVarPre441;
    if (result != 4) {
        fputs("Error reading input and output dimensions from file\n", __stderrp);
        return -1;
    }
    unsigned long int _imopVarPre444;
    void *_imopVarPre445;
    _imopVarPre444 = img_width * img_height * sizeof(unsigned int);
    _imopVarPre445 = malloc(_imopVarPre444);
    unsigned int *img = (unsigned int *) _imopVarPre445;
    unsigned long int _imopVarPre449;
    int _imopVarPre450;
    void *_imopVarPre451;
    _imopVarPre449 = sizeof(unsigned char);
    _imopVarPre450 = histo_width * histo_height;
    _imopVarPre451 = calloc(_imopVarPre450, _imopVarPre449);
    unsigned char *histo = (unsigned char *) _imopVarPre451;
    struct pb_TimerSet *_imopVarPre453;
    _imopVarPre453 = &timers;
    pb_SwitchToSubTimer(_imopVarPre453, "Input", pb_TimerID_IO);
    int _imopVarPre456;
    unsigned long int _imopVarPre457;
    unsigned long int _imopVarPre458;
    _imopVarPre456 = img_width * img_height;
    _imopVarPre457 = sizeof(unsigned int);
    _imopVarPre458 = fread(img, _imopVarPre457, _imopVarPre456, f);
    result = _imopVarPre458;
    fclose(f);
    if (result != img_width * img_height) {
        fputs("Error reading input array from file\n", __stderrp);
        return -1;
    }
    struct pb_TimerSet *_imopVarPre460;
    _imopVarPre460 = &timers;
    pb_SwitchToTimer(_imopVarPre460, pb_TimerID_COMPUTE);
    int iter;
    for (iter = 0; iter < numIterations; iter++) {
        unsigned int _imopVarPre463;
        unsigned long int _imopVarPre464;
        _imopVarPre463 = __builtin_object_size(histo, 0);
        _imopVarPre464 = histo_height * histo_width * sizeof(unsigned char);
        __builtin___memset_chk(histo, 0, _imopVarPre464, _imopVarPre463);
        unsigned int i;
#pragma omp parallel
        {
#pragma omp for
            for (i = 0; i < img_width * img_height; ++i) {
                const unsigned int value = img[i];
#pragma omp critical
                {
                    if (histo[value] < 255) {
                        ++histo[value];
                    }
                }
            }
        }
    }
    struct pb_TimerSet *_imopVarPre466;
    _imopVarPre466 = &timers;
    pb_SwitchToSubTimer(_imopVarPre466, outputStr, pb_TimerID_IO);
    if (parameters->outFile) {
        char *_imopVarPre468;
        _imopVarPre468 = parameters->outFile;
        dump_histo_img(histo, histo_height, histo_width, _imopVarPre468);
    }
    struct pb_TimerSet *_imopVarPre470;
    _imopVarPre470 = &timers;
    pb_SwitchToTimer(_imopVarPre470, pb_TimerID_COMPUTE);
    free(img);
    free(histo);
    struct pb_TimerSet *_imopVarPre472;
    _imopVarPre472 = &timers;
    pb_SwitchToTimer(_imopVarPre472, pb_TimerID_NONE);
    printf("\n");
    struct pb_TimerSet *_imopVarPre474;
    _imopVarPre474 = &timers;
    pb_PrintTimerSet(_imopVarPre474);
    pb_FreeParameters(parameters);
    return 0;
}
