
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
int fprintf(FILE *restrict , const char *restrict , ...);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*[]*/
void exit(int );
/*[]*/
void *malloc(size_t __size);
/*[]*/
long strtol(const char *__str, char **__endptr , int __base);
/*[]*/
extern void omp_set_num_threads(int );
/*[]*/
extern int omp_get_num_threads(void );
/*[]*/
extern int omp_get_max_threads(void );
/*[]*/
extern int omp_get_thread_num(void );
/*[]*/
int gethostname(char *, size_t );
/*[]*/
typedef __darwin_time_t time_t;
/*[]*/
extern char *suboptarg;
/*[]*/
struct fssearchblock ;
/*[]*/
struct searchstate ;
/*[]*/
int strcmp(const char *__s1, const char *__s2);
/*[]*/
time_t time(time_t *);
/*[]*/
char *ctime_r(const time_t *, char *);
/*[]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*[]*/
extern double ceil(double );
/*[]*/
extern double nearbyint(double );
/*[]*/
long CLOMP_numThreads = -2;
/*[]*/
long CLOMP_allocThreads = -2;
/*[]*/
long CLOMP_numParts = -1;
/*[]*/
long CLOMP_zonesPerPart = -1;
/*[]*/
long CLOMP_flopScale = -1;
/*[]*/
long CLOMP_timeScale = -1;
/*[]*/
long CLOMP_zoneSize = -1;
/*[]*/
char *CLOMP_exe_name = ((void *) 0);
/*[]*/
struct _Zone {
    long zoneId;
    long partId;
    double value;
    struct _Zone *nextZone;
} ;
/*[]*/
typedef struct _Zone Zone;
/*[]*/
struct _Part {
    long partId;
    long zoneCount;
    long update_count;
    Zone *firstZone;
    Zone *lastZone;
    double deposit_ratio;
    double residue;
    double expected_first_value;
    double expected_residue;
} ;
/*[]*/
typedef struct _Part Part;
/*[]*/
Part **partArray = ((void *) 0);
/*[]*/
double CLOMP_partRatio = 0.0;
/*[]*/
long CLOMP_num_iterations = 0.0;
/*[]*/
double CLOMP_max_residue = 0.0;
/*[]*/
void print_usage() {
/*[]*/
    /*[]*/
    fprintf(__stderrp, "Usage: %s numThreads allocThreads numParts \\\n" "           zonesPerPart zoneSize flopScale timeScale\n", CLOMP_exe_name);
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  numThreads: Number of OpenMP threads to use (-1 for system default)\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  allocThreads: #threads when allocating data (-1 for numThreads)\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  numParts: Number of independent pieces of work (loop iterations)\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  zonesPerPart: Number of zones in the first part (3 flops/zone/part)\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  zoneSize: Bytes in zone, only first ~32 used (512 nominal, >= 32 valid)\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  flopScale: Scales flops/zone to increase memory reuse (1 nominal, >=1 Valid)\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  timeScale: Scales target time per test (10-100 nominal, 1-10000 Valid)\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "Some interesting testcases (last number controls run time):\n");
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "           Target input:    %s -1 1 64 100 32 1 100\n", CLOMP_exe_name);
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "   Target/NUMA friendly:    %s -1 -1 64 100 32 1 100\n", CLOMP_exe_name);
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "         Cache friendly:    %s -1 1 64 1 32 100 100\n", CLOMP_exe_name);
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "  Cache/OpenMP friendly:    %s -1 1 64 1 32 1000 100\n", CLOMP_exe_name);
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "        Mem-bound input:    %s -1 1 64 10000 512 1 100\n", CLOMP_exe_name);
    /*[]*/
    /*[]*/
    fprintf(__stderrp, "Mem-bound/NUMA friendly:    %s -1 -1 64 10000 512 1 100\n", CLOMP_exe_name);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
