typedef int __int32_t;
typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_suseconds_t;
typedef __darwin_size_t size_t;
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
extern FILE *__stderrp;
int fclose(FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fprintf(FILE *restrict , const char *restrict , ...);
int fputs(const char *restrict , FILE *restrict );
size_t fread(void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
size_t fwrite(const void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
int printf(const char *restrict , ...);
typedef unsigned int uint32_t;
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
int atoi(const char *);
void exit(int );
void free(void *);
void *malloc(size_t __size);
size_t strlen(const char *__s);
char *strdup(const char *__s1);
extern char *suboptarg;
struct fssearchblock ;
struct searchstate ;
int gettimeofday(struct timeval *restrict , void *restrict );
void cpu_stencil(float c0, float c1 , float *A0 , float *Anext , const int nx , const int ny , const int nz);
void outputData(char *fName, float *h_A0 , int nx , int ny , int nz);
struct pb_Parameters {
    char *outFile;
    char **inpFiles;
} ;
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv);
void pb_FreeParameters(struct pb_Parameters *p);
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
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer);
void pb_PrintTimerSet(struct pb_TimerSet *timers);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void cpu_stencil(float c0, float c1 , float *A0 , float *Anext , const int nx , const int ny , const int nz) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
#pragma omp parallel
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<18583,>}*/
        /*OUT: {
        Reverse<18583,>}*/
        /*OUT: {
        Reverse<18583, 16965_1;>}*/
        for (i = 1; i < nx - 1; i++) {
            /*OUT: {
            Reverse<18583,>}*/
            int j;
            /*OUT: {
            Reverse<18583,>}*/
            int k;
            /*OUT: {
            Reverse<18583,>}*/
            /*OUT: {
            Reverse<18583,>}*/
            /*OUT: {
            Reverse<18583, 16968_1; 16965_0;>}*/
            for (j = 1; j < ny - 1; j++) {
                /*OUT: {
                Reverse<18583, 16965_0;>}*/
                /*OUT: {
                Reverse<18583, 16965_0;>}*/
                /*OUT: {
                Reverse<18583, 16968_0; 16965_0;>}*/
                for (k = 1; k < nz - 1; k++) {
                    /*OUT: {
                    Reverse<18583, 16968_0; 16965_0;>}*/
                    Anext[(i + nx * (j + ny * k))] = (A0[(i + nx * (j + ny * (k + 1)))] + A0[(i + nx * (j + ny * (k - 1)))] + A0[(i + nx * ((j + 1) + ny * k))] + A0[(i + nx * ((j - 1) + ny * k))] + A0[((i + 1) + nx * (j + ny * k))] + A0[((i - 1) + nx * (j + ny * k))]) * c1 - A0[(i + nx * (j + ny * k))] * c0;
                }
            }
        }
        /*OUT: {
        Reverse<18583,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<25339,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void outputData(char *fName, float *h_A0 , int nx , int ny , int nz) {
    /*OUT: {
    Reverse<--,>}*/
    struct __sFILE *_imopVarPre16;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre16 = fopen(fName, "w");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    FILE *fid = _imopVarPre16;
    /*OUT: {
    Reverse<--,>}*/
    uint32_t tmp32;
    /*OUT: {
    Reverse<--,>}*/
    if (fid == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 17018_0;>}*/
        fprintf(__stderrp, "Cannot open output file\n");
        /*OUT: {
        Reverse<--, 17018_0;>}*/
        /*OUT: {
        Reverse<--, 17018_0;>}*/
        int _imopVarPre18;
        /*OUT: {
        Reverse<--, 17018_0;>}*/
        _imopVarPre18 = -1;
        /*OUT: {
        Reverse<--, 17018_0;>}*/
        exit(_imopVarPre18);
        /*OUT: {
        Reverse<--, 17018_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    tmp32 = nx * ny * nz;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre21;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int *_imopVarPre22;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre21 = sizeof(uint32_t);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre22 = &tmp32;
    /*OUT: {
    Reverse<--,>}*/
    fwrite(_imopVarPre22, _imopVarPre21, 1, fid);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre24;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre24 = sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    fwrite(h_A0, _imopVarPre24, tmp32, fid);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fclose(fid);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
