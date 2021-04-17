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
extern char *suboptarg;
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
/*OUT: {
Reverse<--,>}*/
void usage(char *name) {
    /*OUT: {
    Reverse<--,>}*/
    printf("Usage: %s <-d data_file_name> <-r rnd_file_name> " "<-m rnd_count> <-p count> <-o file_name>\n", name);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    exit(0);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void parse_args(int argc, char **argv , options *args) {
    /*OUT: {
    Reverse<--,>}*/
    int c;
    /*OUT: {
    Reverse<--,>}*/
    args->data_name = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    args->random_name = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    args->random_count = 0;
    /*OUT: {
    Reverse<--,>}*/
    args->npoints = 0;
    /*OUT: {
    Reverse<--,>}*/
    args->output_name = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre141;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre141 = getopt(argc, argv, "d:n:r:p:o:");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    while ((c = _imopVarPre141) != (-1)) {
        /*OUT: {
        Reverse<--, 166_0;>}*/
        switch (c) {
            /*OUT: {
            Reverse<--, 167_5; 166_0;>}*/
            case 'd': args->data_name = optarg;
            /*OUT: {
            Reverse<--, 167_5; 166_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 167_4; 166_0;>}*/
            case 'r': args->random_name = optarg;
            /*OUT: {
            Reverse<--, 167_4; 166_0;>}*/
            break;
            int _imopVarPre142;
            /*OUT: {
            Reverse<--, 167_0; 166_0;>}*/
            case 'n': _imopVarPre142 = atoi(optarg);
            /*OUT: {
            Reverse<--, 167_0; 166_0;>}*/
            /*OUT: {
            Reverse<--, 167_0; 166_0;>}*/
            args->random_count = _imopVarPre142;
            /*OUT: {
            Reverse<--, 167_0; 166_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 167_1; 166_0;>}*/
            case 'o': args->output_name = optarg;
            /*OUT: {
            Reverse<--, 167_1; 166_0;>}*/
            break;
            signed long int _imopVarPre143;
            /*OUT: {
            Reverse<--, 167_2; 166_0;>}*/
            case 'p': _imopVarPre143 = atol(optarg);
            /*OUT: {
            Reverse<--, 167_2; 166_0;>}*/
            /*OUT: {
            Reverse<--, 167_2; 166_0;>}*/
            args->npoints = _imopVarPre143;
            /*OUT: {
            Reverse<--, 167_2; 166_0;>}*/
            break;
            char *_imopVarPre145;
            /*OUT: {
            Reverse<--, 167_3; 166_0;>}*/
            default: _imopVarPre145 = argv[0];
            /*OUT: {
            Reverse<--, 167_3; 166_0;>}*/
            usage(_imopVarPre145);
            /*OUT: {
            Reverse<--, 167_3; 166_0;>}*/
        }
        /*OUT: {
        Reverse<--, 166_0;>}*/
        _imopVarPre141 = getopt(argc, argv, "d:n:r:p:o:");
        /*OUT: {
        Reverse<--, 166_0;>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int doCompute(struct cartesian *data1, int n1 , struct cartesian *data2 , int n2 , int doSelf , long long *data_bins , int nbins , float *binb) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    if (doSelf) {
        /*OUT: {
        Reverse<--, 222_0;>}*/
        n2 = n1;
        /*OUT: {
        Reverse<--, 222_0;>}*/
        data2 = data1;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    i = 0;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre148 = doSelf;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre148) {
        /*OUT: {
        Reverse<--, 233_0;>}*/
        _imopVarPre149 = n1 - 1;
    } else {
        /*OUT: {
        Reverse<--, 233_1;>}*/
        _imopVarPre149 = n1;
    }
    /*OUT: {
    Reverse<--,>}*/
    for (; i < _imopVarPre149; ) {
        /*OUT: {
        Reverse<--, 238_0;>}*/
        const register float xi = data1[i].x;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        const register float yi = data1[i].y;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        const register float zi = data1[i].z;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        int _imopVarPre152;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        int _imopVarPre153;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        _imopVarPre152 = doSelf;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        if (_imopVarPre152) {
            /*OUT: {
            Reverse<--, 249_0; 238_0;>}*/
            _imopVarPre153 = i + 1;
        } else {
            /*OUT: {
            Reverse<--, 249_1; 238_0;>}*/
            _imopVarPre153 = 0;
        }
#pragma omp parallel
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<1868,>}*/
            /*OUT: {
            Reverse<1868,>}*/
            /*OUT: {
            Reverse<1868, 266_1;>}*/
            for (j = _imopVarPre153; j < n2; j++) {
                /*OUT: {
                Reverse<1868,>}*/
                register float dot = xi * data2[j].x + yi * data2[j].y + zi * data2[j].z;
                /*OUT: {
                Reverse<1868,>}*/
                register int min = 0;
                /*OUT: {
                Reverse<1868,>}*/
                register int max = nbins;
                /*OUT: {
                Reverse<1868,>}*/
                register int k;
                /*OUT: {
                Reverse<1868,>}*/
                while (max > min + 1) {
                    /*OUT: {
                    Reverse<1868, 266_0;>}*/
                    k = (min + max) / 2;
                    /*OUT: {
                    Reverse<1868, 266_0;>}*/
                    if (dot >= binb[k]) {
                        /*OUT: {
                        Reverse<1868, 271_0; 266_0;>}*/
                        max = k;
                    } else {
                        /*OUT: {
                        Reverse<1868, 271_1; 266_0;>}*/
                        min = k;
                    }
                }
                /*OUT: {
                Reverse<1868, 266_1;>}*/
                ;
                /*OUT: {
                Reverse<1868, 266_1;>}*/
                // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                {
                    /*OUT: {
                    Reverse<1868, 266_1;>}*/
                    if (dot >= binb[min]) {
                        /*OUT: {
                        Reverse<1868, 278_0; 266_1;>}*/
                        data_bins[min] += 1;
                    } else {
                        /*OUT: {
                        Reverse<1868, 278_1; 266_1;>}*/
                        if (dot < binb[max]) {
                            /*OUT: {
                            Reverse<1868, 283_0; 278_1; 266_1;>}*/
                            data_bins[max + 1] += 1;
                        } else {
                            /*OUT: {
                            Reverse<1868, 283_1; 278_1; 266_1;>}*/
                            data_bins[max] += 1;
                        }
                    }
                }
                /*OUT: {
                Reverse<1868, 266_1;>}*/
                // #pragma omp dummyFlush CRITICAL_END
            }
            /*OUT: {
            Reverse<1868,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<290,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 238_0;>}*/
        i++;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        _imopVarPre148 = doSelf;
        /*OUT: {
        Reverse<--, 238_0;>}*/
        if (_imopVarPre148) {
            /*OUT: {
            Reverse<--, 295_0; 238_0;>}*/
            _imopVarPre149 = n1 - 1;
        } else {
            /*OUT: {
            Reverse<--, 295_1; 238_0;>}*/
            _imopVarPre149 = n1;
        }
    }
    /*OUT: {
    Reverse<--, 238_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int readdatafile(char *fname, struct cartesian *data , int npoints) {
    /*OUT: {
    Reverse<--,>}*/
    FILE *infile;
    /*OUT: {
    Reverse<--,>}*/
    int lcount = 0;
    /*OUT: {
    Reverse<--,>}*/
    float ra;
    /*OUT: {
    Reverse<--,>}*/
    float dec;
    /*OUT: {
    Reverse<--,>}*/
    struct __sFILE *_imopVarPre155;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre155 = fopen(fname, "r");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if ((infile = _imopVarPre155) == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 318_0;>}*/
        fprintf(__stderrp, "Unable to open data file %s for reading\n", fname);
        /*OUT: {
        Reverse<--, 318_0;>}*/
        /*OUT: {
        Reverse<--, 318_0;>}*/
        return lcount;
    }
    /*OUT: {
    Reverse<--, 318_1;>}*/
    /*OUT: {
    Reverse<--, 318_1;>}*/
    /*OUT: {
    Reverse<--, 342_1; 327_0; 318_1;>}*/
    for (lcount = 0; lcount < npoints; lcount++) {
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        float *_imopVarPre159;
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        float *_imopVarPre160;
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        int _imopVarPre161;
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        _imopVarPre159 = &dec;
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        _imopVarPre160 = &ra;
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        _imopVarPre161 = fscanf(infile, "%f %f", _imopVarPre160, _imopVarPre159);
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        /*OUT: {
        Reverse<--, 327_0; 318_1;>}*/
        if (_imopVarPre161 != 2) {
            /*OUT: {
            Reverse<--, 342_0; 327_0; 318_1;>}*/
            break;
        }
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        float rarad = 3.14159265358979323846264338327950288 / 180.0 * ra;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        float decrad = 3.14159265358979323846264338327950288 / 180.0 * dec;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        double _imopVarPre162;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        _imopVarPre162 = cos(decrad);
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        float cd = _imopVarPre162;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        double _imopVarPre164;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        _imopVarPre164 = cos(rarad);
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        data[lcount].x = _imopVarPre164 * cd;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        double _imopVarPre166;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        _imopVarPre166 = sin(rarad);
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        data[lcount].y = _imopVarPre166 * cd;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        double _imopVarPre167;
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        _imopVarPre167 = sin(decrad);
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        /*OUT: {
        Reverse<--, 342_1; 327_0; 318_1;>}*/
        data[lcount].z = _imopVarPre167;
    }
    /*OUT: {
    Reverse<--, 327_1; 318_1;>
    Reverse<--, 342_0; 327_0; 318_1;>}*/
    fclose(infile);
    /*OUT: {
    Reverse<--, 327_1; 318_1;>
    Reverse<--, 342_0; 327_0; 318_1;>}*/
    /*OUT: {
    Reverse<--, 327_1; 318_1;>
    Reverse<--, 342_0; 327_0; 318_1;>}*/
    return lcount;
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
        Reverse<--, 393_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 393_1;>}*/
    /*OUT: {
    Reverse<--, 393_1;>}*/
    /*OUT: {
    Reverse<--, 396_0; 393_1;>}*/
    for (p = string_array; *p; p++) {
        /*OUT: {
        Reverse<--, 396_0; 393_1;>}*/
        char *_imopVarPre169;
        /*OUT: {
        Reverse<--, 396_0; 393_1;>}*/
        _imopVarPre169 = *p;
        /*OUT: {
        Reverse<--, 396_0; 393_1;>}*/
        free(_imopVarPre169);
        /*OUT: {
        Reverse<--, 396_0; 393_1;>}*/
    }
    /*OUT: {
    Reverse<--, 396_1; 393_1;>}*/
    free(string_array);
    /*OUT: {
    Reverse<--, 396_1; 393_1;>}*/
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
    Reverse<--, 420_0;>}*/
    for (i = 0; in[i]; i++) {
        /*OUT: {
        Reverse<--, 420_0;>}*/
        if (in[i] == ',') {
            /*OUT: {
            Reverse<--, 423_0; 420_0;>}*/
            count++;
        }
    }
    /*OUT: {
    Reverse<--, 420_1;>}*/
    unsigned long int _imopVarPre172;
    /*OUT: {
    Reverse<--, 420_1;>}*/
    void *_imopVarPre173;
    /*OUT: {
    Reverse<--, 420_1;>}*/
    _imopVarPre172 = (count + 1) * sizeof(char *);
    /*OUT: {
    Reverse<--, 420_1;>}*/
    _imopVarPre173 = malloc(_imopVarPre172);
    /*OUT: {
    Reverse<--, 420_1;>}*/
    /*OUT: {
    Reverse<--, 420_1;>}*/
    ret = (char **) _imopVarPre173;
    /*OUT: {
    Reverse<--, 420_1;>}*/
    substring = in;
    /*OUT: {
    Reverse<--, 420_1;>}*/
    /*OUT: {
    Reverse<--, 420_1;>}*/
    /*OUT: {
    Reverse<--, 456_1; 442_0; 420_1;>}*/
    for (i = 0; i < count; i++) {
        /*OUT: {
        Reverse<--, 442_0; 420_1;>}*/
        char *substring_end;
        /*OUT: {
        Reverse<--, 442_0; 420_1;>}*/
        int substring_length;
        /*OUT: {
        Reverse<--, 442_0; 420_1;>}*/
        int _imopVarPre175;
        /*OUT: {
        Reverse<--, 442_0; 420_1;>}*/
        substring_end = substring;
        /*OUT: {
        Reverse<--, 442_0; 420_1;>}*/
        _imopVarPre175 = (*substring_end != ',');
        /*OUT: {
        Reverse<--, 442_0; 420_1;>}*/
        if (_imopVarPre175) {
            /*OUT: {
            Reverse<--, 452_0; 442_0; 420_1;>}*/
            _imopVarPre175 = (*substring_end != 0);
        }
        /*OUT: {
        Reverse<--, 442_0; 420_1;>}*/
        for (; _imopVarPre175; ) {
            /*OUT: {
            Reverse<--, 456_0; 442_0; 420_1;>}*/
            ;
            /*OUT: {
            Reverse<--, 456_0; 442_0; 420_1;>}*/
            substring_end++;
            /*OUT: {
            Reverse<--, 456_0; 442_0; 420_1;>}*/
            _imopVarPre175 = (*substring_end != ',');
            /*OUT: {
            Reverse<--, 456_0; 442_0; 420_1;>}*/
            if (_imopVarPre175) {
                /*OUT: {
                Reverse<--, 463_0; 456_0; 442_0; 420_1;>}*/
                _imopVarPre175 = (*substring_end != 0);
            }
        }
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        substring_length = substring_end - substring;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        int _imopVarPre178;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        void *_imopVarPre179;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        _imopVarPre178 = substring_length + 1;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        _imopVarPre179 = malloc(_imopVarPre178);
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        ret[i] = (char *) _imopVarPre179;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        char *_imopVarPre185;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        unsigned int _imopVarPre186;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        char *_imopVarPre187;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        _imopVarPre185 = ret[i];
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        _imopVarPre186 = __builtin_object_size(_imopVarPre185, 0);
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        _imopVarPre187 = ret[i];
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        __builtin___memcpy_chk(_imopVarPre187, substring, substring_length, _imopVarPre186);
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        ret[i][substring_length] = 0;
        /*OUT: {
        Reverse<--, 456_1; 442_0; 420_1;>}*/
        substring = substring_end + 1;
    }
    /*OUT: {
    Reverse<--, 442_1; 420_1;>}*/
    ret[i] = ((void *) 0);
    /*OUT: {
    Reverse<--, 442_1; 420_1;>}*/
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
    Reverse<--, 525_0;>}*/
    for (; ap->argn < ap->argc; ap->argn++) {
        /*OUT: {
        Reverse<--, 525_0;>}*/
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
        Reverse<--, 530_0;>}*/
        fprintf(__stderrp, "delete_argument\n");
        /*OUT: {
        Reverse<--, 530_0;>}*/
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
        Reverse<--, 541_0;>}*/
        fprintf(__stderrp, "next_argument\n");
        /*OUT: {
        Reverse<--, 541_0;>}*/
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
    char *_imopVarPre188;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre188 = get_argument(ap);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *ret = _imopVarPre188;
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
    unsigned long int _imopVarPre191;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre192;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre191 = sizeof(struct pb_Parameters);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre192 = malloc(_imopVarPre191);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre192;
    /*OUT: {
    Reverse<--,>}*/
    ret->outFile = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre195;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre196;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre195 = sizeof(char *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre196 = malloc(_imopVarPre195);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles = (char **) _imopVarPre196;
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles[0] = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre199;
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre199 = *_argc;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre200 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    initialize_argparse(_imopVarPre200, _imopVarPre199, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre203;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre204;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre203 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre204 = is_end_of_arguments(_imopVarPre203);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    while (!_imopVarPre204) {
        /*OUT: {
        Reverse<--, 628_0;>}*/
        struct argparse *_imopVarPre206;
        /*OUT: {
        Reverse<--, 628_0;>}*/
        char *_imopVarPre207;
        /*OUT: {
        Reverse<--, 628_0;>}*/
        _imopVarPre206 = &ap;
        /*OUT: {
        Reverse<--, 628_0;>}*/
        _imopVarPre207 = get_argument(_imopVarPre206);
        /*OUT: {
        Reverse<--, 628_0;>}*/
        /*OUT: {
        Reverse<--, 628_0;>}*/
        char *arg = _imopVarPre207;
        /*OUT: {
        Reverse<--, 628_0;>}*/
        int _imopVarPre210;
        /*OUT: {
        Reverse<--, 628_0;>}*/
        int _imopVarPre211;
        /*OUT: {
        Reverse<--, 628_0;>}*/
        _imopVarPre210 = (arg[0] == '-');
        /*OUT: {
        Reverse<--, 628_0;>}*/
        if (_imopVarPre210) {
            /*OUT: {
            Reverse<--, 646_0; 628_0;>}*/
            _imopVarPre211 = (arg[1] != 0);
            /*OUT: {
            Reverse<--, 646_0; 628_0;>}*/
            if (_imopVarPre211) {
                /*OUT: {
                Reverse<--, 651_0; 646_0; 628_0;>}*/
                _imopVarPre211 = (arg[2] == 0);
            }
            /*OUT: {
            Reverse<--, 646_0; 628_0;>}*/
            _imopVarPre210 = _imopVarPre211;
        }
        /*OUT: {
        Reverse<--, 628_0;>}*/
        if (_imopVarPre210) {
            /*OUT: {
            Reverse<--, 658_0; 628_0;>}*/
            struct argparse *_imopVarPre213;
            /*OUT: {
            Reverse<--, 658_0; 628_0;>}*/
            _imopVarPre213 = &ap;
            /*OUT: {
            Reverse<--, 658_0; 628_0;>}*/
            delete_argument(_imopVarPre213);
            /*OUT: {
            Reverse<--, 658_0; 628_0;>}*/
            /*OUT: {
            Reverse<--, 658_0; 628_0;>}*/
            switch (arg[1]) {
                /*OUT: {
                Reverse<--, 668_3; 658_0; 628_0;>}*/
                case 'o': ;
                /*OUT: {
                Reverse<--, 668_3; 658_0; 628_0;>}*/
                struct argparse *_imopVarPre215;
                /*OUT: {
                Reverse<--, 668_3; 658_0; 628_0;>}*/
                int _imopVarPre216;
                /*OUT: {
                Reverse<--, 668_3; 658_0; 628_0;>}*/
                _imopVarPre215 = &ap;
                /*OUT: {
                Reverse<--, 668_3; 658_0; 628_0;>}*/
                _imopVarPre216 = is_end_of_arguments(_imopVarPre215);
                /*OUT: {
                Reverse<--, 668_3; 658_0; 628_0;>}*/
                /*OUT: {
                Reverse<--, 668_3; 658_0; 628_0;>}*/
                if (_imopVarPre216) {
                    /*OUT: {
                    Reverse<--, 680_0; 668_3; 658_0; 628_0;>}*/
                    err_message = "Expecting file name after '-o'\n";
                    /*OUT: {
                    Reverse<--, 680_0; 668_3; 658_0; 628_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                char *_imopVarPre218;
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                _imopVarPre218 = ret->outFile;
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                free(_imopVarPre218);
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                struct argparse *_imopVarPre223;
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                char *_imopVarPre224;
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                char *_imopVarPre225;
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                _imopVarPre223 = &ap;
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                _imopVarPre224 = consume_argument(_imopVarPre223);
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                _imopVarPre225 = strdup(_imopVarPre224);
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                ret->outFile = _imopVarPre225;
                /*OUT: {
                Reverse<--, 680_1; 668_3; 658_0; 628_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 668_1; 658_0; 628_0;>}*/
                case 'i': ;
                /*OUT: {
                Reverse<--, 668_1; 658_0; 628_0;>}*/
                struct argparse *_imopVarPre227;
                /*OUT: {
                Reverse<--, 668_1; 658_0; 628_0;>}*/
                int _imopVarPre228;
                /*OUT: {
                Reverse<--, 668_1; 658_0; 628_0;>}*/
                _imopVarPre227 = &ap;
                /*OUT: {
                Reverse<--, 668_1; 658_0; 628_0;>}*/
                _imopVarPre228 = is_end_of_arguments(_imopVarPre227);
                /*OUT: {
                Reverse<--, 668_1; 658_0; 628_0;>}*/
                /*OUT: {
                Reverse<--, 668_1; 658_0; 628_0;>}*/
                if (_imopVarPre228) {
                    /*OUT: {
                    Reverse<--, 723_0; 668_1; 658_0; 628_0;>}*/
                    err_message = "Expecting file name after '-i'\n";
                    /*OUT: {
                    Reverse<--, 723_0; 668_1; 658_0; 628_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                struct argparse *_imopVarPre233;
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                char *_imopVarPre234;
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                char **_imopVarPre235;
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                _imopVarPre233 = &ap;
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                _imopVarPre234 = consume_argument(_imopVarPre233);
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                _imopVarPre235 = read_string_array(_imopVarPre234);
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                ret->inpFiles = _imopVarPre235;
                /*OUT: {
                Reverse<--, 723_1; 668_1; 658_0; 628_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 668_0; 658_0; 628_0;>}*/
                case '-': goto end_of_options;
                /*OUT: {
                Reverse<--, 668_2; 658_0; 628_0;>}*/
                default: err_message = "Unexpected command-line parameter\n";
                /*OUT: {
                Reverse<--, 668_2; 658_0; 628_0;>}*/
                goto error;
            }
        } else {
            /*OUT: {
            Reverse<--, 658_1; 628_0;>}*/
            struct argparse *_imopVarPre237;
            /*OUT: {
            Reverse<--, 658_1; 628_0;>}*/
            _imopVarPre237 = &ap;
            /*OUT: {
            Reverse<--, 658_1; 628_0;>}*/
            next_argument(_imopVarPre237);
            /*OUT: {
            Reverse<--, 658_1; 628_0;>}*/
        }
        /*OUT: {
        Reverse<--, 680_1; 668_3; 658_0; 628_0;>
        Reverse<--, 723_1; 668_1; 658_0; 628_0;>
        Reverse<--, 658_1; 628_0;>}*/
        _imopVarPre203 = &ap;
        /*OUT: {
        Reverse<--, 680_1; 668_3; 658_0; 628_0;>
        Reverse<--, 723_1; 668_1; 658_0; 628_0;>
        Reverse<--, 658_1; 628_0;>}*/
        _imopVarPre204 = is_end_of_arguments(_imopVarPre203);
        /*OUT: {
        Reverse<--, 680_1; 668_3; 658_0; 628_0;>
        Reverse<--, 723_1; 668_1; 658_0; 628_0;>
        Reverse<--, 658_1; 628_0;>}*/
    }
    /*OUT: {
    Reverse<--, 668_0; 658_0; 628_0;>
    Reverse<--, 628_1;>}*/
    end_of_options: *_argc = ap.argc;
    /*OUT: {
    Reverse<--, 668_0; 658_0; 628_0;>
    Reverse<--, 628_1;>}*/
    struct argparse *_imopVarPre239;
    /*OUT: {
    Reverse<--, 668_0; 658_0; 628_0;>
    Reverse<--, 628_1;>}*/
    _imopVarPre239 = &ap;
    /*OUT: {
    Reverse<--, 668_0; 658_0; 628_0;>
    Reverse<--, 628_1;>}*/
    finalize_argparse(_imopVarPre239);
    /*OUT: {
    Reverse<--, 668_0; 658_0; 628_0;>
    Reverse<--, 628_1;>}*/
    /*OUT: {
    Reverse<--, 668_0; 658_0; 628_0;>
    Reverse<--, 628_1;>}*/
    return ret;
    /*OUT: {
    Reverse<--, 680_0; 668_3; 658_0; 628_0;>
    Reverse<--, 723_0; 668_1; 658_0; 628_0;>
    Reverse<--, 668_2; 658_0; 628_0;>}*/
    error: fputs(err_message, __stderrp);
    /*OUT: {
    Reverse<--, 680_0; 668_3; 658_0; 628_0;>
    Reverse<--, 723_0; 668_1; 658_0; 628_0;>
    Reverse<--, 668_2; 658_0; 628_0;>}*/
    /*OUT: {
    Reverse<--, 680_0; 668_3; 658_0; 628_0;>
    Reverse<--, 723_0; 668_1; 658_0; 628_0;>
    Reverse<--, 668_2; 658_0; 628_0;>}*/
    pb_FreeParameters(ret);
    /*OUT: {
    Reverse<--, 680_0; 668_3; 658_0; 628_0;>
    Reverse<--, 723_0; 668_1; 658_0; 628_0;>
    Reverse<--, 668_2; 658_0; 628_0;>}*/
    /*OUT: {
    Reverse<--, 680_0; 668_3; 658_0; 628_0;>
    Reverse<--, 723_0; 668_1; 658_0; 628_0;>
    Reverse<--, 668_2; 658_0; 628_0;>}*/
    return ((void *) 0);
}
/*OUT: {
Reverse<--,>}*/
void pb_FreeParameters(struct pb_Parameters *p) {
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre241;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre241 = p->outFile;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre241);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char **_imopVarPre243;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre243 = p->inpFiles;
    /*OUT: {
    Reverse<--,>}*/
    free_string_array(_imopVarPre243);
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
    void *_imopVarPre246;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre247;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre246 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre247 = &tv;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre247, _imopVarPre246);
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
        Reverse<--, 841_0;>}*/
        fputs("Ignoring attempt to start a running timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 841_0;>}*/
        /*OUT: {
        Reverse<--, 841_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 841_1;>}*/
    timer->state = pb_Timer_RUNNING;
    /*OUT: {
    Reverse<--, 841_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 841_1;>}*/
    void *_imopVarPre250;
    /*OUT: {
    Reverse<--, 841_1;>}*/
    struct timeval *_imopVarPre251;
    /*OUT: {
    Reverse<--, 841_1;>}*/
    _imopVarPre250 = ((void *) 0);
    /*OUT: {
    Reverse<--, 841_1;>}*/
    _imopVarPre251 = &tv;
    /*OUT: {
    Reverse<--, 841_1;>}*/
    gettimeofday(_imopVarPre251, _imopVarPre250);
    /*OUT: {
    Reverse<--, 841_1;>}*/
    /*OUT: {
    Reverse<--, 841_1;>}*/
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
        Reverse<--, 867_0;>}*/
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 867_0;>}*/
        /*OUT: {
        Reverse<--, 867_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 867_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    void *_imopVarPre258;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    struct timeval *_imopVarPre259;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    _imopVarPre258 = ((void *) 0);
    /*OUT: {
    Reverse<--, 867_1;>}*/
    _imopVarPre259 = &tv;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    gettimeofday(_imopVarPre259, _imopVarPre258);
    /*OUT: {
    Reverse<--, 867_1;>}*/
    /*OUT: {
    Reverse<--, 867_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    unsigned long long int _imopVarPre262;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    unsigned long long int *_imopVarPre263;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    _imopVarPre262 = timer->init;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    _imopVarPre263 = &timer->elapsed;
    /*OUT: {
    Reverse<--, 867_1;>}*/
    accumulate_time(_imopVarPre263, _imopVarPre262, fini);
    /*OUT: {
    Reverse<--, 867_1;>}*/
    /*OUT: {
    Reverse<--, 867_1;>}*/
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
        Reverse<--, 908_0;>}*/
        fputs("Warning: Timer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 908_0;>}*/
        /*OUT: {
        Reverse<--, 908_0;>}*/
        numNotRunning &= 0x1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (subtimer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 916_0;>}*/
        fputs("Warning: Subtimer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 916_0;>}*/
        /*OUT: {
        Reverse<--, 916_0;>}*/
        numNotRunning &= 0x2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (numNotRunning == 0x0) {
        /*OUT: {
        Reverse<--, 924_0;>}*/
        fputs("Ignoring attempt to stop stopped timer and subtimer\n", __stderrp);
        /*OUT: {
        Reverse<--, 924_0;>}*/
        /*OUT: {
        Reverse<--, 924_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 924_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 924_1;>}*/
    subtimer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 924_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 924_1;>}*/
    void *_imopVarPre266;
    /*OUT: {
    Reverse<--, 924_1;>}*/
    struct timeval *_imopVarPre267;
    /*OUT: {
    Reverse<--, 924_1;>}*/
    _imopVarPre266 = ((void *) 0);
    /*OUT: {
    Reverse<--, 924_1;>}*/
    _imopVarPre267 = &tv;
    /*OUT: {
    Reverse<--, 924_1;>}*/
    gettimeofday(_imopVarPre267, _imopVarPre266);
    /*OUT: {
    Reverse<--, 924_1;>}*/
    /*OUT: {
    Reverse<--, 924_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 924_1;>}*/
    if (numNotRunning & 0x2) {
        /*OUT: {
        Reverse<--, 950_0; 924_1;>}*/
        unsigned long long int _imopVarPre270;
        /*OUT: {
        Reverse<--, 950_0; 924_1;>}*/
        unsigned long long int *_imopVarPre271;
        /*OUT: {
        Reverse<--, 950_0; 924_1;>}*/
        _imopVarPre270 = timer->init;
        /*OUT: {
        Reverse<--, 950_0; 924_1;>}*/
        _imopVarPre271 = &timer->elapsed;
        /*OUT: {
        Reverse<--, 950_0; 924_1;>}*/
        accumulate_time(_imopVarPre271, _imopVarPre270, fini);
        /*OUT: {
        Reverse<--, 950_0; 924_1;>}*/
        /*OUT: {
        Reverse<--, 950_0; 924_1;>}*/
        timer->init = fini;
    }
    /*OUT: {
    Reverse<--, 924_1;>}*/
    if (numNotRunning & 0x1) {
        /*OUT: {
        Reverse<--, 964_0; 924_1;>
        Reverse<--, 964_0; 950_1; 924_1;>}*/
        unsigned long long int _imopVarPre274;
        /*OUT: {
        Reverse<--, 964_0; 924_1;>
        Reverse<--, 964_0; 950_1; 924_1;>}*/
        unsigned long long int *_imopVarPre275;
        /*OUT: {
        Reverse<--, 964_0; 924_1;>
        Reverse<--, 964_0; 950_1; 924_1;>}*/
        _imopVarPre274 = subtimer->init;
        /*OUT: {
        Reverse<--, 964_0; 924_1;>
        Reverse<--, 964_0; 950_1; 924_1;>}*/
        _imopVarPre275 = &subtimer->elapsed;
        /*OUT: {
        Reverse<--, 964_0; 924_1;>
        Reverse<--, 964_0; 950_1; 924_1;>}*/
        accumulate_time(_imopVarPre275, _imopVarPre274, fini);
        /*OUT: {
        Reverse<--, 964_0; 924_1;>
        Reverse<--, 964_0; 950_1; 924_1;>}*/
        /*OUT: {
        Reverse<--, 964_0; 924_1;>
        Reverse<--, 964_0; 950_1; 924_1;>}*/
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
        Reverse<--, 980_0;>}*/
        fputs("Elapsed time from a running timer is inaccurate\n", __stderrp);
        /*OUT: {
        Reverse<--, 980_0;>}*/
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
    unsigned long long int _imopVarPre276;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre276 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timers->wall_begin = _imopVarPre276;
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
    Reverse<--, 1007_0;>}*/
    for (n = 0; n < pb_TimerID_LAST; n++) {
        /*OUT: {
        Reverse<--, 1007_0;>}*/
        struct pb_Timer *_imopVarPre278;
        /*OUT: {
        Reverse<--, 1007_0;>}*/
        _imopVarPre278 = &timers->timers[n];
        /*OUT: {
        Reverse<--, 1007_0;>}*/
        pb_ResetTimer(_imopVarPre278);
        /*OUT: {
        Reverse<--, 1007_0;>}*/
        /*OUT: {
        Reverse<--, 1007_0;>}*/
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
        Reverse<--, 1024_0;>}*/
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        /*OUT: {
        Reverse<--, 1024_0;>}*/
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        /*OUT: {
        Reverse<--, 1024_0;>}*/
        if (subtimerlist != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 1030_0; 1024_0;>}*/
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        /*OUT: {
        Reverse<--, 1024_0;>}*/
        if (currSubTimer != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 1035_0; 1024_0;>}*/
            struct pb_Timer *_imopVarPre336;
            /*OUT: {
            Reverse<--, 1035_0; 1024_0;>}*/
            struct pb_Timer *_imopVarPre337;
            /*OUT: {
            Reverse<--, 1035_0; 1024_0;>}*/
            _imopVarPre336 = &currSubTimer->timer;
            /*OUT: {
            Reverse<--, 1035_0; 1024_0;>}*/
            _imopVarPre337 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 1035_0; 1024_0;>}*/
            pb_StopTimerAndSubTimer(_imopVarPre337, _imopVarPre336);
            /*OUT: {
            Reverse<--, 1035_0; 1024_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 1035_1; 1024_0;>}*/
            struct pb_Timer *_imopVarPre339;
            /*OUT: {
            Reverse<--, 1035_1; 1024_0;>}*/
            _imopVarPre339 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 1035_1; 1024_0;>}*/
            pb_StopTimer(_imopVarPre339);
            /*OUT: {
            Reverse<--, 1035_1; 1024_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    timers->current = timer;
    /*OUT: {
    Reverse<--,>}*/
    if (timer != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 1059_0;>}*/
        struct pb_Timer *_imopVarPre341;
        /*OUT: {
        Reverse<--, 1059_0;>}*/
        _imopVarPre341 = &timers->timers[timer];
        /*OUT: {
        Reverse<--, 1059_0;>}*/
        pb_StartTimer(_imopVarPre341);
        /*OUT: {
        Reverse<--, 1059_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    /*OUT: {
    Reverse<--,>}*/
    unsigned long long int _imopVarPre342;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre342 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp wall_end = _imopVarPre342;
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
    Reverse<--, 1162_1; 1129_1; 1122_0; 1099_0; 1086_0;>
    Reverse<--, 1122_1; 1099_0; 1086_0;>
    Reverse<--, 1099_1; 1086_0;>}*/
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        /*OUT: {
        Reverse<--, 1086_0;>}*/
        struct pb_Timer *_imopVarPre345;
        /*OUT: {
        Reverse<--, 1086_0;>}*/
        double _imopVarPre346;
        /*OUT: {
        Reverse<--, 1086_0;>}*/
        _imopVarPre345 = &t[i];
        /*OUT: {
        Reverse<--, 1086_0;>}*/
        _imopVarPre346 = pb_GetElapsedTime(_imopVarPre345);
        /*OUT: {
        Reverse<--, 1086_0;>}*/
        /*OUT: {
        Reverse<--, 1086_0;>}*/
        if (_imopVarPre346 != 0) {
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            struct pb_Timer *_imopVarPre352;
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            double _imopVarPre353;
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            char *_imopVarPre354;
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            _imopVarPre352 = &t[i];
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            _imopVarPre353 = pb_GetElapsedTime(_imopVarPre352);
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            _imopVarPre354 = categories[i - 1];
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre354, _imopVarPre353);
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            /*OUT: {
            Reverse<--, 1099_0; 1086_0;>}*/
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                /*OUT: {
                Reverse<--, 1122_0; 1099_0; 1086_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 1122_0; 1099_0; 1086_0;>}*/
                maxSubLength = 0;
                /*OUT: {
                Reverse<--, 1122_0; 1099_0; 1086_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                    char *_imopVarPre357;
                    /*OUT: {
                    Reverse<--, 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                    unsigned long int _imopVarPre358;
                    /*OUT: {
                    Reverse<--, 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                    _imopVarPre357 = sub->label;
                    /*OUT: {
                    Reverse<--, 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                    _imopVarPre358 = strlen(_imopVarPre357);
                    /*OUT: {
                    Reverse<--, 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                    /*OUT: {
                    Reverse<--, 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                    if (_imopVarPre358 > maxSubLength) {
                        /*OUT: {
                        Reverse<--, 1140_0; 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                        char *_imopVarPre360;
                        /*OUT: {
                        Reverse<--, 1140_0; 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                        unsigned long int _imopVarPre361;
                        /*OUT: {
                        Reverse<--, 1140_0; 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                        _imopVarPre360 = sub->label;
                        /*OUT: {
                        Reverse<--, 1140_0; 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                        _imopVarPre361 = strlen(_imopVarPre360);
                        /*OUT: {
                        Reverse<--, 1140_0; 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                        /*OUT: {
                        Reverse<--, 1140_0; 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                        maxSubLength = _imopVarPre361;
                    }
                    /*OUT: {
                    Reverse<--, 1129_0; 1122_0; 1099_0; 1086_0;>}*/
                    sub = sub->next;
                }
                /*OUT: {
                Reverse<--, 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                if (maxSubLength <= maxCategoryLength) {
                    /*OUT: {
                    Reverse<--, 1155_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    maxSubLength = maxCategoryLength;
                }
                /*OUT: {
                Reverse<--, 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    struct pb_Timer *_imopVarPre367;
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    double _imopVarPre368;
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    char *_imopVarPre369;
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    _imopVarPre367 = &sub->timer;
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    _imopVarPre368 = pb_GetElapsedTime(_imopVarPre367);
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    _imopVarPre369 = sub->label;
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre369, _imopVarPre368);
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    /*OUT: {
                    Reverse<--, 1162_0; 1129_1; 1122_0; 1099_0; 1086_0;>}*/
                    sub = sub->next;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    struct pb_Timer *_imopVarPre372;
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    double _imopVarPre373;
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    _imopVarPre372 = &t[pb_TimerID_OVERLAP];
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    _imopVarPre373 = pb_GetElapsedTime(_imopVarPre372);
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    if (_imopVarPre373 != 0) {
        /*OUT: {
        Reverse<--, 1194_0; 1086_1;>}*/
        struct pb_Timer *_imopVarPre378;
        /*OUT: {
        Reverse<--, 1194_0; 1086_1;>}*/
        double _imopVarPre379;
        /*OUT: {
        Reverse<--, 1194_0; 1086_1;>}*/
        _imopVarPre378 = &t[pb_TimerID_OVERLAP];
        /*OUT: {
        Reverse<--, 1194_0; 1086_1;>}*/
        _imopVarPre379 = pb_GetElapsedTime(_imopVarPre378);
        /*OUT: {
        Reverse<--, 1194_0; 1086_1;>}*/
        /*OUT: {
        Reverse<--, 1194_0; 1086_1;>}*/
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre379);
        /*OUT: {
        Reverse<--, 1194_0; 1086_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    /*OUT: {
    Reverse<--, 1086_1;>}*/
    printf("Timer Wall Time: %f\n", walltime);
    /*OUT: {
    Reverse<--, 1086_1;>}*/
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
    struct pb_Parameters *params;
    /*OUT: {
    Reverse<--,>}*/
    int rf;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int nbins;
    /*OUT: {
    Reverse<--,>}*/
    int npd;
    /*OUT: {
    Reverse<--,>}*/
    int npr;
    /*OUT: {
    Reverse<--,>}*/
    float *binb;
    /*OUT: {
    Reverse<--,>}*/
    long long *DD;
    /*OUT: {
    Reverse<--,>}*/
    long long *RRS;
    /*OUT: {
    Reverse<--,>}*/
    long long *DRS;
    /*OUT: {
    Reverse<--,>}*/
    size_t memsize;
    /*OUT: {
    Reverse<--,>}*/
    struct cartesian *data;
    /*OUT: {
    Reverse<--,>}*/
    struct cartesian *random;
    /*OUT: {
    Reverse<--,>}*/
    FILE *outfile;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet *_imopVarPre387;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre387 = &timers;
    /*OUT: {
    Reverse<--,>}*/
    pb_InitializeTimerSet(_imopVarPre387);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre389;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *_imopVarPre390;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre389 = &argc;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre390 = pb_ReadParameters(_imopVarPre389, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    params = _imopVarPre390;
    /*OUT: {
    Reverse<--,>}*/
    options args;
    /*OUT: {
    Reverse<--,>}*/
    struct _options_ *_imopVarPre392;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre392 = &args;
    /*OUT: {
    Reverse<--,>}*/
    parse_args(argc, argv, _imopVarPre392);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet *_imopVarPre394;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre394 = &timers;
    /*OUT: {
    Reverse<--,>}*/
    pb_SwitchToTimer(_imopVarPre394, pb_TimerID_COMPUTE);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre411;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre412;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre413;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre414;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre411 = log10(10000.0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre412 = log10(1.0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre413 = 5 * (_imopVarPre411 - _imopVarPre412);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre414 = floor(_imopVarPre413);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    nbins = (int) _imopVarPre414;
    /*OUT: {
    Reverse<--,>}*/
    memsize = (nbins + 2) * sizeof(long long);
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre417;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre418;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre417 = (nbins + 1) * sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre418 = malloc(_imopVarPre417);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    binb = (float *) _imopVarPre418;
    /*OUT: {
    Reverse<--,>}*/
    if (binb == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 1316_0;>}*/
        fprintf(__stderrp, "Unable to allocate memory\n");
        /*OUT: {
        Reverse<--, 1316_0;>}*/
        /*OUT: {
        Reverse<--, 1316_0;>}*/
        int _imopVarPre420;
        /*OUT: {
        Reverse<--, 1316_0;>}*/
        _imopVarPre420 = -1;
        /*OUT: {
        Reverse<--, 1316_0;>}*/
        exit(_imopVarPre420);
        /*OUT: {
        Reverse<--, 1316_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1331_0;>}*/
    for (k = 0; k < nbins + 1; k++) {
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        double _imopVarPre435;
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        double _imopVarPre436;
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        double _imopVarPre437;
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        double _imopVarPre438;
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        double _imopVarPre439;
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        _imopVarPre435 = log10(1.0);
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        _imopVarPre436 = _imopVarPre435 + k * 1.0 / 5;
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        _imopVarPre437 = pow(10, _imopVarPre436);
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        _imopVarPre438 = _imopVarPre437 / 60.0 * 3.14159265358979323846264338327950288 / 180.0;
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        _imopVarPre439 = cos(_imopVarPre438);
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        /*OUT: {
        Reverse<--, 1331_0;>}*/
        binb[k] = _imopVarPre439;
    }
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    void *_imopVarPre441;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre441 = malloc(memsize);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    DD = (long long *) _imopVarPre441;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    if (DD == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 1373_0; 1331_1;>}*/
        fprintf(__stderrp, "Unable to allocate memory\n");
        /*OUT: {
        Reverse<--, 1373_0; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1373_0; 1331_1;>}*/
        int _imopVarPre443;
        /*OUT: {
        Reverse<--, 1373_0; 1331_1;>}*/
        _imopVarPre443 = -1;
        /*OUT: {
        Reverse<--, 1373_0; 1331_1;>}*/
        exit(_imopVarPre443);
        /*OUT: {
        Reverse<--, 1373_0; 1331_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    unsigned int _imopVarPre445;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre445 = __builtin_object_size(DD, 0);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    __builtin___memset_chk(DD, 0, memsize, _imopVarPre445);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    void *_imopVarPre447;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre447 = malloc(memsize);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    RRS = (long long *) _imopVarPre447;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    if (RRS == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 1409_0; 1331_1;>}*/
        fprintf(__stderrp, "Unable to allocate memory\n");
        /*OUT: {
        Reverse<--, 1409_0; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1409_0; 1331_1;>}*/
        int _imopVarPre449;
        /*OUT: {
        Reverse<--, 1409_0; 1331_1;>}*/
        _imopVarPre449 = -1;
        /*OUT: {
        Reverse<--, 1409_0; 1331_1;>}*/
        exit(_imopVarPre449);
        /*OUT: {
        Reverse<--, 1409_0; 1331_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    unsigned int _imopVarPre451;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre451 = __builtin_object_size(RRS, 0);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    __builtin___memset_chk(RRS, 0, memsize, _imopVarPre451);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    void *_imopVarPre453;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre453 = malloc(memsize);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    DRS = (long long *) _imopVarPre453;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    if (DRS == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 1445_0; 1331_1;>}*/
        fprintf(__stderrp, "Unable to allocate memory\n");
        /*OUT: {
        Reverse<--, 1445_0; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1445_0; 1331_1;>}*/
        int _imopVarPre455;
        /*OUT: {
        Reverse<--, 1445_0; 1331_1;>}*/
        _imopVarPre455 = -1;
        /*OUT: {
        Reverse<--, 1445_0; 1331_1;>}*/
        exit(_imopVarPre455);
        /*OUT: {
        Reverse<--, 1445_0; 1331_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    unsigned int _imopVarPre457;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre457 = __builtin_object_size(DRS, 0);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    __builtin___memset_chk(DRS, 0, memsize, _imopVarPre457);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    unsigned long int _imopVarPre460;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    void *_imopVarPre461;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre460 = args.npoints * sizeof(struct cartesian);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    _imopVarPre461 = malloc(_imopVarPre460);
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    data = (struct cartesian *) _imopVarPre461;
    /*OUT: {
    Reverse<--, 1331_1;>}*/
    if (data == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 1484_0; 1331_1;>}*/
        int _imopVarPre463;
        /*OUT: {
        Reverse<--, 1484_0; 1331_1;>}*/
        _imopVarPre463 = args.npoints;
        /*OUT: {
        Reverse<--, 1484_0; 1331_1;>}*/
        fprintf(__stderrp, "Unable to allocate memory for % data points (#1)\n", _imopVarPre463);
        /*OUT: {
        Reverse<--, 1484_0; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1484_0; 1331_1;>}*/
        return 0;
    }
    /*OUT: {
    Reverse<--, 1484_1; 1331_1;>}*/
    unsigned long int _imopVarPre466;
    /*OUT: {
    Reverse<--, 1484_1; 1331_1;>}*/
    void *_imopVarPre467;
    /*OUT: {
    Reverse<--, 1484_1; 1331_1;>}*/
    _imopVarPre466 = args.npoints * sizeof(struct cartesian);
    /*OUT: {
    Reverse<--, 1484_1; 1331_1;>}*/
    _imopVarPre467 = malloc(_imopVarPre466);
    /*OUT: {
    Reverse<--, 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1484_1; 1331_1;>}*/
    random = (struct cartesian *) _imopVarPre467;
    /*OUT: {
    Reverse<--, 1484_1; 1331_1;>}*/
    if (random == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 1508_0; 1484_1; 1331_1;>}*/
        int _imopVarPre469;
        /*OUT: {
        Reverse<--, 1508_0; 1484_1; 1331_1;>}*/
        _imopVarPre469 = args.npoints;
        /*OUT: {
        Reverse<--, 1508_0; 1484_1; 1331_1;>}*/
        fprintf(__stderrp, "Unable to allocate memory for % data points (#2)\n", _imopVarPre469);
        /*OUT: {
        Reverse<--, 1508_0; 1484_1; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1508_0; 1484_1; 1331_1;>}*/
        return 0;
    }
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    printf("Min distance: %f arcmin\n", 1.0);
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    printf("Max distance: %f arcmin\n", 10000.0);
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    printf("Bins per dec: %i\n", 5);
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    printf("Total bins  : %i\n", nbins);
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    struct pb_TimerSet *_imopVarPre471;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre471 = &timers;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    pb_SwitchToTimer(_imopVarPre471, pb_TimerID_IO);
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    int _imopVarPre474;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    char *_imopVarPre475;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    int _imopVarPre476;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre474 = args.npoints;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre475 = params->inpFiles[0];
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre476 = readdatafile(_imopVarPre475, data, _imopVarPre474);
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    npd = _imopVarPre476;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    struct pb_TimerSet *_imopVarPre478;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre478 = &timers;
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    pb_SwitchToTimer(_imopVarPre478, pb_TimerID_COMPUTE);
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1484_1; 1331_1;>}*/
    if (npd != args.npoints) {
        /*OUT: {
        Reverse<--, 1571_0; 1508_1; 1484_1; 1331_1;>}*/
        int _imopVarPre480;
        /*OUT: {
        Reverse<--, 1571_0; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre480 = args.npoints;
        /*OUT: {
        Reverse<--, 1571_0; 1508_1; 1484_1; 1331_1;>}*/
        fprintf(__stderrp, "Error: read %i data points out of %i\n", npd, _imopVarPre480);
        /*OUT: {
        Reverse<--, 1571_0; 1508_1; 1484_1; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1571_0; 1508_1; 1484_1; 1331_1;>}*/
        return 0;
    }
    /*OUT: {
    Reverse<--, 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    void *_imopVarPre482;
    /*OUT: {
    Reverse<--, 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre482 = ((void *) 0);
    /*OUT: {
    Reverse<--, 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    doCompute(data, npd, _imopVarPre482, 0, 1, DD, nbins, binb);
    /*OUT: {
    Reverse<--, 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1626_1; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    for (rf = 0; rf < args.random_count; rf++) {
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        struct pb_TimerSet *_imopVarPre484;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre484 = &timers;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        pb_SwitchToTimer(_imopVarPre484, pb_TimerID_IO);
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        int _imopVarPre487;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        char *_imopVarPre488;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        int _imopVarPre489;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre487 = args.npoints;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre488 = params->inpFiles[rf + 1];
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre489 = readdatafile(_imopVarPre488, random, _imopVarPre487);
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        npr = _imopVarPre489;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        struct pb_TimerSet *_imopVarPre491;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre491 = &timers;
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        pb_SwitchToTimer(_imopVarPre491, pb_TimerID_COMPUTE);
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        if (npr != args.npoints) {
            /*OUT: {
            Reverse<--, 1626_0; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
            char *_imopVarPre494;
            /*OUT: {
            Reverse<--, 1626_0; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
            int _imopVarPre495;
            /*OUT: {
            Reverse<--, 1626_0; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
            _imopVarPre494 = params->inpFiles[rf + 1];
            /*OUT: {
            Reverse<--, 1626_0; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
            _imopVarPre495 = args.npoints;
            /*OUT: {
            Reverse<--, 1626_0; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
            fprintf(__stderrp, "Error: read %i random points out of %i in file %s\n", npr, _imopVarPre495, _imopVarPre494);
            /*OUT: {
            Reverse<--, 1626_0; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
            /*OUT: {
            Reverse<--, 1626_0; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
            return 0;
        }
        /*OUT: {
        Reverse<--, 1626_1; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        void *_imopVarPre497;
        /*OUT: {
        Reverse<--, 1626_1; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre497 = ((void *) 0);
        /*OUT: {
        Reverse<--, 1626_1; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        doCompute(random, npr, _imopVarPre497, 0, 1, RRS, nbins, binb);
        /*OUT: {
        Reverse<--, 1626_1; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1626_1; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        doCompute(data, npd, random, npr, 0, DRS, nbins, binb);
        /*OUT: {
        Reverse<--, 1626_1; 1592_0; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    char *_imopVarPre502;
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    struct __sFILE *_imopVarPre503;
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre502 = params->outFile;
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre503 = fopen(_imopVarPre502, "w");
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    if ((outfile = _imopVarPre503) == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 1667_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        char *_imopVarPre505;
        /*OUT: {
        Reverse<--, 1667_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre505 = params->outFile;
        /*OUT: {
        Reverse<--, 1667_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        fprintf(__stderrp, "Unable to open output file %s for writing, assuming stdout\n", _imopVarPre505);
        /*OUT: {
        Reverse<--, 1667_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        /*OUT: {
        Reverse<--, 1667_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        outfile = __stdoutp;
    }
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    struct pb_TimerSet *_imopVarPre507;
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre507 = &timers;
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    pb_SwitchToTimer(_imopVarPre507, pb_TimerID_IO);
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    for (k = 1; k < nbins + 1; k++) {
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        signed long long int _imopVarPre511;
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        signed long long int _imopVarPre512;
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        signed long long int _imopVarPre513;
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre511 = RRS[k];
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre512 = DRS[k];
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        _imopVarPre513 = DD[k];
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        fprintf(outfile, "%d\n%d\n%d\n", _imopVarPre513, _imopVarPre512, _imopVarPre511);
        /*OUT: {
        Reverse<--, 1687_0; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    if (outfile != __stdoutp) {
        /*OUT: {
        Reverse<--, 1706_0; 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
        fclose(outfile);
        /*OUT: {
        Reverse<--, 1706_0; 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    free(data);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    free(random);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    free(binb);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    free(DD);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    free(RRS);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    free(DRS);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    struct pb_TimerSet *_imopVarPre515;
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre515 = &timers;
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    pb_SwitchToTimer(_imopVarPre515, pb_TimerID_NONE);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    struct pb_TimerSet *_imopVarPre517;
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    _imopVarPre517 = &timers;
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    pb_PrintTimerSet(_imopVarPre517);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
    pb_FreeParameters(params);
    /*OUT: {
    Reverse<--, 1687_1; 1592_1; 1571_1; 1508_1; 1484_1; 1331_1;>}*/
}
