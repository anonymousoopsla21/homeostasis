
/*[]*/
typedef int __int32_t;
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __int32_t __darwin_suseconds_t;
/*[]*/
typedef __darwin_size_t size_t;
/*[]*/
typedef __darwin_off_t fpos_t;
/*[]*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*[]*/
struct __sFILEX ;
/*[]*/
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
/*[]*/
typedef struct __sFILE FILE;
/*[]*/
extern FILE *__stderrp;
/*[]*/
int fclose(FILE *);
/*[]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*[]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*[]*/
int fputs(const char *restrict , FILE *restrict );
/*[]*/
size_t fread(void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
/*[]*/
size_t fwrite(const void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
typedef unsigned int uint32_t;
/*[]*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*[]*/
int atoi(const char *);
/*[]*/
void exit(int );
/*[]*/
void free(void *);
/*[]*/
void *malloc(size_t __size);
/*[]*/
size_t strlen(const char *__s);
/*[]*/
char *strdup(const char *__s1);
/*[]*/
extern char *suboptarg;
/*[]*/
struct fssearchblock ;
/*[]*/
struct searchstate ;
/*[]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*[]*/
void cpu_stencil(float c0, float c1 , float *A0 , float *Anext , const int nx , const int ny , const int nz);
/*[]*/
void outputData(char *fName, float *h_A0 , int nx , int ny , int nz);
/*[]*/
struct pb_Parameters {
    char *outFile;
    char **inpFiles;
} ;
/*[]*/
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv);
/*[]*/
void pb_FreeParameters(struct pb_Parameters *p);
/*[]*/
typedef unsigned long long pb_Timestamp;
/*[]*/
enum pb_TimerState {
    pb_Timer_STOPPED, pb_Timer_RUNNING
} ;
/*[]*/
struct pb_Timer {
    enum pb_TimerState state;
    pb_Timestamp elapsed;
    pb_Timestamp init;
} ;
/*[]*/
void pb_ResetTimer(struct pb_Timer *timer);
/*[]*/
void pb_StartTimer(struct pb_Timer *timer);
/*[]*/
void pb_StopTimer(struct pb_Timer *timer);
/*[]*/
double pb_GetElapsedTime(struct pb_Timer *timer);
/*[]*/
enum pb_TimerID {
    pb_TimerID_NONE = 0, pb_TimerID_IO , pb_TimerID_KERNEL , pb_TimerID_COPY , pb_TimerID_DRIVER , pb_TimerID_COPY_ASYNC , pb_TimerID_COMPUTE , pb_TimerID_OVERLAP , pb_TimerID_LAST
} ;
/*[]*/
struct pb_async_time_marker_list {
    char *label;
    enum pb_TimerID timerID;
    void *marker;
    struct pb_async_time_marker_list *next;
} ;
/*[]*/
struct pb_SubTimer {
    char *label;
    struct pb_Timer timer;
    struct pb_SubTimer *next;
} ;
/*[]*/
struct pb_SubTimerList {
    struct pb_SubTimer *current;
    struct pb_SubTimer *subtimer_list;
} ;
/*[]*/
struct pb_TimerSet {
    enum pb_TimerID current;
    struct pb_async_time_marker_list *async_markers;
    pb_Timestamp async_begin;
    pb_Timestamp wall_begin;
    struct pb_Timer timers[pb_TimerID_LAST];
    struct pb_SubTimerList *sub_timer_list[pb_TimerID_LAST];
} ;
/*[]*/
void pb_InitializeTimerSet(struct pb_TimerSet *timers);
/*[]*/
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer);
/*[]*/
void pb_PrintTimerSet(struct pb_TimerSet *timers);
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void cpu_stencil(float c0, float c1 , float *A0 , float *Anext , const int nx , const int ny , const int nz) {
/*[]*/
    /*[]*/
    int i;
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
        /*[1]*/
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i = 1; i < nx - 1; i++) {
        /*[1]*/
            /*[1]*/
            int j;
            /*[1]*/
            int k;
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 1; j < ny - 1; j++) {
            /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                /*[1]*/
                for (k = 1; k < nz - 1; k++) {
                /*[1]*/
                    /*[1]*/
                    Anext[(i + nx * (j + ny * k))] = (A0[(i + nx * (j + ny * (k + 1)))] + A0[(i + nx * (j + ny * (k - 1)))] + A0[(i + nx * ((j + 1) + ny * k))] + A0[(i + nx * ((j - 1) + ny * k))] + A0[((i + 1) + nx * (j + ny * k))] + A0[((i - 1) + nx * (j + ny * k))]) * c1 - A0[(i + nx * (j + ny * k))] * c0;
                }
            }
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void outputData(char *fName, float *h_A0 , int nx , int ny , int nz) {
/*[]*/
    /*[]*/
    struct __sFILE *_imopVarPre16;
    /*[]*/
    _imopVarPre16 = fopen(fName, "w");
    /*[]*/
    /*[]*/
    FILE *fid = _imopVarPre16;
    /*[]*/
    uint32_t tmp32;
    /*[]*/
    /*[]*/
    if (fid == ((void *) 0)) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "Cannot open output file\n");
        /*[]*/
        /*[]*/
        int _imopVarPre18;
        /*[]*/
        _imopVarPre18 = -1;
        /*[]*/
        exit(_imopVarPre18);
        /*[]*/
    }
    /*[]*/
    tmp32 = nx * ny * nz;
    /*[]*/
    unsigned long int _imopVarPre21;
    /*[]*/
    unsigned int *_imopVarPre22;
    /*[]*/
    _imopVarPre21 = sizeof(uint32_t);
    /*[]*/
    _imopVarPre22 = &tmp32;
    /*[]*/
    fwrite(_imopVarPre22, _imopVarPre21, 1, fid);
    /*[]*/
    /*[]*/
    unsigned long int _imopVarPre24;
    /*[]*/
    _imopVarPre24 = sizeof(float);
    /*[]*/
    fwrite(h_A0, _imopVarPre24, tmp32, fid);
    /*[]*/
    /*[]*/
    fclose(fid);
    /*[]*/
}
/*[]*/
/*[]*/
static void free_string_array(char **string_array) {
/*[]*/
    /*[]*/
    char **p;
    /*[]*/
    /*[]*/
    if (!string_array) {
    /*[]*/
        /*[]*/
        return;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (p = string_array; *p; p++) {
    /*[]*/
        /*[]*/
        char *_imopVarPre26;
        /*[]*/
        _imopVarPre26 = *p;
        /*[]*/
        free(_imopVarPre26);
        /*[]*/
    }
    /*[]*/
    free(string_array);
    /*[]*/
}
/*[]*/
/*[]*/
static char **read_string_array(char *in) {
/*[]*/
    /*[]*/
    char **ret;
    /*[]*/
    int i;
    /*[]*/
    int count;
    /*[]*/
    char *substring;
    /*[]*/
    count = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; in[i]; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (in[i] == ',') {
        /*[]*/
            /*[]*/
            count++;
        }
    }
    /*[]*/
    unsigned long int _imopVarPre29;
    /*[]*/
    void *_imopVarPre30;
    /*[]*/
    _imopVarPre29 = (count + 1) * sizeof(char *);
    /*[]*/
    _imopVarPre30 = malloc(_imopVarPre29);
    /*[]*/
    /*[]*/
    ret = (char **) _imopVarPre30;
    /*[]*/
    substring = in;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < count; i++) {
    /*[]*/
        /*[]*/
        char *substring_end;
        /*[]*/
        int substring_length;
        /*[]*/
        int _imopVarPre32;
        /*[]*/
        substring_end = substring;
        /*[]*/
        _imopVarPre32 = (*substring_end != ',');
        /*[]*/
        /*[]*/
        if (_imopVarPre32) {
        /*[]*/
            /*[]*/
            _imopVarPre32 = (*substring_end != 0);
        }
        /*[]*/
        /*[]*/
        for (; _imopVarPre32; ) {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            substring_end++;
            /*[]*/
            _imopVarPre32 = (*substring_end != ',');
            /*[]*/
            /*[]*/
            if (_imopVarPre32) {
            /*[]*/
                /*[]*/
                _imopVarPre32 = (*substring_end != 0);
            }
        }
        /*[]*/
        substring_length = substring_end - substring;
        /*[]*/
        int _imopVarPre35;
        /*[]*/
        void *_imopVarPre36;
        /*[]*/
        _imopVarPre35 = substring_length + 1;
        /*[]*/
        _imopVarPre36 = malloc(_imopVarPre35);
        /*[]*/
        /*[]*/
        ret[i] = (char *) _imopVarPre36;
        /*[]*/
        char *_imopVarPre117;
        /*[]*/
        unsigned int _imopVarPre118;
        /*[]*/
        char *_imopVarPre119;
        /*[]*/
        _imopVarPre117 = ret[i];
        /*[]*/
        _imopVarPre118 = __builtin_object_size(_imopVarPre117, 0);
        /*[]*/
        /*[]*/
        _imopVarPre119 = ret[i];
        /*[]*/
        __builtin___memcpy_chk(_imopVarPre119, substring, substring_length, _imopVarPre118);
        /*[]*/
        /*[]*/
        ret[i][substring_length] = 0;
        /*[]*/
        substring = substring_end + 1;
    }
    /*[]*/
    ret[i] = ((void *) 0);
    /*[]*/
    return ret;
}
/*[]*/
struct argparse {
    int argc;
    char **argv;
    int argn;
    char **argv_get;
    char **argv_put;
} ;
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void initialize_argparse(struct argparse *ap, int argc , char **argv) {
/*[]*/
    /*[]*/
    ap->argc = argc;
    /*[]*/
    ap->argn = 0;
    /*[]*/
    ap->argv_get = ap->argv_put = ap->argv = argv;
}
/*[]*/
/*[]*/
static void finalize_argparse(struct argparse *ap) {
/*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (; ap->argn < ap->argc; ap->argn++) {
    /*[]*/
        /*[]*/
        *ap->argv_put++ = *ap->argv_get++;
    }
}
/*[]*/
/*[]*/
static void delete_argument(struct argparse *ap) {
/*[]*/
    /*[]*/
    /*[]*/
    if (ap->argn >= ap->argc) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "delete_argument\n");
        /*[]*/
    }
    /*[]*/
    ap->argc--;
    /*[]*/
    ap->argv_get++;
}
/*[]*/
/*[]*/
static void next_argument(struct argparse *ap) {
/*[]*/
    /*[]*/
    /*[]*/
    if (ap->argn >= ap->argc) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "next_argument\n");
        /*[]*/
    }
    /*[]*/
    *ap->argv_put++ = *ap->argv_get++;
    /*[]*/
    ap->argn++;
}
/*[]*/
/*[]*/
static int is_end_of_arguments(struct argparse *ap) {
/*[]*/
    /*[]*/
    return ap->argn == ap->argc;
}
/*[]*/
/*[]*/
static char *get_argument(struct argparse *ap) {
/*[]*/
    /*[]*/
    return *ap->argv_get;
}
/*[]*/
/*[]*/
static char *consume_argument(struct argparse *ap) {
/*[]*/
    /*[]*/
    char *_imopVarPre120;
    /*[]*/
    _imopVarPre120 = get_argument(ap);
    /*[]*/
    /*[]*/
    char *ret = _imopVarPre120;
    /*[]*/
    delete_argument(ap);
    /*[]*/
    /*[]*/
    return ret;
}
/*[]*/
/*[]*/
/*[]*/
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv) {
/*[]*/
    /*[]*/
    char *err_message;
    /*[]*/
    struct argparse ap;
    /*[]*/
    unsigned long int _imopVarPre123;
    /*[]*/
    void *_imopVarPre124;
    /*[]*/
    _imopVarPre123 = sizeof(struct pb_Parameters);
    /*[]*/
    _imopVarPre124 = malloc(_imopVarPre123);
    /*[]*/
    /*[]*/
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre124;
    /*[]*/
    ret->outFile = ((void *) 0);
    /*[]*/
    unsigned long int _imopVarPre127;
    /*[]*/
    void *_imopVarPre128;
    /*[]*/
    _imopVarPre127 = sizeof(char *);
    /*[]*/
    _imopVarPre128 = malloc(_imopVarPre127);
    /*[]*/
    /*[]*/
    ret->inpFiles = (char **) _imopVarPre128;
    /*[]*/
    ret->inpFiles[0] = ((void *) 0);
    /*[]*/
    int _imopVarPre131;
    /*[]*/
    struct argparse *_imopVarPre132;
    /*[]*/
    _imopVarPre131 = *_argc;
    /*[]*/
    _imopVarPre132 = &ap;
    /*[]*/
    initialize_argparse(_imopVarPre132, _imopVarPre131, argv);
    /*[]*/
    /*[]*/
    struct argparse *_imopVarPre135;
    /*[]*/
    int _imopVarPre136;
    /*[]*/
    _imopVarPre135 = &ap;
    /*[]*/
    _imopVarPre136 = is_end_of_arguments(_imopVarPre135);
    /*[]*/
    /*[]*/
    /*[]*/
    while (!_imopVarPre136) {
    /*[]*/
        /*[]*/
        struct argparse *_imopVarPre138;
        /*[]*/
        char *_imopVarPre139;
        /*[]*/
        _imopVarPre138 = &ap;
        /*[]*/
        _imopVarPre139 = get_argument(_imopVarPre138);
        /*[]*/
        /*[]*/
        char *arg = _imopVarPre139;
        /*[]*/
        int _imopVarPre142;
        /*[]*/
        int _imopVarPre143;
        /*[]*/
        _imopVarPre142 = (arg[0] == '-');
        /*[]*/
        /*[]*/
        if (_imopVarPre142) {
        /*[]*/
            /*[]*/
            _imopVarPre143 = (arg[1] != 0);
            /*[]*/
            /*[]*/
            if (_imopVarPre143) {
            /*[]*/
                /*[]*/
                _imopVarPre143 = (arg[2] == 0);
            }
            /*[]*/
            _imopVarPre142 = _imopVarPre143;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre142) {
        /*[]*/
            /*[]*/
            struct argparse *_imopVarPre145;
            /*[]*/
            _imopVarPre145 = &ap;
            /*[]*/
            delete_argument(_imopVarPre145);
            /*[]*/
            /*[]*/
            /*[]*/
            switch (arg[1]) {
            /*[]*/
                /*[]*/
                case 'o': ;
                /*[]*/
                struct argparse *_imopVarPre147;
                /*[]*/
                int _imopVarPre148;
                /*[]*/
                _imopVarPre147 = &ap;
                /*[]*/
                _imopVarPre148 = is_end_of_arguments(_imopVarPre147);
                /*[]*/
                /*[]*/
                /*[]*/
                if (_imopVarPre148) {
                /*[]*/
                    /*[]*/
                    err_message = "Expecting file name after '-o'\n";
                    /*[]*/
                    goto error;
                }
                /*[]*/
                char *_imopVarPre150;
                /*[]*/
                _imopVarPre150 = ret->outFile;
                /*[]*/
                free(_imopVarPre150);
                /*[]*/
                /*[]*/
                struct argparse *_imopVarPre155;
                /*[]*/
                char *_imopVarPre156;
                /*[]*/
                char *_imopVarPre157;
                /*[]*/
                _imopVarPre155 = &ap;
                /*[]*/
                _imopVarPre156 = consume_argument(_imopVarPre155);
                /*[]*/
                /*[]*/
                _imopVarPre157 = strdup(_imopVarPre156);
                /*[]*/
                /*[]*/
                ret->outFile = _imopVarPre157;
                /*[]*/
                break;
                /*[]*/
                case 'i': ;
                /*[]*/
                struct argparse *_imopVarPre159;
                /*[]*/
                int _imopVarPre160;
                /*[]*/
                _imopVarPre159 = &ap;
                /*[]*/
                _imopVarPre160 = is_end_of_arguments(_imopVarPre159);
                /*[]*/
                /*[]*/
                /*[]*/
                if (_imopVarPre160) {
                /*[]*/
                    /*[]*/
                    err_message = "Expecting file name after '-i'\n";
                    /*[]*/
                    goto error;
                }
                /*[]*/
                struct argparse *_imopVarPre165;
                /*[]*/
                char *_imopVarPre166;
                /*[]*/
                char **_imopVarPre167;
                /*[]*/
                _imopVarPre165 = &ap;
                /*[]*/
                _imopVarPre166 = consume_argument(_imopVarPre165);
                /*[]*/
                /*[]*/
                _imopVarPre167 = read_string_array(_imopVarPre166);
                /*[]*/
                /*[]*/
                ret->inpFiles = _imopVarPre167;
                /*[]*/
                break;
                /*[]*/
                case '-': goto end_of_options;
                /*[]*/
                default: err_message = "Unexpected command-line parameter\n";
                /*[]*/
                goto error;
            }
        } else {
        /*[]*/
            /*[]*/
            struct argparse *_imopVarPre169;
            /*[]*/
            _imopVarPre169 = &ap;
            /*[]*/
            next_argument(_imopVarPre169);
            /*[]*/
        }
        /*[]*/
        _imopVarPre135 = &ap;
        /*[]*/
        _imopVarPre136 = is_end_of_arguments(_imopVarPre135);
        /*[]*/
    }
    /*[]*/
    end_of_options: *_argc = ap.argc;
    /*[]*/
    struct argparse *_imopVarPre171;
    /*[]*/
    _imopVarPre171 = &ap;
    /*[]*/
    finalize_argparse(_imopVarPre171);
    /*[]*/
    /*[]*/
    return ret;
    /*[]*/
    error: fputs(err_message, __stderrp);
    /*[]*/
    /*[]*/
    pb_FreeParameters(ret);
    /*[]*/
    /*[]*/
    return ((void *) 0);
}
/*[]*/
/*[]*/
void pb_FreeParameters(struct pb_Parameters *p) {
/*[]*/
    /*[]*/
    char *_imopVarPre173;
    /*[]*/
    _imopVarPre173 = p->outFile;
    /*[]*/
    free(_imopVarPre173);
    /*[]*/
    /*[]*/
    char **_imopVarPre175;
    /*[]*/
    _imopVarPre175 = p->inpFiles;
    /*[]*/
    free_string_array(_imopVarPre175);
    /*[]*/
    /*[]*/
    free(p);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void accumulate_time(pb_Timestamp *accum, pb_Timestamp start , pb_Timestamp end) {
/*[]*/
    /*[]*/
    *accum += end - start;
}
/*[]*/
static pb_Timestamp get_time() {
/*[]*/
    /*[]*/
    struct timeval tv;
    /*[]*/
    void *_imopVarPre178;
    /*[]*/
    struct timeval *_imopVarPre179;
    /*[]*/
    _imopVarPre178 = ((void *) 0);
    /*[]*/
    _imopVarPre179 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre179, _imopVarPre178);
    /*[]*/
    /*[]*/
    return (pb_Timestamp) (tv.tv_sec * 1000000l + tv.tv_usec);
}
/*[]*/
/*[]*/
void pb_ResetTimer(struct pb_Timer *timer) {
/*[]*/
    /*[]*/
    timer->state = pb_Timer_STOPPED;
    /*[]*/
    timer->elapsed = 0;
}
/*[]*/
/*[]*/
void pb_StartTimer(struct pb_Timer *timer) {
/*[]*/
    /*[]*/
    /*[]*/
    if (timer->state != pb_Timer_STOPPED) {
    /*[]*/
        /*[]*/
        fputs("Ignoring attempt to start a running timer\n", __stderrp);
        /*[]*/
        /*[]*/
        return;
    }
    /*[]*/
    timer->state = pb_Timer_RUNNING;
    /*[]*/
    struct timeval tv;
    /*[]*/
    void *_imopVarPre182;
    /*[]*/
    struct timeval *_imopVarPre183;
    /*[]*/
    _imopVarPre182 = ((void *) 0);
    /*[]*/
    _imopVarPre183 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre183, _imopVarPre182);
    /*[]*/
    /*[]*/
    timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
}
/*[]*/
/*[]*/
void pb_StopTimer(struct pb_Timer *timer) {
/*[]*/
    /*[]*/
    pb_Timestamp fini;
    /*[]*/
    /*[]*/
    if (timer->state != pb_Timer_RUNNING) {
    /*[]*/
        /*[]*/
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        /*[]*/
        /*[]*/
        return;
    }
    /*[]*/
    timer->state = pb_Timer_STOPPED;
    /*[]*/
    struct timeval tv;
    /*[]*/
    void *_imopVarPre190;
    /*[]*/
    struct timeval *_imopVarPre191;
    /*[]*/
    _imopVarPre190 = ((void *) 0);
    /*[]*/
    _imopVarPre191 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre191, _imopVarPre190);
    /*[]*/
    /*[]*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*[]*/
    unsigned long long int _imopVarPre194;
    /*[]*/
    unsigned long long int *_imopVarPre195;
    /*[]*/
    _imopVarPre194 = timer->init;
    /*[]*/
    _imopVarPre195 = &timer->elapsed;
    /*[]*/
    accumulate_time(_imopVarPre195, _imopVarPre194, fini);
    /*[]*/
    /*[]*/
    timer->init = fini;
}
/*[]*/
/*[]*/
/*[]*/
void pb_StopTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
/*[]*/
    /*[]*/
    pb_Timestamp fini;
    /*[]*/
    unsigned int numNotRunning = 0x3;
    /*[]*/
    /*[]*/
    if (timer->state != pb_Timer_RUNNING) {
    /*[]*/
        /*[]*/
        fputs("Warning: Timer was not running\n", __stderrp);
        /*[]*/
        /*[]*/
        numNotRunning &= 0x1;
    }
    /*[]*/
    /*[]*/
    if (subtimer->state != pb_Timer_RUNNING) {
    /*[]*/
        /*[]*/
        fputs("Warning: Subtimer was not running\n", __stderrp);
        /*[]*/
        /*[]*/
        numNotRunning &= 0x2;
    }
    /*[]*/
    /*[]*/
    if (numNotRunning == 0x0) {
    /*[]*/
        /*[]*/
        fputs("Ignoring attempt to stop stopped timer and subtimer\n", __stderrp);
        /*[]*/
        /*[]*/
        return;
    }
    /*[]*/
    timer->state = pb_Timer_STOPPED;
    /*[]*/
    subtimer->state = pb_Timer_STOPPED;
    /*[]*/
    struct timeval tv;
    /*[]*/
    void *_imopVarPre198;
    /*[]*/
    struct timeval *_imopVarPre199;
    /*[]*/
    _imopVarPre198 = ((void *) 0);
    /*[]*/
    _imopVarPre199 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre199, _imopVarPre198);
    /*[]*/
    /*[]*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*[]*/
    /*[]*/
    if (numNotRunning & 0x2) {
    /*[]*/
        /*[]*/
        unsigned long long int _imopVarPre202;
        /*[]*/
        unsigned long long int *_imopVarPre203;
        /*[]*/
        _imopVarPre202 = timer->init;
        /*[]*/
        _imopVarPre203 = &timer->elapsed;
        /*[]*/
        accumulate_time(_imopVarPre203, _imopVarPre202, fini);
        /*[]*/
        /*[]*/
        timer->init = fini;
    }
    /*[]*/
    /*[]*/
    if (numNotRunning & 0x1) {
    /*[]*/
        /*[]*/
        unsigned long long int _imopVarPre206;
        /*[]*/
        unsigned long long int *_imopVarPre207;
        /*[]*/
        _imopVarPre206 = subtimer->init;
        /*[]*/
        _imopVarPre207 = &subtimer->elapsed;
        /*[]*/
        accumulate_time(_imopVarPre207, _imopVarPre206, fini);
        /*[]*/
        /*[]*/
        subtimer->init = fini;
    }
}
/*[]*/
/*[]*/
double pb_GetElapsedTime(struct pb_Timer *timer) {
/*[]*/
    /*[]*/
    double ret;
    /*[]*/
    /*[]*/
    if (timer->state != pb_Timer_STOPPED) {
    /*[]*/
        /*[]*/
        fputs("Elapsed time from a running timer is inaccurate\n", __stderrp);
        /*[]*/
    }
    /*[]*/
    ret = timer->elapsed / 1e6;
    /*[]*/
    return ret;
}
/*[]*/
/*[]*/
void pb_InitializeTimerSet(struct pb_TimerSet *timers) {
/*[]*/
    /*[]*/
    int n;
    /*[]*/
    unsigned long long int _imopVarPre208;
    /*[]*/
    _imopVarPre208 = get_time();
    /*[]*/
    /*[]*/
    timers->wall_begin = _imopVarPre208;
    /*[]*/
    timers->current = pb_TimerID_NONE;
    /*[]*/
    timers->async_markers = ((void *) 0);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (n = 0; n < pb_TimerID_LAST; n++) {
    /*[]*/
        /*[]*/
        struct pb_Timer *_imopVarPre210;
        /*[]*/
        _imopVarPre210 = &timers->timers[n];
        /*[]*/
        pb_ResetTimer(_imopVarPre210);
        /*[]*/
        /*[]*/
        timers->sub_timer_list[n] = ((void *) 0);
    }
}
/*[]*/
/*[]*/
/*[]*/
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer) {
/*[]*/
    /*[]*/
    /*[]*/
    if (timers->current != pb_TimerID_NONE) {
    /*[]*/
        /*[]*/
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        /*[]*/
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        /*[]*/
        /*[]*/
        if (subtimerlist != ((void *) 0)) {
        /*[]*/
            /*[]*/
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        /*[]*/
        /*[]*/
        if (currSubTimer != ((void *) 0)) {
        /*[]*/
            /*[]*/
            struct pb_Timer *_imopVarPre268;
            /*[]*/
            struct pb_Timer *_imopVarPre269;
            /*[]*/
            _imopVarPre268 = &currSubTimer->timer;
            /*[]*/
            _imopVarPre269 = &timers->timers[timers->current];
            /*[]*/
            pb_StopTimerAndSubTimer(_imopVarPre269, _imopVarPre268);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            struct pb_Timer *_imopVarPre271;
            /*[]*/
            _imopVarPre271 = &timers->timers[timers->current];
            /*[]*/
            pb_StopTimer(_imopVarPre271);
            /*[]*/
        }
    }
    /*[]*/
    timers->current = timer;
    /*[]*/
    /*[]*/
    if (timer != pb_TimerID_NONE) {
    /*[]*/
        /*[]*/
        struct pb_Timer *_imopVarPre273;
        /*[]*/
        _imopVarPre273 = &timers->timers[timer];
        /*[]*/
        pb_StartTimer(_imopVarPre273);
        /*[]*/
    }
}
/*[]*/
/*[]*/
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
/*[]*/
    /*[]*/
    unsigned long long int _imopVarPre274;
    /*[]*/
    _imopVarPre274 = get_time();
    /*[]*/
    /*[]*/
    pb_Timestamp wall_end = _imopVarPre274;
    /*[]*/
    struct pb_Timer *t = timers->timers;
    /*[]*/
    struct pb_SubTimer *sub = ((void *) 0);
    /*[]*/
    int maxSubLength;
    /*[]*/
    const char *categories[] = {"IO", "Kernel" , "Copy" , "Driver" , "Copy Async" , "Compute"};
    /*[]*/
    const int maxCategoryLength = 10;
    /*[]*/
    int i;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
    /*[]*/
        /*[]*/
        struct pb_Timer *_imopVarPre277;
        /*[]*/
        double _imopVarPre278;
        /*[]*/
        _imopVarPre277 = &t[i];
        /*[]*/
        _imopVarPre278 = pb_GetElapsedTime(_imopVarPre277);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre278 != 0) {
        /*[]*/
            /*[]*/
            struct pb_Timer *_imopVarPre284;
            /*[]*/
            double _imopVarPre285;
            /*[]*/
            char *_imopVarPre286;
            /*[]*/
            _imopVarPre284 = &t[i];
            /*[]*/
            _imopVarPre285 = pb_GetElapsedTime(_imopVarPre284);
            /*[]*/
            /*[]*/
            _imopVarPre286 = categories[i - 1];
            /*[]*/
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre286, _imopVarPre285);
            /*[]*/
            /*[]*/
            /*[]*/
            if (timers->sub_timer_list[i] != ((void *) 0)) {
            /*[]*/
                /*[]*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*[]*/
                maxSubLength = 0;
                /*[]*/
                /*[]*/
                while (sub != ((void *) 0)) {
                /*[]*/
                    /*[]*/
                    char *_imopVarPre289;
                    /*[]*/
                    unsigned long int _imopVarPre290;
                    /*[]*/
                    _imopVarPre289 = sub->label;
                    /*[]*/
                    _imopVarPre290 = strlen(_imopVarPre289);
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre290 > maxSubLength) {
                    /*[]*/
                        /*[]*/
                        char *_imopVarPre292;
                        /*[]*/
                        unsigned long int _imopVarPre293;
                        /*[]*/
                        _imopVarPre292 = sub->label;
                        /*[]*/
                        _imopVarPre293 = strlen(_imopVarPre292);
                        /*[]*/
                        /*[]*/
                        maxSubLength = _imopVarPre293;
                    }
                    /*[]*/
                    sub = sub->next;
                }
                /*[]*/
                /*[]*/
                if (maxSubLength <= maxCategoryLength) {
                /*[]*/
                    /*[]*/
                    maxSubLength = maxCategoryLength;
                }
                /*[]*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*[]*/
                /*[]*/
                while (sub != ((void *) 0)) {
                /*[]*/
                    /*[]*/
                    struct pb_Timer *_imopVarPre299;
                    /*[]*/
                    double _imopVarPre300;
                    /*[]*/
                    char *_imopVarPre301;
                    /*[]*/
                    _imopVarPre299 = &sub->timer;
                    /*[]*/
                    _imopVarPre300 = pb_GetElapsedTime(_imopVarPre299);
                    /*[]*/
                    /*[]*/
                    _imopVarPre301 = sub->label;
                    /*[]*/
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre301, _imopVarPre300);
                    /*[]*/
                    /*[]*/
                    sub = sub->next;
                }
            }
        }
    }
    /*[]*/
    struct pb_Timer *_imopVarPre304;
    /*[]*/
    double _imopVarPre305;
    /*[]*/
    _imopVarPre304 = &t[pb_TimerID_OVERLAP];
    /*[]*/
    _imopVarPre305 = pb_GetElapsedTime(_imopVarPre304);
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre305 != 0) {
    /*[]*/
        /*[]*/
        struct pb_Timer *_imopVarPre310;
        /*[]*/
        double _imopVarPre311;
        /*[]*/
        _imopVarPre310 = &t[pb_TimerID_OVERLAP];
        /*[]*/
        _imopVarPre311 = pb_GetElapsedTime(_imopVarPre310);
        /*[]*/
        /*[]*/
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre311);
        /*[]*/
    }
    /*[]*/
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    /*[]*/
    printf("Timer Wall Time: %f\n", walltime);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static int read_data(float *A0, int nx , int ny , int nz , FILE *fp) {
/*[]*/
    /*[]*/
    int s = 0;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nz; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < ny; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 0; k < nx; k++) {
            /*[]*/
                /*[]*/
                unsigned long int _imopVarPre320;
                /*[]*/
                float *_imopVarPre321;
                /*[]*/
                _imopVarPre320 = sizeof(float);
                /*[]*/
                _imopVarPre321 = A0 + s;
                /*[]*/
                fread(_imopVarPre321, _imopVarPre320, 1, fp);
                /*[]*/
                /*[]*/
                s++;
            }
        }
    }
    /*[]*/
    return 0;
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    struct pb_TimerSet timers;
    /*[]*/
    struct pb_Parameters *parameters;
    /*[]*/
    printf("CPU-based 7 points stencil codes****\n");
    /*[]*/
    /*[]*/
    printf("Original version by Li-Wen Chang <lchang20@illinois.edu> and I-Jui Sung<sung10@illinois.edu>\n");
    /*[]*/
    /*[]*/
    printf("This version maintained by Chris Rodrigues  ***********\n");
    /*[]*/
    /*[]*/
    int *_imopVarPre323;
    /*[]*/
    struct pb_Parameters *_imopVarPre324;
    /*[]*/
    _imopVarPre323 = &argc;
    /*[]*/
    _imopVarPre324 = pb_ReadParameters(_imopVarPre323, argv);
    /*[]*/
    /*[]*/
    parameters = _imopVarPre324;
    /*[]*/
    struct pb_TimerSet *_imopVarPre326;
    /*[]*/
    _imopVarPre326 = &timers;
    /*[]*/
    pb_InitializeTimerSet(_imopVarPre326);
    /*[]*/
    /*[]*/
    struct pb_TimerSet *_imopVarPre328;
    /*[]*/
    _imopVarPre328 = &timers;
    /*[]*/
    pb_SwitchToTimer(_imopVarPre328, pb_TimerID_COMPUTE);
    /*[]*/
    /*[]*/
    int nx;
    /*[]*/
    int ny;
    /*[]*/
    int nz;
    /*[]*/
    int size;
    /*[]*/
    int iteration;
    /*[]*/
    float c0 = 1.0f / 6.0f;
    /*[]*/
    float c1 = 1.0f / 6.0f / 6.0f;
    /*[]*/
    /*[]*/
    if (argc < 5) {
    /*[]*/
        /*[]*/
        printf("Usage: probe nx ny nz tx ty t\n" "nx: the grid size x\n" "ny: the grid size y\n" "nz: the grid size z\n" "t: the iteration time\n");
        /*[]*/
        /*[]*/
        return -1;
    }
    /*[]*/
    char *_imopVarPre330;
    /*[]*/
    int _imopVarPre331;
    /*[]*/
    _imopVarPre330 = argv[1];
    /*[]*/
    _imopVarPre331 = atoi(_imopVarPre330);
    /*[]*/
    /*[]*/
    nx = _imopVarPre331;
    /*[]*/
    /*[]*/
    if (nx < 1) {
    /*[]*/
        /*[]*/
        return -1;
    }
    /*[]*/
    char *_imopVarPre333;
    /*[]*/
    int _imopVarPre334;
    /*[]*/
    _imopVarPre333 = argv[2];
    /*[]*/
    _imopVarPre334 = atoi(_imopVarPre333);
    /*[]*/
    /*[]*/
    ny = _imopVarPre334;
    /*[]*/
    /*[]*/
    if (ny < 1) {
    /*[]*/
        /*[]*/
        return -1;
    }
    /*[]*/
    char *_imopVarPre336;
    /*[]*/
    int _imopVarPre337;
    /*[]*/
    _imopVarPre336 = argv[3];
    /*[]*/
    _imopVarPre337 = atoi(_imopVarPre336);
    /*[]*/
    /*[]*/
    nz = _imopVarPre337;
    /*[]*/
    /*[]*/
    if (nz < 1) {
    /*[]*/
        /*[]*/
        return -1;
    }
    /*[]*/
    char *_imopVarPre339;
    /*[]*/
    int _imopVarPre340;
    /*[]*/
    _imopVarPre339 = argv[4];
    /*[]*/
    _imopVarPre340 = atoi(_imopVarPre339);
    /*[]*/
    /*[]*/
    iteration = _imopVarPre340;
    /*[]*/
    /*[]*/
    if (iteration < 1) {
    /*[]*/
        /*[]*/
        return -1;
    }
    /*[]*/
    float *h_A0;
    /*[]*/
    float *h_Anext;
    /*[]*/
    size = nx * ny * nz;
    /*[]*/
    unsigned long int _imopVarPre343;
    /*[]*/
    void *_imopVarPre344;
    /*[]*/
    _imopVarPre343 = sizeof(float) * size;
    /*[]*/
    _imopVarPre344 = malloc(_imopVarPre343);
    /*[]*/
    /*[]*/
    h_A0 = (float *) _imopVarPre344;
    /*[]*/
    unsigned long int _imopVarPre347;
    /*[]*/
    void *_imopVarPre348;
    /*[]*/
    _imopVarPre347 = sizeof(float) * size;
    /*[]*/
    _imopVarPre348 = malloc(_imopVarPre347);
    /*[]*/
    /*[]*/
    h_Anext = (float *) _imopVarPre348;
    /*[]*/
    char *_imopVarPre350;
    /*[]*/
    struct __sFILE *_imopVarPre351;
    /*[]*/
    _imopVarPre350 = parameters->inpFiles[0];
    /*[]*/
    _imopVarPre351 = fopen(_imopVarPre350, "rb");
    /*[]*/
    /*[]*/
    FILE *fp = _imopVarPre351;
    /*[]*/
    read_data(h_A0, nx, ny, nz, fp);
    /*[]*/
    /*[]*/
    fclose(fp);
    /*[]*/
    /*[]*/
    unsigned int _imopVarPre354;
    /*[]*/
    unsigned long int _imopVarPre355;
    /*[]*/
    _imopVarPre354 = __builtin_object_size(h_Anext, 0);
    /*[]*/
    /*[]*/
    _imopVarPre355 = sizeof(float) * size;
    /*[]*/
    __builtin___memcpy_chk(h_Anext, h_A0, _imopVarPre355, _imopVarPre354);
    /*[]*/
    /*[]*/
    int t;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (t = 0; t < iteration; t++) {
    /*[]*/
        /*[]*/
        cpu_stencil(c0, c1, h_A0, h_Anext, nx, ny, nz);
        /*[]*/
        /*[]*/
        float *temp = h_A0;
        /*[]*/
        h_A0 = h_Anext;
        /*[]*/
        h_Anext = temp;
    }
    /*[]*/
    float *temp = h_A0;
    /*[]*/
    h_A0 = h_Anext;
    /*[]*/
    h_Anext = temp;
    /*[]*/
    /*[]*/
    if (parameters->outFile) {
    /*[]*/
        /*[]*/
        struct pb_TimerSet *_imopVarPre357;
        /*[]*/
        _imopVarPre357 = &timers;
        /*[]*/
        pb_SwitchToTimer(_imopVarPre357, pb_TimerID_IO);
        /*[]*/
        /*[]*/
        char *_imopVarPre359;
        /*[]*/
        _imopVarPre359 = parameters->outFile;
        /*[]*/
        outputData(_imopVarPre359, h_Anext, nx, ny, nz);
        /*[]*/
    }
    /*[]*/
    struct pb_TimerSet *_imopVarPre361;
    /*[]*/
    _imopVarPre361 = &timers;
    /*[]*/
    pb_SwitchToTimer(_imopVarPre361, pb_TimerID_COMPUTE);
    /*[]*/
    /*[]*/
    free(h_A0);
    /*[]*/
    /*[]*/
    free(h_Anext);
    /*[]*/
    /*[]*/
    struct pb_TimerSet *_imopVarPre363;
    /*[]*/
    _imopVarPre363 = &timers;
    /*[]*/
    pb_SwitchToTimer(_imopVarPre363, pb_TimerID_NONE);
    /*[]*/
    /*[]*/
    struct pb_TimerSet *_imopVarPre365;
    /*[]*/
    _imopVarPre365 = &timers;
    /*[]*/
    pb_PrintTimerSet(_imopVarPre365);
    /*[]*/
    /*[]*/
    pb_FreeParameters(parameters);
    /*[]*/
    /*[]*/
    return 0;
}