static void free_string_array(char **string_array) {
    /*OUT: {
    Reverse<--,>}*/
    char **p;
    /*OUT: {
    Reverse<--,>}*/
    if (!string_array) {
        /*OUT: {
        Reverse<--, 17060_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 17060_1;>}*/
    /*OUT: {
    Reverse<--, 17060_1;>}*/
    /*OUT: {
    Reverse<--, 17063_0; 17060_1;>}*/
    for (p = string_array; *p; p++) {
        /*OUT: {
        Reverse<--, 17063_0; 17060_1;>}*/
        char *_imopVarPre26;
        /*OUT: {
        Reverse<--, 17063_0; 17060_1;>}*/
        _imopVarPre26 = *p;
        /*OUT: {
        Reverse<--, 17063_0; 17060_1;>}*/
        free(_imopVarPre26);
        /*OUT: {
        Reverse<--, 17063_0; 17060_1;>}*/
    }
    /*OUT: {
    Reverse<--, 17063_1; 17060_1;>}*/
    free(string_array);
    /*OUT: {
    Reverse<--, 17063_1; 17060_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
static char **read_string_array(char *in) {
    /*OUT: {
    Reverse<--,>}*/
    char **ret;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int count;
    /*OUT: {
    Reverse<--,>}*/
    char *substring;
    /*OUT: {
    Reverse<--,>}*/
    count = 1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 17087_0;>}*/
    for (i = 0; in[i]; i++) {
        /*OUT: {
        Reverse<--, 17087_0;>}*/
        if (in[i] == ',') {
            /*OUT: {
            Reverse<--, 17090_0; 17087_0;>}*/
            count++;
        }
    }
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    unsigned long int _imopVarPre29;
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    void *_imopVarPre30;
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    _imopVarPre29 = (count + 1) * sizeof(char *);
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    _imopVarPre30 = malloc(_imopVarPre29);
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    ret = (char **) _imopVarPre30;
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    substring = in;
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    /*OUT: {
    Reverse<--, 17087_1;>}*/
    /*OUT: {
    Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
    for (i = 0; i < count; i++) {
        /*OUT: {
        Reverse<--, 17109_0; 17087_1;>}*/
        char *substring_end;
        /*OUT: {
        Reverse<--, 17109_0; 17087_1;>}*/
        int substring_length;
        /*OUT: {
        Reverse<--, 17109_0; 17087_1;>}*/
        int _imopVarPre32;
        /*OUT: {
        Reverse<--, 17109_0; 17087_1;>}*/
        substring_end = substring;
        /*OUT: {
        Reverse<--, 17109_0; 17087_1;>}*/
        _imopVarPre32 = (*substring_end != ',');
        /*OUT: {
        Reverse<--, 17109_0; 17087_1;>}*/
        if (_imopVarPre32) {
            /*OUT: {
            Reverse<--, 17119_0; 17109_0; 17087_1;>}*/
            _imopVarPre32 = (*substring_end != 0);
        }
        /*OUT: {
        Reverse<--, 17109_0; 17087_1;>}*/
        for (; _imopVarPre32; ) {
            /*OUT: {
            Reverse<--, 17123_0; 17109_0; 17087_1;>}*/
            ;
            /*OUT: {
            Reverse<--, 17123_0; 17109_0; 17087_1;>}*/
            substring_end++;
            /*OUT: {
            Reverse<--, 17123_0; 17109_0; 17087_1;>}*/
            _imopVarPre32 = (*substring_end != ',');
            /*OUT: {
            Reverse<--, 17123_0; 17109_0; 17087_1;>}*/
            if (_imopVarPre32) {
                /*OUT: {
                Reverse<--, 17130_0; 17123_0; 17109_0; 17087_1;>}*/
                _imopVarPre32 = (*substring_end != 0);
            }
        }
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        substring_length = substring_end - substring;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        int _imopVarPre35;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        void *_imopVarPre36;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        _imopVarPre35 = substring_length + 1;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        _imopVarPre36 = malloc(_imopVarPre35);
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        ret[i] = (char *) _imopVarPre36;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        char *_imopVarPre117;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        unsigned int _imopVarPre118;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        char *_imopVarPre119;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        _imopVarPre117 = ret[i];
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        _imopVarPre118 = __builtin_object_size(_imopVarPre117, 0);
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        _imopVarPre119 = ret[i];
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        __builtin___memcpy_chk(_imopVarPre119, substring, substring_length, _imopVarPre118);
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        ret[i][substring_length] = 0;
        /*OUT: {
        Reverse<--, 17123_1; 17109_0; 17087_1;>}*/
        substring = substring_end + 1;
    }
    /*OUT: {
    Reverse<--, 17109_1; 17087_1;>}*/
    ret[i] = ((void *) 0);
    /*OUT: {
    Reverse<--, 17109_1; 17087_1;>}*/
    return ret;
}
struct argparse {
    int argc;
    char **argv;
    int argn;
    char **argv_get;
    char **argv_put;
} ;
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void initialize_argparse(struct argparse *ap, int argc , char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    ap->argc = argc;
    /*OUT: {
    Reverse<--,>}*/
    ap->argn = 0;
    /*OUT: {
    Reverse<--,>}*/
    ap->argv_get = ap->argv_put = ap->argv = argv;
}
/*OUT: {
Reverse<--,>}*/
static void finalize_argparse(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 17192_0;>}*/
    for (; ap->argn < ap->argc; ap->argn++) {
        /*OUT: {
        Reverse<--, 17192_0;>}*/
        *ap->argv_put++ = *ap->argv_get++;
    }
}
/*OUT: {
Reverse<--,>}*/
static void delete_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    if (ap->argn >= ap->argc) {
        /*OUT: {
        Reverse<--, 17197_0;>}*/
        fprintf(__stderrp, "delete_argument\n");
        /*OUT: {
        Reverse<--, 17197_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    ap->argc--;
    /*OUT: {
    Reverse<--,>}*/
    ap->argv_get++;
}
/*OUT: {
Reverse<--,>}*/
static void next_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    if (ap->argn >= ap->argc) {
        /*OUT: {
        Reverse<--, 17208_0;>}*/
        fprintf(__stderrp, "next_argument\n");
        /*OUT: {
        Reverse<--, 17208_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    *ap->argv_put++ = *ap->argv_get++;
    /*OUT: {
    Reverse<--,>}*/
    ap->argn++;
}
/*OUT: {
Reverse<--,>}*/
static int is_end_of_arguments(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    return ap->argn == ap->argc;
}
/*OUT: {
Reverse<--,>}*/
static char *get_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    return *ap->argv_get;
}
/*OUT: {
Reverse<--,>}*/
static char *consume_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre120;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre120 = get_argument(ap);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *ret = _imopVarPre120;
    /*OUT: {
    Reverse<--,>}*/
    delete_argument(ap);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return ret;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    char *err_message;
    /*OUT: {
    Reverse<--,>}*/
    struct argparse ap;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre123;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre124;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre123 = sizeof(struct pb_Parameters);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre124 = malloc(_imopVarPre123);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre124;
    /*OUT: {
    Reverse<--,>}*/
    ret->outFile = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre127;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre128;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre127 = sizeof(char *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre128 = malloc(_imopVarPre127);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles = (char **) _imopVarPre128;
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles[0] = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre131;
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre132;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre131 = *_argc;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre132 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    initialize_argparse(_imopVarPre132, _imopVarPre131, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre135;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre136;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre135 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre136 = is_end_of_arguments(_imopVarPre135);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    while (!_imopVarPre136) {
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        struct argparse *_imopVarPre138;
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        char *_imopVarPre139;
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        _imopVarPre138 = &ap;
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        _imopVarPre139 = get_argument(_imopVarPre138);
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        char *arg = _imopVarPre139;
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        int _imopVarPre142;
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        int _imopVarPre143;
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        _imopVarPre142 = (arg[0] == '-');
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        if (_imopVarPre142) {
            /*OUT: {
            Reverse<--, 17313_0; 17295_0;>}*/
            _imopVarPre143 = (arg[1] != 0);
            /*OUT: {
            Reverse<--, 17313_0; 17295_0;>}*/
            if (_imopVarPre143) {
                /*OUT: {
                Reverse<--, 17318_0; 17313_0; 17295_0;>}*/
                _imopVarPre143 = (arg[2] == 0);
            }
            /*OUT: {
            Reverse<--, 17313_0; 17295_0;>}*/
            _imopVarPre142 = _imopVarPre143;
        }
        /*OUT: {
        Reverse<--, 17295_0;>}*/
        if (_imopVarPre142) {
            /*OUT: {
            Reverse<--, 17325_0; 17295_0;>}*/
            struct argparse *_imopVarPre145;
            /*OUT: {
            Reverse<--, 17325_0; 17295_0;>}*/
            _imopVarPre145 = &ap;
            /*OUT: {
            Reverse<--, 17325_0; 17295_0;>}*/
            delete_argument(_imopVarPre145);
            /*OUT: {
            Reverse<--, 17325_0; 17295_0;>}*/
            /*OUT: {
            Reverse<--, 17325_0; 17295_0;>}*/
            switch (arg[1]) {
                /*OUT: {
                Reverse<--, 17335_3; 17325_0; 17295_0;>}*/
                case 'o': ;
                /*OUT: {
                Reverse<--, 17335_3; 17325_0; 17295_0;>}*/
                struct argparse *_imopVarPre147;
                /*OUT: {
                Reverse<--, 17335_3; 17325_0; 17295_0;>}*/
                int _imopVarPre148;
                /*OUT: {
                Reverse<--, 17335_3; 17325_0; 17295_0;>}*/
                _imopVarPre147 = &ap;
                /*OUT: {
                Reverse<--, 17335_3; 17325_0; 17295_0;>}*/
                _imopVarPre148 = is_end_of_arguments(_imopVarPre147);
                /*OUT: {
                Reverse<--, 17335_3; 17325_0; 17295_0;>}*/
                /*OUT: {
                Reverse<--, 17335_3; 17325_0; 17295_0;>}*/
                if (_imopVarPre148) {
                    /*OUT: {
                    Reverse<--, 17346_0; 17335_3; 17325_0; 17295_0;>}*/
                    err_message = "Expecting file name after '-o'\n";
                    /*OUT: {
                    Reverse<--, 17346_0; 17335_3; 17325_0; 17295_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                char *_imopVarPre150;
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                _imopVarPre150 = ret->outFile;
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                free(_imopVarPre150);
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                struct argparse *_imopVarPre155;
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                char *_imopVarPre156;
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                char *_imopVarPre157;
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                _imopVarPre155 = &ap;
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                _imopVarPre156 = consume_argument(_imopVarPre155);
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                _imopVarPre157 = strdup(_imopVarPre156);
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                ret->outFile = _imopVarPre157;
                /*OUT: {
                Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 17335_2; 17325_0; 17295_0;>}*/
                case 'i': ;
                /*OUT: {
                Reverse<--, 17335_2; 17325_0; 17295_0;>}*/
                struct argparse *_imopVarPre159;
                /*OUT: {
                Reverse<--, 17335_2; 17325_0; 17295_0;>}*/
                int _imopVarPre160;
                /*OUT: {
                Reverse<--, 17335_2; 17325_0; 17295_0;>}*/
                _imopVarPre159 = &ap;
                /*OUT: {
                Reverse<--, 17335_2; 17325_0; 17295_0;>}*/
                _imopVarPre160 = is_end_of_arguments(_imopVarPre159);
                /*OUT: {
                Reverse<--, 17335_2; 17325_0; 17295_0;>}*/
                /*OUT: {
                Reverse<--, 17335_2; 17325_0; 17295_0;>}*/
                if (_imopVarPre160) {
                    /*OUT: {
                    Reverse<--, 17388_0; 17335_2; 17325_0; 17295_0;>}*/
                    err_message = "Expecting file name after '-i'\n";
                    /*OUT: {
                    Reverse<--, 17388_0; 17335_2; 17325_0; 17295_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                struct argparse *_imopVarPre165;
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                char *_imopVarPre166;
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                char **_imopVarPre167;
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                _imopVarPre165 = &ap;
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                _imopVarPre166 = consume_argument(_imopVarPre165);
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                _imopVarPre167 = read_string_array(_imopVarPre166);
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                ret->inpFiles = _imopVarPre167;
                /*OUT: {
                Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 17335_0; 17325_0; 17295_0;>}*/
                case '-': goto end_of_options;
                /*OUT: {
                Reverse<--, 17335_1; 17325_0; 17295_0;>}*/
                default: err_message = "Unexpected command-line parameter\n";
                /*OUT: {
                Reverse<--, 17335_1; 17325_0; 17295_0;>}*/
                goto error;
            }
        } else {
            /*OUT: {
            Reverse<--, 17325_1; 17295_0;>}*/
            struct argparse *_imopVarPre169;
            /*OUT: {
            Reverse<--, 17325_1; 17295_0;>}*/
            _imopVarPre169 = &ap;
            /*OUT: {
            Reverse<--, 17325_1; 17295_0;>}*/
            next_argument(_imopVarPre169);
            /*OUT: {
            Reverse<--, 17325_1; 17295_0;>}*/
        }
        /*OUT: {
        Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>
        Reverse<--, 17325_1; 17295_0;>
        Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
        _imopVarPre135 = &ap;
        /*OUT: {
        Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>
        Reverse<--, 17325_1; 17295_0;>
        Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
        _imopVarPre136 = is_end_of_arguments(_imopVarPre135);
        /*OUT: {
        Reverse<--, 17346_1; 17335_3; 17325_0; 17295_0;>
        Reverse<--, 17325_1; 17295_0;>
        Reverse<--, 17388_1; 17335_2; 17325_0; 17295_0;>}*/
    }
    /*OUT: {
    Reverse<--, 17295_1;>
    Reverse<--, 17335_0; 17325_0; 17295_0;>}*/
    end_of_options: *_argc = ap.argc;
    /*OUT: {
    Reverse<--, 17295_1;>
    Reverse<--, 17335_0; 17325_0; 17295_0;>}*/
    struct argparse *_imopVarPre171;
    /*OUT: {
    Reverse<--, 17295_1;>
    Reverse<--, 17335_0; 17325_0; 17295_0;>}*/
    _imopVarPre171 = &ap;
    /*OUT: {
    Reverse<--, 17295_1;>
    Reverse<--, 17335_0; 17325_0; 17295_0;>}*/
    finalize_argparse(_imopVarPre171);
    /*OUT: {
    Reverse<--, 17295_1;>
    Reverse<--, 17335_0; 17325_0; 17295_0;>}*/
    /*OUT: {
    Reverse<--, 17295_1;>
    Reverse<--, 17335_0; 17325_0; 17295_0;>}*/
    return ret;
    /*OUT: {
    Reverse<--, 17346_0; 17335_3; 17325_0; 17295_0;>
    Reverse<--, 17388_0; 17335_2; 17325_0; 17295_0;>
    Reverse<--, 17335_1; 17325_0; 17295_0;>}*/
    error: fputs(err_message, __stderrp);
    /*OUT: {
    Reverse<--, 17346_0; 17335_3; 17325_0; 17295_0;>
    Reverse<--, 17388_0; 17335_2; 17325_0; 17295_0;>
    Reverse<--, 17335_1; 17325_0; 17295_0;>}*/
    /*OUT: {
    Reverse<--, 17346_0; 17335_3; 17325_0; 17295_0;>
    Reverse<--, 17388_0; 17335_2; 17325_0; 17295_0;>
    Reverse<--, 17335_1; 17325_0; 17295_0;>}*/
    pb_FreeParameters(ret);
    /*OUT: {
    Reverse<--, 17346_0; 17335_3; 17325_0; 17295_0;>
    Reverse<--, 17388_0; 17335_2; 17325_0; 17295_0;>
    Reverse<--, 17335_1; 17325_0; 17295_0;>}*/
    /*OUT: {
    Reverse<--, 17346_0; 17335_3; 17325_0; 17295_0;>
    Reverse<--, 17388_0; 17335_2; 17325_0; 17295_0;>
    Reverse<--, 17335_1; 17325_0; 17295_0;>}*/
    return ((void *) 0);
}
/*OUT: {
Reverse<--,>}*/
void pb_FreeParameters(struct pb_Parameters *p) {
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre173;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre173 = p->outFile;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre173);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char **_imopVarPre175;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre175 = p->inpFiles;
    /*OUT: {
    Reverse<--,>}*/
    free_string_array(_imopVarPre175);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    free(p);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void accumulate_time(pb_Timestamp *accum, pb_Timestamp start , pb_Timestamp end) {
    /*OUT: {
    Reverse<--,>}*/
    *accum += end - start;
}
static pb_Timestamp get_time() {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre178;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre179;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre178 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre179 = &tv;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre179, _imopVarPre178);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return (pb_Timestamp) (tv.tv_sec * 1000000l + tv.tv_usec);
}
/*OUT: {
Reverse<--,>}*/
void pb_ResetTimer(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--,>}*/
    timer->elapsed = 0;
}
/*OUT: {
Reverse<--,>}*/
void pb_StartTimer(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_STOPPED) {
        /*OUT: {
        Reverse<--, 17516_0;>}*/
        fputs("Ignoring attempt to start a running timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 17516_0;>}*/
        /*OUT: {
        Reverse<--, 17516_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    timer->state = pb_Timer_RUNNING;
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    void *_imopVarPre182;
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    struct timeval *_imopVarPre183;
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    _imopVarPre182 = ((void *) 0);
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    _imopVarPre183 = &tv;
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    gettimeofday(_imopVarPre183, _imopVarPre182);
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    /*OUT: {
    Reverse<--, 17516_1;>}*/
    timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
}
/*OUT: {
Reverse<--,>}*/
void pb_StopTimer(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp fini;
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 17591_0;>}*/
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 17591_0;>}*/
        /*OUT: {
        Reverse<--, 17591_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    void *_imopVarPre190;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    struct timeval *_imopVarPre191;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    _imopVarPre190 = ((void *) 0);
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    _imopVarPre191 = &tv;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    gettimeofday(_imopVarPre191, _imopVarPre190);
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    unsigned long long int _imopVarPre194;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    unsigned long long int *_imopVarPre195;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    _imopVarPre194 = timer->init;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    _imopVarPre195 = &timer->elapsed;
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    accumulate_time(_imopVarPre195, _imopVarPre194, fini);
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    /*OUT: {
    Reverse<--, 17591_1;>}*/
    timer->init = fini;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void pb_StopTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp fini;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int numNotRunning = 0x3;
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 17632_0;>}*/
        fputs("Warning: Timer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 17632_0;>}*/
        /*OUT: {
        Reverse<--, 17632_0;>}*/
        numNotRunning &= 0x1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (subtimer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 17640_0;>}*/
        fputs("Warning: Subtimer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 17640_0;>}*/
        /*OUT: {
        Reverse<--, 17640_0;>}*/
        numNotRunning &= 0x2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (numNotRunning == 0x0) {
        /*OUT: {
        Reverse<--, 17648_0;>}*/
        fputs("Ignoring attempt to stop stopped timer and subtimer\n", __stderrp);
        /*OUT: {
        Reverse<--, 17648_0;>}*/
        /*OUT: {
        Reverse<--, 17648_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    subtimer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    void *_imopVarPre198;
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    struct timeval *_imopVarPre199;
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    _imopVarPre198 = ((void *) 0);
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    _imopVarPre199 = &tv;
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    gettimeofday(_imopVarPre199, _imopVarPre198);
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    if (numNotRunning & 0x2) {
        /*OUT: {
        Reverse<--, 17674_0; 17648_1;>}*/
        unsigned long long int _imopVarPre202;
        /*OUT: {
        Reverse<--, 17674_0; 17648_1;>}*/
        unsigned long long int *_imopVarPre203;
        /*OUT: {
        Reverse<--, 17674_0; 17648_1;>}*/
        _imopVarPre202 = timer->init;
        /*OUT: {
        Reverse<--, 17674_0; 17648_1;>}*/
        _imopVarPre203 = &timer->elapsed;
        /*OUT: {
        Reverse<--, 17674_0; 17648_1;>}*/
        accumulate_time(_imopVarPre203, _imopVarPre202, fini);
        /*OUT: {
        Reverse<--, 17674_0; 17648_1;>}*/
        /*OUT: {
        Reverse<--, 17674_0; 17648_1;>}*/
        timer->init = fini;
    }
    /*OUT: {
    Reverse<--, 17648_1;>}*/
    if (numNotRunning & 0x1) {
        /*OUT: {
        Reverse<--, 17688_0; 17648_1;>}*/
        unsigned long long int _imopVarPre206;
        /*OUT: {
        Reverse<--, 17688_0; 17648_1;>}*/
        unsigned long long int *_imopVarPre207;
        /*OUT: {
        Reverse<--, 17688_0; 17648_1;>}*/
        _imopVarPre206 = subtimer->init;
        /*OUT: {
        Reverse<--, 17688_0; 17648_1;>}*/
        _imopVarPre207 = &subtimer->elapsed;
        /*OUT: {
        Reverse<--, 17688_0; 17648_1;>}*/
        accumulate_time(_imopVarPre207, _imopVarPre206, fini);
        /*OUT: {
        Reverse<--, 17688_0; 17648_1;>}*/
        /*OUT: {
        Reverse<--, 17688_0; 17648_1;>}*/
        subtimer->init = fini;
    }
}
/*OUT: {
Reverse<--,>}*/
double pb_GetElapsedTime(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    double ret;
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_STOPPED) {
        /*OUT: {
        Reverse<--, 17704_0;>}*/
        fputs("Elapsed time from a running timer is inaccurate\n", __stderrp);
        /*OUT: {
        Reverse<--, 17704_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    ret = timer->elapsed / 1e6;
    /*OUT: {
    Reverse<--,>}*/
    return ret;
}
/*OUT: {
Reverse<--,>}*/
void pb_InitializeTimerSet(struct pb_TimerSet *timers) {
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long long int _imopVarPre208;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre208 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timers->wall_begin = _imopVarPre208;
    /*OUT: {
    Reverse<--,>}*/
    timers->current = pb_TimerID_NONE;
    /*OUT: {
    Reverse<--,>}*/
    timers->async_markers = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 17731_0;>}*/
    for (n = 0; n < pb_TimerID_LAST; n++) {
        /*OUT: {
        Reverse<--, 17731_0;>}*/
        struct pb_Timer *_imopVarPre210;
        /*OUT: {
        Reverse<--, 17731_0;>}*/
        _imopVarPre210 = &timers->timers[n];
        /*OUT: {
        Reverse<--, 17731_0;>}*/
        pb_ResetTimer(_imopVarPre210);
        /*OUT: {
        Reverse<--, 17731_0;>}*/
        /*OUT: {
        Reverse<--, 17731_0;>}*/
        timers->sub_timer_list[n] = ((void *) 0);
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer) {
    /*OUT: {
    Reverse<--,>}*/
    if (timers->current != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 17983_0;>}*/
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        /*OUT: {
        Reverse<--, 17983_0;>}*/
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        /*OUT: {
        Reverse<--, 17983_0;>}*/
        if (subtimerlist != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 17989_0; 17983_0;>}*/
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        /*OUT: {
        Reverse<--, 17983_0;>}*/
        if (currSubTimer != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 17994_0; 17983_0;>}*/
            struct pb_Timer *_imopVarPre268;
            /*OUT: {
            Reverse<--, 17994_0; 17983_0;>}*/
            struct pb_Timer *_imopVarPre269;
            /*OUT: {
            Reverse<--, 17994_0; 17983_0;>}*/
            _imopVarPre268 = &currSubTimer->timer;
            /*OUT: {
            Reverse<--, 17994_0; 17983_0;>}*/
            _imopVarPre269 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 17994_0; 17983_0;>}*/
            pb_StopTimerAndSubTimer(_imopVarPre269, _imopVarPre268);
            /*OUT: {
            Reverse<--, 17994_0; 17983_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 17994_1; 17983_0;>}*/
            struct pb_Timer *_imopVarPre271;
            /*OUT: {
            Reverse<--, 17994_1; 17983_0;>}*/
            _imopVarPre271 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 17994_1; 17983_0;>}*/
            pb_StopTimer(_imopVarPre271);
            /*OUT: {
            Reverse<--, 17994_1; 17983_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    timers->current = timer;
    /*OUT: {
    Reverse<--,>}*/
    if (timer != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 18018_0;>}*/
        struct pb_Timer *_imopVarPre273;
        /*OUT: {
        Reverse<--, 18018_0;>}*/
        _imopVarPre273 = &timers->timers[timer];
        /*OUT: {
        Reverse<--, 18018_0;>}*/
        pb_StartTimer(_imopVarPre273);
        /*OUT: {
        Reverse<--, 18018_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    /*OUT: {
    Reverse<--,>}*/
    unsigned long long int _imopVarPre274;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre274 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp wall_end = _imopVarPre274;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Timer *t = timers->timers;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_SubTimer *sub = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int maxSubLength;
    /*OUT: {
    Reverse<--,>}*/
    const char *categories[] = {"IO", "Kernel" , "Copy" , "Driver" , "Copy Async" , "Compute"};
    /*OUT: {
    Reverse<--,>}*/
    const int maxCategoryLength = 10;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 18081_1; 18058_0; 18045_0;>
    Reverse<--, 18058_1; 18045_0;>
    Reverse<--, 18121_1; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        /*OUT: {
        Reverse<--, 18045_0;>}*/
        struct pb_Timer *_imopVarPre277;
        /*OUT: {
        Reverse<--, 18045_0;>}*/
        double _imopVarPre278;
        /*OUT: {
        Reverse<--, 18045_0;>}*/
        _imopVarPre277 = &t[i];
        /*OUT: {
        Reverse<--, 18045_0;>}*/
        _imopVarPre278 = pb_GetElapsedTime(_imopVarPre277);
        /*OUT: {
        Reverse<--, 18045_0;>}*/
        /*OUT: {
        Reverse<--, 18045_0;>}*/
        if (_imopVarPre278 != 0) {
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            struct pb_Timer *_imopVarPre284;
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            double _imopVarPre285;
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            char *_imopVarPre286;
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            _imopVarPre284 = &t[i];
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            _imopVarPre285 = pb_GetElapsedTime(_imopVarPre284);
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            _imopVarPre286 = categories[i - 1];
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre286, _imopVarPre285);
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            /*OUT: {
            Reverse<--, 18058_0; 18045_0;>}*/
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                /*OUT: {
                Reverse<--, 18081_0; 18058_0; 18045_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 18081_0; 18058_0; 18045_0;>}*/
                maxSubLength = 0;
                /*OUT: {
                Reverse<--, 18081_0; 18058_0; 18045_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                    char *_imopVarPre289;
                    /*OUT: {
                    Reverse<--, 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                    unsigned long int _imopVarPre290;
                    /*OUT: {
                    Reverse<--, 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                    _imopVarPre289 = sub->label;
                    /*OUT: {
                    Reverse<--, 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                    _imopVarPre290 = strlen(_imopVarPre289);
                    /*OUT: {
                    Reverse<--, 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                    /*OUT: {
                    Reverse<--, 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                    if (_imopVarPre290 > maxSubLength) {
                        /*OUT: {
                        Reverse<--, 18099_0; 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                        char *_imopVarPre292;
                        /*OUT: {
                        Reverse<--, 18099_0; 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                        unsigned long int _imopVarPre293;
                        /*OUT: {
                        Reverse<--, 18099_0; 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                        _imopVarPre292 = sub->label;
                        /*OUT: {
                        Reverse<--, 18099_0; 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                        _imopVarPre293 = strlen(_imopVarPre292);
                        /*OUT: {
                        Reverse<--, 18099_0; 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                        /*OUT: {
                        Reverse<--, 18099_0; 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                        maxSubLength = _imopVarPre293;
                    }
                    /*OUT: {
                    Reverse<--, 18088_0; 18081_0; 18058_0; 18045_0;>}*/
                    sub = sub->next;
                }
                /*OUT: {
                Reverse<--, 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                if (maxSubLength <= maxCategoryLength) {
                    /*OUT: {
                    Reverse<--, 18114_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    maxSubLength = maxCategoryLength;
                }
                /*OUT: {
                Reverse<--, 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    struct pb_Timer *_imopVarPre299;
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    double _imopVarPre300;
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    char *_imopVarPre301;
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    _imopVarPre299 = &sub->timer;
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    _imopVarPre300 = pb_GetElapsedTime(_imopVarPre299);
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    _imopVarPre301 = sub->label;
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre301, _imopVarPre300);
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    /*OUT: {
                    Reverse<--, 18121_0; 18088_1; 18081_0; 18058_0; 18045_0;>}*/
                    sub = sub->next;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    struct pb_Timer *_imopVarPre304;
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    double _imopVarPre305;
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    _imopVarPre304 = &t[pb_TimerID_OVERLAP];
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    _imopVarPre305 = pb_GetElapsedTime(_imopVarPre304);
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    if (_imopVarPre305 != 0) {
        /*OUT: {
        Reverse<--, 18153_0; 18045_1;>}*/
        struct pb_Timer *_imopVarPre310;
        /*OUT: {
        Reverse<--, 18153_0; 18045_1;>}*/
        double _imopVarPre311;
        /*OUT: {
        Reverse<--, 18153_0; 18045_1;>}*/
        _imopVarPre310 = &t[pb_TimerID_OVERLAP];
        /*OUT: {
        Reverse<--, 18153_0; 18045_1;>}*/
        _imopVarPre311 = pb_GetElapsedTime(_imopVarPre310);
        /*OUT: {
        Reverse<--, 18153_0; 18045_1;>}*/
        /*OUT: {
        Reverse<--, 18153_0; 18045_1;>}*/
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre311);
        /*OUT: {
        Reverse<--, 18153_0; 18045_1;>}*/
    }
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    /*OUT: {
    Reverse<--, 18045_1;>}*/
    printf("Timer Wall Time: %f\n", walltime);
    /*OUT: {
    Reverse<--, 18045_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static int read_data(float *A0, int nx , int ny , int nz , FILE *fp) {
    /*OUT: {
    Reverse<--,>}*/
    int s = 0;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 18251_1; 18248_0;>}*/
    for (i = 0; i < nz; i++) {
        /*OUT: {
        Reverse<--, 18248_0;>}*/
        /*OUT: {
        Reverse<--, 18248_0;>}*/
        /*OUT: {
        Reverse<--, 18254_1; 18251_0; 18248_0;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<--, 18251_0; 18248_0;>}*/
            /*OUT: {
            Reverse<--, 18251_0; 18248_0;>}*/
            /*OUT: {
            Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
            for (k = 0; k < nx; k++) {
                /*OUT: {
                Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
                unsigned long int _imopVarPre320;
                /*OUT: {
                Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
                float *_imopVarPre321;
                /*OUT: {
                Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
                _imopVarPre320 = sizeof(float);
                /*OUT: {
                Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
                _imopVarPre321 = A0 + s;
                /*OUT: {
                Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
                fread(_imopVarPre321, _imopVarPre320, 1, fp);
                /*OUT: {
                Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
                /*OUT: {
                Reverse<--, 18254_0; 18251_0; 18248_0;>}*/
                s++;
            }
        }
    }
    /*OUT: {
    Reverse<--, 18248_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet timers;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *parameters;
    /*OUT: {
    Reverse<--,>}*/
    printf("CPU-based 7 points stencil codes****\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("Original version by Li-Wen Chang <lchang20@illinois.edu> and I-Jui Sung<sung10@illinois.edu>\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("This version maintained by Chris Rodrigues  ***********\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre323;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *_imopVarPre324;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre323 = &argc;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre324 = pb_ReadParameters(_imopVarPre323, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    parameters = _imopVarPre324;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet *_imopVarPre326;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre326 = &timers;
    /*OUT: {
    Reverse<--,>}*/
    pb_InitializeTimerSet(_imopVarPre326);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet *_imopVarPre328;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre328 = &timers;
    /*OUT: {
    Reverse<--,>}*/
    pb_SwitchToTimer(_imopVarPre328, pb_TimerID_COMPUTE);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int nx;
    /*OUT: {
    Reverse<--,>}*/
    int ny;
    /*OUT: {
    Reverse<--,>}*/
    int nz;
    /*OUT: {
    Reverse<--,>}*/
    int size;
    /*OUT: {
    Reverse<--,>}*/
    int iteration;
    /*OUT: {
    Reverse<--,>}*/
    float c0 = 1.0f / 6.0f;
    /*OUT: {
    Reverse<--,>}*/
    float c1 = 1.0f / 6.0f / 6.0f;
    /*OUT: {
    Reverse<--,>}*/
    if (argc < 5) {
        /*OUT: {
        Reverse<--, 18325_0;>}*/
        printf("Usage: probe nx ny nz tx ty t\n" "nx: the grid size x\n" "ny: the grid size y\n" "nz: the grid size z\n" "t: the iteration time\n");
        /*OUT: {
        Reverse<--, 18325_0;>}*/
        /*OUT: {
        Reverse<--, 18325_0;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 18325_1;>}*/
    char *_imopVarPre330;
    /*OUT: {
    Reverse<--, 18325_1;>}*/
    int _imopVarPre331;
    /*OUT: {
    Reverse<--, 18325_1;>}*/
    _imopVarPre330 = argv[1];
    /*OUT: {
    Reverse<--, 18325_1;>}*/
    _imopVarPre331 = atoi(_imopVarPre330);
    /*OUT: {
    Reverse<--, 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18325_1;>}*/
    nx = _imopVarPre331;
    /*OUT: {
    Reverse<--, 18325_1;>}*/
    if (nx < 1) {
        /*OUT: {
        Reverse<--, 18346_0; 18325_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 18346_1; 18325_1;>}*/
    char *_imopVarPre333;
    /*OUT: {
    Reverse<--, 18346_1; 18325_1;>}*/
    int _imopVarPre334;
    /*OUT: {
    Reverse<--, 18346_1; 18325_1;>}*/
    _imopVarPre333 = argv[2];
    /*OUT: {
    Reverse<--, 18346_1; 18325_1;>}*/
    _imopVarPre334 = atoi(_imopVarPre333);
    /*OUT: {
    Reverse<--, 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18346_1; 18325_1;>}*/
    ny = _imopVarPre334;
    /*OUT: {
    Reverse<--, 18346_1; 18325_1;>}*/
    if (ny < 1) {
        /*OUT: {
        Reverse<--, 18362_0; 18346_1; 18325_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 18362_1; 18346_1; 18325_1;>}*/
    char *_imopVarPre336;
    /*OUT: {
    Reverse<--, 18362_1; 18346_1; 18325_1;>}*/
    int _imopVarPre337;
    /*OUT: {
    Reverse<--, 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre336 = argv[3];
    /*OUT: {
    Reverse<--, 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre337 = atoi(_imopVarPre336);
    /*OUT: {
    Reverse<--, 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18362_1; 18346_1; 18325_1;>}*/
    nz = _imopVarPre337;
    /*OUT: {
    Reverse<--, 18362_1; 18346_1; 18325_1;>}*/
    if (nz < 1) {
        /*OUT: {
        Reverse<--, 18378_0; 18362_1; 18346_1; 18325_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    char *_imopVarPre339;
    /*OUT: {
    Reverse<--, 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    int _imopVarPre340;
    /*OUT: {
    Reverse<--, 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre339 = argv[4];
    /*OUT: {
    Reverse<--, 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre340 = atoi(_imopVarPre339);
    /*OUT: {
    Reverse<--, 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    iteration = _imopVarPre340;
    /*OUT: {
    Reverse<--, 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    if (iteration < 1) {
        /*OUT: {
        Reverse<--, 18394_0; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    float *h_A0;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    float *h_Anext;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    size = nx * ny * nz;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    unsigned long int _imopVarPre343;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    void *_imopVarPre344;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre343 = sizeof(float) * size;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre344 = malloc(_imopVarPre343);
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    h_A0 = (float *) _imopVarPre344;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    unsigned long int _imopVarPre347;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    void *_imopVarPre348;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre347 = sizeof(float) * size;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre348 = malloc(_imopVarPre347);
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    h_Anext = (float *) _imopVarPre348;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    char *_imopVarPre350;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    struct __sFILE *_imopVarPre351;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre350 = parameters->inpFiles[0];
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre351 = fopen(_imopVarPre350, "rb");
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    FILE *fp = _imopVarPre351;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    read_data(h_A0, nx, ny, nz, fp);
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    fclose(fp);
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    unsigned int _imopVarPre354;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    unsigned long int _imopVarPre355;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre354 = __builtin_object_size(h_Anext, 0);
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre355 = sizeof(float) * size;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    __builtin___memcpy_chk(h_Anext, h_A0, _imopVarPre355, _imopVarPre354);
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    int t;
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18464_0; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    for (t = 0; t < iteration; t++) {
        /*OUT: {
        Reverse<--, 18464_0; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        cpu_stencil(c0, c1, h_A0, h_Anext, nx, ny, nz);
        /*OUT: {
        Reverse<--, 18464_0; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        /*OUT: {
        Reverse<--, 18464_0; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        float *temp = h_A0;
        /*OUT: {
        Reverse<--, 18464_0; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        h_A0 = h_Anext;
        /*OUT: {
        Reverse<--, 18464_0; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        h_Anext = temp;
    }
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    float *temp = h_A0;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    h_A0 = h_Anext;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    h_Anext = temp;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    if (parameters->outFile) {
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        struct pb_TimerSet *_imopVarPre357;
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        _imopVarPre357 = &timers;
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        pb_SwitchToTimer(_imopVarPre357, pb_TimerID_IO);
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        char *_imopVarPre359;
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        _imopVarPre359 = parameters->outFile;
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
        outputData(_imopVarPre359, h_Anext, nx, ny, nz);
        /*OUT: {
        Reverse<--, 18481_0; 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    }
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    struct pb_TimerSet *_imopVarPre361;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre361 = &timers;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    pb_SwitchToTimer(_imopVarPre361, pb_TimerID_COMPUTE);
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    free(h_A0);
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    free(h_Anext);
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    struct pb_TimerSet *_imopVarPre363;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre363 = &timers;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    pb_SwitchToTimer(_imopVarPre363, pb_TimerID_NONE);
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    struct pb_TimerSet *_imopVarPre365;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    _imopVarPre365 = &timers;
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    pb_PrintTimerSet(_imopVarPre365);
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    pb_FreeParameters(parameters);
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    /*OUT: {
    Reverse<--, 18464_1; 18394_1; 18378_1; 18362_1; 18346_1; 18325_1;>}*/
    return 0;
}