long convert_to_positive_long(const char *parm_name, const char *parm_val) {
/*[]*/
    /*[]*/
    long val;
    /*[]*/
    char *endPtr;
    /*[]*/
    int _imopVarPre142;
    /*[]*/
    _imopVarPre142 = (parm_name == ((void *) 0));
    /*[]*/
    /*[]*/
    if (!_imopVarPre142) {
    /*[]*/
        /*[]*/
        _imopVarPre142 = (parm_val == ((void *) 0));
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre142) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "Error in convert_to_positive_long: Passed NULL pointers!\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    char **_imopVarPre144;
    /*[]*/
    signed long int _imopVarPre145;
    /*[]*/
    _imopVarPre144 = &endPtr;
    /*[]*/
    _imopVarPre145 = strtol(parm_val, _imopVarPre144, 0);
    /*[]*/
    /*[]*/
    val = _imopVarPre145;
    /*[]*/
    /*[]*/
    if (endPtr[0] != 0) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "Error converting '%s' parameter value '%s' to long at '%s'!\n", parm_name, parm_val, endPtr);
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    int _imopVarPre147;
    /*[]*/
    int _imopVarPre148;
    /*[]*/
    int _imopVarPre152;
    /*[]*/
    _imopVarPre147 = strcmp(parm_name, "numThreads");
    /*[]*/
    /*[]*/
    _imopVarPre148 = (_imopVarPre147 == 0);
    /*[]*/
    /*[]*/
    if (!_imopVarPre148) {
    /*[]*/
        /*[]*/
        _imopVarPre152 = strcmp(parm_name, "allocThreads");
        /*[]*/
        /*[]*/
        _imopVarPre148 = (_imopVarPre152 == 0);
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre148) {
    /*[]*/
        /*[]*/
        int _imopVarPre154;
        /*[]*/
        _imopVarPre154 = (val < 1);
        /*[]*/
        /*[]*/
        if (_imopVarPre154) {
        /*[]*/
            /*[]*/
            _imopVarPre154 = (val != -1);
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre154) {
        /*[]*/
            /*[]*/
            fprintf(__stderrp, "Invalid value %ld for parameter %s, must be > 0 or -1!\n", val, parm_name);
            /*[]*/
            /*[]*/
            print_usage();
            /*[]*/
            /*[]*/
            exit(1);
            /*[]*/
        }
    } else {
    /*[]*/
        /*[]*/
        /*[]*/
        if (val < 1) {
        /*[]*/
            /*[]*/
            fprintf(__stderrp, "Invalid value %ld for parameter %s, must be > 0\n", val, parm_name);
            /*[]*/
            /*[]*/
            print_usage();
            /*[]*/
            /*[]*/
            exit(1);
            /*[]*/
        }
    }
    /*[]*/
    return val;
}
/*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
/*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
/*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
void update_part(Part *part, double incoming_deposit) {
/*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    Zone *zone;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    double deposit_ratio;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    double remaining_deposit;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    double deposit;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    long scale_count;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    part->update_count++;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    deposit_ratio = part->deposit_ratio;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    remaining_deposit = incoming_deposit;
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    if (CLOMP_flopScale == 1) {
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        for (zone = part->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            deposit = remaining_deposit * deposit_ratio;
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            zone->value += deposit;
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            remaining_deposit -= deposit;
        }
    } else {
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
        for (zone = part->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
            for (scale_count = 0; scale_count < CLOMP_flopScale; scale_count++) {
            /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
                /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
                deposit = remaining_deposit * deposit_ratio;
                /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
                zone->value += deposit;
                /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
                remaining_deposit -= deposit;
            }
        }
    }
    /*[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]*/
    part->residue = remaining_deposit;
}
/*[]*/
void reinitialize_parts() {
/*[]*/
    /*[]*/
    long pidx;
    /*[]*/
    Zone *zone;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (zone = partArray[pidx]->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*[]*/
            /*[]*/
            zone->value = 0.0;
        }
        /*[]*/
        partArray[pidx]->residue = 0.0;
        /*[]*/
        partArray[pidx]->update_count = 0;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre156;
        /*[]*/
        _imopVarPre156 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre156, 0.0);
        /*[]*/
    }
}
/*[]*/
/*[]*/
void print_start_message(const char *desc) {
/*[]*/
    /*[]*/
    time_t starttime;
    /*[]*/
    char startdate[50];
    /*[]*/
    signed long int *_imopVarPre158;
    /*[]*/
    _imopVarPre158 = &starttime;
    /*[]*/
    time(_imopVarPre158);
    /*[]*/
    /*[]*/
    signed long int *_imopVarPre160;
    /*[]*/
    _imopVarPre160 = &starttime;
    /*[]*/
    ctime_r(_imopVarPre160, startdate);
    /*[]*/
    /*[]*/
    printf("%13s  Started: %s", desc, startdate);
    /*[]*/
    /*[]*/
    int _imopVarPre162;
    /*[]*/
    _imopVarPre162 = strcmp(desc, "calc_deposit");
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre162 != 0) {
    /*[]*/
        /*[]*/
        int _imopVarPre164;
        /*[]*/
        _imopVarPre164 = strcmp(desc, "Serial Ref");
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre164 != 0) {
        /*[]*/
            /*[]*/
            int _imopVarPre166;
            /*[]*/
            _imopVarPre166 = omp_get_max_threads();
            /*[]*/
            /*[]*/
            printf("%13s #Threads: %d\n", desc, _imopVarPre166);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf("%13s #Threads: N/A\n", desc);
            /*[]*/
        }
    }
}
/*[]*/
/*[]*/
void get_timestamp(struct timeval *ts) {
/*[]*/
    /*[]*/
    void *_imopVarPre169;
    /*[]*/
    int _imopVarPre170;
    /*[]*/
    _imopVarPre169 = ((void *) 0);
    /*[]*/
    _imopVarPre170 = gettimeofday(ts, _imopVarPre169);
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre170 != 0) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "Unable to get time of day, exiting\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
}
/*[]*/
/*[]*/
/*[]*/
void print_pseudocode(const char *desc, const char *pseudocode) {
/*[]*/
    /*[]*/
    printf("%13s:| %s\n", desc, pseudocode);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
double print_timestats(const char *desc, struct timeval *start_ts , struct timeval *end_ts , double base_seconds , double bestcase_seconds) {
/*[]*/
    /*[]*/
    double seconds;
    /*[]*/
    seconds = ((double) end_ts->tv_sec + ((double) end_ts->tv_usec * 1e-6)) - ((double) start_ts->tv_sec + ((double) start_ts->tv_usec * 1e-6));
    /*[]*/
    printf("%13s  Runtime: %g (wallclock, in seconds)\n", desc, seconds);
    /*[]*/
    /*[]*/
    double _imopVarPre172;
    /*[]*/
    _imopVarPre172 = (seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
    /*[]*/
    printf("%13s  us/Loop: %g (wallclock, in microseconds)\n", desc, _imopVarPre172);
    /*[]*/
    /*[]*/
    int _imopVarPre174;
    /*[]*/
    _imopVarPre174 = (base_seconds > 0.0);
    /*[]*/
    /*[]*/
    if (_imopVarPre174) {
    /*[]*/
        /*[]*/
        _imopVarPre174 = (seconds > 0.0);
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre174) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (base_seconds > seconds) {
        /*[]*/
            /*[]*/
            double _imopVarPre176;
            /*[]*/
            _imopVarPre176 = base_seconds / seconds;
            /*[]*/
            printf("%13s  Speedup: %.2f\n", desc, _imopVarPre176);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            double _imopVarPre179;
            /*[]*/
            double _imopVarPre180;
            /*[]*/
            _imopVarPre179 = seconds / base_seconds;
            /*[]*/
            _imopVarPre180 = base_seconds / seconds;
            /*[]*/
            printf("%13s  Speedup: %.2f (%.2fX slowdown)\n", desc, _imopVarPre180, _imopVarPre179);
            /*[]*/
        }
    }
    /*[]*/
    int _imopVarPre182;
    /*[]*/
    _imopVarPre182 = (bestcase_seconds > 0.0);
    /*[]*/
    /*[]*/
    if (_imopVarPre182) {
    /*[]*/
        /*[]*/
        _imopVarPre182 = (seconds > 0.0);
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre182) {
    /*[]*/
        /*[]*/
        double _imopVarPre185;
        /*[]*/
        double _imopVarPre186;
        /*[]*/
        _imopVarPre185 = (bestcase_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
        /*[]*/
        _imopVarPre186 = (bestcase_seconds / seconds) * 100.0;
        /*[]*/
        printf("%13s Efficacy: %.2f%% (of bestcase %g us/Loop)\n", desc, _imopVarPre186, _imopVarPre185);
        /*[]*/
        /*[]*/
        double _imopVarPre188;
        /*[]*/
        _imopVarPre188 = ((seconds - bestcase_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
        /*[]*/
        printf("%13s Overhead: %g (versus bestcase, in us/Loop)\n", desc, _imopVarPre188);
        /*[]*/
    }
    /*[]*/
    printf("---------------------\n");
    /*[]*/
    /*[]*/
    return seconds;
}
/*[]*/
/*[]*/
void print_data_stats(const char *desc) {
/*[]*/
    /*[]*/
    double value_sum;
    /*[]*/
    double residue_sum;
    /*[]*/
    double last_value;
    /*[]*/
    double dtotal;
    /*[]*/
    long pidx;
    /*[]*/
    Zone *zone;
    /*[]*/
    int is_reference;
    /*[]*/
    int error_count;
    /*[]*/
    value_sum = 0.0;
    /*[]*/
    residue_sum = 0.0;
    /*[]*/
    int _imopVarPre190;
    /*[]*/
    _imopVarPre190 = strcmp(desc, "Serial Ref");
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre190 == 0) {
    /*[]*/
        /*[]*/
        is_reference = 1;
    } else {
    /*[]*/
        /*[]*/
        is_reference = 0;
    }
    /*[]*/
    error_count = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (is_reference) {
        /*[]*/
            /*[]*/
            partArray[pidx]->expected_first_value = partArray[pidx]->firstZone->value;
            /*[]*/
            partArray[pidx]->expected_residue = partArray[pidx]->residue;
        } else {
        /*[]*/
            /*[]*/
            /*[]*/
            if (partArray[pidx]->expected_first_value != partArray[pidx]->firstZone->value) {
            /*[]*/
                /*[]*/
                error_count++;
                /*[]*/
                double _imopVarPre194;
                /*[]*/
                double _imopVarPre195;
                /*[]*/
                int _imopVarPre196;
                /*[]*/
                _imopVarPre194 = partArray[pidx]->expected_first_value;
                /*[]*/
                _imopVarPre195 = partArray[pidx]->firstZone->value;
                /*[]*/
                _imopVarPre196 = (int) pidx;
                /*[]*/
                fprintf(__stderrp, "%s check failure: part %i first zone value (%g) != reference value (%g)!\n", desc, _imopVarPre196, _imopVarPre195, _imopVarPre194);
                /*[]*/
            }
            /*[]*/
            /*[]*/
            if (partArray[pidx]->expected_residue != partArray[pidx]->residue) {
            /*[]*/
                /*[]*/
                error_count++;
                /*[]*/
                double _imopVarPre200;
                /*[]*/
                double _imopVarPre201;
                /*[]*/
                int _imopVarPre202;
                /*[]*/
                _imopVarPre200 = partArray[pidx]->expected_residue;
                /*[]*/
                _imopVarPre201 = partArray[pidx]->residue;
                /*[]*/
                _imopVarPre202 = (int) pidx;
                /*[]*/
                fprintf(__stderrp, "%s check failure: part %i residue (%g) != reference residue (%g)!\n", desc, _imopVarPre202, _imopVarPre201, _imopVarPre200);
                /*[]*/
            }
        }
        /*[]*/
        last_value = partArray[pidx]->firstZone->value;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (zone = partArray[pidx]->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*[]*/
            /*[]*/
            /*[]*/
            if (zone->value > last_value) {
            /*[]*/
                /*[]*/
                double _imopVarPre206;
                /*[]*/
                int _imopVarPre207;
                /*[]*/
                int _imopVarPre208;
                /*[]*/
                _imopVarPre206 = zone->value;
                /*[]*/
                _imopVarPre207 = (int) zone->zoneId;
                /*[]*/
                _imopVarPre208 = (int) zone->partId;
                /*[]*/
                fprintf(__stderrp, "*** %s check failure (part %i zone %i): " "previous (%g) < current (%g)!\n", desc, _imopVarPre208, _imopVarPre207, last_value, _imopVarPre206);
                /*[]*/
                /*[]*/
                error_count++;
            }
            /*[]*/
            value_sum += zone->value;
            /*[]*/
            last_value = zone->value;
        }
        /*[]*/
        residue_sum += partArray[pidx]->residue;
    }
    /*[]*/
    dtotal = value_sum + residue_sum;
    /*[]*/
    int _imopVarPre209;
    /*[]*/
    _imopVarPre209 = ((dtotal + 0.00001) < ((double) CLOMP_num_iterations * 10.0));
    /*[]*/
    /*[]*/
    if (!_imopVarPre209) {
    /*[]*/
        /*[]*/
        _imopVarPre209 = ((dtotal - 0.00001) > ((double) CLOMP_num_iterations * 10.0));
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre209) {
    /*[]*/
        /*[]*/
        double _imopVarPre211;
        /*[]*/
        _imopVarPre211 = ((double) CLOMP_num_iterations * 10.0);
        /*[]*/
        fprintf(__stderrp, "*** %s check failure:  Total (%-.15g) != Expected (%.15g)\n", desc, dtotal, _imopVarPre211);
        /*[]*/
        /*[]*/
        error_count++;
    }
    /*[]*/
    int _imopVarPre212;
    /*[]*/
    _imopVarPre212 = (residue_sum < 0.0);
    /*[]*/
    /*[]*/
    if (!_imopVarPre212) {
    /*[]*/
        /*[]*/
        _imopVarPre212 = (residue_sum > (CLOMP_max_residue + 0.000001));
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre212) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "*** %s check failure: Residue (%-.15g) outside bounds 0 - %.15g\n", desc, residue_sum, CLOMP_max_residue);
        /*[]*/
        /*[]*/
        error_count++;
    }
    /*[]*/
    /*[]*/
    if (partArray[0]->update_count != 1) {
    /*[]*/
        /*[]*/
        int _imopVarPre214;
        /*[]*/
        _imopVarPre214 = (int) partArray[0]->update_count;
        /*[]*/
        fprintf(__stderrp, "Error in calc_deposit: Part updated %i times since last calc_deposit!\n", _imopVarPre214);
        /*[]*/
        /*[]*/
        fprintf(__stderrp, "Benchmark designed to have calc_deposit called exactly once per update!\n");
        /*[]*/
        /*[]*/
        fprintf(__stderrp, "Critical error: Exiting...\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (error_count > 0) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "ERROR: %i check failures detected in '%s' data. Exiting...\n", error_count, desc);
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    printf("%13s Checksum: Sum=%-8.8g Residue=%-8.8g Total=%-.9g\n", desc, value_sum, residue_sum, dtotal);
    /*[]*/
}
/*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
double calc_deposit() {
/*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    double residue;
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    double deposit;
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    long pidx;
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    if (partArray[0]->update_count != 1) {
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        int _imopVarPre216;
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        _imopVarPre216 = (int) partArray[0]->update_count;
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        fprintf(__stderrp, "Error in calc_deposit: Part updated %i times since last call!\n", _imopVarPre216);
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        fprintf(__stderrp, "Benchmark designed to have calc_deposit called exactly once per update!\n");
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        fprintf(__stderrp, "Critical error: Exiting...\n");
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        exit(1);
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    }
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    partArray[0]->update_count = 0;
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    residue = 0.0;
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
        residue += partArray[pidx]->residue;
    }
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    deposit = (1.0 + residue) * CLOMP_partRatio;
    /*[32, 33, 34, 35, 36, 37, 38, 39, 40, 41]*/
    return deposit;
}
/*[]*/
void do_calc_deposit_only() {
/*[]*/
    /*[]*/
    long iteration;
    /*[]*/
    long subcycle;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (subcycle = 0; subcycle < 10; subcycle++) {
        /*[]*/
            /*[]*/
            partArray[0]->update_count = 1;
            /*[]*/
            double _imopVarPre217;
            /*[]*/
            _imopVarPre217 = calc_deposit();
            /*[]*/
            /*[]*/
            partArray[0]->firstZone->value = _imopVarPre217;
        }
    }
}
/*[]*/
/*[]*/
void do_omp_barrier_only(long num_iterations) {
/*[]*/
    /*[42]*/
#pragma omp parallel
    {
    /*[42]*/
        /*[42]*/
        long iteration;
        /*[42]*/
        long subcycle;
        /*[42]*/
        /*[42, 43]*/
        /*[42, 43]*/
        /*[42]*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
        /*[42, 43]*/
            /*[42, 43]*/
            /*[42, 43]*/
            /*[43]*/
            /*[42, 43]*/
            for (subcycle = 0; subcycle < 10; subcycle++) {
            /*[42, 43]*/
                /*[42, 43]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[42, 43]*/
#pragma omp barrier
            }
        }
    }
}
/*[]*/
void serial_ref_module1() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre219;
        /*[]*/
        _imopVarPre219 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre219, deposit);
        /*[]*/
    }
}
/*[]*/
void serial_ref_module2() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre221;
        /*[]*/
        _imopVarPre221 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre221, deposit);
        /*[]*/
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre223;
        /*[]*/
        _imopVarPre223 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre223, deposit);
        /*[]*/
    }
}
/*[]*/
void serial_ref_module3() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre225;
        /*[]*/
        _imopVarPre225 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre225, deposit);
        /*[]*/
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre227;
        /*[]*/
        _imopVarPre227 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre227, deposit);
        /*[]*/
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre229;
        /*[]*/
        _imopVarPre229 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre229, deposit);
        /*[]*/
    }
}
/*[]*/
void serial_ref_module4() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre231;
        /*[]*/
        _imopVarPre231 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre231, deposit);
        /*[]*/
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre233;
        /*[]*/
        _imopVarPre233 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre233, deposit);
        /*[]*/
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre235;
        /*[]*/
        _imopVarPre235 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre235, deposit);
        /*[]*/
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre237;
        /*[]*/
        _imopVarPre237 = partArray[pidx];
        /*[]*/
        update_part(_imopVarPre237, deposit);
        /*[]*/
    }
}
/*[]*/
void serial_ref_cycle() {
/*[]*/
    /*[]*/
    serial_ref_module1();
    /*[]*/
    /*[]*/
    serial_ref_module2();
    /*[]*/
    /*[]*/
    serial_ref_module3();
    /*[]*/
    /*[]*/
    serial_ref_module4();
    /*[]*/
}
/*[]*/
void do_serial_ref_version() {
/*[]*/
    /*[]*/
    long iteration;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*[]*/
        /*[]*/
        serial_ref_cycle();
        /*[]*/
    }
}
/*[]*/
void static_omp_module1() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[17]*/
#pragma omp parallel private(pidx)
    {
    /*[17]*/
        /*[17]*/
#pragma omp for schedule(static) nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[17]*/
            /*[17]*/
            struct _Part *_imopVarPre239;
            /*[17]*/
            _imopVarPre239 = partArray[pidx];
            /*[17]*/
            update_part(_imopVarPre239, deposit);
            /*[17]*/
        }
        /*[17]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[17]*/
