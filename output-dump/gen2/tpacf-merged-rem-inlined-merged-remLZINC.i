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
extern FILE *__stdoutp;
extern FILE *__stderrp;
int fclose(FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fprintf(FILE *restrict , const char *restrict , ...);
int fputs(const char *restrict , FILE *restrict );
int fscanf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
int atoi(const char *);
long atol(const char *);
void exit(int );
void free(void *);
void *malloc(size_t __size);
size_t strlen(const char *__s);
char *strdup(const char *__s1);
int getopt(int , char *const [] , const char *);
extern char *optarg;
struct fssearchblock ;
struct searchstate ;
int gettimeofday(struct timeval *restrict , void *restrict );
extern double cos(double );
extern double sin(double );
extern double log10(double );
extern double pow(double , double );
extern double floor(double );
struct _options_ {
    char *data_name;
    char *random_name;
    int random_count;
    int npoints;
    char *output_name;
} ;
typedef struct _options_ options;
void usage(char *name);
void parse_args(int argc, char **argv , options *args);
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
struct cartesian {
    float x, y , z;
} ;
int readdatafile(char *fname, struct cartesian *data , int npoints);
int doCompute(struct cartesian *data1, int n1 , struct cartesian *data2 , int n2 , int doSelf , long long *data_bins , int nbins , float *binb);
extern char *optarg;
void usage(char *name) {
    printf("Usage: %s <-d data_file_name> <-r rnd_file_name> " "<-m rnd_count> <-p count> <-o file_name>\n", name);
    exit(0);
}
void parse_args(int argc, char **argv , options *args) {
    int c;
    args->data_name = ((void *) 0);
    args->random_name = ((void *) 0);
    args->random_count = 0;
    args->npoints = 0;
    args->output_name = ((void *) 0);
    int _imopVarPre141;
    _imopVarPre141 = getopt(argc, argv, "d:n:r:p:o:");
    while ((c = _imopVarPre141) != (-1)) {
        switch (c) {
            case 'd': args->data_name = optarg;
            break;
            case 'r': args->random_name = optarg;
            break;
            int _imopVarPre142;
            case 'n': _imopVarPre142 = atoi(optarg);
            args->random_count = _imopVarPre142;
            break;
            case 'o': args->output_name = optarg;
            break;
            signed long int _imopVarPre143;
            case 'p': _imopVarPre143 = atol(optarg);
            args->npoints = _imopVarPre143;
            break;
            char *_imopVarPre145;
            default: _imopVarPre145 = argv[0];
            usage(_imopVarPre145);
        }
        _imopVarPre141 = getopt(argc, argv, "d:n:r:p:o:");
    }
}
int doCompute(struct cartesian *data1, int n1 , struct cartesian *data2 , int n2 , int doSelf , long long *data_bins , int nbins , float *binb) {
    int i;
    int j;
    if (doSelf) {
        n2 = n1;
        data2 = data1;
    }
    int _imopVarPre148;
    int _imopVarPre149;
    i = 0;
    _imopVarPre148 = doSelf;
    if (_imopVarPre148) {
        _imopVarPre149 = n1 - 1;
    } else {
        _imopVarPre149 = n1;
    }
    for (; i < _imopVarPre149; ) {
        int _imopVarPre153;
#pragma omp parallel
        {
            const register float xi = data1[i].x;
            const register float yi = data1[i].y;
            const register float zi = data1[i].z;
            int _imopVarPre152;
#pragma omp master
            {
                _imopVarPre152 = doSelf;
                if (_imopVarPre152) {
                    _imopVarPre153 = i + 1;
                } else {
                    _imopVarPre153 = 0;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (j = _imopVarPre153; j < n2; j++) {
                register float dot = xi * data2[j].x + yi * data2[j].y + zi * data2[j].z;
                register int min = 0;
                register int max = nbins;
                register int k;
                while (max > min + 1) {
                    k = (min + max) / 2;
                    if (dot >= binb[k]) {
                        max = k;
                    } else {
                        min = k;
                    }
                }
                ;
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                {
                    if (dot >= binb[min]) {
                        data_bins[min] += 1;
                    } else {
                        if (dot < binb[max]) {
                            data_bins[max + 1] += 1;
                        } else {
                            data_bins[max] += 1;
                        }
                    }
                }
// #pragma omp dummyFlush CRITICAL_END
            }
#pragma omp master
            {
                i++;
                _imopVarPre148 = doSelf;
                if (_imopVarPre148) {
                    _imopVarPre149 = n1 - 1;
                } else {
                    _imopVarPre149 = n1;
                }
            }
        }
    }
    return 0;
}
int readdatafile(char *fname, struct cartesian *data , int npoints) {
    FILE *infile;
    int lcount = 0;
    float ra;
    float dec;
    struct __sFILE *_imopVarPre155;
    _imopVarPre155 = fopen(fname, "r");
    if ((infile = _imopVarPre155) == ((void *) 0)) {
        fprintf(__stderrp, "Unable to open data file %s for reading\n", fname);
        return lcount;
    }
    for (lcount = 0; lcount < npoints; lcount++) {
        float *_imopVarPre159;
        float *_imopVarPre160;
        int _imopVarPre161;
        _imopVarPre159 = &dec;
        _imopVarPre160 = &ra;
        _imopVarPre161 = fscanf(infile, "%f %f", _imopVarPre160, _imopVarPre159);
        if (_imopVarPre161 != 2) {
            break;
        }
        float rarad = 3.14159265358979323846264338327950288 / 180.0 * ra;
        float decrad = 3.14159265358979323846264338327950288 / 180.0 * dec;
        double _imopVarPre162;
        _imopVarPre162 = cos(decrad);
        float cd = _imopVarPre162;
        double _imopVarPre164;
        _imopVarPre164 = cos(rarad);
        data[lcount].x = _imopVarPre164 * cd;
        double _imopVarPre166;
        _imopVarPre166 = sin(rarad);
        data[lcount].y = _imopVarPre166 * cd;
        double _imopVarPre167;
        _imopVarPre167 = sin(decrad);
        data[lcount].z = _imopVarPre167;
    }
    fclose(infile);
    return lcount;
}
static void free_string_array(char **string_array) {
    char **p;
    if (!string_array) {
        return;
    }
    for (p = string_array; *p; p++) {
        char *_imopVarPre169;
        _imopVarPre169 = *p;
        free(_imopVarPre169);
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
    unsigned long int _imopVarPre172;
    void *_imopVarPre173;
    _imopVarPre172 = (count + 1) * sizeof(char *);
    _imopVarPre173 = malloc(_imopVarPre172);
    ret = (char **) _imopVarPre173;
    substring = in;
    for (i = 0; i < count; i++) {
        char *substring_end;
        int substring_length;
        int _imopVarPre175;
        substring_end = substring;
        _imopVarPre175 = (*substring_end != ',');
        if (_imopVarPre175) {
            _imopVarPre175 = (*substring_end != 0);
        }
        for (; _imopVarPre175; ) {
            ;
            substring_end++;
            _imopVarPre175 = (*substring_end != ',');
            if (_imopVarPre175) {
                _imopVarPre175 = (*substring_end != 0);
            }
        }
        substring_length = substring_end - substring;
        int _imopVarPre178;
        void *_imopVarPre179;
        _imopVarPre178 = substring_length + 1;
        _imopVarPre179 = malloc(_imopVarPre178);
        ret[i] = (char *) _imopVarPre179;
        char *_imopVarPre185;
        unsigned int _imopVarPre186;
        char *_imopVarPre187;
        _imopVarPre185 = ret[i];
        _imopVarPre186 = __builtin_object_size(_imopVarPre185, 0);
        _imopVarPre187 = ret[i];
        __builtin___memcpy_chk(_imopVarPre187, substring, substring_length, _imopVarPre186);
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
    char *_imopVarPre188;
    _imopVarPre188 = get_argument(ap);
    char *ret = _imopVarPre188;
    delete_argument(ap);
    return ret;
}
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv) {
    char *err_message;
    struct argparse ap;
    unsigned long int _imopVarPre191;
    void *_imopVarPre192;
    _imopVarPre191 = sizeof(struct pb_Parameters);
    _imopVarPre192 = malloc(_imopVarPre191);
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre192;
    ret->outFile = ((void *) 0);
    unsigned long int _imopVarPre195;
    void *_imopVarPre196;
    _imopVarPre195 = sizeof(char *);
    _imopVarPre196 = malloc(_imopVarPre195);
    ret->inpFiles = (char **) _imopVarPre196;
    ret->inpFiles[0] = ((void *) 0);
    int _imopVarPre199;
    struct argparse *_imopVarPre200;
    _imopVarPre199 = *_argc;
    _imopVarPre200 = &ap;
    initialize_argparse(_imopVarPre200, _imopVarPre199, argv);
    struct argparse *_imopVarPre203;
    int _imopVarPre204;
    _imopVarPre203 = &ap;
    _imopVarPre204 = is_end_of_arguments(_imopVarPre203);
    while (!_imopVarPre204) {
        struct argparse *_imopVarPre206;
        char *_imopVarPre207;
        _imopVarPre206 = &ap;
        _imopVarPre207 = get_argument(_imopVarPre206);
        char *arg = _imopVarPre207;
        int _imopVarPre210;
        int _imopVarPre211;
        _imopVarPre210 = (arg[0] == '-');
        if (_imopVarPre210) {
            _imopVarPre211 = (arg[1] != 0);
            if (_imopVarPre211) {
                _imopVarPre211 = (arg[2] == 0);
            }
            _imopVarPre210 = _imopVarPre211;
        }
        if (_imopVarPre210) {
            struct argparse *_imopVarPre213;
            _imopVarPre213 = &ap;
            delete_argument(_imopVarPre213);
            switch (arg[1]) {
                case 'o': ;
                struct argparse *_imopVarPre215;
                int _imopVarPre216;
                _imopVarPre215 = &ap;
                _imopVarPre216 = is_end_of_arguments(_imopVarPre215);
                if (_imopVarPre216) {
                    err_message = "Expecting file name after '-o'\n";
                    goto error;
                }
                char *_imopVarPre218;
                _imopVarPre218 = ret->outFile;
                free(_imopVarPre218);
                struct argparse *_imopVarPre223;
                char *_imopVarPre224;
                char *_imopVarPre225;
                _imopVarPre223 = &ap;
                _imopVarPre224 = consume_argument(_imopVarPre223);
                _imopVarPre225 = strdup(_imopVarPre224);
                ret->outFile = _imopVarPre225;
                break;
                case 'i': ;
                struct argparse *_imopVarPre227;
                int _imopVarPre228;
                _imopVarPre227 = &ap;
                _imopVarPre228 = is_end_of_arguments(_imopVarPre227);
                if (_imopVarPre228) {
                    err_message = "Expecting file name after '-i'\n";
                    goto error;
                }
                struct argparse *_imopVarPre233;
                char *_imopVarPre234;
                char **_imopVarPre235;
                _imopVarPre233 = &ap;
                _imopVarPre234 = consume_argument(_imopVarPre233);
                _imopVarPre235 = read_string_array(_imopVarPre234);
                ret->inpFiles = _imopVarPre235;
                break;
                case '-': goto end_of_options;
                default: err_message = "Unexpected command-line parameter\n";
                goto error;
            }
        } else {
            struct argparse *_imopVarPre237;
            _imopVarPre237 = &ap;
            next_argument(_imopVarPre237);
        }
        _imopVarPre203 = &ap;
        _imopVarPre204 = is_end_of_arguments(_imopVarPre203);
    }
    end_of_options: *_argc = ap.argc;
    struct argparse *_imopVarPre239;
    _imopVarPre239 = &ap;
    finalize_argparse(_imopVarPre239);
    return ret;
    error: fputs(err_message, __stderrp);
    pb_FreeParameters(ret);
    return ((void *) 0);
}
void pb_FreeParameters(struct pb_Parameters *p) {
    char *_imopVarPre241;
    _imopVarPre241 = p->outFile;
    free(_imopVarPre241);
    char **_imopVarPre243;
    _imopVarPre243 = p->inpFiles;
    free_string_array(_imopVarPre243);
    free(p);
}
static void accumulate_time(pb_Timestamp *accum, pb_Timestamp start , pb_Timestamp end) {
    *accum += end - start;
}
static pb_Timestamp get_time() {
    struct timeval tv;
    void *_imopVarPre246;
    struct timeval *_imopVarPre247;
    _imopVarPre246 = ((void *) 0);
    _imopVarPre247 = &tv;
    gettimeofday(_imopVarPre247, _imopVarPre246);
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
    struct timeval tv;
    void *_imopVarPre250;
    struct timeval *_imopVarPre251;
    _imopVarPre250 = ((void *) 0);
    _imopVarPre251 = &tv;
    gettimeofday(_imopVarPre251, _imopVarPre250);
    timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
}
void pb_StopTimer(struct pb_Timer *timer) {
    pb_Timestamp fini;
    if (timer->state != pb_Timer_RUNNING) {
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_STOPPED;
    struct timeval tv;
    void *_imopVarPre258;
    struct timeval *_imopVarPre259;
    _imopVarPre258 = ((void *) 0);
    _imopVarPre259 = &tv;
    gettimeofday(_imopVarPre259, _imopVarPre258);
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    unsigned long long int _imopVarPre262;
    unsigned long long int *_imopVarPre263;
    _imopVarPre262 = timer->init;
    _imopVarPre263 = &timer->elapsed;
    accumulate_time(_imopVarPre263, _imopVarPre262, fini);
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
    struct timeval tv;
    void *_imopVarPre266;
    struct timeval *_imopVarPre267;
    _imopVarPre266 = ((void *) 0);
    _imopVarPre267 = &tv;
    gettimeofday(_imopVarPre267, _imopVarPre266);
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    if (numNotRunning & 0x2) {
        unsigned long long int _imopVarPre270;
        unsigned long long int *_imopVarPre271;
        _imopVarPre270 = timer->init;
        _imopVarPre271 = &timer->elapsed;
        accumulate_time(_imopVarPre271, _imopVarPre270, fini);
        timer->init = fini;
    }
    if (numNotRunning & 0x1) {
        unsigned long long int _imopVarPre274;
        unsigned long long int *_imopVarPre275;
        _imopVarPre274 = subtimer->init;
        _imopVarPre275 = &subtimer->elapsed;
        accumulate_time(_imopVarPre275, _imopVarPre274, fini);
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
    unsigned long long int _imopVarPre276;
    _imopVarPre276 = get_time();
    timers->wall_begin = _imopVarPre276;
    timers->current = pb_TimerID_NONE;
    timers->async_markers = ((void *) 0);
    for (n = 0; n < pb_TimerID_LAST; n++) {
        struct pb_Timer *_imopVarPre278;
        _imopVarPre278 = &timers->timers[n];
        pb_ResetTimer(_imopVarPre278);
        timers->sub_timer_list[n] = ((void *) 0);
    }
}
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer) {
    if (timers->current != pb_TimerID_NONE) {
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        if (subtimerlist != ((void *) 0)) {
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        if (currSubTimer != ((void *) 0)) {
            struct pb_Timer *_imopVarPre336;
            struct pb_Timer *_imopVarPre337;
            _imopVarPre336 = &currSubTimer->timer;
            _imopVarPre337 = &timers->timers[timers->current];
            pb_StopTimerAndSubTimer(_imopVarPre337, _imopVarPre336);
        } else {
            struct pb_Timer *_imopVarPre339;
            _imopVarPre339 = &timers->timers[timers->current];
            pb_StopTimer(_imopVarPre339);
        }
    }
    timers->current = timer;
    if (timer != pb_TimerID_NONE) {
        struct pb_Timer *_imopVarPre341;
        _imopVarPre341 = &timers->timers[timer];
        pb_StartTimer(_imopVarPre341);
    }
}
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    unsigned long long int _imopVarPre342;
    _imopVarPre342 = get_time();
    pb_Timestamp wall_end = _imopVarPre342;
    struct pb_Timer *t = timers->timers;
    struct pb_SubTimer *sub = ((void *) 0);
    int maxSubLength;
    const char *categories[] = {"IO", "Kernel" , "Copy" , "Driver" , "Copy Async" , "Compute"};
    const int maxCategoryLength = 10;
    int i;
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        struct pb_Timer *_imopVarPre345;
        double _imopVarPre346;
        _imopVarPre345 = &t[i];
        _imopVarPre346 = pb_GetElapsedTime(_imopVarPre345);
        if (_imopVarPre346 != 0) {
            struct pb_Timer *_imopVarPre352;
            double _imopVarPre353;
            char *_imopVarPre354;
            _imopVarPre352 = &t[i];
            _imopVarPre353 = pb_GetElapsedTime(_imopVarPre352);
            _imopVarPre354 = categories[i - 1];
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre354, _imopVarPre353);
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                sub = timers->sub_timer_list[i]->subtimer_list;
                maxSubLength = 0;
                while (sub != ((void *) 0)) {
                    char *_imopVarPre357;
                    unsigned long int _imopVarPre358;
                    _imopVarPre357 = sub->label;
                    _imopVarPre358 = strlen(_imopVarPre357);
                    if (_imopVarPre358 > maxSubLength) {
                        char *_imopVarPre360;
                        unsigned long int _imopVarPre361;
                        _imopVarPre360 = sub->label;
                        _imopVarPre361 = strlen(_imopVarPre360);
                        maxSubLength = _imopVarPre361;
                    }
                    sub = sub->next;
                }
                if (maxSubLength <= maxCategoryLength) {
                    maxSubLength = maxCategoryLength;
                }
                sub = timers->sub_timer_list[i]->subtimer_list;
                while (sub != ((void *) 0)) {
                    struct pb_Timer *_imopVarPre367;
                    double _imopVarPre368;
                    char *_imopVarPre369;
                    _imopVarPre367 = &sub->timer;
                    _imopVarPre368 = pb_GetElapsedTime(_imopVarPre367);
                    _imopVarPre369 = sub->label;
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre369, _imopVarPre368);
                    sub = sub->next;
                }
            }
        }
    }
    struct pb_Timer *_imopVarPre372;
    double _imopVarPre373;
    _imopVarPre372 = &t[pb_TimerID_OVERLAP];
    _imopVarPre373 = pb_GetElapsedTime(_imopVarPre372);
    if (_imopVarPre373 != 0) {
        struct pb_Timer *_imopVarPre378;
        double _imopVarPre379;
        _imopVarPre378 = &t[pb_TimerID_OVERLAP];
        _imopVarPre379 = pb_GetElapsedTime(_imopVarPre378);
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre379);
    }
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    printf("Timer Wall Time: %f\n", walltime);
}
int main(int argc, char **argv) {
    struct pb_TimerSet timers;
    struct pb_Parameters *params;
    int rf;
    int k;
    int nbins;
    int npd;
    int npr;
    float *binb;
    long long *DD;
    long long *RRS;
    long long *DRS;
    size_t memsize;
    struct cartesian *data;
    struct cartesian *random;
    FILE *outfile;
    struct pb_TimerSet *_imopVarPre387;
    _imopVarPre387 = &timers;
    pb_InitializeTimerSet(_imopVarPre387);
    int *_imopVarPre389;
    struct pb_Parameters *_imopVarPre390;
    _imopVarPre389 = &argc;
    _imopVarPre390 = pb_ReadParameters(_imopVarPre389, argv);
    params = _imopVarPre390;
    options args;
    struct _options_ *_imopVarPre392;
    _imopVarPre392 = &args;
    parse_args(argc, argv, _imopVarPre392);
    struct pb_TimerSet *_imopVarPre394;
    _imopVarPre394 = &timers;
    pb_SwitchToTimer(_imopVarPre394, pb_TimerID_COMPUTE);
    double _imopVarPre411;
    double _imopVarPre412;
    double _imopVarPre413;
    double _imopVarPre414;
    _imopVarPre411 = log10(10000.0);
    _imopVarPre412 = log10(1.0);
    _imopVarPre413 = 5 * (_imopVarPre411 - _imopVarPre412);
    _imopVarPre414 = floor(_imopVarPre413);
    nbins = (int) _imopVarPre414;
    memsize = (nbins + 2) * sizeof(long long);
    unsigned long int _imopVarPre417;
    void *_imopVarPre418;
    _imopVarPre417 = (nbins + 1) * sizeof(float);
    _imopVarPre418 = malloc(_imopVarPre417);
    binb = (float *) _imopVarPre418;
    if (binb == ((void *) 0)) {
        fprintf(__stderrp, "Unable to allocate memory\n");
        int _imopVarPre420;
        _imopVarPre420 = -1;
        exit(_imopVarPre420);
    }
    for (k = 0; k < nbins + 1; k++) {
        double _imopVarPre435;
        double _imopVarPre436;
        double _imopVarPre437;
        double _imopVarPre438;
        double _imopVarPre439;
        _imopVarPre435 = log10(1.0);
        _imopVarPre436 = _imopVarPre435 + k * 1.0 / 5;
        _imopVarPre437 = pow(10, _imopVarPre436);
        _imopVarPre438 = _imopVarPre437 / 60.0 * 3.14159265358979323846264338327950288 / 180.0;
        _imopVarPre439 = cos(_imopVarPre438);
        binb[k] = _imopVarPre439;
    }
    void *_imopVarPre441;
    _imopVarPre441 = malloc(memsize);
    DD = (long long *) _imopVarPre441;
    if (DD == ((void *) 0)) {
        fprintf(__stderrp, "Unable to allocate memory\n");
        int _imopVarPre443;
        _imopVarPre443 = -1;
        exit(_imopVarPre443);
    }
    unsigned int _imopVarPre445;
    _imopVarPre445 = __builtin_object_size(DD, 0);
    __builtin___memset_chk(DD, 0, memsize, _imopVarPre445);
    void *_imopVarPre447;
    _imopVarPre447 = malloc(memsize);
    RRS = (long long *) _imopVarPre447;
    if (RRS == ((void *) 0)) {
        fprintf(__stderrp, "Unable to allocate memory\n");
        int _imopVarPre449;
        _imopVarPre449 = -1;
        exit(_imopVarPre449);
    }
    unsigned int _imopVarPre451;
    _imopVarPre451 = __builtin_object_size(RRS, 0);
    __builtin___memset_chk(RRS, 0, memsize, _imopVarPre451);
    void *_imopVarPre453;
    _imopVarPre453 = malloc(memsize);
    DRS = (long long *) _imopVarPre453;
    if (DRS == ((void *) 0)) {
        fprintf(__stderrp, "Unable to allocate memory\n");
        int _imopVarPre455;
        _imopVarPre455 = -1;
        exit(_imopVarPre455);
    }
    unsigned int _imopVarPre457;
    _imopVarPre457 = __builtin_object_size(DRS, 0);
    __builtin___memset_chk(DRS, 0, memsize, _imopVarPre457);
    unsigned long int _imopVarPre460;
    void *_imopVarPre461;
    _imopVarPre460 = args.npoints * sizeof(struct cartesian);
    _imopVarPre461 = malloc(_imopVarPre460);
    data = (struct cartesian *) _imopVarPre461;
    if (data == ((void *) 0)) {
        int _imopVarPre463;
        _imopVarPre463 = args.npoints;
        fprintf(__stderrp, "Unable to allocate memory for % data points (#1)\n", _imopVarPre463);
        return 0;
    }
    unsigned long int _imopVarPre466;
    void *_imopVarPre467;
    _imopVarPre466 = args.npoints * sizeof(struct cartesian);
    _imopVarPre467 = malloc(_imopVarPre466);
    random = (struct cartesian *) _imopVarPre467;
    if (random == ((void *) 0)) {
        int _imopVarPre469;
        _imopVarPre469 = args.npoints;
        fprintf(__stderrp, "Unable to allocate memory for % data points (#2)\n", _imopVarPre469);
        return 0;
    }
    printf("Min distance: %f arcmin\n", 1.0);
    printf("Max distance: %f arcmin\n", 10000.0);
    printf("Bins per dec: %i\n", 5);
    printf("Total bins  : %i\n", nbins);
    struct pb_TimerSet *_imopVarPre471;
    _imopVarPre471 = &timers;
    pb_SwitchToTimer(_imopVarPre471, pb_TimerID_IO);
    int _imopVarPre474;
    char *_imopVarPre475;
    int _imopVarPre476;
    _imopVarPre474 = args.npoints;
    _imopVarPre475 = params->inpFiles[0];
    _imopVarPre476 = readdatafile(_imopVarPre475, data, _imopVarPre474);
    npd = _imopVarPre476;
    struct pb_TimerSet *_imopVarPre478;
    _imopVarPre478 = &timers;
    pb_SwitchToTimer(_imopVarPre478, pb_TimerID_COMPUTE);
    if (npd != args.npoints) {
        int _imopVarPre480;
        _imopVarPre480 = args.npoints;
        fprintf(__stderrp, "Error: read %i data points out of %i\n", npd, _imopVarPre480);
        return 0;
    }
    void *_imopVarPre482;
    _imopVarPre482 = ((void *) 0);
    struct cartesian *data1;
    int n1;
    struct cartesian *data2;
    int n2;
    int doSelf;
    signed long long int *data_bins;
    data1 = data;
    n1 = npd;
    data2 = _imopVarPre482;
    n2 = 0;
    doSelf = 1;
    data_bins = DD;
    int i;
    int j;
    if (doSelf) {
        n2 = n1;
        data2 = data1;
    }
    int _imopVarPre148;
    int _imopVarPre149;
    i = 0;
    _imopVarPre148 = doSelf;
    if (_imopVarPre148) {
        _imopVarPre149 = n1 - 1;
    } else {
        _imopVarPre149 = n1;
    }
    for (; i < _imopVarPre149; ) {
        int _imopVarPre153;
#pragma omp parallel
        {
            const register float xi = data1[i].x;
            const register float yi = data1[i].y;
            const register float zi = data1[i].z;
            int _imopVarPre152;
#pragma omp master
            {
                _imopVarPre152 = doSelf;
                if (_imopVarPre152) {
                    _imopVarPre153 = i + 1;
                } else {
                    _imopVarPre153 = 0;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (j = _imopVarPre153; j < n2; j++) {
                register float dot = xi * data2[j].x + yi * data2[j].y + zi * data2[j].z;
                register int min = 0;
                register int max = nbins;
                register int k;
                while (max > min + 1) {
                    k = (min + max) / 2;
                    if (dot >= binb[k]) {
                        max = k;
                    } else {
                        min = k;
                    }
                }
                ;
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                {
                    if (dot >= binb[min]) {
                        data_bins[min] += 1;
                    } else {
                        if (dot < binb[max]) {
                            data_bins[max + 1] += 1;
                        } else {
                            data_bins[max] += 1;
                        }
                    }
                }
// #pragma omp dummyFlush CRITICAL_END
            }
#pragma omp master
            {
                i++;
                _imopVarPre148 = doSelf;
                if (_imopVarPre148) {
                    _imopVarPre149 = n1 - 1;
                } else {
                    _imopVarPre149 = n1;
                }
            }
        }
    }
    0;
    for (rf = 0; rf < args.random_count; rf++) {
        struct pb_TimerSet *_imopVarPre484;
        _imopVarPre484 = &timers;
        pb_SwitchToTimer(_imopVarPre484, pb_TimerID_IO);
        int _imopVarPre487;
        char *_imopVarPre488;
        int _imopVarPre489;
        _imopVarPre487 = args.npoints;
        _imopVarPre488 = params->inpFiles[rf + 1];
        _imopVarPre489 = readdatafile(_imopVarPre488, random, _imopVarPre487);
        npr = _imopVarPre489;
        struct pb_TimerSet *_imopVarPre491;
        _imopVarPre491 = &timers;
        pb_SwitchToTimer(_imopVarPre491, pb_TimerID_COMPUTE);
        if (npr != args.npoints) {
            char *_imopVarPre494;
            int _imopVarPre495;
            _imopVarPre494 = params->inpFiles[rf + 1];
            _imopVarPre495 = args.npoints;
            fprintf(__stderrp, "Error: read %i random points out of %i in file %s\n", npr, _imopVarPre495, _imopVarPre494);
            return 0;
        }
        void *_imopVarPre497;
        _imopVarPre497 = ((void *) 0);
        struct cartesian *data1;
        int n1;
        struct cartesian *data2;
        int n2;
        int doSelf;
        signed long long int *data_bins;
        data1 = random;
        n1 = npr;
        data2 = _imopVarPre497;
        n2 = 0;
        doSelf = 1;
        data_bins = RRS;
        int i;
        int j;
        if (doSelf) {
            n2 = n1;
            data2 = data1;
        }
        int _imopVarPre148;
        int _imopVarPre149;
        i = 0;
        _imopVarPre148 = doSelf;
        if (_imopVarPre148) {
            _imopVarPre149 = n1 - 1;
        } else {
            _imopVarPre149 = n1;
        }
        for (; i < _imopVarPre149; ) {
            int _imopVarPre153;
#pragma omp parallel
            {
                const register float xi = data1[i].x;
                const register float yi = data1[i].y;
                const register float zi = data1[i].z;
                int _imopVarPre152;
#pragma omp master
                {
                    _imopVarPre152 = doSelf;
                    if (_imopVarPre152) {
                        _imopVarPre153 = i + 1;
                    } else {
                        _imopVarPre153 = 0;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (j = _imopVarPre153; j < n2; j++) {
                    register float dot = xi * data2[j].x + yi * data2[j].y + zi * data2[j].z;
                    register int min = 0;
                    register int max = nbins;
                    register int k;
                    while (max > min + 1) {
                        k = (min + max) / 2;
                        if (dot >= binb[k]) {
                            max = k;
                        } else {
                            min = k;
                        }
                    }
                    ;
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                    {
                        if (dot >= binb[min]) {
                            data_bins[min] += 1;
                        } else {
                            if (dot < binb[max]) {
                                data_bins[max + 1] += 1;
                            } else {
                                data_bins[max] += 1;
                            }
                        }
                    }
// #pragma omp dummyFlush CRITICAL_END
                }
#pragma omp master
                {
                    i++;
                    _imopVarPre148 = doSelf;
                    if (_imopVarPre148) {
                        _imopVarPre149 = n1 - 1;
                    } else {
                        _imopVarPre149 = n1;
                    }
                }
            }
        }
        0;
        struct cartesian *data1_imopVar75;
        int n1_imopVar76;
        struct cartesian *data2_imopVar77;
        int n2_imopVar78;
        int doSelf_imopVar79;
        signed long long int *data_bins_imopVar80;
        data1_imopVar75 = data;
        n1_imopVar76 = npd;
        data2_imopVar77 = random;
        n2_imopVar78 = npr;
        doSelf_imopVar79 = 0;
        data_bins_imopVar80 = DRS;
        int i_imopVar81;
        int j_imopVar82;
        if (doSelf_imopVar79) {
            n2_imopVar78 = n1_imopVar76;
            data2_imopVar77 = data1_imopVar75;
        }
        int _imopVarPre148_imopVar83;
        int _imopVarPre149_imopVar84;
        i_imopVar81 = 0;
        _imopVarPre148_imopVar83 = doSelf_imopVar79;
        if (_imopVarPre148_imopVar83) {
            _imopVarPre149_imopVar84 = n1_imopVar76 - 1;
        } else {
            _imopVarPre149_imopVar84 = n1_imopVar76;
        }
        for (; i_imopVar81 < _imopVarPre149_imopVar84; ) {
            int _imopVarPre153;
#pragma omp parallel
            {
                const register float xi = data1_imopVar75[i_imopVar81].x;
                const register float yi = data1_imopVar75[i_imopVar81].y;
                const register float zi = data1_imopVar75[i_imopVar81].z;
                int _imopVarPre152;
#pragma omp master
                {
                    _imopVarPre152 = doSelf_imopVar79;
                    if (_imopVarPre152) {
                        _imopVarPre153 = i_imopVar81 + 1;
                    } else {
                        _imopVarPre153 = 0;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (j_imopVar82 = _imopVarPre153; j_imopVar82 < n2_imopVar78; j_imopVar82++) {
                    register float dot = xi * data2_imopVar77[j_imopVar82].x + yi * data2_imopVar77[j_imopVar82].y + zi * data2_imopVar77[j_imopVar82].z;
                    register int min = 0;
                    register int max = nbins;
                    register int k;
                    while (max > min + 1) {
                        k = (min + max) / 2;
                        if (dot >= binb[k]) {
                            max = k;
                        } else {
                            min = k;
                        }
                    }
                    ;
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                    {
                        if (dot >= binb[min]) {
                            data_bins_imopVar80[min] += 1;
                        } else {
                            if (dot < binb[max]) {
                                data_bins_imopVar80[max + 1] += 1;
                            } else {
                                data_bins_imopVar80[max] += 1;
                            }
                        }
                    }
// #pragma omp dummyFlush CRITICAL_END
                }
#pragma omp master
                {
                    i_imopVar81++;
                    _imopVarPre148_imopVar83 = doSelf_imopVar79;
                    if (_imopVarPre148_imopVar83) {
                        _imopVarPre149_imopVar84 = n1_imopVar76 - 1;
                    } else {
                        _imopVarPre149_imopVar84 = n1_imopVar76;
                    }
                }
            }
        }
        0;
    }
    char *_imopVarPre502;
    struct __sFILE *_imopVarPre503;
    _imopVarPre502 = params->outFile;
    _imopVarPre503 = fopen(_imopVarPre502, "w");
    if ((outfile = _imopVarPre503) == ((void *) 0)) {
        char *_imopVarPre505;
        _imopVarPre505 = params->outFile;
        fprintf(__stderrp, "Unable to open output file %s for writing, assuming stdout\n", _imopVarPre505);
        outfile = __stdoutp;
    }
    struct pb_TimerSet *_imopVarPre507;
    _imopVarPre507 = &timers;
    pb_SwitchToTimer(_imopVarPre507, pb_TimerID_IO);
    for (k = 1; k < nbins + 1; k++) {
        signed long long int _imopVarPre511;
        signed long long int _imopVarPre512;
        signed long long int _imopVarPre513;
        _imopVarPre511 = RRS[k];
        _imopVarPre512 = DRS[k];
        _imopVarPre513 = DD[k];
        fprintf(outfile, "%d\n%d\n%d\n", _imopVarPre513, _imopVarPre512, _imopVarPre511);
    }
    if (outfile != __stdoutp) {
        fclose(outfile);
    }
    free(data);
    free(random);
    free(binb);
    free(DD);
    free(RRS);
    free(DRS);
    struct pb_TimerSet *_imopVarPre515;
    _imopVarPre515 = &timers;
    pb_SwitchToTimer(_imopVarPre515, pb_TimerID_NONE);
    struct pb_TimerSet *_imopVarPre517;
    _imopVarPre517 = &timers;
    pb_PrintTimerSet(_imopVarPre517);
    pb_FreeParameters(params);
}
