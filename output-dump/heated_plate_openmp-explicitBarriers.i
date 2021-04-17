typedef long unsigned int size_t;
typedef int wchar_t;
union wait {
    int w_status;
    struct stUn_imopVarPre0 {
        unsigned int __w_termsig: 7;
        unsigned int __w_coredump: 1;
        unsigned int __w_retcode: 8;
        unsigned int :16;
    } __wait_terminated;
    struct stUn_imopVarPre1 {
        unsigned int __w_stopval: 8;
        unsigned int __w_stopsig: 8;
        unsigned int :16;
    } __wait_stopped;
} ;
union stUn_imopVarPre2 {
    union wait *__uptr;
    int *__iptr;
} ;
typedef union stUn_imopVarPre2 __WAIT_STATUS;
struct stUn_imopVarPre3 {
    int quot;
    int rem;
} ;
typedef struct stUn_imopVarPre3 div_t;
struct stUn_imopVarPre4 {
    long int quot;
    long int rem;
} ;
typedef struct stUn_imopVarPre4 ldiv_t;
__extension__ struct stUn_imopVarPre5 {
    long long int quot;
    long long int rem;
} ;
__extension__ typedef struct stUn_imopVarPre5 lldiv_t;
extern size_t __ctype_get_mb_cur_max(void );
extern double atof(__const char *__nptr);
extern int atoi(__const char *__nptr);
extern long int atol(__const char *__nptr);
__extension__ extern long long int atoll(__const char *__nptr);
extern double strtod(__const char *__restrict __nptr, char **__restrict __endptr);
extern float strtof(__const char *__restrict __nptr, char **__restrict __endptr);
extern long double strtold(__const char *__restrict __nptr, char **__restrict __endptr);
extern long int strtol(__const char *__restrict __nptr, char **__restrict __endptr , int __base);
extern unsigned long int strtoul(__const char *__restrict __nptr, char **__restrict __endptr , int __base);
__extension__ extern long long int strtoq(__const char *__restrict __nptr, char **__restrict __endptr , int __base);
__extension__ extern unsigned long long int strtouq(__const char *__restrict __nptr, char **__restrict __endptr , int __base);
__extension__ extern long long int strtoll(__const char *__restrict __nptr, char **__restrict __endptr , int __base);
__extension__ extern unsigned long long int strtoull(__const char *__restrict __nptr, char **__restrict __endptr , int __base);
extern char *l64a(long int __n);
extern long int a64l(__const char *__s);
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
struct stUn_imopVarPre6 {
    int __val[2];
} ;
typedef struct stUn_imopVarPre6 __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef long int __swblk_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void *__timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __ssize_t;
typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;
typedef __time_t time_t;
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef int int8_t;
typedef int int16_t;
typedef int int32_t;
typedef int int64_t;
typedef unsigned int u_int8_t;
typedef unsigned int u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned int u_int64_t;
typedef int register_t;
typedef int __sig_atomic_t;
struct stUn_imopVarPre7 {
    unsigned long int __val[(1024 / (8 * sizeof(unsigned long int)))];
} ;
typedef struct stUn_imopVarPre7 __sigset_t;
typedef __sigset_t sigset_t;
struct timespec {
    __time_t tv_sec;
    long int tv_nsec;
} ;
struct timeval {
    __time_t tv_sec;
    __suseconds_t tv_usec;
} ;
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
struct stUn_imopVarPre8 {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof(__fd_mask))];
} ;
typedef struct stUn_imopVarPre8 fd_set;
typedef __fd_mask fd_mask;
extern int select(int __nfds, fd_set *__restrict __readfds , fd_set *__restrict __writefds , fd_set *__restrict __exceptfds , struct timeval *__restrict __timeout);
extern int pselect(int __nfds, fd_set *__restrict __readfds , fd_set *__restrict __writefds , fd_set *__restrict __exceptfds , const struct timespec *__restrict __timeout , const __sigset_t *__restrict __sigmask);
__extension__ extern unsigned int gnu_dev_major(unsigned long long int __dev);
__extension__ extern unsigned int gnu_dev_minor(unsigned long long int __dev);
__extension__ extern unsigned long long int gnu_dev_makedev(unsigned int __major, unsigned int __minor);
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
typedef unsigned long int pthread_t;
union stUn_imopVarPre9 {
    char __size[56];
    long int __align;
} ;
typedef union stUn_imopVarPre9 pthread_attr_t;
struct __pthread_internal_list {
    struct __pthread_internal_list *__prev;
    struct __pthread_internal_list *__next;
} ;
typedef struct __pthread_internal_list __pthread_list_t;
union stUn_imopVarPre10 {
    struct __pthread_mutex_s {
        int __lock;
        unsigned int __count;
        int __owner;
        unsigned int __nusers;
        int __kind;
        int __spins;
        __pthread_list_t __list;
    } __data;
    char __size[40];
    long int __align;
} ;
typedef union stUn_imopVarPre10 pthread_mutex_t;
union stUn_imopVarPre11 {
    char __size[4];
    int __align;
} ;
typedef union stUn_imopVarPre11 pthread_mutexattr_t;
union stUn_imopVarPre13 {
    struct stUn_imopVarPre12 {
        int __lock;
        unsigned int __futex;
        __extension__ unsigned long long int __total_seq;
        __extension__ unsigned long long int __wakeup_seq;
        __extension__ unsigned long long int __woken_seq;
        void *__mutex;
        unsigned int __nwaiters;
        unsigned int __broadcast_seq;
    } __data;
    char __size[48];
    __extension__ long long int __align;
} ;
typedef union stUn_imopVarPre13 pthread_cond_t;
union stUn_imopVarPre14 {
    char __size[4];
    int __align;
} ;
typedef union stUn_imopVarPre14 pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union stUn_imopVarPre16 {
    struct stUn_imopVarPre15 {
        int __lock;
        unsigned int __nr_readers;
        unsigned int __readers_wakeup;
        unsigned int __writer_wakeup;
        unsigned int __nr_readers_queued;
        unsigned int __nr_writers_queued;
        int __writer;
        int __shared;
        unsigned long int __pad1;
        unsigned long int __pad2;
        unsigned int __flags;
    } __data;
    char __size[56];
    long int __align;
} ;
typedef union stUn_imopVarPre16 pthread_rwlock_t;
union stUn_imopVarPre17 {
    char __size[8];
    long int __align;
} ;
typedef union stUn_imopVarPre17 pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
union stUn_imopVarPre18 {
    char __size[32];
    long int __align;
} ;
typedef union stUn_imopVarPre18 pthread_barrier_t;
union stUn_imopVarPre19 {
    char __size[4];
    int __align;
} ;
typedef union stUn_imopVarPre19 pthread_barrierattr_t;
extern long int random(void );
extern void srandom(unsigned int __seed);
extern char *initstate(unsigned int __seed, char *__statebuf , size_t __statelen);
extern char *setstate(char *__statebuf);
struct random_data {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
} ;
extern int random_r(struct random_data *__restrict __buf, int32_t *__restrict __result);
extern int srandom_r(unsigned int __seed, struct random_data *__buf);
extern int initstate_r(unsigned int __seed, char *__restrict __statebuf , size_t __statelen , struct random_data *__restrict __buf);
extern int setstate_r(char *__restrict __statebuf, struct random_data *__restrict __buf);
extern int rand(void );
extern void srand(unsigned int __seed);
extern int rand_r(unsigned int *__seed);
extern double drand48(void );
extern double erand48(unsigned short int __xsubi[3]);
extern long int lrand48(void );
extern long int nrand48(unsigned short int __xsubi[3]);
extern long int mrand48(void );
extern long int jrand48(unsigned short int __xsubi[3]);
extern void srand48(long int __seedval);
extern unsigned short int *seed48(unsigned short int __seed16v[3]);
extern void lcong48(unsigned short int __param[7]);
struct drand48_data {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    unsigned long long int __a;
} ;
extern int drand48_r(struct drand48_data *__restrict __buffer, double *__restrict __result);
extern int erand48_r(unsigned short int __xsubi[3], struct drand48_data *__restrict __buffer , double *__restrict __result);
extern int lrand48_r(struct drand48_data *__restrict __buffer, long int *__restrict __result);
extern int nrand48_r(unsigned short int __xsubi[3], struct drand48_data *__restrict __buffer , long int *__restrict __result);
extern int mrand48_r(struct drand48_data *__restrict __buffer, long int *__restrict __result);
extern int jrand48_r(unsigned short int __xsubi[3], struct drand48_data *__restrict __buffer , long int *__restrict __result);
extern int srand48_r(long int __seedval, struct drand48_data *__buffer);
extern int seed48_r(unsigned short int __seed16v[3], struct drand48_data *__buffer);
extern int lcong48_r(unsigned short int __param[7], struct drand48_data *__buffer);
extern void *malloc(size_t __size);
extern void *calloc(size_t __nmemb, size_t __size);
extern void *realloc(void *__ptr, size_t __size);
extern void free(void *__ptr);
extern void cfree(void *__ptr);
extern void *alloca(size_t __size);
extern void *valloc(size_t __size);
extern int posix_memalign(void **__memptr, size_t __alignment , size_t __size);
extern void abort(void );
extern int atexit(void ( *__func )(void ));
extern int on_exit(void ( *__func )(int __status, void *__arg), void *__arg);
extern void exit(int __status);
extern void _Exit(int __status);
extern char *getenv(__const char *__name);
extern char *__secure_getenv(__const char *__name);
extern int putenv(char *__string);
extern int setenv(__const char *__name, __const char *__value , int __replace);
extern int unsetenv(__const char *__name);
extern int clearenv(void );
extern char *mktemp(char *__template);
extern int mkstemp(char *__template);
extern int mkstemps(char *__template, int __suffixlen);
extern char *mkdtemp(char *__template);
extern int system(__const char *__command);
extern char *realpath(__const char *__restrict __name, char *__restrict __resolved);
typedef int ( *__compar_fn_t )(__const void *, __const void *);
extern void *bsearch(__const void *__key, __const void *__base , size_t __nmemb , size_t __size , __compar_fn_t __compar);
extern void qsort(void *__base, size_t __nmemb , size_t __size , __compar_fn_t __compar);
extern int abs(int __x);
extern long int labs(long int __x);
__extension__ extern long long int llabs(long long int __x);
extern div_t div(int __numer, int __denom);
extern ldiv_t ldiv(long int __numer, long int __denom);
__extension__ extern lldiv_t lldiv(long long int __numer, long long int __denom);
extern char *ecvt(double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign);
extern char *fcvt(double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign);
extern char *gcvt(double __value, int __ndigit , char *__buf);
extern char *qecvt(long double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign);
extern char *qfcvt(long double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign);
extern char *qgcvt(long double __value, int __ndigit , char *__buf);
extern int ecvt_r(double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign , char *__restrict __buf , size_t __len);
extern int fcvt_r(double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign , char *__restrict __buf , size_t __len);
extern int qecvt_r(long double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign , char *__restrict __buf , size_t __len);
extern int qfcvt_r(long double __value, int __ndigit , int *__restrict __decpt , int *__restrict __sign , char *__restrict __buf , size_t __len);
extern int mblen(__const char *__s, size_t __n);
extern int mbtowc(wchar_t *__restrict __pwc, __const char *__restrict __s , size_t __n);
extern int wctomb(char *__s, wchar_t __wchar);
extern size_t mbstowcs(wchar_t *__restrict __pwcs, __const char *__restrict __s , size_t __n);
extern size_t wcstombs(char *__restrict __s, __const wchar_t *__restrict __pwcs , size_t __n);
extern int rpmatch(__const char *__response);
extern int getsubopt(char **__restrict __optionp, char *__const *__restrict __tokens , char **__restrict __valuep);
extern int getloadavg(double __loadavg[], int __nelem);
struct _IO_FILE ;
typedef struct _IO_FILE FILE;
typedef struct _IO_FILE __FILE;
struct stUn_imopVarPre21 {
    int __count;
    union stUn_imopVarPre20 {
        unsigned int __wch;
        char __wchb[4];
    } __value;
} ;
typedef struct stUn_imopVarPre21 __mbstate_t;
struct stUn_imopVarPre22 {
    __off_t __pos;
    __mbstate_t __state;
} ;
typedef struct stUn_imopVarPre22 _G_fpos_t;
struct stUn_imopVarPre23 {
    __off64_t __pos;
    __mbstate_t __state;
} ;
typedef struct stUn_imopVarPre23 _G_fpos64_t;
typedef int _G_int16_t;
typedef int _G_int32_t;
typedef unsigned int _G_uint16_t;
typedef unsigned int _G_uint32_t;
typedef __builtin_va_list __gnuc_va_list;
struct _IO_jump_t ;
struct _IO_FILE ;
typedef void _IO_lock_t;
struct _IO_marker {
    struct _IO_marker *_next;
    struct _IO_FILE *_sbuf;
    int _pos;
} ;
enum __codecvt_result {
    __codecvt_ok, __codecvt_partial , __codecvt_error , __codecvt_noconv
} ;
struct _IO_FILE {
    int _flags;
    char *_IO_read_ptr;
    char *_IO_read_end;
    char *_IO_read_base;
    char *_IO_write_base;
    char *_IO_write_ptr;
    char *_IO_write_end;
    char *_IO_buf_base;
    char *_IO_buf_end;
    char *_IO_save_base;
    char *_IO_backup_base;
    char *_IO_save_end;
    struct _IO_marker *_markers;
    struct _IO_FILE *_chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    unsigned short _cur_column;
    signed char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t *_lock;
    __off64_t _offset;
    void *__pad1;
    void *__pad2;
    void *__pad3;
    void *__pad4;
    size_t __pad5;
    int _mode;
    char _unused2[15 * sizeof(int) - 4 * sizeof(void *) - sizeof(size_t)];
} ;
typedef struct _IO_FILE _IO_FILE;
struct _IO_FILE_plus ;
extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
typedef __ssize_t __io_read_fn(void *__cookie, char *__buf , size_t __nbytes);
typedef __ssize_t __io_write_fn(void *__cookie, __const char *__buf , size_t __n);
typedef int __io_seek_fn(void *__cookie, __off64_t *__pos , int __w);
typedef int __io_close_fn(void *__cookie);
extern int __underflow(_IO_FILE *);
extern int __uflow(_IO_FILE *);
extern int __overflow(_IO_FILE *, int );
extern int _IO_getc(_IO_FILE *__fp);
extern int _IO_putc(int __c, _IO_FILE *__fp);
extern int _IO_feof(_IO_FILE *__fp);
extern int _IO_ferror(_IO_FILE *__fp);
extern int _IO_peekc_locked(_IO_FILE *__fp);
extern void _IO_flockfile(_IO_FILE *);
extern void _IO_funlockfile(_IO_FILE *);
extern int _IO_ftrylockfile(_IO_FILE *);
extern int _IO_vfscanf(_IO_FILE *__restrict , const char *__restrict  , __gnuc_va_list  , int *__restrict );
extern int _IO_vfprintf(_IO_FILE *__restrict , const char *__restrict  , __gnuc_va_list );
extern __ssize_t _IO_padn(_IO_FILE *, int  , __ssize_t );
extern size_t _IO_sgetn(_IO_FILE *, void * , size_t );
extern __off64_t _IO_seekoff(_IO_FILE *, __off64_t  , int  , int );
extern __off64_t _IO_seekpos(_IO_FILE *, __off64_t  , int );
extern void _IO_free_backup_area(_IO_FILE *);
typedef __gnuc_va_list va_list;
typedef _G_fpos_t fpos_t;
extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;
extern int remove(__const char *__filename);
extern int rename(__const char *__old, __const char *__new);
extern int renameat(int __oldfd, __const char *__old , int __newfd , __const char *__new);
extern FILE *tmpfile(void );
extern char *tmpnam(char *__s);
extern char *tmpnam_r(char *__s);
extern char *tempnam(__const char *__dir, __const char *__pfx);
extern int fclose(FILE *__stream);
extern int fflush(FILE *__stream);
extern int fflush_unlocked(FILE *__stream);
extern FILE *fopen(__const char *__restrict __filename, __const char *__restrict __modes);
extern FILE *freopen(__const char *__restrict __filename, __const char *__restrict __modes , FILE *__restrict __stream);
extern FILE *fdopen(int __fd, __const char *__modes);
extern FILE *fmemopen(void *__s, size_t __len , __const char *__modes);
extern FILE *open_memstream(char **__bufloc, size_t *__sizeloc);
extern void setbuf(FILE *__restrict __stream, char *__restrict __buf);
extern int setvbuf(FILE *__restrict __stream, char *__restrict __buf , int __modes , size_t __n);
extern void setbuffer(FILE *__restrict __stream, char *__restrict __buf , size_t __size);
extern void setlinebuf(FILE *__stream);
extern int fprintf(FILE *__restrict __stream, __const char *__restrict __format, ...);
extern int printf(__const char *__restrict __format, ...);
extern int sprintf(char *__restrict __s, __const char *__restrict __format, ...);
extern int vfprintf(FILE *__restrict __s, __const char *__restrict __format , __gnuc_va_list __arg);
extern int vprintf(__const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf(char *__restrict __s, __const char *__restrict __format , __gnuc_va_list __arg);
extern int snprintf(char *__restrict __s, size_t __maxlen , __const char *__restrict __format, ...);
extern int vsnprintf(char *__restrict __s, size_t __maxlen , __const char *__restrict __format , __gnuc_va_list __arg);
extern int vdprintf(int __fd, __const char *__restrict __fmt , __gnuc_va_list __arg);
extern int dprintf(int __fd, __const char *__restrict __fmt, ...);
extern int fscanf(FILE *__restrict __stream, __const char *__restrict __format, ...);
extern int scanf(__const char *__restrict __format, ...);
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
extern int fscanf(FILE *__restrict __stream, __const char *__restrict __format, ...);
extern int scanf(__const char *__restrict __format, ...);
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
extern int vfscanf(FILE *__restrict __s, __const char *__restrict __format , __gnuc_va_list __arg);
extern int vscanf(__const char *__restrict __format, __gnuc_va_list __arg);
extern int vsscanf(__const char *__restrict __s, __const char *__restrict __format , __gnuc_va_list __arg);
extern int vfscanf(FILE *__restrict __s, __const char *__restrict __format , __gnuc_va_list __arg);
extern int vscanf(__const char *__restrict __format, __gnuc_va_list __arg);
extern int vsscanf(__const char *__restrict __s, __const char *__restrict __format , __gnuc_va_list __arg);
extern int fgetc(FILE *__stream);
extern int getc(FILE *__stream);
extern int getchar(void );
extern int getc_unlocked(FILE *__stream);
extern int getchar_unlocked(void );
extern int fgetc_unlocked(FILE *__stream);
extern int fputc(int __c, FILE *__stream);
extern int putc(int __c, FILE *__stream);
extern int putchar(int __c);
extern int fputc_unlocked(int __c, FILE *__stream);
extern int putc_unlocked(int __c, FILE *__stream);
extern int putchar_unlocked(int __c);
extern int getw(FILE *__stream);
extern int putw(int __w, FILE *__stream);
extern char *fgets(char *__restrict __s, int __n , FILE *__restrict __stream);
extern char *gets(char *__s);
extern __ssize_t __getdelim(char **__restrict __lineptr, size_t *__restrict __n , int __delimiter , FILE *__restrict __stream);
extern __ssize_t getdelim(char **__restrict __lineptr, size_t *__restrict __n , int __delimiter , FILE *__restrict __stream);
extern __ssize_t getline(char **__restrict __lineptr, size_t *__restrict __n , FILE *__restrict __stream);
extern int fputs(__const char *__restrict __s, FILE *__restrict __stream);
extern int puts(__const char *__s);
extern int ungetc(int __c, FILE *__stream);
extern size_t fread(void *__restrict __ptr, size_t __size , size_t __n , FILE *__restrict __stream);
extern size_t fwrite(__const void *__restrict __ptr, size_t __size , size_t __n , FILE *__restrict __s);
extern size_t fread_unlocked(void *__restrict __ptr, size_t __size , size_t __n , FILE *__restrict __stream);
extern size_t fwrite_unlocked(__const void *__restrict __ptr, size_t __size , size_t __n , FILE *__restrict __stream);
extern int fseek(FILE *__stream, long int __off , int __whence);
extern long int ftell(FILE *__stream);
extern void rewind(FILE *__stream);
extern int fseeko(FILE *__stream, __off_t __off , int __whence);
extern __off_t ftello(FILE *__stream);
extern int fgetpos(FILE *__restrict __stream, fpos_t *__restrict __pos);
extern int fsetpos(FILE *__stream, __const fpos_t *__pos);
extern void clearerr(FILE *__stream);
extern int feof(FILE *__stream);
extern int ferror(FILE *__stream);
extern void clearerr_unlocked(FILE *__stream);
extern int feof_unlocked(FILE *__stream);
extern int ferror_unlocked(FILE *__stream);
extern void perror(__const char *__s);
extern int sys_nerr;
extern __const char *__const sys_errlist[];
extern int fileno(FILE *__stream);
extern int fileno_unlocked(FILE *__stream);
extern FILE *popen(__const char *__command, __const char *__modes);
extern int pclose(FILE *__stream);
extern char *ctermid(char *__s);
extern void flockfile(FILE *__stream);
extern int ftrylockfile(FILE *__stream);
extern void funlockfile(FILE *__stream);
typedef float float_t;
typedef double double_t;
extern double acos(double __x);
extern double __acos(double __x);
extern double asin(double __x);
extern double __asin(double __x);
extern double atan(double __x);
extern double __atan(double __x);
extern double atan2(double __y, double __x);
extern double __atan2(double __y, double __x);
extern double cos(double __x);
extern double __cos(double __x);
extern double sin(double __x);
extern double __sin(double __x);
extern double tan(double __x);
extern double __tan(double __x);
extern double cosh(double __x);
extern double __cosh(double __x);
extern double sinh(double __x);
extern double __sinh(double __x);
extern double tanh(double __x);
extern double __tanh(double __x);
extern double acosh(double __x);
extern double __acosh(double __x);
extern double asinh(double __x);
extern double __asinh(double __x);
extern double atanh(double __x);
extern double __atanh(double __x);
extern double exp(double __x);
extern double __exp(double __x);
extern double frexp(double __x, int *__exponent);
extern double __frexp(double __x, int *__exponent);
extern double ldexp(double __x, int __exponent);
extern double __ldexp(double __x, int __exponent);
extern double log(double __x);
extern double __log(double __x);
extern double log10(double __x);
extern double __log10(double __x);
extern double modf(double __x, double *__iptr);
extern double __modf(double __x, double *__iptr);
extern double expm1(double __x);
extern double __expm1(double __x);
extern double log1p(double __x);
extern double __log1p(double __x);
extern double logb(double __x);
extern double __logb(double __x);
extern double exp2(double __x);
extern double __exp2(double __x);
extern double log2(double __x);
extern double __log2(double __x);
extern double pow(double __x, double __y);
extern double __pow(double __x, double __y);
extern double sqrt(double __x);
extern double __sqrt(double __x);
extern double hypot(double __x, double __y);
extern double __hypot(double __x, double __y);
extern double cbrt(double __x);
extern double __cbrt(double __x);
extern double ceil(double __x);
extern double __ceil(double __x);
extern double fabs(double __x);
extern double __fabs(double __x);
extern double floor(double __x);
extern double __floor(double __x);
extern double fmod(double __x, double __y);
extern double __fmod(double __x, double __y);
extern int __isinf(double __value);
extern int __finite(double __value);
extern int isinf(double __value);
extern int finite(double __value);
extern double drem(double __x, double __y);
extern double __drem(double __x, double __y);
extern double significand(double __x);
extern double __significand(double __x);
extern double copysign(double __x, double __y);
extern double __copysign(double __x, double __y);
extern double nan(__const char *__tagb);
extern double __nan(__const char *__tagb);
extern int __isnan(double __value);
extern int isnan(double __value);
extern double j0(double );
extern double __j0(double );
extern double j1(double );
extern double __j1(double );
extern double jn(int , double );
extern double __jn(int , double );
extern double y0(double );
extern double __y0(double );
extern double y1(double );
extern double __y1(double );
extern double yn(int , double );
extern double __yn(int , double );
extern double erf(double );
extern double __erf(double );
extern double erfc(double );
extern double __erfc(double );
extern double lgamma(double );
extern double __lgamma(double );
extern double tgamma(double );
extern double __tgamma(double );
extern double gamma(double );
extern double __gamma(double );
extern double lgamma_r(double , int *__signgamp);
extern double __lgamma_r(double , int *__signgamp);
extern double rint(double __x);
extern double __rint(double __x);
extern double nextafter(double __x, double __y);
extern double __nextafter(double __x, double __y);
extern double nexttoward(double __x, long double __y);
extern double __nexttoward(double __x, long double __y);
extern double remainder(double __x, double __y);
extern double __remainder(double __x, double __y);
extern double scalbn(double __x, int __n);
extern double __scalbn(double __x, int __n);
extern int ilogb(double __x);
extern int __ilogb(double __x);
extern double scalbln(double __x, long int __n);
extern double __scalbln(double __x, long int __n);
extern double nearbyint(double __x);
extern double __nearbyint(double __x);
extern double round(double __x);
extern double __round(double __x);
extern double trunc(double __x);
extern double __trunc(double __x);
extern double remquo(double __x, double __y , int *__quo);
extern double __remquo(double __x, double __y , int *__quo);
extern long int lrint(double __x);
extern long int __lrint(double __x);
extern long long int llrint(double __x);
extern long long int __llrint(double __x);
extern long int lround(double __x);
extern long int __lround(double __x);
extern long long int llround(double __x);
extern long long int __llround(double __x);
extern double fdim(double __x, double __y);
extern double __fdim(double __x, double __y);
extern double fmax(double __x, double __y);
extern double __fmax(double __x, double __y);
extern double fmin(double __x, double __y);
extern double __fmin(double __x, double __y);
extern int __fpclassify(double __value);
extern int __signbit(double __value);
extern double fma(double __x, double __y , double __z);
extern double __fma(double __x, double __y , double __z);
extern double scalb(double __x, double __n);
extern double __scalb(double __x, double __n);
extern float acosf(float __x);
extern float __acosf(float __x);
extern float asinf(float __x);
extern float __asinf(float __x);
extern float atanf(float __x);
extern float __atanf(float __x);
extern float atan2f(float __y, float __x);
extern float __atan2f(float __y, float __x);
extern float cosf(float __x);
extern float __cosf(float __x);
extern float sinf(float __x);
extern float __sinf(float __x);
extern float tanf(float __x);
extern float __tanf(float __x);
extern float coshf(float __x);
extern float __coshf(float __x);
extern float sinhf(float __x);
extern float __sinhf(float __x);
extern float tanhf(float __x);
extern float __tanhf(float __x);
extern float acoshf(float __x);
extern float __acoshf(float __x);
extern float asinhf(float __x);
extern float __asinhf(float __x);
extern float atanhf(float __x);
extern float __atanhf(float __x);
extern float expf(float __x);
extern float __expf(float __x);
extern float frexpf(float __x, int *__exponent);
extern float __frexpf(float __x, int *__exponent);
extern float ldexpf(float __x, int __exponent);
extern float __ldexpf(float __x, int __exponent);
extern float logf(float __x);
extern float __logf(float __x);
extern float log10f(float __x);
extern float __log10f(float __x);
extern float modff(float __x, float *__iptr);
extern float __modff(float __x, float *__iptr);
extern float expm1f(float __x);
extern float __expm1f(float __x);
extern float log1pf(float __x);
extern float __log1pf(float __x);
extern float logbf(float __x);
extern float __logbf(float __x);
extern float exp2f(float __x);
extern float __exp2f(float __x);
extern float log2f(float __x);
extern float __log2f(float __x);
extern float powf(float __x, float __y);
extern float __powf(float __x, float __y);
extern float sqrtf(float __x);
extern float __sqrtf(float __x);
extern float hypotf(float __x, float __y);
extern float __hypotf(float __x, float __y);
extern float cbrtf(float __x);
extern float __cbrtf(float __x);
extern float ceilf(float __x);
extern float __ceilf(float __x);
extern float fabsf(float __x);
extern float __fabsf(float __x);
extern float floorf(float __x);
extern float __floorf(float __x);
extern float fmodf(float __x, float __y);
extern float __fmodf(float __x, float __y);
extern int __isinff(float __value);
extern int __finitef(float __value);
extern int isinff(float __value);
extern int finitef(float __value);
extern float dremf(float __x, float __y);
extern float __dremf(float __x, float __y);
extern float significandf(float __x);
extern float __significandf(float __x);
extern float copysignf(float __x, float __y);
extern float __copysignf(float __x, float __y);
extern float nanf(__const char *__tagb);
extern float __nanf(__const char *__tagb);
extern int __isnanf(float __value);
extern int isnanf(float __value);
extern float j0f(float );
extern float __j0f(float );
extern float j1f(float );
extern float __j1f(float );
extern float jnf(int , float );
extern float __jnf(int , float );
extern float y0f(float );
extern float __y0f(float );
extern float y1f(float );
extern float __y1f(float );
extern float ynf(int , float );
extern float __ynf(int , float );
extern float erff(float );
extern float __erff(float );
extern float erfcf(float );
extern float __erfcf(float );
extern float lgammaf(float );
extern float __lgammaf(float );
extern float tgammaf(float );
extern float __tgammaf(float );
extern float gammaf(float );
extern float __gammaf(float );
extern float lgammaf_r(float , int *__signgamp);
extern float __lgammaf_r(float , int *__signgamp);
extern float rintf(float __x);
extern float __rintf(float __x);
extern float nextafterf(float __x, float __y);
extern float __nextafterf(float __x, float __y);
extern float nexttowardf(float __x, long double __y);
extern float __nexttowardf(float __x, long double __y);
extern float remainderf(float __x, float __y);
extern float __remainderf(float __x, float __y);
extern float scalbnf(float __x, int __n);
extern float __scalbnf(float __x, int __n);
extern int ilogbf(float __x);
extern int __ilogbf(float __x);
extern float scalblnf(float __x, long int __n);
extern float __scalblnf(float __x, long int __n);
extern float nearbyintf(float __x);
extern float __nearbyintf(float __x);
extern float roundf(float __x);
extern float __roundf(float __x);
extern float truncf(float __x);
extern float __truncf(float __x);
extern float remquof(float __x, float __y , int *__quo);
extern float __remquof(float __x, float __y , int *__quo);
extern long int lrintf(float __x);
extern long int __lrintf(float __x);
extern long long int llrintf(float __x);
extern long long int __llrintf(float __x);
extern long int lroundf(float __x);
extern long int __lroundf(float __x);
extern long long int llroundf(float __x);
extern long long int __llroundf(float __x);
extern float fdimf(float __x, float __y);
extern float __fdimf(float __x, float __y);
extern float fmaxf(float __x, float __y);
extern float __fmaxf(float __x, float __y);
extern float fminf(float __x, float __y);
extern float __fminf(float __x, float __y);
extern int __fpclassifyf(float __value);
extern int __signbitf(float __value);
extern float fmaf(float __x, float __y , float __z);
extern float __fmaf(float __x, float __y , float __z);
extern float scalbf(float __x, float __n);
extern float __scalbf(float __x, float __n);
extern long double acosl(long double __x);
extern long double __acosl(long double __x);
extern long double asinl(long double __x);
extern long double __asinl(long double __x);
extern long double atanl(long double __x);
extern long double __atanl(long double __x);
extern long double atan2l(long double __y, long double __x);
extern long double __atan2l(long double __y, long double __x);
extern long double cosl(long double __x);
extern long double __cosl(long double __x);
extern long double sinl(long double __x);
extern long double __sinl(long double __x);
extern long double tanl(long double __x);
extern long double __tanl(long double __x);
extern long double coshl(long double __x);
extern long double __coshl(long double __x);
extern long double sinhl(long double __x);
extern long double __sinhl(long double __x);
extern long double tanhl(long double __x);
extern long double __tanhl(long double __x);
extern long double acoshl(long double __x);
extern long double __acoshl(long double __x);
extern long double asinhl(long double __x);
extern long double __asinhl(long double __x);
extern long double atanhl(long double __x);
extern long double __atanhl(long double __x);
extern long double expl(long double __x);
extern long double __expl(long double __x);
extern long double frexpl(long double __x, int *__exponent);
extern long double __frexpl(long double __x, int *__exponent);
extern long double ldexpl(long double __x, int __exponent);
extern long double __ldexpl(long double __x, int __exponent);
extern long double logl(long double __x);
extern long double __logl(long double __x);
extern long double log10l(long double __x);
extern long double __log10l(long double __x);
extern long double modfl(long double __x, long double *__iptr);
extern long double __modfl(long double __x, long double *__iptr);
extern long double expm1l(long double __x);
extern long double __expm1l(long double __x);
extern long double log1pl(long double __x);
extern long double __log1pl(long double __x);
extern long double logbl(long double __x);
extern long double __logbl(long double __x);
extern long double exp2l(long double __x);
extern long double __exp2l(long double __x);
extern long double log2l(long double __x);
extern long double __log2l(long double __x);
extern long double powl(long double __x, long double __y);
extern long double __powl(long double __x, long double __y);
extern long double sqrtl(long double __x);
extern long double __sqrtl(long double __x);
extern long double hypotl(long double __x, long double __y);
extern long double __hypotl(long double __x, long double __y);
extern long double cbrtl(long double __x);
extern long double __cbrtl(long double __x);
extern long double ceill(long double __x);
extern long double __ceill(long double __x);
extern long double fabsl(long double __x);
extern long double __fabsl(long double __x);
extern long double floorl(long double __x);
extern long double __floorl(long double __x);
extern long double fmodl(long double __x, long double __y);
extern long double __fmodl(long double __x, long double __y);
extern int __isinfl(long double __value);
extern int __finitel(long double __value);
extern int isinfl(long double __value);
extern int finitel(long double __value);
extern long double dreml(long double __x, long double __y);
extern long double __dreml(long double __x, long double __y);
extern long double significandl(long double __x);
extern long double __significandl(long double __x);
extern long double copysignl(long double __x, long double __y);
extern long double __copysignl(long double __x, long double __y);
extern long double nanl(__const char *__tagb);
extern long double __nanl(__const char *__tagb);
extern int __isnanl(long double __value);
extern int isnanl(long double __value);
extern long double j0l(long double );
extern long double __j0l(long double );
extern long double j1l(long double );
extern long double __j1l(long double );
extern long double jnl(int , long double );
extern long double __jnl(int , long double );
extern long double y0l(long double );
extern long double __y0l(long double );
extern long double y1l(long double );
extern long double __y1l(long double );
extern long double ynl(int , long double );
extern long double __ynl(int , long double );
extern long double erfl(long double );
extern long double __erfl(long double );
extern long double erfcl(long double );
extern long double __erfcl(long double );
extern long double lgammal(long double );
extern long double __lgammal(long double );
extern long double tgammal(long double );
extern long double __tgammal(long double );
extern long double gammal(long double );
extern long double __gammal(long double );
extern long double lgammal_r(long double , int *__signgamp);
extern long double __lgammal_r(long double , int *__signgamp);
extern long double rintl(long double __x);
extern long double __rintl(long double __x);
extern long double nextafterl(long double __x, long double __y);
extern long double __nextafterl(long double __x, long double __y);
extern long double nexttowardl(long double __x, long double __y);
extern long double __nexttowardl(long double __x, long double __y);
extern long double remainderl(long double __x, long double __y);
extern long double __remainderl(long double __x, long double __y);
extern long double scalbnl(long double __x, int __n);
extern long double __scalbnl(long double __x, int __n);
extern int ilogbl(long double __x);
extern int __ilogbl(long double __x);
extern long double scalblnl(long double __x, long int __n);
extern long double __scalblnl(long double __x, long int __n);
extern long double nearbyintl(long double __x);
extern long double __nearbyintl(long double __x);
extern long double roundl(long double __x);
extern long double __roundl(long double __x);
extern long double truncl(long double __x);
extern long double __truncl(long double __x);
extern long double remquol(long double __x, long double __y , int *__quo);
extern long double __remquol(long double __x, long double __y , int *__quo);
extern long int lrintl(long double __x);
extern long int __lrintl(long double __x);
extern long long int llrintl(long double __x);
extern long long int __llrintl(long double __x);
extern long int lroundl(long double __x);
extern long int __lroundl(long double __x);
extern long long int llroundl(long double __x);
extern long long int __llroundl(long double __x);
extern long double fdiml(long double __x, long double __y);
extern long double __fdiml(long double __x, long double __y);
extern long double fmaxl(long double __x, long double __y);
extern long double __fmaxl(long double __x, long double __y);
extern long double fminl(long double __x, long double __y);
extern long double __fminl(long double __x, long double __y);
extern int __fpclassifyl(long double __value);
extern int __signbitl(long double __value);
extern long double fmal(long double __x, long double __y , long double __z);
extern long double __fmal(long double __x, long double __y , long double __z);
extern long double scalbl(long double __x, long double __n);
extern long double __scalbl(long double __x, long double __n);
extern int signgam;
enum enum_imopVarPre24 {
    FP_NAN, FP_INFINITE , FP_ZERO , FP_SUBNORMAL , FP_NORMAL
} ;
enum enum_imopVarPre25 {
    _IEEE_ = -1, _SVID_ , _XOPEN_ , _POSIX_ , _ISOC_
} ;
typedef enum enum_imopVarPre25 _LIB_VERSION_TYPE;
extern _LIB_VERSION_TYPE _LIB_VERSION;
struct exception {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
} ;
extern int matherr(struct exception *__exc);
struct stUn_imopVarPre26 {
    unsigned char _x[4];
} ;
typedef struct stUn_imopVarPre26 omp_lock_t;
struct stUn_imopVarPre27 {
    unsigned char _x[8 + sizeof(void *)];
} ;
typedef struct stUn_imopVarPre27 omp_nest_lock_t;
enum omp_sched_t {
    omp_sched_static = 1, omp_sched_dynamic = 2 , omp_sched_guided = 3 , omp_sched_auto = 4
} ;
typedef enum omp_sched_t omp_sched_t;
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
extern void omp_destroy_lock(omp_lock_t *);
extern void omp_set_lock(omp_lock_t *);
extern void omp_unset_lock(omp_lock_t *);
extern int omp_test_lock(omp_lock_t *);
extern void omp_init_nest_lock(omp_nest_lock_t *);
extern void omp_destroy_nest_lock(omp_nest_lock_t *);
extern void omp_set_nest_lock(omp_nest_lock_t *);
extern void omp_unset_nest_lock(omp_nest_lock_t *);
extern int omp_test_nest_lock(omp_nest_lock_t *);
extern double omp_get_wtime(void );
extern double omp_get_wtick(void );
void omp_set_schedule(omp_sched_t , int );
void omp_get_schedule(omp_sched_t *, int *);
int omp_get_thread_limit(void );
void omp_set_max_active_levels(int );
int omp_get_max_active_levels(void );
int omp_get_level(void );
int omp_get_ancestor_thread_num(int );
int omp_get_team_size(int );
int omp_get_active_level(void );
int main(int argc, char *argv[]);
int main(int argc, char *argv[]) {
    double diff;
    double epsilon = 0.001;
    int i;
    int iterations;
    int iterations_print;
    int j;
    double mean;
    double my_diff;
    double u[500][500];
    double w[500][500];
    double wtime;
    printf("\n");
    printf("HEATED_PLATE_OPENMP\n");
    printf("  C/OpenMP version\n");
    printf("  A program to solve for the steady state temperature distribution\n");
    printf("  over a rectangular plate.\n");
    printf("\n");
    printf("  Spatial grid of %d by %d points.\n", 500, 500);
    printf("  The iteration will be repeated until the change is <= %e\n", epsilon);
    int _imopVarPre29;
    _imopVarPre29 = omp_get_num_procs();
    printf("  Number of processors available = %d\n", _imopVarPre29);
    int _imopVarPre31;
    _imopVarPre31 = omp_get_max_threads();
    printf("  Number of threads =              %d\n", _imopVarPre31);
    mean = 0.0;
#pragma omp parallel shared(w) private(i, j)
    {
#pragma omp for nowait
        for (i = 1; i < 500 - 1; i++) {
            w[i][0] = 100.0;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i = 1; i < 500 - 1; i++) {
            w[i][500 - 1] = 100.0;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (j = 0; j < 500; j++) {
            w[500 - 1][j] = 100.0;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (j = 0; j < 500; j++) {
            w[0][j] = 0.0;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        for (i = 1; i < 500 - 1; i++) {
            mean = mean + w[i][0] + w[i][500 - 1];
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:mean) nowait
        for (j = 0; j < 500; j++) {
            mean = mean + w[500 - 1][j] + w[0][j];
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    mean = mean / (double) (2 * 500 + 2 * 500 - 4);
    printf("\n");
    printf("  MEAN = %f\n", mean);
#pragma omp parallel shared(mean, w) private(i, j)
    {
#pragma omp for nowait
        for (i = 1; i < 500 - 1; i++) {
            for (j = 1; j < 500 - 1; j++) {
                w[i][j] = mean;
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    iterations = 0;
    iterations_print = 1;
    printf("\n");
    printf(" Iteration  Change\n");
    printf("\n");
    wtime = omp_get_wtime();
    diff = epsilon;
    while (epsilon <= diff) {
        {
#pragma omp parallel shared(u, w) private(i, j)
            {
#pragma omp for nowait
                for (i = 0; i < 500; i++) {
                    for (j = 0; j < 500; j++) {
                        u[i][j] = w[i][j];
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i = 1; i < 500 - 1; i++) {
                    for (j = 1; j < 500 - 1; j++) {
                        w[i][j] = (u[i - 1][j] + u[i + 1][j] + u[i][j - 1] + u[i][j + 1]) / 4.0;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            }
            diff = 0.0;
#pragma omp parallel shared(diff, u, w) private(i, j, my_diff)
            {
                my_diff = 0.0;
#pragma omp for nowait
                for (i = 1; i < 500 - 1; i++) {
                    for (j = 1; j < 500 - 1; j++) {
                        double _imopVarPre34;
                        double _imopVarPre35;
                        _imopVarPre34 = w[i][j] - u[i][j];
                        _imopVarPre35 = fabs(_imopVarPre34);
                        if (my_diff < _imopVarPre35) {
                            double _imopVarPre37;
                            double _imopVarPre38;
                            _imopVarPre37 = w[i][j] - u[i][j];
                            _imopVarPre38 = fabs(_imopVarPre37);
                            my_diff = _imopVarPre38;
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp critical
                {
                    if (diff < my_diff) {
                        diff = my_diff;
                    }
                }
            }
            iterations++;
            if (iterations == iterations_print) {
                printf("  %8d  %f\n", iterations, diff);
                iterations_print = 2 * iterations_print;
            }
        }
    }
    double _imopVarPre40;
    _imopVarPre40 = omp_get_wtime();
    wtime = _imopVarPre40 - wtime;
    printf("\n");
    printf("  %8d  %f\n", iterations, diff);
    printf("\n");
    printf("  Error tolerance achieved.\n");
    printf("  Wallclock time = %f\n", wtime);
    printf("\n");
    printf("HEATED_PLATE_OPENMP:\n");
    printf("  Normal end of execution.\n");
    return 0;
}