#pragma omp barrier
    }
}
/*[]*/
void static_omp_module2() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[18]*/
#pragma omp parallel private(pidx)
    {
    /*[18]*/
        /*[18]*/
#pragma omp for schedule(static) nowait
        /*[18]*/
        /*[18]*/
        /*[18]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[18]*/
            /*[18]*/
            struct _Part *_imopVarPre241;
            /*[18]*/
            _imopVarPre241 = partArray[pidx];
            /*[18]*/
            update_part(_imopVarPre241, deposit);
            /*[18]*/
        }
        /*[18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[18]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[19]*/
#pragma omp parallel private(pidx)
    {
    /*[19]*/
        /*[19]*/
#pragma omp for schedule(static) nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[19]*/
            /*[19]*/
            struct _Part *_imopVarPre243;
            /*[19]*/
            _imopVarPre243 = partArray[pidx];
            /*[19]*/
            update_part(_imopVarPre243, deposit);
            /*[19]*/
        }
        /*[19]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[19]*/
#pragma omp barrier
    }
}
/*[]*/
void static_omp_module3() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[20]*/
#pragma omp parallel private(pidx)
    {
    /*[20]*/
        /*[20]*/
#pragma omp for schedule(static) nowait
        /*[20]*/
        /*[20]*/
        /*[20]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[20]*/
            /*[20]*/
            struct _Part *_imopVarPre245;
            /*[20]*/
            _imopVarPre245 = partArray[pidx];
            /*[20]*/
            update_part(_imopVarPre245, deposit);
            /*[20]*/
        }
        /*[20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[20]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[21]*/
#pragma omp parallel private(pidx)
    {
    /*[21]*/
        /*[21]*/
#pragma omp for schedule(static) nowait
        /*[21]*/
        /*[21]*/
        /*[21]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[21]*/
            /*[21]*/
            struct _Part *_imopVarPre247;
            /*[21]*/
            _imopVarPre247 = partArray[pidx];
            /*[21]*/
            update_part(_imopVarPre247, deposit);
            /*[21]*/
        }
        /*[21]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[21]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[22]*/
#pragma omp parallel private(pidx)
    {
    /*[22]*/
        /*[22]*/
#pragma omp for schedule(static) nowait
        /*[22]*/
        /*[22]*/
        /*[22]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[22]*/
            /*[22]*/
            struct _Part *_imopVarPre249;
            /*[22]*/
            _imopVarPre249 = partArray[pidx];
            /*[22]*/
            update_part(_imopVarPre249, deposit);
            /*[22]*/
        }
        /*[22]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[22]*/
#pragma omp barrier
    }
}
/*[]*/
void static_omp_module4() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[23]*/
#pragma omp parallel private(pidx)
    {
    /*[23]*/
        /*[23]*/
#pragma omp for schedule(static) nowait
        /*[23]*/
        /*[23]*/
        /*[23]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[23]*/
            /*[23]*/
            struct _Part *_imopVarPre251;
            /*[23]*/
            _imopVarPre251 = partArray[pidx];
            /*[23]*/
            update_part(_imopVarPre251, deposit);
            /*[23]*/
        }
        /*[23]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[23]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[24]*/
#pragma omp parallel private(pidx)
    {
    /*[24]*/
        /*[24]*/
#pragma omp for schedule(static) nowait
        /*[24]*/
        /*[24]*/
        /*[24]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[24]*/
            /*[24]*/
            struct _Part *_imopVarPre253;
            /*[24]*/
            _imopVarPre253 = partArray[pidx];
            /*[24]*/
            update_part(_imopVarPre253, deposit);
            /*[24]*/
        }
        /*[24]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[24]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[25]*/
#pragma omp parallel private(pidx)
    {
    /*[25]*/
        /*[25]*/
#pragma omp for schedule(static) nowait
        /*[25]*/
        /*[25]*/
        /*[25]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[25]*/
            /*[25]*/
            struct _Part *_imopVarPre255;
            /*[25]*/
            _imopVarPre255 = partArray[pidx];
            /*[25]*/
            update_part(_imopVarPre255, deposit);
            /*[25]*/
        }
        /*[25]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[25]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[26]*/
#pragma omp parallel private(pidx)
    {
    /*[26]*/
        /*[26]*/
#pragma omp for schedule(static) nowait
        /*[26]*/
        /*[26]*/
        /*[26]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[26]*/
            /*[26]*/
            struct _Part *_imopVarPre257;
            /*[26]*/
            _imopVarPre257 = partArray[pidx];
            /*[26]*/
            update_part(_imopVarPre257, deposit);
            /*[26]*/
        }
        /*[26]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[26]*/
#pragma omp barrier
    }
}
/*[]*/
void static_omp_cycle() {
/*[]*/
    /*[]*/
    static_omp_module1();
    /*[]*/
    /*[]*/
    static_omp_module2();
    /*[]*/
    /*[]*/
    static_omp_module3();
    /*[]*/
    /*[]*/
    static_omp_module4();
    /*[]*/
}
/*[]*/
void do_static_omp_version() {
/*[]*/
    /*[]*/
    long iteration;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*[]*/
        /*[]*/
        static_omp_cycle();
        /*[]*/
    }
}
/*[]*/
void dynamic_omp_module1() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[27]*/
#pragma omp parallel private(pidx)
    {
    /*[27]*/
        /*[27]*/
#pragma omp for schedule(dynamic) nowait
        /*[27]*/
        /*[27]*/
        /*[27]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[27]*/
            /*[27]*/
            struct _Part *_imopVarPre259;
            /*[27]*/
            _imopVarPre259 = partArray[pidx];
            /*[27]*/
            update_part(_imopVarPre259, deposit);
            /*[27]*/
        }
        /*[27]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[27]*/
#pragma omp barrier
    }
}
/*[]*/
void dynamic_omp_module2() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[28]*/
#pragma omp parallel private(pidx)
    {
    /*[28]*/
        /*[28]*/
#pragma omp for schedule(dynamic) nowait
        /*[28]*/
        /*[28]*/
        /*[28]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[28]*/
            /*[28]*/
            struct _Part *_imopVarPre261;
            /*[28]*/
            _imopVarPre261 = partArray[pidx];
            /*[28]*/
            update_part(_imopVarPre261, deposit);
            /*[28]*/
        }
        /*[28]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[28]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[29]*/
#pragma omp parallel private(pidx)
    {
    /*[29]*/
        /*[29]*/
#pragma omp for schedule(dynamic) nowait
        /*[29]*/
        /*[29]*/
        /*[29]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[29]*/
            /*[29]*/
            struct _Part *_imopVarPre263;
            /*[29]*/
            _imopVarPre263 = partArray[pidx];
            /*[29]*/
            update_part(_imopVarPre263, deposit);
            /*[29]*/
        }
        /*[29]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[29]*/
#pragma omp barrier
    }
}
/*[]*/
void dynamic_omp_module3() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[30]*/
#pragma omp parallel private(pidx)
    {
    /*[30]*/
        /*[30]*/
#pragma omp for schedule(dynamic) nowait
        /*[30]*/
        /*[30]*/
        /*[30]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[30]*/
            /*[30]*/
            struct _Part *_imopVarPre265;
            /*[30]*/
            _imopVarPre265 = partArray[pidx];
            /*[30]*/
            update_part(_imopVarPre265, deposit);
            /*[30]*/
        }
        /*[30]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[30]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[31]*/
#pragma omp parallel private(pidx)
    {
    /*[31]*/
        /*[31]*/
#pragma omp for schedule(dynamic) nowait
        /*[31]*/
        /*[31]*/
        /*[31]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[31]*/
            /*[31]*/
            struct _Part *_imopVarPre267;
            /*[31]*/
            _imopVarPre267 = partArray[pidx];
            /*[31]*/
            update_part(_imopVarPre267, deposit);
            /*[31]*/
        }
        /*[31]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[31]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[1]*/
