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
    int _imopVarPre12;
    int _imopVarPre16;
    _imopVarPre12 = --_p->_w >= 0;
    if (!_imopVarPre12) {
        _imopVarPre16 = _p->_w >= _p->_lbfsize;
        if (_imopVarPre16) {
            _imopVarPre16 = (char) _c != '\n';
        }
        _imopVarPre12 = _imopVarPre16;
    }
    if (_imopVarPre12) {
        return (*_p->_p++ = _c);
    } else {
        int _imopVarPre18;
        _imopVarPre18 = __swbuf(_c, _p);
        return _imopVarPre18;
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
typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
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
typedef __darwin_intptr_t intptr_t;
typedef unsigned long uintptr_t;
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
typedef struct rusage_info_v3 rusage_info_current;
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
typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned long long u_int64_t;
typedef int64_t register_t;
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
typedef u_int64_t syscall_arg_t;
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
    int _imopVarPre97;
    float _imopVarPre98;
    float _imopVarPre99;
    _imopVarPre97 = __x == __x;
    if (_imopVarPre97) {
        _imopVarPre98 = __builtin_fabsf(__x);
        _imopVarPre99 = __builtin_inff();
        _imopVarPre97 = _imopVarPre98 != _imopVarPre99;
    }
    return _imopVarPre97;
}
extern __inline int __inline_isfinited(double __x) {
    int _imopVarPre103;
    double _imopVarPre104;
    double _imopVarPre105;
    _imopVarPre103 = __x == __x;
    if (_imopVarPre103) {
        _imopVarPre104 = __builtin_fabs(__x);
        _imopVarPre105 = __builtin_inf();
        _imopVarPre103 = _imopVarPre104 != _imopVarPre105;
    }
    return _imopVarPre103;
}
extern __inline int __inline_isfinitel(long double __x) {
    int _imopVarPre109;
    long double _imopVarPre110;
    long double _imopVarPre111;
    _imopVarPre109 = __x == __x;
    if (_imopVarPre109) {
        _imopVarPre110 = __builtin_fabsl(__x);
        _imopVarPre111 = __builtin_infl();
        _imopVarPre109 = _imopVarPre110 != _imopVarPre111;
    }
    return _imopVarPre109;
}
extern __inline int __inline_isinff(float __x) {
    float _imopVarPre114;
    float _imopVarPre115;
    _imopVarPre114 = __builtin_fabsf(__x);
    _imopVarPre115 = __builtin_inff();
    return _imopVarPre114 == _imopVarPre115;
}
extern __inline int __inline_isinfd(double __x) {
    double _imopVarPre118;
    double _imopVarPre119;
    _imopVarPre118 = __builtin_fabs(__x);
    _imopVarPre119 = __builtin_inf();
    return _imopVarPre118 == _imopVarPre119;
}
extern __inline int __inline_isinfl(long double __x) {
    long double _imopVarPre122;
    long double _imopVarPre123;
    _imopVarPre122 = __builtin_fabsl(__x);
    _imopVarPre123 = __builtin_infl();
    return _imopVarPre122 == _imopVarPre123;
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
    int _imopVarPre126;
    float _imopVarPre127;
    _imopVarPre126 = __inline_isfinitef(__x);
    if (_imopVarPre126) {
        _imopVarPre127 = __builtin_fabsf(__x);
        _imopVarPre126 = _imopVarPre127 >= 1.17549435082228750797e-38F;
    }
    return _imopVarPre126;
}
extern __inline int __inline_isnormald(double __x) {
    int _imopVarPre130;
    double _imopVarPre131;
    _imopVarPre130 = __inline_isfinited(__x);
    if (_imopVarPre130) {
        _imopVarPre131 = __builtin_fabs(__x);
        _imopVarPre130 = _imopVarPre131 >= ((double) 2.22507385850720138309e-308L);
    }
    return _imopVarPre130;
}
extern __inline int __inline_isnormall(long double __x) {
    int _imopVarPre134;
    long double _imopVarPre135;
    _imopVarPre134 = __inline_isfinitel(__x);
    if (_imopVarPre134) {
        _imopVarPre135 = __builtin_fabsl(__x);
        _imopVarPre134 = _imopVarPre135 >= 3.36210314311209350626e-4932L;
    }
    return _imopVarPre134;
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
    struct __float2 _imopVarPre136;
    _imopVarPre136 = __sincosf_stret(__x);
    const struct __float2 __stret = _imopVarPre136;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincos(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre137;
    _imopVarPre137 = __sincos_stret(__x);
    const struct __double2 __stret = _imopVarPre137;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospif(float __x, float *__sinp , float *__cosp) {
    struct __float2 _imopVarPre138;
    _imopVarPre138 = __sincospif_stret(__x);
    const struct __float2 __stret = _imopVarPre138;
    *__sinp = __stret.__sinval;
    *__cosp = __stret.__cosval;
}
extern __inline void __sincospi(double __x, double *__sinp , double *__cosp) {
    struct __double2 _imopVarPre139;
    _imopVarPre139 = __sincospi_stret(__x);
    const struct __double2 __stret = _imopVarPre139;
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
typedef int boolean;
struct stUn_imopVarPre11 {
    double real;
    double imag;
} ;
typedef struct stUn_imopVarPre11 dcomplex;
extern double randlc(double *, double );
extern void vranlc(int , double * , double  , double *);
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static int nx[11 + 1];
static int ny[11 + 1];
static int nz[11 + 1];
static char Class;
static int debug_vec[8];
static int m1[11 + 1];
static int m2[11 + 1];
static int m3[11 + 1];
static int lt;
static int lb;
static int is1;
static int is2;
static int is3;
static int ie1;
static int ie2;
static int ie3;
static void setup(int *n1, int *n2 , int *n3 , int lt);
static void mg3P(double ****u, double ***v , double ****r , double a[4] , double c[4] , int n1 , int n2 , int n3 , int k);
static void psinv(double ***r, double ***u , int n1 , int n2 , int n3 , double c[4] , int k);
static void resid(double ***u, double ***v , double ***r , int n1 , int n2 , int n3 , double a[4] , int k);
static void rprj3(double ***r, int m1k , int m2k , int m3k , double ***s , int m1j , int m2j , int m3j , int k);
static void interp(double ***z, int mm1 , int mm2 , int mm3 , double ***u , int n1 , int n2 , int n3 , int k);
static void norm2u3(double ***r, int n1 , int n2 , int n3 , double *rnm2 , double *rnmu , int nx , int ny , int nz);
static void rep_nrm(double ***u, int n1 , int n2 , int n3 , char *title , int kk);
static void comm3(double ***u, int n1 , int n2 , int n3 , int kk);
static void zran3(double ***z, int n1 , int n2 , int n3 , int nx , int ny , int k);
static void showall(double ***z, int n1 , int n2 , int n3);
static double power(double a, int n);
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind);
static void zero3(double ***z, int n1 , int n2 , int n3);
static void nonzero(double ***z, int n1 , int n2 , int n3);
int main(int argc, char *argv[]) {
    int k;
    int it;
    double t;
    double tinit;
    double mflops;
    int nthreads = 1;
    double ****u;
    double ***v;
    double ****r;
    double a[4];
    double c[4];
    double rnm2;
    double rnmu;
    double epsilon = 1.0e-8;
    int n1;
    int n2;
    int n3;
    int nit;
    double verify_value;
    boolean verified;
    int i;
    int j;
    int l;
    FILE *fp;
    timer_clear(1);
    timer_clear(2);
    timer_start(2);
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - MG Benchmark\n\n");
    fp = fopen("mg.input", "r");
    if (fp != ((void *) 0)) {
        printf(" Reading from input file mg.input\n");
        int *_imopVarPre141;
        _imopVarPre141 = &lt;
        fscanf(fp, "%d", _imopVarPre141);
        int _imopVarPre143;
        _imopVarPre143 = fgetc(fp);
        while (_imopVarPre143 != '\n') {
            ;
            _imopVarPre143 = fgetc(fp);
        }
        int *_imopVarPre147;
        int *_imopVarPre148;
        int *_imopVarPre149;
        _imopVarPre147 = &nz[lt];
        _imopVarPre148 = &ny[lt];
        _imopVarPre149 = &nx[lt];
        fscanf(fp, "%d%d%d", _imopVarPre149, _imopVarPre148, _imopVarPre147);
        int _imopVarPre151;
        _imopVarPre151 = fgetc(fp);
        while (_imopVarPre151 != '\n') {
            ;
            _imopVarPre151 = fgetc(fp);
        }
        int *_imopVarPre153;
        _imopVarPre153 = &nit;
        fscanf(fp, "%d", _imopVarPre153);
        int _imopVarPre155;
        _imopVarPre155 = fgetc(fp);
        while (_imopVarPre155 != '\n') {
            ;
            _imopVarPre155 = fgetc(fp);
        }
        for (i = 0; i <= 7; i++) {
            int *_imopVarPre157;
            _imopVarPre157 = &debug_vec[i];
            fscanf(fp, "%d", _imopVarPre157);
        }
        fclose(fp);
    } else {
        printf(" No input file. Using compiled defaults\n");
        lt = 5;
        nit = 4;
        nx[lt] = 32;
        ny[lt] = 32;
        nz[lt] = 32;
        for (i = 0; i <= 7; i++) {
            debug_vec[i] = 0;
        }
    }
    int _imopVarPre158;
    _imopVarPre158 = (nx[lt] != ny[lt]);
    if (!_imopVarPre158) {
        _imopVarPre158 = (nx[lt] != nz[lt]);
    }
    if (_imopVarPre158) {
        Class = 'U';
    } else {
        int _imopVarPre160;
        _imopVarPre160 = nx[lt] == 32;
        if (_imopVarPre160) {
            _imopVarPre160 = nit == 4;
        }
        if (_imopVarPre160) {
            Class = 'S';
        } else {
            int _imopVarPre162;
            _imopVarPre162 = nx[lt] == 64;
            if (_imopVarPre162) {
                _imopVarPre162 = nit == 40;
            }
            if (_imopVarPre162) {
                Class = 'W';
            } else {
                int _imopVarPre164;
                _imopVarPre164 = nx[lt] == 256;
                if (_imopVarPre164) {
                    _imopVarPre164 = nit == 20;
                }
                if (_imopVarPre164) {
                    Class = 'B';
                } else {
                    int _imopVarPre166;
                    _imopVarPre166 = nx[lt] == 512;
                    if (_imopVarPre166) {
                        _imopVarPre166 = nit == 20;
                    }
                    if (_imopVarPre166) {
                        Class = 'C';
                    } else {
                        int _imopVarPre168;
                        _imopVarPre168 = nx[lt] == 256;
                        if (_imopVarPre168) {
                            _imopVarPre168 = nit == 4;
                        }
                        if (_imopVarPre168) {
                            Class = 'A';
                        } else {
                            Class = 'U';
                        }
                    }
                }
            }
        }
    }
    a[0] = -8.0 / 3.0;
    a[1] = 0.0;
    a[2] = 1.0 / 6.0;
    a[3] = 1.0 / 12.0;
    int _imopVarPre169;
    int _imopVarPre170;
    _imopVarPre169 = Class == 'A';
    if (!_imopVarPre169) {
        _imopVarPre170 = Class == 'S';
        if (!_imopVarPre170) {
            _imopVarPre170 = Class == 'W';
        }
        _imopVarPre169 = _imopVarPre170;
    }
    if (_imopVarPre169) {
        c[0] = -3.0 / 8.0;
        c[1] = 1.0 / 32.0;
        c[2] = -1.0 / 64.0;
        c[3] = 0.0;
    } else {
        c[0] = -3.0 / 17.0;
        c[1] = 1.0 / 33.0;
        c[2] = -1.0 / 61.0;
        c[3] = 0.0;
    }
    lb = 1;
    int *_imopVarPre174;
    int *_imopVarPre175;
    int *_imopVarPre176;
    _imopVarPre174 = &n3;
    _imopVarPre175 = &n2;
    _imopVarPre176 = &n1;
    setup(_imopVarPre176, _imopVarPre175, _imopVarPre174, lt);
    unsigned long int _imopVarPre179;
    void *_imopVarPre180;
    _imopVarPre179 = (lt + 1) * sizeof(double ***);
    _imopVarPre180 = malloc(_imopVarPre179);
    u = (double ****) _imopVarPre180;
    for (l = lt; l >= 1; l--) {
        unsigned long int _imopVarPre183;
        void *_imopVarPre184;
        _imopVarPre183 = m3[l] * sizeof(double **);
        _imopVarPre184 = malloc(_imopVarPre183);
        u[l] = (double ***) _imopVarPre184;
        for (k = 0; k < m3[l]; k++) {
            unsigned long int _imopVarPre187;
            void *_imopVarPre188;
            _imopVarPre187 = m2[l] * sizeof(double *);
            _imopVarPre188 = malloc(_imopVarPre187);
            u[l][k] = (double **) _imopVarPre188;
            for (j = 0; j < m2[l]; j++) {
                unsigned long int _imopVarPre191;
                void *_imopVarPre192;
                _imopVarPre191 = m1[l] * sizeof(double);
                _imopVarPre192 = malloc(_imopVarPre191);
                u[l][k][j] = (double *) _imopVarPre192;
            }
        }
    }
    unsigned long int _imopVarPre195;
    void *_imopVarPre196;
    _imopVarPre195 = m3[lt] * sizeof(double **);
    _imopVarPre196 = malloc(_imopVarPre195);
    v = (double ***) _imopVarPre196;
    for (k = 0; k < m3[lt]; k++) {
        unsigned long int _imopVarPre199;
        void *_imopVarPre200;
        _imopVarPre199 = m2[lt] * sizeof(double *);
        _imopVarPre200 = malloc(_imopVarPre199);
        v[k] = (double **) _imopVarPre200;
        for (j = 0; j < m2[lt]; j++) {
            unsigned long int _imopVarPre203;
            void *_imopVarPre204;
            _imopVarPre203 = m1[lt] * sizeof(double);
            _imopVarPre204 = malloc(_imopVarPre203);
            v[k][j] = (double *) _imopVarPre204;
        }
    }
    unsigned long int _imopVarPre207;
    void *_imopVarPre208;
    _imopVarPre207 = (lt + 1) * sizeof(double ***);
    _imopVarPre208 = malloc(_imopVarPre207);
    r = (double ****) _imopVarPre208;
    for (l = lt; l >= 1; l--) {
        unsigned long int _imopVarPre211;
        void *_imopVarPre212;
        _imopVarPre211 = m3[l] * sizeof(double **);
        _imopVarPre212 = malloc(_imopVarPre211);
        r[l] = (double ***) _imopVarPre212;
        for (k = 0; k < m3[l]; k++) {
            unsigned long int _imopVarPre215;
            void *_imopVarPre216;
            _imopVarPre215 = m2[l] * sizeof(double *);
            _imopVarPre216 = malloc(_imopVarPre215);
            r[l][k] = (double **) _imopVarPre216;
            for (j = 0; j < m2[l]; j++) {
                unsigned long int _imopVarPre219;
                void *_imopVarPre220;
                _imopVarPre219 = m1[l] * sizeof(double);
                _imopVarPre220 = malloc(_imopVarPre219);
                r[l][k][j] = (double *) _imopVarPre220;
            }
        }
    }
    double ***_imopVarPre222;
    _imopVarPre222 = u[lt];
    zero3(_imopVarPre222, n1, n2, n3);
    int _imopVarPre225;
    int _imopVarPre226;
    _imopVarPre225 = ny[lt];
    _imopVarPre226 = nx[lt];
    zran3(v, n1, n2, n3, _imopVarPre226, _imopVarPre225, lt);
    int _imopVarPre232;
    int _imopVarPre233;
    int _imopVarPre234;
    double *_imopVarPre235;
    double *_imopVarPre236;
    _imopVarPre232 = nz[lt];
    _imopVarPre233 = ny[lt];
    _imopVarPre234 = nx[lt];
    _imopVarPre235 = &rnmu;
    _imopVarPre236 = &rnm2;
    norm2u3(v, n1, n2, n3, _imopVarPre236, _imopVarPre235, _imopVarPre234, _imopVarPre233, _imopVarPre232);
    int _imopVarPre240;
    int _imopVarPre241;
    int _imopVarPre242;
    _imopVarPre240 = nz[lt];
    _imopVarPre241 = ny[lt];
    _imopVarPre242 = nx[lt];
    printf(" Size: %3dx%3dx%3d (class %1c)\n", _imopVarPre242, _imopVarPre241, _imopVarPre240, Class);
    printf(" Iterations: %3d\n", nit);
    double ***_imopVarPre245;
    double ***_imopVarPre246;
    _imopVarPre245 = r[lt];
    _imopVarPre246 = u[lt];
    resid(_imopVarPre246, v, _imopVarPre245, n1, n2, n3, a, lt);
    int _imopVarPre253;
    int _imopVarPre254;
    int _imopVarPre255;
    double *_imopVarPre256;
    double *_imopVarPre257;
    double ***_imopVarPre258;
    _imopVarPre253 = nz[lt];
    _imopVarPre254 = ny[lt];
    _imopVarPre255 = nx[lt];
    _imopVarPre256 = &rnmu;
    _imopVarPre257 = &rnm2;
    _imopVarPre258 = r[lt];
    norm2u3(_imopVarPre258, n1, n2, n3, _imopVarPre257, _imopVarPre256, _imopVarPre255, _imopVarPre254, _imopVarPre253);
    mg3P(u, v, r, a, c, n1, n2, n3, lt);
    double ***_imopVarPre261;
    double ***_imopVarPre262;
    _imopVarPre261 = r[lt];
    _imopVarPre262 = u[lt];
    resid(_imopVarPre262, v, _imopVarPre261, n1, n2, n3, a, lt);
    int *_imopVarPre266;
    int *_imopVarPre267;
    int *_imopVarPre268;
    _imopVarPre266 = &n3;
    _imopVarPre267 = &n2;
    _imopVarPre268 = &n1;
    setup(_imopVarPre268, _imopVarPre267, _imopVarPre266, lt);
    double ***_imopVarPre270;
    _imopVarPre270 = u[lt];
    zero3(_imopVarPre270, n1, n2, n3);
    int _imopVarPre273;
    int _imopVarPre274;
    _imopVarPre273 = ny[lt];
    _imopVarPre274 = nx[lt];
    zran3(v, n1, n2, n3, _imopVarPre274, _imopVarPre273, lt);
    timer_stop(2);
    timer_start(1);
    double ***_imopVarPre277;
    double ***_imopVarPre278;
    _imopVarPre277 = r[lt];
    _imopVarPre278 = u[lt];
    resid(_imopVarPre278, v, _imopVarPre277, n1, n2, n3, a, lt);
    int _imopVarPre285;
    int _imopVarPre286;
    int _imopVarPre287;
    double *_imopVarPre288;
    double *_imopVarPre289;
    double ***_imopVarPre290;
    _imopVarPre285 = nz[lt];
    _imopVarPre286 = ny[lt];
    _imopVarPre287 = nx[lt];
    _imopVarPre288 = &rnmu;
    _imopVarPre289 = &rnm2;
    _imopVarPre290 = r[lt];
    norm2u3(_imopVarPre290, n1, n2, n3, _imopVarPre289, _imopVarPre288, _imopVarPre287, _imopVarPre286, _imopVarPre285);
    for (it = 1; it <= nit; it++) {
        mg3P(u, v, r, a, c, n1, n2, n3, lt);
        double ***_imopVarPre293;
        double ***_imopVarPre294;
        _imopVarPre293 = r[lt];
        _imopVarPre294 = u[lt];
        resid(_imopVarPre294, v, _imopVarPre293, n1, n2, n3, a, lt);
    }
    int _imopVarPre301;
    int _imopVarPre302;
    int _imopVarPre303;
    double *_imopVarPre304;
    double *_imopVarPre305;
    double ***_imopVarPre306;
    _imopVarPre301 = nz[lt];
    _imopVarPre302 = ny[lt];
    _imopVarPre303 = nx[lt];
    _imopVarPre304 = &rnmu;
    _imopVarPre305 = &rnm2;
    _imopVarPre306 = r[lt];
    norm2u3(_imopVarPre306, n1, n2, n3, _imopVarPre305, _imopVarPre304, _imopVarPre303, _imopVarPre302, _imopVarPre301);
#pragma omp parallel
    {
    }
    timer_stop(1);
    t = timer_read(1);
    tinit = timer_read(2);
    verified = 0;
    verify_value = 0.0;
    printf(" Initialization time: %15.3f seconds\n", tinit);
    printf(" Benchmark completed\n");
    if (Class != 'U') {
        if (Class == 'S') {
            verify_value = 0.530770700573e-04;
        } else {
            if (Class == 'W') {
                verify_value = 0.250391406439e-17;
            } else {
                if (Class == 'A') {
                    verify_value = 0.2433365309e-5;
                } else {
                    if (Class == 'B') {
                        verify_value = 0.180056440132e-5;
                    } else {
                        if (Class == 'C') {
                            verify_value = 0.570674826298e-06;
                        }
                    }
                }
            }
        }
        double _imopVarPre309;
        double _imopVarPre310;
        _imopVarPre309 = rnm2 - verify_value;
        _imopVarPre310 = fabs(_imopVarPre309);
        if (_imopVarPre310 <= epsilon) {
            verified = 1;
            printf(" VERIFICATION SUCCESSFUL\n");
            printf(" L2 Norm is %20.12e\n", rnm2);
            double _imopVarPre312;
            _imopVarPre312 = rnm2 - verify_value;
            printf(" Error is   %20.12e\n", _imopVarPre312);
        } else {
            verified = 0;
            printf(" VERIFICATION FAILED\n");
            printf(" L2 Norm is             %20.12e\n", rnm2);
            printf(" The correct L2 Norm is %20.12e\n", verify_value);
        }
    } else {
        verified = 0;
        printf(" Problem size unknown\n");
        printf(" NO VERIFICATION PERFORMED\n");
    }
    if (t != 0.0) {
        int nn = nx[lt] * ny[lt] * nz[lt];
        mflops = 58. * nit * nn * 1.0e-6 / t;
    } else {
        mflops = 0.0;
    }
    int _imopVarPre316;
    int _imopVarPre317;
    int _imopVarPre318;
    _imopVarPre316 = nz[lt];
    _imopVarPre317 = ny[lt];
    _imopVarPre318 = nx[lt];
    c_print_results("MG", Class, _imopVarPre318, _imopVarPre317, _imopVarPre316, nit, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
}
static void setup(int *n1, int *n2 , int *n3 , int lt) {
    int k;
    for (k = lt - 1; k >= 1; k--) {
        nx[k] = nx[k + 1] / 2;
        ny[k] = ny[k + 1] / 2;
        nz[k] = nz[k + 1] / 2;
    }
    for (k = 1; k <= lt; k++) {
        m1[k] = nx[k] + 2;
        m2[k] = nz[k] + 2;
        m3[k] = ny[k] + 2;
    }
    is1 = 1;
    ie1 = nx[lt];
    *n1 = nx[lt] + 2;
    is2 = 1;
    ie2 = ny[lt];
    *n2 = ny[lt] + 2;
    is3 = 1;
    ie3 = nz[lt];
    *n3 = nz[lt] + 2;
    if (debug_vec[1] >= 1) {
        printf(" in setup, \n");
        printf("  lt  nx  ny  nz  n1  n2  n3 is1 is2 is3 ie1 ie2 ie3\n");
        int _imopVarPre325;
        int _imopVarPre326;
        int _imopVarPre327;
        int _imopVarPre328;
        int _imopVarPre329;
        int _imopVarPre330;
        _imopVarPre325 = *n3;
        _imopVarPre326 = *n2;
        _imopVarPre327 = *n1;
        _imopVarPre328 = nz[lt];
        _imopVarPre329 = ny[lt];
        _imopVarPre330 = nx[lt];
        printf("%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d\n", lt, _imopVarPre330, _imopVarPre329, _imopVarPre328, _imopVarPre327, _imopVarPre326, _imopVarPre325, is1, is2, is3, ie1, ie2, ie3);
    }
}
static void mg3P(double ****u, double ***v , double ****r , double a[4] , double c[4] , int n1 , int n2 , int n3 , int k) {
    int j;
    for (k = lt; k >= lb + 1; k--) {
        j = k - 1;
        int _imopVarPre339;
        int _imopVarPre340;
        int _imopVarPre341;
        double ***_imopVarPre342;
        int _imopVarPre343;
        int _imopVarPre344;
        int _imopVarPre345;
        double ***_imopVarPre346;
        _imopVarPre339 = m3[j];
        _imopVarPre340 = m2[j];
        _imopVarPre341 = m1[j];
        _imopVarPre342 = r[j];
        _imopVarPre343 = m3[k];
        _imopVarPre344 = m2[k];
        _imopVarPre345 = m1[k];
        _imopVarPre346 = r[k];
        rprj3(_imopVarPre346, _imopVarPre345, _imopVarPre344, _imopVarPre343, _imopVarPre342, _imopVarPre341, _imopVarPre340, _imopVarPre339, k);
    }
    k = lb;
    int _imopVarPre351;
    int _imopVarPre352;
    int _imopVarPre353;
    double ***_imopVarPre354;
    _imopVarPre351 = m3[k];
    _imopVarPre352 = m2[k];
    _imopVarPre353 = m1[k];
    _imopVarPre354 = u[k];
    zero3(_imopVarPre354, _imopVarPre353, _imopVarPre352, _imopVarPre351);
    int _imopVarPre360;
    int _imopVarPre361;
    int _imopVarPre362;
    double ***_imopVarPre363;
    double ***_imopVarPre364;
    _imopVarPre360 = m3[k];
    _imopVarPre361 = m2[k];
    _imopVarPre362 = m1[k];
    _imopVarPre363 = u[k];
    _imopVarPre364 = r[k];
    psinv(_imopVarPre364, _imopVarPre363, _imopVarPre362, _imopVarPre361, _imopVarPre360, c, k);
    for (k = lb + 1; k <= lt - 1; k++) {
        j = k - 1;
        int _imopVarPre369;
        int _imopVarPre370;
        int _imopVarPre371;
        double ***_imopVarPre372;
        _imopVarPre369 = m3[k];
        _imopVarPre370 = m2[k];
        _imopVarPre371 = m1[k];
        _imopVarPre372 = u[k];
        zero3(_imopVarPre372, _imopVarPre371, _imopVarPre370, _imopVarPre369);
        int _imopVarPre381;
        int _imopVarPre382;
        int _imopVarPre383;
        double ***_imopVarPre384;
        int _imopVarPre385;
        int _imopVarPre386;
        int _imopVarPre387;
        double ***_imopVarPre388;
        _imopVarPre381 = m3[k];
        _imopVarPre382 = m2[k];
        _imopVarPre383 = m1[k];
        _imopVarPre384 = u[k];
        _imopVarPre385 = m3[j];
        _imopVarPre386 = m2[j];
        _imopVarPre387 = m1[j];
        _imopVarPre388 = u[j];
        interp(_imopVarPre388, _imopVarPre387, _imopVarPre386, _imopVarPre385, _imopVarPre384, _imopVarPre383, _imopVarPre382, _imopVarPre381, k);
        int _imopVarPre395;
        int _imopVarPre396;
        int _imopVarPre397;
        double ***_imopVarPre398;
        double ***_imopVarPre399;
        double ***_imopVarPre400;
        _imopVarPre395 = m3[k];
        _imopVarPre396 = m2[k];
        _imopVarPre397 = m1[k];
        _imopVarPre398 = r[k];
        _imopVarPre399 = r[k];
        _imopVarPre400 = u[k];
        resid(_imopVarPre400, _imopVarPre399, _imopVarPre398, _imopVarPre397, _imopVarPre396, _imopVarPre395, a, k);
        int _imopVarPre406;
        int _imopVarPre407;
        int _imopVarPre408;
        double ***_imopVarPre409;
        double ***_imopVarPre410;
        _imopVarPre406 = m3[k];
        _imopVarPre407 = m2[k];
        _imopVarPre408 = m1[k];
        _imopVarPre409 = u[k];
        _imopVarPre410 = r[k];
        psinv(_imopVarPre410, _imopVarPre409, _imopVarPre408, _imopVarPre407, _imopVarPre406, c, k);
    }
    j = lt - 1;
    k = lt;
    double ***_imopVarPre416;
    int _imopVarPre417;
    int _imopVarPre418;
    int _imopVarPre419;
    double ***_imopVarPre420;
    _imopVarPre416 = u[lt];
    _imopVarPre417 = m3[j];
    _imopVarPre418 = m2[j];
    _imopVarPre419 = m1[j];
    _imopVarPre420 = u[j];
    interp(_imopVarPre420, _imopVarPre419, _imopVarPre418, _imopVarPre417, _imopVarPre416, n1, n2, n3, k);
    double ***_imopVarPre423;
    double ***_imopVarPre424;
    _imopVarPre423 = r[lt];
    _imopVarPre424 = u[lt];
    resid(_imopVarPre424, v, _imopVarPre423, n1, n2, n3, a, k);
    double ***_imopVarPre427;
    double ***_imopVarPre428;
    _imopVarPre427 = u[lt];
    _imopVarPre428 = r[lt];
    psinv(_imopVarPre428, _imopVarPre427, n1, n2, n3, c, k);
}
static void psinv(double ***r, double ***u , int n1 , int n2 , int n3 , double c[4] , int k) {
    int i3;
    int i2;
    int i1;
    double r1[1037];
    double r2[1037];
#pragma omp parallel default(shared) private(i1, i2, i3, r1, r2)
    {
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    r1[i1] = r[i3][i2 - 1][i1] + r[i3][i2 + 1][i1] + r[i3 - 1][i2][i1] + r[i3 + 1][i2][i1];
                    r2[i1] = r[i3 - 1][i2 - 1][i1] + r[i3 - 1][i2 + 1][i1] + r[i3 + 1][i2 - 1][i1] + r[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    u[i3][i2][i1] = u[i3][i2][i1] + c[0] * r[i3][i2][i1] + c[1] * (r[i3][i2][i1 - 1] + r[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    comm3(u, n1, n2, n3, k);
    if (debug_vec[0] >= 1) {
        rep_nrm(u, n1, n2, n3, "   psinv", k);
    }
    if (debug_vec[3] >= k) {
        showall(u, n1, n2, n3);
    }
}
static void resid(double ***u, double ***v , double ***r , int n1 , int n2 , int n3 , double a[4] , int k) {
    int i3;
    int i2;
    int i1;
    double u1[1037];
    double u2[1037];
#pragma omp parallel default(shared) private(i1, i2, i3, u1, u2)
    {
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u1[i1] = u[i3][i2 - 1][i1] + u[i3][i2 + 1][i1] + u[i3 - 1][i2][i1] + u[i3 + 1][i2][i1];
                    u2[i1] = u[i3 - 1][i2 - 1][i1] + u[i3 - 1][i2 + 1][i1] + u[i3 + 1][i2 - 1][i1] + u[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    r[i3][i2][i1] = v[i3][i2][i1] - a[0] * u[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    comm3(r, n1, n2, n3, k);
    if (debug_vec[0] >= 1) {
        rep_nrm(r, n1, n2, n3, "   resid", k);
    }
    if (debug_vec[2] >= k) {
        showall(r, n1, n2, n3);
    }
}
static void rprj3(double ***r, int m1k , int m2k , int m3k , double ***s , int m1j , int m2j , int m3j , int k) {
    int j3;
    int j2;
    int j1;
    int i3;
    int i2;
    int i1;
    int d1;
    int d2;
    int d3;
    double x1[1037];
    double y1[1037];
    double x2;
    double y2;
    if (m1k == 3) {
        d1 = 2;
    } else {
        d1 = 1;
    }
    if (m2k == 3) {
        d2 = 2;
    } else {
        d2 = 1;
    }
    if (m3k == 3) {
        d3 = 2;
    } else {
        d3 = 1;
    }
#pragma omp parallel default(shared) private(j1, j2, j3, i1, i2, i3, x1, y1, x2, y2)
    {
#pragma omp for nowait
        for (j3 = 1; j3 < m3j - 1; j3++) {
            i3 = 2 * j3 - d3;
            for (j2 = 1; j2 < m2j - 1; j2++) {
                i2 = 2 * j2 - d2;
                for (j1 = 1; j1 < m1j; j1++) {
                    i1 = 2 * j1 - d1;
                    x1[i1] = r[i3 + 1][i2][i1] + r[i3 + 1][i2 + 2][i1] + r[i3][i2 + 1][i1] + r[i3 + 2][i2 + 1][i1];
                    y1[i1] = r[i3][i2][i1] + r[i3 + 2][i2][i1] + r[i3][i2 + 2][i1] + r[i3 + 2][i2 + 2][i1];
                }
                for (j1 = 1; j1 < m1j - 1; j1++) {
                    i1 = 2 * j1 - d1;
                    y2 = r[i3][i2][i1 + 1] + r[i3 + 2][i2][i1 + 1] + r[i3][i2 + 2][i1 + 1] + r[i3 + 2][i2 + 2][i1 + 1];
                    x2 = r[i3 + 1][i2][i1 + 1] + r[i3 + 1][i2 + 2][i1 + 1] + r[i3][i2 + 1][i1 + 1] + r[i3 + 2][i2 + 1][i1 + 1];
                    s[j3][j2][j1] = 0.5 * r[i3 + 1][i2 + 1][i1 + 1] + 0.25 * (r[i3 + 1][i2 + 1][i1] + r[i3 + 1][i2 + 1][i1 + 2] + x2) + 0.125 * (x1[i1] + x1[i1 + 2] + y2) + 0.0625 * (y1[i1] + y1[i1 + 2]);
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    int _imopVarPre430;
    _imopVarPre430 = k - 1;
    comm3(s, m1j, m2j, m3j, _imopVarPre430);
    if (debug_vec[0] >= 1) {
        int _imopVarPre432;
        _imopVarPre432 = k - 1;
        rep_nrm(s, m1j, m2j, m3j, "   rprj3", _imopVarPre432);
    }
    if (debug_vec[4] >= k) {
        showall(s, m1j, m2j, m3j);
    }
}
static void interp(double ***z, int mm1 , int mm2 , int mm3 , double ***u , int n1 , int n2 , int n3 , int k) {
    int i3;
    int i2;
    int i1;
    int d1;
    int d2;
    int d3;
    int t1;
    int t2;
    int t3;
    double z1[1037];
    double z2[1037];
    double z3[1037];
    int _imopVarPre435;
    int _imopVarPre436;
    _imopVarPre435 = n1 != 3;
    if (_imopVarPre435) {
        _imopVarPre436 = n2 != 3;
        if (_imopVarPre436) {
            _imopVarPre436 = n3 != 3;
        }
        _imopVarPre435 = _imopVarPre436;
    }
    if (_imopVarPre435) {
#pragma omp parallel default(shared) private(i1, i2, i3, z1, z2, z3)
        {
#pragma omp for nowait
            for (i3 = 0; i3 < mm3 - 1; i3++) {
                for (i2 = 0; i2 < mm2 - 1; i2++) {
                    for (i1 = 0; i1 < mm1; i1++) {
                        z1[i1] = z[i3][i2 + 1][i1] + z[i3][i2][i1];
                        z2[i1] = z[i3 + 1][i2][i1] + z[i3][i2][i1];
                        z3[i1] = z[i3 + 1][i2 + 1][i1] + z[i3 + 1][i2][i1] + z1[i1];
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u[2 * i3][2 * i2][2 * i1] = u[2 * i3][2 * i2][2 * i1] + z[i3][i2][i1];
                        u[2 * i3][2 * i2][2 * i1 + 1] = u[2 * i3][2 * i2][2 * i1 + 1] + 0.5 * (z[i3][i2][i1 + 1] + z[i3][i2][i1]);
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u[2 * i3][2 * i2 + 1][2 * i1] = u[2 * i3][2 * i2 + 1][2 * i1] + 0.5 * z1[i1];
                        u[2 * i3][2 * i2 + 1][2 * i1 + 1] = u[2 * i3][2 * i2 + 1][2 * i1 + 1] + 0.25 * (z1[i1] + z1[i1 + 1]);
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u[2 * i3 + 1][2 * i2][2 * i1] = u[2 * i3 + 1][2 * i2][2 * i1] + 0.5 * z2[i1];
                        u[2 * i3 + 1][2 * i2][2 * i1 + 1] = u[2 * i3 + 1][2 * i2][2 * i1 + 1] + 0.25 * (z2[i1] + z2[i1 + 1]);
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u[2 * i3 + 1][2 * i2 + 1][2 * i1] = u[2 * i3 + 1][2 * i2 + 1][2 * i1] + 0.25 * z3[i1];
                        u[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] = u[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] + 0.125 * (z3[i1] + z3[i1 + 1]);
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        }
    } else {
        if (n1 == 3) {
            d1 = 2;
            t1 = 1;
        } else {
            d1 = 1;
            t1 = 0;
        }
        if (n2 == 3) {
            d2 = 2;
            t2 = 1;
        } else {
            d2 = 1;
            t2 = 0;
        }
        if (n3 == 3) {
            d3 = 2;
            t3 = 1;
        } else {
            d3 = 1;
            t3 = 0;
        }
#pragma omp parallel default(shared) private(i1, i2, i3)
        {
#pragma omp for nowait
            for (i3 = d3; i3 <= mm3 - 1; i3++) {
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + z[i3 - 1][i2 - 1][i1 - 1];
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.5 * (z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i3 = 1; i3 <= mm3 - 1; i3++) {
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3][i2 - 1][i1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.25 * (z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.125 * (z[i3][i2][i1] + z[i3][i2 - 1][i1] + z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
        }
    }
    if (debug_vec[0] >= 1) {
        int _imopVarPre438;
        _imopVarPre438 = k - 1;
        rep_nrm(z, mm1, mm2, mm3, "z: inter", _imopVarPre438);
        rep_nrm(u, n1, n2, n3, "u: inter", k);
    }
    if (debug_vec[5] >= k) {
        showall(z, mm1, mm2, mm3);
        showall(u, n1, n2, n3);
    }
}
static void norm2u3(double ***r, int n1 , int n2 , int n3 , double *rnm2 , double *rnmu , int nx , int ny , int nz) {
    double s = 0.0;
    int i3;
    int i2;
    int i1;
    int n;
    double a = 0.0;
    double tmp = 0.0;
    n = nx * ny * nz;
#pragma omp parallel default(shared) private(i1, i2, i3, a)
    {
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    s = s + r[i3][i2][i1] * r[i3][i2][i1];
                    double _imopVarPre440;
                    double _imopVarPre441;
                    _imopVarPre440 = r[i3][i2][i1];
                    _imopVarPre441 = fabs(_imopVarPre440);
                    a = _imopVarPre441;
                    if (a > tmp) {
                        tmp = a;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    *rnmu = tmp;
    double _imopVarPre443;
    double _imopVarPre444;
    _imopVarPre443 = s / (double) n;
    _imopVarPre444 = sqrt(_imopVarPre443);
    *rnm2 = _imopVarPre444;
}
static void rep_nrm(double ***u, int n1 , int n2 , int n3 , char *title , int kk) {
    double rnm2;
    double rnmu;
    int _imopVarPre450;
    int _imopVarPre451;
    int _imopVarPre452;
    double *_imopVarPre453;
    double *_imopVarPre454;
    _imopVarPre450 = nz[kk];
    _imopVarPre451 = ny[kk];
    _imopVarPre452 = nx[kk];
    _imopVarPre453 = &rnmu;
    _imopVarPre454 = &rnm2;
    norm2u3(u, n1, n2, n3, _imopVarPre454, _imopVarPre453, _imopVarPre452, _imopVarPre451, _imopVarPre450);
    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
}
static void comm3(double ***u, int n1 , int n2 , int n3 , int kk) {
    int i1;
    int i2;
    int i3;
#pragma omp parallel default(shared) private(i1, i2, i3)
    {
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                u[i3][i2][n1 - 1] = u[i3][i2][1];
                u[i3][i2][0] = u[i3][i2][n1 - 2];
            }
            for (i1 = 0; i1 < n1; i1++) {
                u[i3][n2 - 1][i1] = u[i3][1][i1];
                u[i3][0][i1] = u[i3][n2 - 2][i1];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2 = 0; i2 < n2; i2++) {
            for (i1 = 0; i1 < n1; i1++) {
                u[n3 - 1][i2][i1] = u[1][i2][i1];
                u[0][i2][i1] = u[n3 - 2][i2][i1];
            }
        }
    }
}
static void zran3(double ***z, int n1 , int n2 , int n3 , int nx , int ny , int k) {
    int i0;
    int m0;
    int m1;
    int i1;
    int i2;
    int i3;
    int d1;
    int e1;
    int e2;
    int e3;
    double xx;
    double x0;
    double x1;
    double a1;
    double a2;
    double ai;
    double ten[10][2];
    double best;
    int i;
    int j1[10][2];
    int j2[10][2];
    int j3[10][2];
    int jg[4][10][2];
    double rdummy;
    double _imopVarPre456;
    double _imopVarPre457;
    _imopVarPre456 = pow(5.0, 13);
    _imopVarPre457 = power(_imopVarPre456, nx);
    a1 = _imopVarPre457;
    int _imopVarPre460;
    double _imopVarPre461;
    double _imopVarPre462;
    _imopVarPre460 = nx * ny;
    _imopVarPre461 = pow(5.0, 13);
    _imopVarPre462 = power(_imopVarPre461, _imopVarPre460);
    a2 = _imopVarPre462;
    zero3(z, n1, n2, n3);
    i = is1 - 1 + nx * (is2 - 1 + ny * (is3 - 1));
    double _imopVarPre464;
    double _imopVarPre465;
    _imopVarPre464 = pow(5.0, 13);
    _imopVarPre465 = power(_imopVarPre464, i);
    ai = _imopVarPre465;
    d1 = ie1 - is1 + 1;
    e1 = ie1 - is1 + 2;
    e2 = ie2 - is2 + 2;
    e3 = ie3 - is3 + 2;
    x0 = 314159265.e0;
    double *_imopVarPre467;
    double _imopVarPre468;
    _imopVarPre467 = &x0;
    _imopVarPre468 = randlc(_imopVarPre467, ai);
    rdummy = _imopVarPre468;
    for (i3 = 1; i3 < e3; i3++) {
        x1 = x0;
        for (i2 = 1; i2 < e2; i2++) {
            xx = x1;
            double *_imopVarPre472;
            double _imopVarPre473;
            double *_imopVarPre474;
            _imopVarPre472 = &(z[i3][i2][0]);
            _imopVarPre473 = pow(5.0, 13);
            _imopVarPre474 = &xx;
            vranlc(d1, _imopVarPre474, _imopVarPre473, _imopVarPre472);
            double *_imopVarPre476;
            double _imopVarPre477;
            _imopVarPre476 = &x1;
            _imopVarPre477 = randlc(_imopVarPre476, a1);
            rdummy = _imopVarPre477;
        }
        double *_imopVarPre479;
        double _imopVarPre480;
        _imopVarPre479 = &x0;
        _imopVarPre480 = randlc(_imopVarPre479, a2);
        rdummy = _imopVarPre480;
    }
    for (i = 0; i < 10; i++) {
        ten[i][1] = 0.0;
        j1[i][1] = 0;
        j2[i][1] = 0;
        j3[i][1] = 0;
        ten[i][0] = 1.0;
        j1[i][0] = 0;
        j2[i][0] = 0;
        j3[i][0] = 0;
    }
    for (i3 = 1; i3 < n3 - 1; i3++) {
        for (i2 = 1; i2 < n2 - 1; i2++) {
            for (i1 = 1; i1 < n1 - 1; i1++) {
                if (z[i3][i2][i1] > ten[0][1]) {
                    ten[0][1] = z[i3][i2][i1];
                    j1[0][1] = i1;
                    j2[0][1] = i2;
                    j3[0][1] = i3;
                    bubble(ten, j1, j2, j3, 10, 1);
                }
                if (z[i3][i2][i1] < ten[0][0]) {
                    ten[0][0] = z[i3][i2][i1];
                    j1[0][0] = i1;
                    j2[0][0] = i2;
                    j3[0][0] = i3;
                    bubble(ten, j1, j2, j3, 10, 0);
                }
            }
        }
    }
    i1 = 10 - 1;
    i0 = 10 - 1;
    for (i = 10 - 1; i >= 0; i--) {
        best = z[j3[i1][1]][j2[i1][1]][j1[i1][1]];
        if (best == z[j3[i1][1]][j2[i1][1]][j1[i1][1]]) {
            jg[0][i][1] = 0;
            jg[1][i][1] = is1 - 1 + j1[i1][1];
            jg[2][i][1] = is2 - 1 + j2[i1][1];
            jg[3][i][1] = is3 - 1 + j3[i1][1];
            i1 = i1 - 1;
        } else {
            jg[0][i][1] = 0;
            jg[1][i][1] = 0;
            jg[2][i][1] = 0;
            jg[3][i][1] = 0;
        }
        ten[i][1] = best;
        best = z[j3[i0][0]][j2[i0][0]][j1[i0][0]];
        if (best == z[j3[i0][0]][j2[i0][0]][j1[i0][0]]) {
            jg[0][i][0] = 0;
            jg[1][i][0] = is1 - 1 + j1[i0][0];
            jg[2][i][0] = is2 - 1 + j2[i0][0];
            jg[3][i][0] = is3 - 1 + j3[i0][0];
            i0 = i0 - 1;
        } else {
            jg[0][i][0] = 0;
            jg[1][i][0] = 0;
            jg[2][i][0] = 0;
            jg[3][i][0] = 0;
        }
        ten[i][0] = best;
    }
    m1 = i1 + 1;
    m0 = i0 + 1;
#pragma omp parallel private(i2, i1)
    {
#pragma omp for nowait
        for (i3 = 0; i3 < n3; i3++) {
            for (i2 = 0; i2 < n2; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    z[i3][i2][i1] = 0.0;
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    for (i = 10 - 1; i >= m0; i--) {
        z[j3[i][0]][j2[i][0]][j1[i][0]] = -1.0;
    }
    for (i = 10 - 1; i >= m1; i--) {
        z[j3[i][1]][j2[i][1]][j1[i][1]] = 1.0;
    }
    comm3(z, n1, n2, n3, k);
}
static void showall(double ***z, int n1 , int n2 , int n3) {
    int i1;
    int i2;
    int i3;
    int m1;
    int m2;
    int m3;
    int _imopVarPre483;
    int _imopVarPre484;
    _imopVarPre483 = (n1 < 18);
    if (_imopVarPre483) {
        _imopVarPre484 = n1;
    } else {
        _imopVarPre484 = 18;
    }
    m1 = _imopVarPre484;
    int _imopVarPre487;
    int _imopVarPre488;
    _imopVarPre487 = (n2 < 14);
    if (_imopVarPre487) {
        _imopVarPre488 = n2;
    } else {
        _imopVarPre488 = 14;
    }
    m2 = _imopVarPre488;
    int _imopVarPre491;
    int _imopVarPre492;
    _imopVarPre491 = (n3 < 18);
    if (_imopVarPre491) {
        _imopVarPre492 = n3;
    } else {
        _imopVarPre492 = 18;
    }
    m3 = _imopVarPre492;
    printf("\n");
    for (i3 = 0; i3 < m3; i3++) {
        for (i1 = 0; i1 < m1; i1++) {
            for (i2 = 0; i2 < m2; i2++) {
                double _imopVarPre494;
                _imopVarPre494 = z[i3][i2][i1];
                printf("%6.3f", _imopVarPre494);
            }
            printf("\n");
        }
        printf(" - - - - - - - \n");
    }
    printf("\n");
}
static double power(double a, int n) {
    double aj;
    int nj;
    double rdummy;
    double power;
    power = 1.0;
    nj = n;
    aj = a;
    while (nj != 0) {
        if ((nj % 2) == 1) {
            double *_imopVarPre496;
            double _imopVarPre497;
            _imopVarPre496 = &power;
            _imopVarPre497 = randlc(_imopVarPre496, aj);
            rdummy = _imopVarPre497;
        }
        double *_imopVarPre499;
        double _imopVarPre500;
        _imopVarPre499 = &aj;
        _imopVarPre500 = randlc(_imopVarPre499, aj);
        rdummy = _imopVarPre500;
        nj = nj / 2;
    }
    return power;
}
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind) {
    double temp;
    int i;
    int j_temp;
    if (ind == 1) {
        for (i = 0; i < m - 1; i++) {
            if (ten[i][ind] > ten[i + 1][ind]) {
                temp = ten[i + 1][ind];
                ten[i + 1][ind] = ten[i][ind];
                ten[i][ind] = temp;
                j_temp = j1[i + 1][ind];
                j1[i + 1][ind] = j1[i][ind];
                j1[i][ind] = j_temp;
                j_temp = j2[i + 1][ind];
                j2[i + 1][ind] = j2[i][ind];
                j2[i][ind] = j_temp;
                j_temp = j3[i + 1][ind];
                j3[i + 1][ind] = j3[i][ind];
                j3[i][ind] = j_temp;
            } else {
                return;
            }
        }
    } else {
        for (i = 0; i < m - 1; i++) {
            if (ten[i][ind] < ten[i + 1][ind]) {
                temp = ten[i + 1][ind];
                ten[i + 1][ind] = ten[i][ind];
                ten[i][ind] = temp;
                j_temp = j1[i + 1][ind];
                j1[i + 1][ind] = j1[i][ind];
                j1[i][ind] = j_temp;
                j_temp = j2[i + 1][ind];
                j2[i + 1][ind] = j2[i][ind];
                j2[i][ind] = j_temp;
                j_temp = j3[i + 1][ind];
                j3[i + 1][ind] = j3[i][ind];
                j3[i][ind] = j_temp;
            } else {
                return;
            }
        }
    }
}
static void zero3(double ***z, int n1 , int n2 , int n3) {
    int i1;
    int i2;
    int i3;
#pragma omp parallel private(i1, i2, i3)
    {
#pragma omp for nowait
        for (i3 = 0; i3 < n3; i3++) {
            for (i2 = 0; i2 < n2; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    z[i3][i2][i1] = 0.0;
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
}