#pragma omp parallel private(pidx)
    {
    /*[1]*/
        /*[1]*/
#pragma omp for schedule(dynamic) nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[1]*/
            /*[1]*/
            struct _Part *_imopVarPre269;
            /*[1]*/
            _imopVarPre269 = partArray[pidx];
            /*[1]*/
            update_part(_imopVarPre269, deposit);
            /*[1]*/
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
    }
}
/*[]*/
void dynamic_omp_module4() {
/*[]*/
    /*[]*/
    double deposit;
    /*[]*/
    long pidx;
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[2]*/
#pragma omp parallel private(pidx)
    {
    /*[2]*/
        /*[2]*/
#pragma omp for schedule(dynamic) nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[2]*/
            /*[2]*/
            struct _Part *_imopVarPre271;
            /*[2]*/
            _imopVarPre271 = partArray[pidx];
            /*[2]*/
            update_part(_imopVarPre271, deposit);
            /*[2]*/
        }
        /*[2]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[3]*/
#pragma omp parallel private(pidx)
    {
    /*[3]*/
        /*[3]*/
#pragma omp for schedule(dynamic) nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[3]*/
            /*[3]*/
            struct _Part *_imopVarPre273;
            /*[3]*/
            _imopVarPre273 = partArray[pidx];
            /*[3]*/
            update_part(_imopVarPre273, deposit);
            /*[3]*/
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[4]*/
#pragma omp parallel private(pidx)
    {
    /*[4]*/
        /*[4]*/
#pragma omp for schedule(dynamic) nowait
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[4]*/
            /*[4]*/
            struct _Part *_imopVarPre275;
            /*[4]*/
            _imopVarPre275 = partArray[pidx];
            /*[4]*/
            update_part(_imopVarPre275, deposit);
            /*[4]*/
        }
        /*[4]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4]*/
#pragma omp barrier
    }
    /*[]*/
    deposit = calc_deposit();
    /*[]*/
    /*[5]*/
#pragma omp parallel private(pidx)
    {
    /*[5]*/
        /*[5]*/
#pragma omp for schedule(dynamic) nowait
        /*[5]*/
        /*[5]*/
        /*[5]*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*[5]*/
            /*[5]*/
            struct _Part *_imopVarPre277;
            /*[5]*/
            _imopVarPre277 = partArray[pidx];
            /*[5]*/
            update_part(_imopVarPre277, deposit);
            /*[5]*/
        }
        /*[5]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[5]*/
#pragma omp barrier
    }
}
/*[]*/
void dynamic_omp_cycle() {
/*[]*/
    /*[]*/
    dynamic_omp_module1();
    /*[]*/
    /*[]*/
    dynamic_omp_module2();
    /*[]*/
    /*[]*/
    dynamic_omp_module3();
    /*[]*/
    /*[]*/
    dynamic_omp_module4();
    /*[]*/
}
/*[]*/
void do_dynamic_omp_version() {
/*[]*/
    /*[]*/
    long iteration;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*[]*/
        /*[]*/
        dynamic_omp_cycle();
        /*[]*/
    }
}
/*[15, 64]*/
/*[15, 64]*/
/*[15, 64]*/
void manual_omp_module1(int startPidx, int endPidx) {
/*[15, 64]*/
    /*[15, 64]*/
    static double deposit;
    /*[15, 64]*/
    long pidx;
    /*[15, 64]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[15, 64]*/
#pragma omp barrier
    /*[37]*/
#pragma omp single nowait
    {
    /*[37]*/
        /*[37]*/
        deposit = calc_deposit();
        /*[37]*/
    }
    /*[37]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[37]*/
#pragma omp barrier
    /*[6]*/
    /*[6]*/
    /*[6]*/
    /*[6]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[6]*/
        /*[6]*/
        struct _Part *_imopVarPre279;
        /*[6]*/
        _imopVarPre279 = partArray[pidx];
        /*[6]*/
        update_part(_imopVarPre279, deposit);
        /*[6]*/
    }
}
/*[6]*/
/*[6]*/
/*[6]*/
void manual_omp_module2(int startPidx, int endPidx) {
/*[6]*/
    /*[6]*/
    static double deposit;
    /*[6]*/
    long pidx;
    /*[6]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[6]*/
#pragma omp barrier
    /*[39]*/
#pragma omp single nowait
    {
    /*[39]*/
        /*[39]*/
        deposit = calc_deposit();
        /*[39]*/
    }
    /*[39]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[39]*/
#pragma omp barrier
    /*[7]*/
    /*[7]*/
    /*[7]*/
    /*[7]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[7]*/
        /*[7]*/
        struct _Part *_imopVarPre281;
        /*[7]*/
        _imopVarPre281 = partArray[pidx];
        /*[7]*/
        update_part(_imopVarPre281, deposit);
        /*[7]*/
    }
    /*[7]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[7]*/
#pragma omp barrier
    /*[41]*/
#pragma omp single nowait
    {
    /*[41]*/
        /*[41]*/
        deposit = calc_deposit();
        /*[41]*/
    }
    /*[41]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[41]*/
#pragma omp barrier
    /*[8]*/
    /*[8]*/
    /*[8]*/
    /*[8]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[8]*/
        /*[8]*/
        struct _Part *_imopVarPre283;
        /*[8]*/
        _imopVarPre283 = partArray[pidx];
        /*[8]*/
        update_part(_imopVarPre283, deposit);
        /*[8]*/
    }
}
/*[8]*/
/*[8]*/
/*[8]*/
void manual_omp_module3(int startPidx, int endPidx) {
/*[8]*/
    /*[8]*/
    static double deposit;
    /*[8]*/
    long pidx;
    /*[8]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[8]*/
#pragma omp barrier
    /*[32]*/
#pragma omp single nowait
    {
    /*[32]*/
        /*[32]*/
        deposit = calc_deposit();
        /*[32]*/
    }
    /*[32]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[32]*/
#pragma omp barrier
    /*[9]*/
    /*[9]*/
    /*[9]*/
    /*[9]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[9]*/
        /*[9]*/
        struct _Part *_imopVarPre285;
        /*[9]*/
        _imopVarPre285 = partArray[pidx];
        /*[9]*/
        update_part(_imopVarPre285, deposit);
        /*[9]*/
    }
    /*[9]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[9]*/
#pragma omp barrier
    /*[33]*/
#pragma omp single nowait
    {
    /*[33]*/
        /*[33]*/
        deposit = calc_deposit();
        /*[33]*/
    }
    /*[33]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[33]*/
#pragma omp barrier
    /*[10]*/
    /*[10]*/
    /*[10]*/
    /*[10]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[10]*/
        /*[10]*/
        struct _Part *_imopVarPre287;
        /*[10]*/
        _imopVarPre287 = partArray[pidx];
        /*[10]*/
        update_part(_imopVarPre287, deposit);
        /*[10]*/
    }
    /*[10]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[10]*/
#pragma omp barrier
    /*[34]*/
#pragma omp single nowait
    {
    /*[34]*/
        /*[34]*/
        deposit = calc_deposit();
        /*[34]*/
    }
    /*[34]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[34]*/
#pragma omp barrier
    /*[11]*/
    /*[11]*/
    /*[11]*/
    /*[11]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[11]*/
        /*[11]*/
        struct _Part *_imopVarPre289;
        /*[11]*/
        _imopVarPre289 = partArray[pidx];
        /*[11]*/
        update_part(_imopVarPre289, deposit);
        /*[11]*/
    }
}
/*[11]*/
/*[11]*/
/*[11]*/
void manual_omp_module4(int startPidx, int endPidx) {
/*[11]*/
    /*[11]*/
    static double deposit;
    /*[11]*/
    long pidx;
    /*[11]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[11]*/
#pragma omp barrier
    /*[35]*/
#pragma omp single nowait
    {
    /*[35]*/
        /*[35]*/
        deposit = calc_deposit();
        /*[35]*/
    }
    /*[35]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[35]*/
#pragma omp barrier
    /*[12]*/
    /*[12]*/
    /*[12]*/
    /*[12]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[12]*/
        /*[12]*/
        struct _Part *_imopVarPre291;
        /*[12]*/
        _imopVarPre291 = partArray[pidx];
        /*[12]*/
        update_part(_imopVarPre291, deposit);
        /*[12]*/
    }
    /*[12]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[12]*/
#pragma omp barrier
    /*[36]*/
#pragma omp single nowait
    {
    /*[36]*/
        /*[36]*/
        deposit = calc_deposit();
        /*[36]*/
    }
    /*[36]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[36]*/
#pragma omp barrier
    /*[13]*/
    /*[13]*/
    /*[13]*/
    /*[13]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[13]*/
        /*[13]*/
        struct _Part *_imopVarPre293;
        /*[13]*/
        _imopVarPre293 = partArray[pidx];
        /*[13]*/
        update_part(_imopVarPre293, deposit);
        /*[13]*/
    }
    /*[13]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[13]*/
#pragma omp barrier
    /*[38]*/
#pragma omp single nowait
    {
    /*[38]*/
        /*[38]*/
        deposit = calc_deposit();
        /*[38]*/
    }
    /*[38]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[38]*/
#pragma omp barrier
    /*[14]*/
    /*[14]*/
    /*[14]*/
    /*[14]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[14]*/
        /*[14]*/
        struct _Part *_imopVarPre295;
        /*[14]*/
        _imopVarPre295 = partArray[pidx];
        /*[14]*/
        update_part(_imopVarPre295, deposit);
        /*[14]*/
    }
    /*[14]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[14]*/
#pragma omp barrier
    /*[40]*/
#pragma omp single nowait
    {
    /*[40]*/
        /*[40]*/
        deposit = calc_deposit();
        /*[40]*/
    }
    /*[40]*/
    // #pragma omp dummyFlush BARRIER_START
    /*[40]*/
#pragma omp barrier
    /*[15]*/
    /*[15]*/
    /*[15]*/
    /*[15]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[15]*/
        /*[15]*/
        struct _Part *_imopVarPre297;
        /*[15]*/
        _imopVarPre297 = partArray[pidx];
        /*[15]*/
        update_part(_imopVarPre297, deposit);
        /*[15]*/
    }
}
/*[15, 64]*/
/*[15, 64]*/
/*[15, 64]*/
void manual_omp_cycle(int startPidx, int endPidx) {
/*[15, 64]*/
    /*[15, 64]*/
    manual_omp_module1(startPidx, endPidx);
    /*[6]*/
    /*[6]*/
    manual_omp_module2(startPidx, endPidx);
    /*[8]*/
    /*[8]*/
    manual_omp_module3(startPidx, endPidx);
    /*[11]*/
    /*[11]*/
    manual_omp_module4(startPidx, endPidx);
    /*[15]*/
}
/*[]*/
/*[]*/
void do_manual_omp_version(long num_iterations) {
/*[]*/
    /*[64]*/
#pragma omp parallel
    {
    /*[64]*/
        /*[64]*/
        long iteration;
        /*[64]*/
        int startPidx;
        /*[64]*/
        int endPidx;
        /*[64]*/
        double dparts_per_thread;
        /*[64]*/
        int _imopVarPre298;
        /*[64]*/
        _imopVarPre298 = omp_get_thread_num();
        /*[64]*/
        /*[64]*/
        int thread_id = _imopVarPre298;
        /*[64]*/
        int _imopVarPre299;
        /*[64]*/
        _imopVarPre299 = omp_get_num_threads();
        /*[64]*/
        /*[64]*/
        int numThreads = _imopVarPre299;
        /*[64]*/
        dparts_per_thread = ((double) CLOMP_numParts) / ((double) numThreads);
        /*[64]*/
        /*[64]*/
        if (dparts_per_thread < 1.0) {
        /*[64]*/
            /*[64]*/
            dparts_per_thread = 1.0;
        }
        /*[64]*/
        double _imopVarPre302;
        /*[64]*/
        double _imopVarPre303;
        /*[64]*/
        _imopVarPre302 = ((double) thread_id) * dparts_per_thread;
        /*[64]*/
        _imopVarPre303 = nearbyint(_imopVarPre302);
        /*[64]*/
        /*[64]*/
        startPidx = (int) _imopVarPre303;
        /*[64]*/
        double _imopVarPre306;
        /*[64]*/
        double _imopVarPre307;
        /*[64]*/
        _imopVarPre306 = ((double) thread_id + 1) * dparts_per_thread;
        /*[64]*/
        _imopVarPre307 = nearbyint(_imopVarPre306);
        /*[64]*/
        /*[64]*/
        endPidx = (int) _imopVarPre307 - 1;
        /*[64]*/
        /*[64]*/
        if (endPidx >= CLOMP_numParts) {
        /*[64]*/
            /*[64]*/
            endPidx = CLOMP_numParts - 1;
        }
        /*[64]*/
        /*[64]*/
        if (startPidx >= CLOMP_numParts) {
        /*[64]*/
            /*[64]*/
            printf("*** No parts available for thread %i\n", thread_id);
            /*[64]*/
        }
        /*[64]*/
        /*[15, 64]*/
        /*[15]*/
        /*[64]*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
        /*[15, 64]*/
            /*[15, 64]*/
            manual_omp_cycle(startPidx, endPidx);
            /*[15]*/
        }
    }
}
/*[16]*/
/*[16]*/
/*[16]*/
/*[16]*/
void bestcase_omp_module1(int startPidx, int endPidx , double deposit) {
/*[16]*/
    /*[16]*/
    long pidx;
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre309;
        /*[16]*/
        _imopVarPre309 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre309, deposit);
        /*[16]*/
    }
}
/*[16]*/
/*[16]*/
/*[16]*/
/*[16]*/
void bestcase_omp_module2(int startPidx, int endPidx , double deposit) {
/*[16]*/
    /*[16]*/
    long pidx;
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre311;
        /*[16]*/
        _imopVarPre311 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre311, deposit);
        /*[16]*/
    }
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre313;
        /*[16]*/
        _imopVarPre313 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre313, deposit);
        /*[16]*/
    }
}
/*[16]*/
/*[16]*/
/*[16]*/
/*[16]*/
void bestcase_omp_module3(int startPidx, int endPidx , double deposit) {
/*[16]*/
    /*[16]*/
    long pidx;
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre315;
        /*[16]*/
        _imopVarPre315 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre315, deposit);
        /*[16]*/
    }
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre317;
        /*[16]*/
        _imopVarPre317 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre317, deposit);
        /*[16]*/
    }
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre319;
        /*[16]*/
        _imopVarPre319 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre319, deposit);
        /*[16]*/
    }
}
/*[16]*/
/*[16]*/
/*[16]*/
/*[16]*/
void bestcase_omp_module4(int startPidx, int endPidx , double deposit) {
/*[16]*/
    /*[16]*/
    long pidx;
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre321;
        /*[16]*/
        _imopVarPre321 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre321, deposit);
        /*[16]*/
    }
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre323;
        /*[16]*/
        _imopVarPre323 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre323, deposit);
        /*[16]*/
    }
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre325;
        /*[16]*/
        _imopVarPre325 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre325, deposit);
        /*[16]*/
    }
    /*[16]*/
    /*[16]*/
    /*[16]*/
    /*[16]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*[16]*/
        /*[16]*/
        struct _Part *_imopVarPre327;
        /*[16]*/
        _imopVarPre327 = partArray[pidx];
        /*[16]*/
        update_part(_imopVarPre327, deposit);
        /*[16]*/
    }
}
/*[16]*/
/*[16]*/
/*[16]*/
/*[16]*/
void bestcase_omp_cycle(int startPidx, int endPidx , double deposit) {
/*[16]*/
    /*[16]*/
    bestcase_omp_module1(startPidx, endPidx, deposit);
    /*[16]*/
    /*[16]*/
    bestcase_omp_module2(startPidx, endPidx, deposit);
    /*[16]*/
    /*[16]*/
    bestcase_omp_module3(startPidx, endPidx, deposit);
    /*[16]*/
    /*[16]*/
    bestcase_omp_module4(startPidx, endPidx, deposit);
    /*[16]*/
}
/*[]*/
/*[]*/
void do_bestcase_omp_version(long num_iterations) {
/*[]*/
    /*[]*/
    long iter;
    /*[]*/
    long subcycle;
    /*[]*/
    double deposit;
    /*[]*/
    deposit = (1.0 + CLOMP_max_residue) / CLOMP_numParts;
    /*[16]*/
#pragma omp parallel
    {
    /*[16]*/
        /*[16]*/
        long iteration;
        /*[16]*/
        int startPidx;
        /*[16]*/
        int endPidx;
        /*[16]*/
        double dparts_per_thread;
        /*[16]*/
        int _imopVarPre328;
        /*[16]*/
        _imopVarPre328 = omp_get_thread_num();
        /*[16]*/
        /*[16]*/
        int thread_id = _imopVarPre328;
        /*[16]*/
        int _imopVarPre329;
        /*[16]*/
        _imopVarPre329 = omp_get_num_threads();
        /*[16]*/
        /*[16]*/
        int numThreads = _imopVarPre329;
        /*[16]*/
        dparts_per_thread = ((double) CLOMP_numParts) / ((double) numThreads);
        /*[16]*/
        /*[16]*/
        if (dparts_per_thread < 1.0) {
        /*[16]*/
            /*[16]*/
            dparts_per_thread = 1.0;
        }
        /*[16]*/
        double _imopVarPre332;
        /*[16]*/
        double _imopVarPre333;
        /*[16]*/
        _imopVarPre332 = ((double) thread_id) * dparts_per_thread;
        /*[16]*/
        _imopVarPre333 = nearbyint(_imopVarPre332);
        /*[16]*/
        /*[16]*/
        startPidx = (int) _imopVarPre333;
        /*[16]*/
        double _imopVarPre336;
        /*[16]*/
        double _imopVarPre337;
        /*[16]*/
        _imopVarPre336 = ((double) thread_id + 1) * dparts_per_thread;
        /*[16]*/
        _imopVarPre337 = nearbyint(_imopVarPre336);
        /*[16]*/
        /*[16]*/
        endPidx = (int) _imopVarPre337 - 1;
        /*[16]*/
        /*[16]*/
        if (endPidx >= CLOMP_numParts) {
        /*[16]*/
            /*[16]*/
            endPidx = CLOMP_numParts - 1;
        }
        /*[16]*/
        /*[16]*/
        if (startPidx >= CLOMP_numParts) {
        /*[16]*/
            /*[16]*/
            printf("*** No parts available for thread %i\n", thread_id);
            /*[16]*/
        }
        /*[16]*/
        /*[16]*/
        /*[16]*/
        /*[16]*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
        /*[16]*/
            /*[16]*/
            bestcase_omp_cycle(startPidx, endPidx, deposit);
            /*[16]*/
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iter = 0; iter < num_iterations; iter++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (subcycle = 0; subcycle < 10; subcycle++) {
        /*[]*/
            /*[]*/
            partArray[0]->update_count = 1;
            /*[]*/
            double _imopVarPre338;
            /*[]*/
            _imopVarPre338 = calc_deposit();
            /*[]*/
            /*[]*/
            partArray[0]->firstZone->value = _imopVarPre338;
        }
    }
}
/*[65]*/
/*[65]*/
/*[65]*/
void addPart(Part *part, long partId) {
/*[65]*/
    /*[65]*/
    int _imopVarPre339;
    /*[65]*/
    _imopVarPre339 = (partId < 0);
    /*[65]*/
    /*[65]*/
    if (!_imopVarPre339) {
    /*[65]*/
        /*[65]*/
        _imopVarPre339 = (partId >= CLOMP_numParts);
    }
    /*[65]*/
    /*[65]*/
    if (_imopVarPre339) {
    /*[65]*/
        /*[65]*/
        int _imopVarPre341;
        /*[65]*/
        _imopVarPre341 = (int) partId;
        /*[65]*/
        fprintf(__stderrp, "addPart error: partId (%i) out of bounds!\n", _imopVarPre341);
        /*[65]*/
        /*[65]*/
        exit(1);
        /*[65]*/
    }
    /*[65]*/
    /*[65]*/
    if (partArray[partId] != ((void *) 0)) {
    /*[65]*/
        /*[65]*/
        int _imopVarPre343;
        /*[65]*/
        _imopVarPre343 = (int) partId;
        /*[65]*/
        fprintf(__stderrp, "addPart error: partId (%i) already initialized!\n", _imopVarPre343);
        /*[65]*/
        /*[65]*/
        exit(1);
        /*[65]*/
    }
    /*[65]*/
    partArray[partId] = part;
    /*[65]*/
    part->partId = partId;
    /*[65]*/
    part->zoneCount = CLOMP_zonesPerPart;
    /*[65]*/
    part->deposit_ratio = ((double) (partId + 1)) / ((double) (20.0 * CLOMP_numParts));
    /*[65]*/
    part->residue = 0.0;
    /*[65]*/
    part->firstZone = ((void *) 0);
    /*[65]*/
    part->lastZone = ((void *) 0);
    /*[65]*/
    part->expected_first_value = -1.0;
    /*[65]*/
    part->expected_residue = -1.0;
}
/*[66]*/
/*[66]*/
/*[66]*/
void addZone(Part *part, Zone *zone) {
/*[66]*/
    /*[66]*/
    /*[66]*/
    if (part == ((void *) 0)) {
    /*[66]*/
        /*[66]*/
        fprintf(__stderrp, "addZone error: part NULL!\n");
        /*[66]*/
        /*[66]*/
        exit(1);
        /*[66]*/
    }
    /*[66]*/
    /*[66]*/
    if (zone == ((void *) 0)) {
    /*[66]*/
        /*[66]*/
        fprintf(__stderrp, "addZone error: zone NULL!\n");
        /*[66]*/
        /*[66]*/
        exit(1);
        /*[66]*/
    }
    /*[66]*/
    unsigned int _imopVarPre345;
    /*[66]*/
    _imopVarPre345 = __builtin_object_size(zone, 0);
    /*[66]*/
    /*[66]*/
    __builtin___memset_chk(zone, 0xFF, CLOMP_zoneSize, _imopVarPre345);
    /*[66]*/
    /*[66]*/
    /*[66]*/
    if (part->lastZone == ((void *) 0)) {
    /*[66]*/
        /*[66]*/
        zone->zoneId = 1;
        /*[66]*/
        part->firstZone = zone;
        /*[66]*/
        part->lastZone = zone;
    } else {
    /*[66]*/
        /*[66]*/
        zone->zoneId = part->lastZone->zoneId + 1;
        /*[66]*/
        part->lastZone->nextZone = zone;
        /*[66]*/
        part->lastZone = zone;
    }
    /*[66]*/
    zone->nextZone = ((void *) 0);
    /*[66]*/
    zone->partId = part->partId;
    /*[66]*/
    zone->value = 0.0;
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char *argv[]) {
/*[]*/
    /*[]*/
    char hostname[200];
    /*[]*/
    time_t starttime;
    /*[]*/
    char startdate[50];
    /*[]*/
    long partId;
    /*[]*/
    double totalZoneCount;
    /*[]*/
    double deposit;
    /*[]*/
    double percent_residue;
    /*[]*/
    double diterations;
    /*[]*/
    struct timeval calc_deposit_start_ts;
    /*[]*/
    struct timeval calc_deposit_end_ts;
    /*[]*/
    double calc_deposit_seconds;
    /*[]*/
    struct timeval omp_barrier_start_ts;
    /*[]*/
    struct timeval omp_barrier_end_ts;
    /*[]*/
    double omp_barrier_seconds;
    /*[]*/
    struct timeval serial_ref_start_ts;
    /*[]*/
    struct timeval serial_ref_end_ts;
    /*[]*/
    double serial_ref_seconds;
    /*[]*/
    struct timeval bestcase_omp_start_ts;
    /*[]*/
    struct timeval bestcase_omp_end_ts;
    /*[]*/
    double bestcase_omp_seconds;
    /*[]*/
    struct timeval static_omp_start_ts;
    /*[]*/
    struct timeval static_omp_end_ts;
    /*[]*/
    double static_omp_seconds;
    /*[]*/
    struct timeval manual_omp_start_ts;
    /*[]*/
    struct timeval manual_omp_end_ts;
    /*[]*/
    double manual_omp_seconds;
    /*[]*/
    struct timeval dynamic_omp_start_ts;
    /*[]*/
    struct timeval dynamic_omp_end_ts;
    /*[]*/
    double dynamic_omp_seconds;
    /*[]*/
    int aidx;
    /*[]*/
    CLOMP_exe_name = argv[0];
    /*[]*/
    printf("Sequoia Benchmark Version 1.0\n");
    /*[]*/
    /*[]*/
    /*[]*/
    if (argc != 8) {
    /*[]*/
        /*[]*/
        print_usage();
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    unsigned long int _imopVarPre348;
    /*[]*/
    int _imopVarPre349;
    /*[]*/
    _imopVarPre348 = sizeof (hostname);
    /*[]*/
    _imopVarPre349 = gethostname(hostname, _imopVarPre348);
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre349 != 0) {
    /*[]*/
        /*[]*/
        int _imopVarPre357;
        /*[]*/
        int _imopVarPre358;
        /*[]*/
        unsigned int _imopVarPre359;
        /*[]*/
        _imopVarPre357 = 2 > 1;
        /*[]*/
        /*[]*/
        if (_imopVarPre357) {
        /*[]*/
            /*[]*/
            _imopVarPre358 = 1;
        } else {
        /*[]*/
            /*[]*/
            _imopVarPre358 = 0;
        }
        /*[]*/
        _imopVarPre359 = __builtin_object_size(hostname, _imopVarPre358);
        /*[]*/
        /*[]*/
        __builtin___strcpy_chk(hostname, "(Unknown host)", _imopVarPre359);
        /*[]*/
    }
    /*[]*/
    signed long int *_imopVarPre361;
    /*[]*/
    _imopVarPre361 = &starttime;
    /*[]*/
    time(_imopVarPre361);
    /*[]*/
    /*[]*/
    signed long int *_imopVarPre363;
    /*[]*/
    _imopVarPre363 = &starttime;
    /*[]*/
    ctime_r(_imopVarPre363, startdate);
    /*[]*/
    /*[]*/
    char *_imopVarPre365;
    /*[]*/
    signed long int _imopVarPre366;
    /*[]*/
    _imopVarPre365 = argv[1];
    /*[]*/
    _imopVarPre366 = convert_to_positive_long("numThreads", _imopVarPre365);
    /*[]*/
    /*[]*/
    CLOMP_numThreads = _imopVarPre366;
    /*[]*/
    char *_imopVarPre368;
    /*[]*/
    signed long int _imopVarPre369;
    /*[]*/
    _imopVarPre368 = argv[2];
    /*[]*/
    _imopVarPre369 = convert_to_positive_long("numThreads", _imopVarPre368);
    /*[]*/
    /*[]*/
    CLOMP_allocThreads = _imopVarPre369;
    /*[]*/
    char *_imopVarPre371;
    /*[]*/
    signed long int _imopVarPre372;
    /*[]*/
    _imopVarPre371 = argv[3];
    /*[]*/
    _imopVarPre372 = convert_to_positive_long("numParts", _imopVarPre371);
    /*[]*/
    /*[]*/
    CLOMP_numParts = _imopVarPre372;
    /*[]*/
    char *_imopVarPre374;
    /*[]*/
    signed long int _imopVarPre375;
    /*[]*/
    _imopVarPre374 = argv[4];
    /*[]*/
    _imopVarPre375 = convert_to_positive_long("zonesPerPart", _imopVarPre374);
    /*[]*/
    /*[]*/
    CLOMP_zonesPerPart = _imopVarPre375;
    /*[]*/
    char *_imopVarPre377;
    /*[]*/
    signed long int _imopVarPre378;
    /*[]*/
    _imopVarPre377 = argv[5];
    /*[]*/
    _imopVarPre378 = convert_to_positive_long("zoneSize", _imopVarPre377);
    /*[]*/
    /*[]*/
    CLOMP_zoneSize = _imopVarPre378;
    /*[]*/
    char *_imopVarPre380;
    /*[]*/
    signed long int _imopVarPre381;
    /*[]*/
    _imopVarPre380 = argv[6];
    /*[]*/
    _imopVarPre381 = convert_to_positive_long("flopScale", _imopVarPre380);
    /*[]*/
    /*[]*/
    CLOMP_flopScale = _imopVarPre381;
    /*[]*/
    char *_imopVarPre383;
    /*[]*/
    signed long int _imopVarPre384;
    /*[]*/
    _imopVarPre383 = argv[7];
    /*[]*/
    _imopVarPre384 = convert_to_positive_long("timeScale", _imopVarPre383);
    /*[]*/
    /*[]*/
    CLOMP_timeScale = _imopVarPre384;
    /*[]*/
    /*[]*/
    if (CLOMP_zoneSize < sizeof(Zone)) {
    /*[]*/
        /*[]*/
        signed long int _imopVarPre386;
        /*[]*/
        _imopVarPre386 = (long) sizeof(Zone);
        /*[]*/
        printf("***Forcing zoneSize (%ld specified) to minimum zone size %ld\n\n", CLOMP_zoneSize, _imopVarPre386);
        /*[]*/
        /*[]*/
        CLOMP_zoneSize = sizeof(Zone);
    }
    /*[]*/
    printf("       Invocation:");
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (aidx = 0; aidx < argc; aidx++) {
    /*[]*/
        /*[]*/
        char *_imopVarPre388;
        /*[]*/
        _imopVarPre388 = argv[aidx];
        /*[]*/
        printf(" %s", _imopVarPre388);
        /*[]*/
    }
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("         Hostname: %s\n", hostname);
    /*[]*/
    /*[]*/
    printf("       Start time: %s", startdate);
    /*[]*/
    /*[]*/
    printf("       Executable: %s\n", CLOMP_exe_name);
    /*[]*/
    /*[]*/
    /*[]*/
    if (CLOMP_numThreads == -1) {
    /*[]*/
        /*[]*/
        CLOMP_numThreads = omp_get_max_threads();
        /*[]*/
        /*[]*/
        int _imopVarPre390;
        /*[]*/
        _imopVarPre390 = (int) CLOMP_numThreads;
        /*[]*/
        printf("      numThreads: %d (using system default)\n", _imopVarPre390);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf("      numThreads: %ld\n", CLOMP_numThreads);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (CLOMP_allocThreads == -1) {
    /*[]*/
        /*[]*/
        CLOMP_allocThreads = CLOMP_numThreads;
        /*[]*/
        printf("    allocThreads: %ld (using numThreads)\n", CLOMP_allocThreads);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf("    allocThreads: %ld\n", CLOMP_allocThreads);
        /*[]*/
    }
    /*[]*/
    printf("        numParts: %ld\n", CLOMP_numParts);
    /*[]*/
    /*[]*/
    printf("    zonesPerPart: %ld\n", CLOMP_zonesPerPart);
    /*[]*/
    /*[]*/
    printf("       flopScale: %ld\n", CLOMP_flopScale);
    /*[]*/
    /*[]*/
    printf("       timeScale: %ld\n", CLOMP_timeScale);
    /*[]*/
    /*[]*/
    printf("        zoneSize: %ld\n", CLOMP_zoneSize);
    /*[]*/
    /*[]*/
    int _imopVarPre392;
    /*[]*/
    _imopVarPre392 = (int) CLOMP_allocThreads;
    /*[]*/
    omp_set_num_threads(_imopVarPre392);
    /*[]*/
    /*[]*/
    unsigned long int _imopVarPre395;
    /*[]*/
    void *_imopVarPre396;
    /*[]*/
    _imopVarPre395 = CLOMP_numParts * sizeof(Part *);
    /*[]*/
    _imopVarPre396 = malloc(_imopVarPre395);
    /*[]*/
    /*[]*/
    partArray = (Part **) _imopVarPre396;
    /*[]*/
    /*[]*/
    if (partArray == ((void *) 0)) {
    /*[]*/
        /*[]*/
        fprintf(__stderrp, "Out of memory allocating part array\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (partId = 0; partId < CLOMP_numParts; partId++) {
    /*[]*/
        /*[]*/
        partArray[partId] = ((void *) 0);
    }
    /*[]*/
    CLOMP_partRatio = 1.0 / ((double) CLOMP_numParts);
    /*[65]*/
#pragma omp parallel private(partId)
    {
    /*[65]*/
        /*[65]*/
#pragma omp for schedule(static) nowait
        /*[65]*/
        /*[65]*/
        /*[65]*/
        for (partId = 0; partId < CLOMP_numParts; partId++) {
        /*[65]*/
            /*[65]*/
            Part *part;
            /*[65]*/
            unsigned long int _imopVarPre403;
            /*[65]*/
            void *_imopVarPre404;
            /*[65]*/
            _imopVarPre403 = sizeof(Part);
            /*[65]*/
            _imopVarPre404 = malloc(_imopVarPre403);
            /*[65]*/
            /*[65]*/
            /*[65]*/
            if ((part = (Part *) _imopVarPre404) == ((void *) 0)) {
            /*[65]*/
                /*[65]*/
                fprintf(__stderrp, "Out of memory allocating part\n");
                /*[65]*/
                /*[65]*/
                exit(1);
                /*[65]*/
            }
            /*[65]*/
            addPart(part, partId);
            /*[65]*/
        }
        /*[65]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[65]*/
#pragma omp barrier
    }
    /*[66]*/
#pragma omp parallel private(partId)
    {
    /*[66]*/
        /*[66]*/
#pragma omp for schedule(static) nowait
        /*[66]*/
        /*[66]*/
        /*[66]*/
        for (partId = 0; partId < CLOMP_numParts; partId++) {
        /*[66]*/
            /*[66]*/
            Zone *zoneArray;
            /*[66]*/
            Zone *zone;
            /*[66]*/
            int zoneId;
            /*[66]*/
            signed long int _imopVarPre407;
            /*[66]*/
            void *_imopVarPre408;
            /*[66]*/
            _imopVarPre407 = CLOMP_zoneSize * CLOMP_zonesPerPart;
            /*[66]*/
            _imopVarPre408 = malloc(_imopVarPre407);
            /*[66]*/
            /*[66]*/
            zoneArray = (Zone *) _imopVarPre408;
            /*[66]*/
            /*[66]*/
            if (zoneArray == ((void *) 0)) {
            /*[66]*/
                /*[66]*/
                fprintf(__stderrp, "Out of memory allocate zone array\n");
                /*[66]*/
                /*[66]*/
                exit(1);
                /*[66]*/
            }
            /*[66]*/
            /*[66]*/
            /*[66]*/
            /*[66]*/
            for (zoneId = 0; zoneId < CLOMP_zonesPerPart; zoneId++) {
            /*[66]*/
                /*[66]*/
                zone = &zoneArray[zoneId];
                /*[66]*/
                struct _Part *_imopVarPre410;
                /*[66]*/
                _imopVarPre410 = partArray[partId];
                /*[66]*/
                addZone(_imopVarPre410, zone);
                /*[66]*/
            }
        }
        /*[66]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[66]*/
#pragma omp barrier
    }
    /*[]*/
    totalZoneCount = (double) CLOMP_numParts * (double) CLOMP_zonesPerPart;
    /*[]*/
    double _imopVarPre412;
    /*[]*/
    _imopVarPre412 = (double) CLOMP_zonesPerPart;
    /*[]*/
    printf("   Zones per Part: %.0f\n", _imopVarPre412);
    /*[]*/
    /*[]*/
    double _imopVarPre414;
    /*[]*/
    _imopVarPre414 = (double) totalZoneCount;
    /*[]*/
    printf("      Total Zones: %.0f\n", _imopVarPre414);
    /*[]*/
    /*[]*/
    double _imopVarPre416;
    /*[]*/
    _imopVarPre416 = (double) (totalZoneCount * CLOMP_zoneSize) + (double) (sizeof(Part) * CLOMP_numParts);
    /*[]*/
    printf("Memory (in bytes): %.0f\n", _imopVarPre416);
    /*[]*/
    /*[]*/
    double _imopVarPre418;
    /*[]*/
    double _imopVarPre419;
    /*[]*/
    _imopVarPre418 = (((double) 1000000) * ((double) CLOMP_timeScale)) / ((double) totalZoneCount * (double) CLOMP_flopScale);
    /*[]*/
    _imopVarPre419 = ceil(_imopVarPre418);
    /*[]*/
    /*[]*/
    diterations = _imopVarPre419;
    /*[]*/
    /*[]*/
    if (diterations > 2000000000.0) {
    /*[]*/
        /*[]*/
        printf("*** Forcing iterations from (%g) to 2 billion\n", diterations);
        /*[]*/
        /*[]*/
        diterations = 2000000000.0;
    }
    /*[]*/
    CLOMP_num_iterations = (long) diterations;
    /*[]*/
    int _imopVarPre421;
    /*[]*/
    _imopVarPre421 = (int) CLOMP_num_iterations;
    /*[]*/
    printf("Scaled Iterations: %i\n", _imopVarPre421);
    /*[]*/
    /*[]*/
    double _imopVarPre423;
    /*[]*/
    _imopVarPre423 = (double) CLOMP_num_iterations * (double) 10.0;
    /*[]*/
    printf("  Total Subcycles: %.0f\n", _imopVarPre423);
    /*[]*/
    /*[]*/
    percent_residue = 0.0;
    /*[]*/
    deposit = CLOMP_partRatio;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (partId = 0; partId < CLOMP_numParts; partId++) {
    /*[]*/
        /*[]*/
        struct _Part *_imopVarPre425;
        /*[]*/
        _imopVarPre425 = partArray[partId];
        /*[]*/
        update_part(_imopVarPre425, deposit);
        /*[]*/
        /*[]*/
        percent_residue += partArray[partId]->residue;
    }
    /*[]*/
    double _imopVarPre427;
    /*[]*/
    _imopVarPre427 = percent_residue * 100.0;
    /*[]*/
    printf("Iteration Residue: %.6f%%\n", _imopVarPre427);
    /*[]*/
    /*[]*/
    CLOMP_max_residue = (1.0 * percent_residue) / (1 - percent_residue);
    /*[]*/
    printf("      Max Residue: %-8.8g\n", CLOMP_max_residue);
    /*[]*/
    /*[]*/
    int _imopVarPre429;
    /*[]*/
    _imopVarPre429 = (int) CLOMP_numThreads;
    /*[]*/
    omp_set_num_threads(_imopVarPre429);
    /*[]*/
    /*[]*/
    printf("---------------------\n");
    /*[]*/
    /*[]*/
    print_pseudocode("calc_deposit", "------ Start calc_deposit Pseudocode ------");
    /*[]*/
    /*[]*/
    print_pseudocode("calc_deposit", "/* Measure *only* non-threadable calc_deposit() overhead.*/");
    /*[]*/
    /*[]*/
    print_pseudocode("calc_deposit", "/* Expect this overhead to be negligible.*/");
    /*[]*/
    /*[]*/
    print_pseudocode("calc_deposit", "deposit = calc_deposit ();");
    /*[]*/
    /*[]*/
    print_pseudocode("calc_deposit", "------- End calc_deposit Pseudocode -------");
    /*[]*/
    /*[]*/
    print_start_message("calc_deposit");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre431;
    /*[]*/
    _imopVarPre431 = &calc_deposit_start_ts;
    /*[]*/
    get_timestamp(_imopVarPre431);
    /*[]*/
    /*[]*/
    do_calc_deposit_only();
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre433;
    /*[]*/
    _imopVarPre433 = &calc_deposit_end_ts;
    /*[]*/
    get_timestamp(_imopVarPre433);
    /*[]*/
    /*[]*/
    double _imopVarPre438;
    /*[]*/
    double _imopVarPre439;
    /*[]*/
    struct timeval *_imopVarPre440;
    /*[]*/
    struct timeval *_imopVarPre441;
    /*[]*/
    double _imopVarPre442;
    /*[]*/
    _imopVarPre438 = -1.0;
    /*[]*/
    _imopVarPre439 = -1.0;
    /*[]*/
    _imopVarPre440 = &calc_deposit_end_ts;
    /*[]*/
    _imopVarPre441 = &calc_deposit_start_ts;
    /*[]*/
    _imopVarPre442 = print_timestats("calc_deposit", _imopVarPre441, _imopVarPre440, _imopVarPre439, _imopVarPre438);
    /*[]*/
    /*[]*/
    calc_deposit_seconds = _imopVarPre442;
    /*[]*/
    do_omp_barrier_only(1);
    /*[]*/
    /*[]*/
    print_pseudocode("OMP Barrier", "------ Start OMP Barrier Pseudocode ------");
    /*[]*/
    /*[]*/
    print_pseudocode("OMP Barrier", "/* Measure *only* OMP barrier overhead.*/");
    /*[]*/
    /*[]*/
    print_pseudocode("OMP Barrier", "#pragma omp barrier");
    /*[]*/
    /*[]*/
    print_pseudocode("OMP Barrier", "------- End OMP Barrier Pseudocode -------");
    /*[]*/
    /*[]*/
    print_start_message("OMP Barrier");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre444;
    /*[]*/
    _imopVarPre444 = &omp_barrier_start_ts;
    /*[]*/
    get_timestamp(_imopVarPre444);
    /*[]*/
    /*[]*/
    do_omp_barrier_only(CLOMP_num_iterations);
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre446;
    /*[]*/
    _imopVarPre446 = &omp_barrier_end_ts;
    /*[]*/
    get_timestamp(_imopVarPre446);
    /*[]*/
    /*[]*/
    double _imopVarPre451;
    /*[]*/
    double _imopVarPre452;
    /*[]*/
    struct timeval *_imopVarPre453;
    /*[]*/
    struct timeval *_imopVarPre454;
    /*[]*/
    double _imopVarPre455;
    /*[]*/
    _imopVarPre451 = -1.0;
    /*[]*/
    _imopVarPre452 = -1.0;
    /*[]*/
    _imopVarPre453 = &omp_barrier_end_ts;
    /*[]*/
    _imopVarPre454 = &omp_barrier_start_ts;
    /*[]*/
    _imopVarPre455 = print_timestats("OMP Barrier", _imopVarPre454, _imopVarPre453, _imopVarPre452, _imopVarPre451);
    /*[]*/
    /*[]*/
    omp_barrier_seconds = _imopVarPre455;
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    serial_ref_cycle();
    /*[]*/
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    print_pseudocode("Serial Ref", "------ Start Serial Ref Pseudocode ------");
    /*[]*/
    /*[]*/
    print_pseudocode("Serial Ref", "/* Measure serial reference performance */");
    /*[]*/
    /*[]*/
    print_pseudocode("Serial Ref", "deposit = calc_deposit ();");
    /*[]*/
    /*[]*/
    print_pseudocode("Serial Ref", "for (pidx = 0; pidx < numParts; pidx++)");
    /*[]*/
    /*[]*/
    print_pseudocode("Serial Ref", "  update_part (partArray[pidx], deposit);");
    /*[]*/
    /*[]*/
    print_pseudocode("Serial Ref", "------- End Serial Ref Pseudocode -------");
    /*[]*/
    /*[]*/
    print_start_message("Serial Ref");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre457;
    /*[]*/
    _imopVarPre457 = &serial_ref_start_ts;
    /*[]*/
    get_timestamp(_imopVarPre457);
    /*[]*/
    /*[]*/
    do_serial_ref_version();
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre459;
    /*[]*/
    _imopVarPre459 = &serial_ref_end_ts;
    /*[]*/
    get_timestamp(_imopVarPre459);
    /*[]*/
    /*[]*/
    print_data_stats("Serial Ref");
    /*[]*/
    /*[]*/
    double _imopVarPre464;
    /*[]*/
    double _imopVarPre465;
    /*[]*/
    struct timeval *_imopVarPre466;
    /*[]*/
    struct timeval *_imopVarPre467;
    /*[]*/
    double _imopVarPre468;
    /*[]*/
    _imopVarPre464 = -1.0;
    /*[]*/
    _imopVarPre465 = -1.0;
    /*[]*/
    _imopVarPre466 = &serial_ref_end_ts;
    /*[]*/
    _imopVarPre467 = &serial_ref_start_ts;
    /*[]*/
    _imopVarPre468 = print_timestats("Serial Ref", _imopVarPre467, _imopVarPre466, _imopVarPre465, _imopVarPre464);
    /*[]*/
    /*[]*/
    serial_ref_seconds = _imopVarPre468;
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    do_bestcase_omp_version(1);
    /*[]*/
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    print_pseudocode("Bestcase OMP", "------ Start Bestcase OMP Pseudocode ------");
    /*[]*/
    /*[]*/
    print_pseudocode("Bestcase OMP", "/* Measure the bestcase ref loop runtime for */");
    /*[]*/
    /*[]*/
    print_pseudocode("Bestcase OMP", "/* \"free\" threading the following code: */");
    /*[]*/
    /*[]*/
    print_pseudocode("Bestcase OMP", "deposit = calc_deposit ();");
    /*[]*/
    /*[]*/
    print_pseudocode("Bestcase OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*[]*/
    /*[]*/
    print_pseudocode("Bestcase OMP", "  update_part (partArray[pidx], deposit);");
    /*[]*/
    /*[]*/
    print_pseudocode("Bestcase OMP", "------- End Bestcase OMP Pseudocode -------");
    /*[]*/
    /*[]*/
    print_start_message("Bestcase OMP");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre470;
    /*[]*/
    _imopVarPre470 = &bestcase_omp_start_ts;
    /*[]*/
    get_timestamp(_imopVarPre470);
    /*[]*/
    /*[]*/
    do_bestcase_omp_version(CLOMP_num_iterations);
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre472;
    /*[]*/
    _imopVarPre472 = &bestcase_omp_end_ts;
    /*[]*/
    get_timestamp(_imopVarPre472);
    /*[]*/
    /*[]*/
    double _imopVarPre476;
    /*[]*/
    struct timeval *_imopVarPre477;
    /*[]*/
    struct timeval *_imopVarPre478;
    /*[]*/
    double _imopVarPre479;
    /*[]*/
    _imopVarPre476 = -1.0;
    /*[]*/
    _imopVarPre477 = &bestcase_omp_end_ts;
    /*[]*/
    _imopVarPre478 = &bestcase_omp_start_ts;
    /*[]*/
    _imopVarPre479 = print_timestats("Bestcase OMP", _imopVarPre478, _imopVarPre477, serial_ref_seconds, _imopVarPre476);
    /*[]*/
    /*[]*/
    bestcase_omp_seconds = _imopVarPre479;
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    static_omp_cycle();
    /*[]*/
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    print_pseudocode("Static OMP", "------ Start Static OMP Pseudocode ------");
    /*[]*/
    /*[]*/
    print_pseudocode("Static OMP", "/* Use OpenMP parallel for schedule(static) on original loop. */");
    /*[]*/
    /*[]*/
    print_pseudocode("Static OMP", "deposit = calc_deposit ();");
    /*[]*/
    /*[]*/
    print_pseudocode("Static OMP", "#pragma omp parallel for private (pidx) schedule(static)");
    /*[]*/
    /*[]*/
    print_pseudocode("Static OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*[]*/
    /*[]*/
    print_pseudocode("Static OMP", "  update_part (partArray[pidx], deposit);");
    /*[]*/
    /*[]*/
    print_pseudocode("Static OMP", "------- End Static OMP Pseudocode -------");
    /*[]*/
    /*[]*/
    print_start_message("Static OMP");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre481;
    /*[]*/
    _imopVarPre481 = &static_omp_start_ts;
    /*[]*/
    get_timestamp(_imopVarPre481);
    /*[]*/
    /*[]*/
    do_static_omp_version();
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre483;
    /*[]*/
    _imopVarPre483 = &static_omp_end_ts;
    /*[]*/
    get_timestamp(_imopVarPre483);
    /*[]*/
    /*[]*/
    print_data_stats("Static OMP");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre486;
    /*[]*/
    struct timeval *_imopVarPre487;
    /*[]*/
    double _imopVarPre488;
    /*[]*/
    _imopVarPre486 = &static_omp_end_ts;
    /*[]*/
    _imopVarPre487 = &static_omp_start_ts;
    /*[]*/
    _imopVarPre488 = print_timestats("Static OMP", _imopVarPre487, _imopVarPre486, serial_ref_seconds, bestcase_omp_seconds);
    /*[]*/
    /*[]*/
    static_omp_seconds = _imopVarPre488;
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    dynamic_omp_cycle();
    /*[]*/
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    print_pseudocode("Dynamic OMP", "------ Start Dynamic OMP Pseudocode ------");
    /*[]*/
    /*[]*/
    print_pseudocode("Dynamic OMP", "/* Use OpenMP parallel for schedule(dynamic) on orig loop. */");
    /*[]*/
    /*[]*/
    print_pseudocode("Dynamic OMP", "deposit = calc_deposit ();");
    /*[]*/
    /*[]*/
    print_pseudocode("Dynamic OMP", "#pragma omp parallel for private (pidx) schedule(dynamic)");
    /*[]*/
    /*[]*/
    print_pseudocode("Dynamic OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*[]*/
    /*[]*/
    print_pseudocode("Dynamic OMP", "  update_part (partArray[pidx], deposit);");
    /*[]*/
    /*[]*/
    print_pseudocode("Dynamic OMP", "------- End Dynamic OMP Pseudocode -------");
    /*[]*/
    /*[]*/
    print_start_message("Dynamic OMP");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre490;
    /*[]*/
    _imopVarPre490 = &dynamic_omp_start_ts;
    /*[]*/
    get_timestamp(_imopVarPre490);
    /*[]*/
    /*[]*/
    do_dynamic_omp_version();
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre492;
    /*[]*/
    _imopVarPre492 = &dynamic_omp_end_ts;
    /*[]*/
    get_timestamp(_imopVarPre492);
    /*[]*/
    /*[]*/
    print_data_stats("Dynamic OMP");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre495;
    /*[]*/
    struct timeval *_imopVarPre496;
    /*[]*/
    double _imopVarPre497;
    /*[]*/
    _imopVarPre495 = &dynamic_omp_end_ts;
    /*[]*/
    _imopVarPre496 = &dynamic_omp_start_ts;
    /*[]*/
    _imopVarPre497 = print_timestats("Dynamic OMP", _imopVarPre496, _imopVarPre495, serial_ref_seconds, bestcase_omp_seconds);
    /*[]*/
    /*[]*/
    dynamic_omp_seconds = _imopVarPre497;
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    do_manual_omp_version(1);
    /*[]*/
    /*[]*/
    reinitialize_parts();
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "------ Start Manual OMP Pseudocode ------");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "/* At top level, spawn threads and manually partition parts*/");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "#pragma omp parallel");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "{");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "   int startPidx = ... /* slice based on thread_id*/");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "   for (iter = 0; iter < num_iterations; iter++) ");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "      do_iter(startPidx, endPidx);");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "}");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "...");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "do_modN(int startPidx, int endPidx) /*do_iter() calls*/");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "{");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "  #pragma omp barrier /* All threads must finish first!*/");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "  #pragma omp single  /* Only one thread calcs deposit!*/");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "  {");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "    deposit = calc_deposit (); /* Deposit shared by threads */");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "  }  /* Implicit omp barrier at end of omp single */");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "  /* All threads execute loop working just on their parts*/");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "  for (pidx = startPidx; pidx <= endPidx; pidx++)");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "    update_part (partArray[pidx], deposit);");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "}");
    /*[]*/
    /*[]*/
    print_pseudocode("Manual OMP", "------- End Manual OMP Pseudocode -------");
    /*[]*/
    /*[]*/
    print_start_message("Manual OMP");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre499;
    /*[]*/
    _imopVarPre499 = &manual_omp_start_ts;
    /*[]*/
    get_timestamp(_imopVarPre499);
    /*[]*/
    /*[]*/
    do_manual_omp_version(CLOMP_num_iterations);
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre501;
    /*[]*/
    _imopVarPre501 = &manual_omp_end_ts;
    /*[]*/
    get_timestamp(_imopVarPre501);
    /*[]*/
    /*[]*/
    print_data_stats("Manual OMP");
    /*[]*/
    /*[]*/
    struct timeval *_imopVarPre504;
    /*[]*/
    struct timeval *_imopVarPre505;
    /*[]*/
    double _imopVarPre506;
    /*[]*/
    _imopVarPre504 = &manual_omp_end_ts;
    /*[]*/
    _imopVarPre505 = &manual_omp_start_ts;
    /*[]*/
    _imopVarPre506 = print_timestats("Manual OMP", _imopVarPre505, _imopVarPre504, serial_ref_seconds, bestcase_omp_seconds);
    /*[]*/
    /*[]*/
    manual_omp_seconds = _imopVarPre506;
    /*[]*/
    printf("----------- Comma-delimited summary ----------\n");
    /*[]*/
    /*[]*/
    printf("%s %ld %ld %ld %ld %ld %ld %ld, calc_deposit, OMP Barrier, Serial Ref, Bestcase OMP, Static OMP, Dynamic OMP, Manual OMP\n", CLOMP_exe_name, CLOMP_numThreads, CLOMP_allocThreads, CLOMP_numParts, CLOMP_zonesPerPart, CLOMP_zoneSize, CLOMP_flopScale, CLOMP_timeScale);
    /*[]*/
    /*[]*/
    printf("Runtime, %g, %g, %g, %g, %g, %g, %g\n", calc_deposit_seconds, omp_barrier_seconds, serial_ref_seconds, bestcase_omp_seconds, static_omp_seconds, dynamic_omp_seconds, manual_omp_seconds);
    /*[]*/
    /*[]*/
    double _imopVarPre514;
    /*[]*/
    double _imopVarPre515;
    /*[]*/
    double _imopVarPre516;
    /*[]*/
    double _imopVarPre517;
    /*[]*/
    double _imopVarPre518;
    /*[]*/
    double _imopVarPre519;
    /*[]*/
    double _imopVarPre520;
    /*[]*/
    _imopVarPre514 = (((manual_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*[]*/
    _imopVarPre515 = (((dynamic_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*[]*/
    _imopVarPre516 = (((static_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*[]*/
    _imopVarPre517 = (((bestcase_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*[]*/
    _imopVarPre518 = (((serial_ref_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*[]*/
    _imopVarPre519 = (((omp_barrier_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*[]*/
    _imopVarPre520 = (((calc_deposit_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*[]*/
    printf("us/Loop, %g, %g, %g, %g, %g, %g, %g\n", _imopVarPre520, _imopVarPre519, _imopVarPre518, _imopVarPre517, _imopVarPre516, _imopVarPre515, _imopVarPre514);
    /*[]*/
    /*[]*/
    double _imopVarPre526;
    /*[]*/
    double _imopVarPre527;
    /*[]*/
    double _imopVarPre528;
    /*[]*/
    double _imopVarPre529;
    /*[]*/
    double _imopVarPre530;
    /*[]*/
    _imopVarPre526 = ((serial_ref_seconds / manual_omp_seconds));
    /*[]*/
    _imopVarPre527 = ((serial_ref_seconds / dynamic_omp_seconds));
    /*[]*/
    _imopVarPre528 = ((serial_ref_seconds / static_omp_seconds));
    /*[]*/
    _imopVarPre529 = ((serial_ref_seconds / bestcase_omp_seconds));
    /*[]*/
    _imopVarPre530 = ((serial_ref_seconds / serial_ref_seconds));
    /*[]*/
    printf("Speedup, N/A, N/A, %g, %g, %g, %g, %g\n", _imopVarPre530, _imopVarPre529, _imopVarPre528, _imopVarPre527, _imopVarPre526);
    /*[]*/
    /*[]*/
    double _imopVarPre535;
    /*[]*/
    double _imopVarPre536;
    /*[]*/
    double _imopVarPre537;
    /*[]*/
    double _imopVarPre538;
    /*[]*/
    _imopVarPre535 = (((bestcase_omp_seconds / manual_omp_seconds) * 100.0));
    /*[]*/
    _imopVarPre536 = (((bestcase_omp_seconds / dynamic_omp_seconds) * 100.0));
    /*[]*/
    _imopVarPre537 = (((bestcase_omp_seconds / static_omp_seconds) * 100.0));
    /*[]*/
    _imopVarPre538 = (((bestcase_omp_seconds / bestcase_omp_seconds) * 100.0));
    /*[]*/
    printf("Efficacy, N/A, N/A, N/A, %.2f%%, %.2f%%, %.2f%%, %.2f%%\n", _imopVarPre538, _imopVarPre537, _imopVarPre536, _imopVarPre535);
    /*[]*/
    /*[]*/
    double _imopVarPre543;
    /*[]*/
    double _imopVarPre544;
    /*[]*/
    double _imopVarPre545;
    /*[]*/
    double _imopVarPre546;
    /*[]*/
    _imopVarPre543 = (((manual_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*[]*/
    _imopVarPre544 = (((dynamic_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*[]*/
    _imopVarPre545 = (((static_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*[]*/
    _imopVarPre546 = (((bestcase_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*[]*/
    printf("Overhead, N/A, N/A, N/A, %.2f, %.2f, %.2f, %.2f\n", _imopVarPre546, _imopVarPre545, _imopVarPre544, _imopVarPre543);
    /*[]*/
    /*[]*/
    return 0;
}
