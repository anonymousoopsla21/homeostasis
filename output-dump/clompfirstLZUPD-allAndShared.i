
/*READ_S: []
WRITE_S: []*/
typedef int __int32_t;
/*READ_S: []
WRITE_S: []*/
typedef long long __int64_t;
/*READ_S: []
WRITE_S: []*/
typedef long unsigned int __darwin_size_t;
/*READ_S: []
WRITE_S: []*/
typedef long __darwin_time_t;
/*READ_S: []
WRITE_S: []*/
typedef __int64_t __darwin_off_t;
/*READ_S: []
WRITE_S: []*/
typedef __int32_t __darwin_suseconds_t;
/*READ_S: []
WRITE_S: []*/
typedef __darwin_size_t size_t;
/*READ_S: []
WRITE_S: []*/
typedef __darwin_off_t fpos_t;
/*READ_S: []
WRITE_S: []*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
typedef struct __sFILE FILE;
/*READ_S: []
WRITE_S: [__stderrp]*/
extern FILE *__stderrp;
/*READ_S: []
WRITE_S: [fprintf]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: []*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*READ_S: []
WRITE_S: [exit]*/
void exit(int );
/*READ_S: []
WRITE_S: [malloc]*/
void *malloc(size_t __size);
/*READ_S: []
WRITE_S: [strtol]*/
long strtol(const char *__str, char **__endptr , int __base);
/*READ_S: []
WRITE_S: [omp_set_num_threads]*/
extern void omp_set_num_threads(int );
/*READ_S: []
WRITE_S: [omp_get_num_threads]*/
extern int omp_get_num_threads(void );
/*READ_S: []
WRITE_S: [omp_get_max_threads]*/
extern int omp_get_max_threads(void );
/*READ_S: []
WRITE_S: [omp_get_thread_num]*/
extern int omp_get_thread_num(void );
/*READ_S: []
WRITE_S: [gethostname]*/
int gethostname(char *, size_t );
/*READ_S: []
WRITE_S: []*/
typedef __darwin_time_t time_t;
/*READ_S: []
WRITE_S: [suboptarg]*/
extern char *suboptarg;
/*READ_S: []
WRITE_S: []*/
struct fssearchblock ;
/*READ_S: []
WRITE_S: []*/
struct searchstate ;
/*READ_S: []
WRITE_S: [strcmp]*/
int strcmp(const char *__s1, const char *__s2);
/*READ_S: []
WRITE_S: [time]*/
time_t time(time_t *);
/*READ_S: []
WRITE_S: [ctime_r]*/
char *ctime_r(const time_t *, char *);
/*READ_S: []
WRITE_S: [gettimeofday]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*READ_S: []
WRITE_S: [ceil]*/
extern double ceil(double );
/*READ_S: []
WRITE_S: [nearbyint]*/
extern double nearbyint(double );
/*READ_S: []
WRITE_S: [CLOMP_numThreads]*/
long CLOMP_numThreads = -2;
/*READ_S: []
WRITE_S: [CLOMP_allocThreads]*/
long CLOMP_allocThreads = -2;
/*READ_S: []
WRITE_S: [CLOMP_numParts]*/
long CLOMP_numParts = -1;
/*READ_S: []
WRITE_S: [CLOMP_zonesPerPart]*/
long CLOMP_zonesPerPart = -1;
/*READ_S: []
WRITE_S: [CLOMP_flopScale]*/
long CLOMP_flopScale = -1;
/*READ_S: []
WRITE_S: [CLOMP_timeScale]*/
long CLOMP_timeScale = -1;
/*READ_S: []
WRITE_S: [CLOMP_zoneSize]*/
long CLOMP_zoneSize = -1;
/*READ_S: []
WRITE_S: [CLOMP_exe_name]*/
char *CLOMP_exe_name = ((void *) 0);
/*READ_S: []
WRITE_S: []*/
struct _Zone {
    long zoneId;
    long partId;
    double value;
    struct _Zone *nextZone;
} ;
/*READ_S: []
WRITE_S: []*/
typedef struct _Zone Zone;
/*READ_S: []
WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
typedef struct _Part Part;
/*READ_S: []
WRITE_S: [partArray]*/
Part **partArray = ((void *) 0);
/*READ_S: []
WRITE_S: [CLOMP_partRatio]*/
double CLOMP_partRatio = 0.0;
/*READ_S: []
WRITE_S: [CLOMP_num_iterations]*/
long CLOMP_num_iterations = 0.0;
/*READ_S: []
WRITE_S: [CLOMP_max_residue]*/
double CLOMP_max_residue = 0.0;
/*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
WRITE_S: []*/
void print_usage() {
/*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "Usage: %s numThreads allocThreads numParts \\\n" "           zonesPerPart zoneSize flopScale timeScale\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  numThreads: Number of OpenMP threads to use (-1 for system default)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  allocThreads: #threads when allocating data (-1 for numThreads)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  numParts: Number of independent pieces of work (loop iterations)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  zonesPerPart: Number of zones in the first part (3 flops/zone/part)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  zoneSize: Bytes in zone, only first ~32 used (512 nominal, >= 32 valid)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  flopScale: Scales flops/zone to increase memory reuse (1 nominal, >=1 Valid)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  timeScale: Scales target time per test (10-100 nominal, 1-10000 Valid)\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "Some interesting testcases (last number controls run time):\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "           Target input:    %s -1 1 64 100 32 1 100\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "   Target/NUMA friendly:    %s -1 -1 64 100 32 1 100\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "         Cache friendly:    %s -1 1 64 1 32 100 100\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "  Cache/OpenMP friendly:    %s -1 1 64 1 32 1000 100\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "        Mem-bound input:    %s -1 1 64 10000 512 1 100\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "Mem-bound/NUMA friendly:    %s -1 -1 64 10000 512 1 100\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [_imopVarPre142, CLOMP_exe_name, fprintf, __stderrp, exit, print_usage, strcmp, strtol, _imopVarPre148, _imopVarPre154]
WRITE_S: []*/
long convert_to_positive_long(const char *parm_name, const char *parm_val) {
/*READ_S: [_imopVarPre142, CLOMP_exe_name, fprintf, __stderrp, exit, print_usage, strcmp, strtol, _imopVarPre148, _imopVarPre154]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    long val;
    /*READ_S: []
    WRITE_S: []*/
    char *endPtr;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre142;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre142 = (parm_name == ((void *) 0));
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (!_imopVarPre142) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre142 = (parm_val == ((void *) 0));
    }
    /*READ_S: [_imopVarPre142]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre142, fprintf, __stderrp, exit]
    WRITE_S: []*/
    if (_imopVarPre142) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Error in convert_to_positive_long: Passed NULL pointers!\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    char **_imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre145;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre144 = &endPtr;
    /*READ_S: [strtol]
    WRITE_S: []*/
    _imopVarPre145 = strtol(parm_val, _imopVarPre144, 0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    val = _imopVarPre145;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
    if (endPtr[0] != 0) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Error converting '%s' parameter value '%s' to long at '%s'!\n", parm_name, parm_val, endPtr);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre147;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre148;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre152;
    /*READ_S: [strcmp]
    WRITE_S: []*/
    _imopVarPre147 = strcmp(parm_name, "numThreads");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre148 = (_imopVarPre147 == 0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [strcmp]
    WRITE_S: []*/
    if (!_imopVarPre148) {
    /*READ_S: [strcmp]
    WRITE_S: []*/
        /*READ_S: [strcmp]
        WRITE_S: []*/
        _imopVarPre152 = strcmp(parm_name, "allocThreads");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre148 = (_imopVarPre152 == 0);
    }
    /*READ_S: [_imopVarPre148]
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, exit, print_usage, _imopVarPre148, _imopVarPre154]
    WRITE_S: []*/
    if (_imopVarPre148) {
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, exit, print_usage, _imopVarPre154]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre154;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre154 = (val < 1);
        /*READ_S: [_imopVarPre154]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre154]
        WRITE_S: []*/
        if (_imopVarPre154) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre154 = (val != -1);
        }
        /*READ_S: [_imopVarPre154]
        WRITE_S: []*/
        /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, exit, print_usage, _imopVarPre154]
        WRITE_S: []*/
        if (_imopVarPre154) {
        /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, exit, print_usage]
        WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
            fprintf(__stderrp, "Invalid value %ld for parameter %s, must be > 0 or -1!\n", val, parm_name);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [print_usage]
            WRITE_S: []*/
            print_usage();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [exit]
            WRITE_S: []*/
            exit(1);
            /*READ_S: []
            WRITE_S: []*/
        }
    } else {
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, print_usage, exit]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, print_usage, exit]
        WRITE_S: []*/
        if (val < 1) {
        /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, print_usage, exit]
        WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
            fprintf(__stderrp, "Invalid value %ld for parameter %s, must be > 0\n", val, parm_name);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [print_usage]
            WRITE_S: []*/
            print_usage();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [exit]
            WRITE_S: []*/
            exit(1);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return val;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#3, heapCell#2, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void update_part(Part *part, double incoming_deposit) {
/*READ_S: [heapCell#3, heapCell#2, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    Zone *zone;
    /*READ_S: []
    WRITE_S: []*/
    double deposit_ratio;
    /*READ_S: []
    WRITE_S: []*/
    double remaining_deposit;
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long scale_count;
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->update_count++;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    deposit_ratio = part->deposit_ratio;
    /*READ_S: []
    WRITE_S: []*/
    remaining_deposit = incoming_deposit;
    /*READ_S: [CLOMP_flopScale]
    WRITE_S: []*/
    /*READ_S: [heapCell#3, heapCell#2, CLOMP_flopScale]
    WRITE_S: [heapCell#3]*/
    if (CLOMP_flopScale == 1) {
    /*READ_S: [heapCell#3, heapCell#2]
    WRITE_S: [heapCell#3]*/
        /*READ_S: [heapCell#2]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#3]
        WRITE_S: []*/
        /*READ_S: [heapCell#3, heapCell#2]
        WRITE_S: [heapCell#3]*/
        for (zone = part->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*READ_S: [heapCell#3]
        WRITE_S: [heapCell#3]*/
            /*READ_S: []
            WRITE_S: []*/
            deposit = remaining_deposit * deposit_ratio;
            /*READ_S: [heapCell#3]
            WRITE_S: [heapCell#3]*/
            zone->value += deposit;
            /*READ_S: []
            WRITE_S: []*/
            remaining_deposit -= deposit;
        }
    } else {
    /*READ_S: [heapCell#3, heapCell#2, CLOMP_flopScale]
    WRITE_S: [heapCell#3]*/
        /*READ_S: [heapCell#2]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#3]
        WRITE_S: []*/
        /*READ_S: [heapCell#3, heapCell#2, CLOMP_flopScale]
        WRITE_S: [heapCell#3]*/
        for (zone = part->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*READ_S: [heapCell#3, CLOMP_flopScale]
        WRITE_S: [heapCell#3]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [CLOMP_flopScale]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#3, CLOMP_flopScale]
            WRITE_S: [heapCell#3]*/
            for (scale_count = 0; scale_count < CLOMP_flopScale; scale_count++) {
            /*READ_S: [heapCell#3]
            WRITE_S: [heapCell#3]*/
                /*READ_S: []
                WRITE_S: []*/
                deposit = remaining_deposit * deposit_ratio;
                /*READ_S: [heapCell#3]
                WRITE_S: [heapCell#3]*/
                zone->value += deposit;
                /*READ_S: []
                WRITE_S: []*/
                remaining_deposit -= deposit;
            }
        }
    }
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->residue = remaining_deposit;
}
/*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void reinitialize_parts() {
/*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    Zone *zone;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#3]
        WRITE_S: []*/
        /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#3]*/
        for (zone = partArray[pidx]->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*READ_S: [heapCell#3]
        WRITE_S: [heapCell#3]*/
            /*READ_S: [heapCell#3]
            WRITE_S: [heapCell#3]*/
            zone->value = 0.0;
        }
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#2]*/
        partArray[pidx]->residue = 0.0;
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#2]*/
        partArray[pidx]->update_count = 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre156;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre156 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre156, 0.0);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [time, strcmp, printf, ctime_r, omp_get_max_threads]
WRITE_S: []*/
void print_start_message(const char *desc) {
/*READ_S: [time, strcmp, printf, ctime_r, omp_get_max_threads]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    time_t starttime;
    /*READ_S: []
    WRITE_S: []*/
    char startdate[50];
    /*READ_S: []
    WRITE_S: []*/
    signed long int *_imopVarPre158;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre158 = &starttime;
    /*READ_S: [time]
    WRITE_S: []*/
    time(_imopVarPre158);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    signed long int *_imopVarPre160;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre160 = &starttime;
    /*READ_S: [ctime_r]
    WRITE_S: []*/
    ctime_r(_imopVarPre160, startdate);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("%13s  Started: %s", desc, startdate);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre162;
    /*READ_S: [strcmp]
    WRITE_S: []*/
    _imopVarPre162 = strcmp(desc, "calc_deposit");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [strcmp, printf, omp_get_max_threads]
    WRITE_S: []*/
    if (_imopVarPre162 != 0) {
    /*READ_S: [strcmp, printf, omp_get_max_threads]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre164;
        /*READ_S: [strcmp]
        WRITE_S: []*/
        _imopVarPre164 = strcmp(desc, "Serial Ref");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf, omp_get_max_threads]
        WRITE_S: []*/
        if (_imopVarPre164 != 0) {
        /*READ_S: [printf, omp_get_max_threads]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre166;
            /*READ_S: [omp_get_max_threads]
            WRITE_S: []*/
            _imopVarPre166 = omp_get_max_threads();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("%13s #Threads: %d\n", desc, _imopVarPre166);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("%13s #Threads: N/A\n", desc);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fprintf, __stderrp, exit, bestcase_omp_end_ts, gettimeofday]
WRITE_S: [bestcase_omp_end_ts]*/
void get_timestamp(struct timeval *ts) {
/*READ_S: [fprintf, __stderrp, exit, bestcase_omp_end_ts, gettimeofday]
WRITE_S: [bestcase_omp_end_ts]*/
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre169;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre170;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre169 = ((void *) 0);
    /*READ_S: [bestcase_omp_end_ts, gettimeofday]
    WRITE_S: [bestcase_omp_end_ts]*/
    _imopVarPre170 = gettimeofday(ts, _imopVarPre169);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
    if (_imopVarPre170 != 0) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Unable to get time of day, exiting\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [printf]
WRITE_S: []*/
void print_pseudocode(const char *desc, const char *pseudocode) {
/*READ_S: [printf]
WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("%13s:| %s\n", desc, pseudocode);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [omp_barrier_end_ts, serial_ref_start_ts, serial_ref_end_ts, dynamic_omp_start_ts, dynamic_omp_end_ts, calc_deposit_start_ts, manual_omp_end_ts, CLOMP_num_iterations, calc_deposit_end_ts, _imopVarPre174, omp_barrier_start_ts, printf, _imopVarPre182, static_omp_end_ts, bestcase_omp_end_ts, static_omp_start_ts, bestcase_omp_start_ts, manual_omp_start_ts]
WRITE_S: []*/
double print_timestats(const char *desc, struct timeval *start_ts , struct timeval *end_ts , double base_seconds , double bestcase_seconds) {
/*READ_S: [omp_barrier_end_ts, serial_ref_start_ts, serial_ref_end_ts, dynamic_omp_start_ts, dynamic_omp_end_ts, calc_deposit_start_ts, manual_omp_end_ts, CLOMP_num_iterations, calc_deposit_end_ts, _imopVarPre174, omp_barrier_start_ts, printf, _imopVarPre182, static_omp_end_ts, bestcase_omp_end_ts, static_omp_start_ts, bestcase_omp_start_ts, manual_omp_start_ts]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double seconds;
    /*READ_S: [omp_barrier_end_ts, serial_ref_start_ts, serial_ref_end_ts, dynamic_omp_start_ts, dynamic_omp_end_ts, calc_deposit_start_ts, manual_omp_end_ts, calc_deposit_end_ts, omp_barrier_start_ts, static_omp_end_ts, bestcase_omp_end_ts, static_omp_start_ts, bestcase_omp_start_ts, manual_omp_start_ts]
    WRITE_S: []*/
    seconds = ((double) end_ts->tv_sec + ((double) end_ts->tv_usec * 1e-6)) - ((double) start_ts->tv_sec + ((double) start_ts->tv_usec * 1e-6));
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("%13s  Runtime: %g (wallclock, in seconds)\n", desc, seconds);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre172;
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre172 = (seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("%13s  us/Loop: %g (wallclock, in microseconds)\n", desc, _imopVarPre172);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre174;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre174 = (base_seconds > 0.0);
    /*READ_S: [_imopVarPre174]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre174]
    WRITE_S: []*/
    if (_imopVarPre174) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre174 = (seconds > 0.0);
    }
    /*READ_S: [_imopVarPre174]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre174, printf]
    WRITE_S: []*/
    if (_imopVarPre174) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (base_seconds > seconds) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre176;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre176 = base_seconds / seconds;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("%13s  Speedup: %.2f\n", desc, _imopVarPre176);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre179;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre180;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre179 = seconds / base_seconds;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre180 = base_seconds / seconds;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("%13s  Speedup: %.2f (%.2fX slowdown)\n", desc, _imopVarPre180, _imopVarPre179);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre182;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre182 = (bestcase_seconds > 0.0);
    /*READ_S: [_imopVarPre182]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre182]
    WRITE_S: []*/
    if (_imopVarPre182) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre182 = (seconds > 0.0);
    }
    /*READ_S: [_imopVarPre182]
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations, printf, _imopVarPre182]
    WRITE_S: []*/
    if (_imopVarPre182) {
    /*READ_S: [CLOMP_num_iterations, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre185;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre186;
        /*READ_S: [CLOMP_num_iterations]
        WRITE_S: []*/
        _imopVarPre185 = (bestcase_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre186 = (bestcase_seconds / seconds) * 100.0;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("%13s Efficacy: %.2f%% (of bestcase %g us/Loop)\n", desc, _imopVarPre186, _imopVarPre185);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre188;
        /*READ_S: [CLOMP_num_iterations]
        WRITE_S: []*/
        _imopVarPre188 = ((seconds - bestcase_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("%13s Overhead: %g (versus bestcase, in us/Loop)\n", desc, _imopVarPre188);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("---------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return seconds;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fprintf, CLOMP_numParts, _imopVarPre209, __stderrp, partArray, _imopVarPre212, is_reference, CLOMP_num_iterations, heapCell#3, exit, strcmp, printf, heapCell#2, CLOMP_max_residue, heapCell#1]
WRITE_S: [heapCell#2]*/
void print_data_stats(const char *desc) {
/*READ_S: [fprintf, CLOMP_numParts, _imopVarPre209, __stderrp, partArray, _imopVarPre212, is_reference, CLOMP_num_iterations, heapCell#3, exit, strcmp, printf, heapCell#2, CLOMP_max_residue, heapCell#1]
WRITE_S: [heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double value_sum;
    /*READ_S: []
    WRITE_S: []*/
    double residue_sum;
    /*READ_S: []
    WRITE_S: []*/
    double last_value;
    /*READ_S: []
    WRITE_S: []*/
    double dtotal;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    Zone *zone;
    /*READ_S: []
    WRITE_S: []*/
    int is_reference;
    /*READ_S: []
    WRITE_S: []*/
    int error_count;
    /*READ_S: []
    WRITE_S: []*/
    value_sum = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    residue_sum = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre190;
    /*READ_S: [strcmp]
    WRITE_S: []*/
    _imopVarPre190 = strcmp(desc, "Serial Ref");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (_imopVarPre190 == 0) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        is_reference = 1;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        is_reference = 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    error_count = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, CLOMP_numParts, is_reference, __stderrp, heapCell#3, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [fprintf, is_reference, __stderrp, heapCell#3, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#2]*/
        /*READ_S: [is_reference]
        WRITE_S: []*/
        /*READ_S: [fprintf, is_reference, __stderrp, heapCell#3, partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#2]*/
        if (is_reference) {
        /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#2]*/
            /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
            WRITE_S: [heapCell#2]*/
            partArray[pidx]->expected_first_value = partArray[pidx]->firstZone->value;
            /*READ_S: [partArray, heapCell#2, heapCell#1]
            WRITE_S: [heapCell#2]*/
            partArray[pidx]->expected_residue = partArray[pidx]->residue;
        } else {
        /*READ_S: [fprintf, __stderrp, heapCell#3, partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
            /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp, heapCell#3, partArray, heapCell#2, heapCell#1]
            WRITE_S: []*/
            if (partArray[pidx]->expected_first_value != partArray[pidx]->firstZone->value) {
            /*READ_S: [fprintf, __stderrp, heapCell#3, partArray, heapCell#2, heapCell#1]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                error_count++;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre194;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre195;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre196;
                /*READ_S: [partArray, heapCell#2, heapCell#1]
                WRITE_S: []*/
                _imopVarPre194 = partArray[pidx]->expected_first_value;
                /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
                WRITE_S: []*/
                _imopVarPre195 = partArray[pidx]->firstZone->value;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre196 = (int) pidx;
                /*READ_S: [fprintf, __stderrp]
                WRITE_S: []*/
                fprintf(__stderrp, "%s check failure: part %i first zone value (%g) != reference value (%g)!\n", desc, _imopVarPre196, _imopVarPre195, _imopVarPre194);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [partArray, heapCell#2, heapCell#1]
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp, partArray, heapCell#2, heapCell#1]
            WRITE_S: []*/
            if (partArray[pidx]->expected_residue != partArray[pidx]->residue) {
            /*READ_S: [fprintf, __stderrp, partArray, heapCell#2, heapCell#1]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                error_count++;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre200;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre201;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre202;
                /*READ_S: [partArray, heapCell#2, heapCell#1]
                WRITE_S: []*/
                _imopVarPre200 = partArray[pidx]->expected_residue;
                /*READ_S: [partArray, heapCell#2, heapCell#1]
                WRITE_S: []*/
                _imopVarPre201 = partArray[pidx]->residue;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre202 = (int) pidx;
                /*READ_S: [fprintf, __stderrp]
                WRITE_S: []*/
                fprintf(__stderrp, "%s check failure: part %i residue (%g) != reference residue (%g)!\n", desc, _imopVarPre202, _imopVarPre201, _imopVarPre200);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        last_value = partArray[pidx]->firstZone->value;
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#3]
        WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp, heapCell#3, partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        for (zone = partArray[pidx]->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
        /*READ_S: [fprintf, __stderrp, heapCell#3]
        WRITE_S: []*/
            /*READ_S: [heapCell#3]
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp, heapCell#3]
            WRITE_S: []*/
            if (zone->value > last_value) {
            /*READ_S: [fprintf, __stderrp, heapCell#3]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre206;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre207;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre208;
                /*READ_S: [heapCell#3]
                WRITE_S: []*/
                _imopVarPre206 = zone->value;
                /*READ_S: [heapCell#3]
                WRITE_S: []*/
                _imopVarPre207 = (int) zone->zoneId;
                /*READ_S: [heapCell#3]
                WRITE_S: []*/
                _imopVarPre208 = (int) zone->partId;
                /*READ_S: [fprintf, __stderrp]
                WRITE_S: []*/
                fprintf(__stderrp, "*** %s check failure (part %i zone %i): " "previous (%g) < current (%g)!\n", desc, _imopVarPre208, _imopVarPre207, last_value, _imopVarPre206);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                error_count++;
            }
            /*READ_S: [heapCell#3]
            WRITE_S: []*/
            value_sum += zone->value;
            /*READ_S: [heapCell#3]
            WRITE_S: []*/
            last_value = zone->value;
        }
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        residue_sum += partArray[pidx]->residue;
    }
    /*READ_S: []
    WRITE_S: []*/
    dtotal = value_sum + residue_sum;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre209;
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre209 = ((dtotal + 0.00001) < ((double) CLOMP_num_iterations * 10.0));
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    if (!_imopVarPre209) {
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
        /*READ_S: [CLOMP_num_iterations]
        WRITE_S: []*/
        _imopVarPre209 = ((dtotal - 0.00001) > ((double) CLOMP_num_iterations * 10.0));
    }
    /*READ_S: [_imopVarPre209]
    WRITE_S: []*/
    /*READ_S: [fprintf, _imopVarPre209, __stderrp, CLOMP_num_iterations]
    WRITE_S: []*/
    if (_imopVarPre209) {
    /*READ_S: [fprintf, __stderrp, CLOMP_num_iterations]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre211;
        /*READ_S: [CLOMP_num_iterations]
        WRITE_S: []*/
        _imopVarPre211 = ((double) CLOMP_num_iterations * 10.0);
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "*** %s check failure:  Total (%-.15g) != Expected (%.15g)\n", desc, dtotal, _imopVarPre211);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        error_count++;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre212;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre212 = (residue_sum < 0.0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_max_residue]
    WRITE_S: []*/
    if (!_imopVarPre212) {
    /*READ_S: [CLOMP_max_residue]
    WRITE_S: []*/
        /*READ_S: [CLOMP_max_residue]
        WRITE_S: []*/
        _imopVarPre212 = (residue_sum > (CLOMP_max_residue + 0.000001));
    }
    /*READ_S: [_imopVarPre212]
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, _imopVarPre212, CLOMP_max_residue]
    WRITE_S: []*/
    if (_imopVarPre212) {
    /*READ_S: [fprintf, __stderrp, CLOMP_max_residue]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp, CLOMP_max_residue]
        WRITE_S: []*/
        fprintf(__stderrp, "*** %s check failure: Residue (%-.15g) outside bounds 0 - %.15g\n", desc, residue_sum, CLOMP_max_residue);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        error_count++;
    }
    /*READ_S: [partArray, heapCell#2, heapCell#1]
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, partArray, exit, heapCell#2, heapCell#1]
    WRITE_S: []*/
    if (partArray[0]->update_count != 1) {
    /*READ_S: [fprintf, __stderrp, partArray, exit, heapCell#2, heapCell#1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre214;
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        _imopVarPre214 = (int) partArray[0]->update_count;
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Error in calc_deposit: Part updated %i times since last calc_deposit!\n", _imopVarPre214);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Benchmark designed to have calc_deposit called exactly once per update!\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Critical error: Exiting...\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
    if (error_count > 0) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "ERROR: %i check failures detected in '%s' data. Exiting...\n", error_count, desc);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("%13s Checksum: Sum=%-8.8g Residue=%-8.8g Total=%-.9g\n", desc, value_sum, residue_sum, dtotal);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
WRITE_S: [heapCell#2]*/
double calc_deposit() {
/*READ_S: [CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
WRITE_S: [heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double residue;
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [partArray, heapCell#2, heapCell#1]
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: []*/
    if (partArray[0]->update_count != 1) {
    /*READ_S: [fprintf, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre216;
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        _imopVarPre216 = (int) partArray[0]->update_count;
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Error in calc_deposit: Part updated %i times since last call!\n", _imopVarPre216);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Benchmark designed to have calc_deposit called exactly once per update!\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Critical error: Exiting...\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#2]*/
    partArray[0]->update_count = 0;
    /*READ_S: []
    WRITE_S: []*/
    residue = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, partArray, heapCell#2, heapCell#1]
    WRITE_S: []*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [partArray, heapCell#2, heapCell#1]
    WRITE_S: []*/
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        residue += partArray[pidx]->residue;
    }
    /*READ_S: [CLOMP_partRatio]
    WRITE_S: []*/
    deposit = (1.0 + residue) * CLOMP_partRatio;
    /*READ_S: []
    WRITE_S: []*/
    return deposit;
}
/*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, CLOMP_num_iterations, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void do_calc_deposit_only() {
/*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, CLOMP_num_iterations, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long iteration;
    /*READ_S: []
    WRITE_S: []*/
    long subcycle;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, CLOMP_num_iterations, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
        for (subcycle = 0; subcycle < 10; subcycle++) {
        /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: [partArray, heapCell#2, heapCell#1]
            WRITE_S: [heapCell#2]*/
            partArray[0]->update_count = 1;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre217;
            /*READ_S: [calc_deposit]
            WRITE_S: []*/
            _imopVarPre217 = calc_deposit();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
            WRITE_S: [heapCell#3]*/
            partArray[0]->firstZone->value = _imopVarPre217;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [num_iterations]
WRITE_S: []*/
void do_omp_barrier_only(long num_iterations) {
/*READ_S: [num_iterations]
WRITE_S: []*/
    /*READ_S: [num_iterations]
    WRITE_S: []*/
#pragma omp parallel
    {
    /*READ_S: [num_iterations]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        long iteration;
        /*READ_S: []
        WRITE_S: []*/
        long subcycle;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [num_iterations]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [num_iterations]
        WRITE_S: []*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (subcycle = 0; subcycle < 10; subcycle++) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
        }
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void serial_ref_module1() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre219;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre219 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre219, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void serial_ref_module2() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre221;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre221 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre221, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre223;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre223 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre223, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void serial_ref_module3() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre225;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre225 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre225, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre227;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre227 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre227, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre229;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre229 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre229, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void serial_ref_module4() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre231;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre231 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre231, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre233;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre233 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre233, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre235;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre235 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre235, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre237;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre237 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre237, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: [calc_deposit, serial_ref_module4, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, serial_ref_module2, serial_ref_module3, serial_ref_module1, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void serial_ref_cycle() {
/*READ_S: [calc_deposit, serial_ref_module4, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, serial_ref_module2, serial_ref_module3, serial_ref_module1, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: [serial_ref_module1]
    WRITE_S: []*/
    serial_ref_module1();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [serial_ref_module2]
    WRITE_S: []*/
    serial_ref_module2();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [serial_ref_module3]
    WRITE_S: []*/
    serial_ref_module3();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [serial_ref_module4]
    WRITE_S: []*/
    serial_ref_module4();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [calc_deposit, serial_ref_module4, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, serial_ref_module2, serial_ref_module3, serial_ref_cycle, serial_ref_module1, heapCell#3, CLOMP_num_iterations, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void do_serial_ref_version() {
/*READ_S: [calc_deposit, serial_ref_module4, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, serial_ref_module2, serial_ref_module3, serial_ref_cycle, serial_ref_module1, heapCell#3, CLOMP_num_iterations, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long iteration;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [calc_deposit, serial_ref_module4, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, serial_ref_module2, serial_ref_module3, serial_ref_cycle, serial_ref_module1, heapCell#3, CLOMP_num_iterations, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*READ_S: [calc_deposit, serial_ref_module4, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, serial_ref_module2, serial_ref_module3, serial_ref_cycle, serial_ref_module1, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [serial_ref_cycle]
        WRITE_S: []*/
        serial_ref_cycle();
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, deposit, __stderrp, partArray, pidx, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void static_omp_module1() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, deposit, __stderrp, partArray, pidx, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, pidx, deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, pidx, deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, pidx, deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre239;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre239 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre239, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, pidx, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void static_omp_module2() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, pidx, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre241;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre241 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre241, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre243;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre243 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre243, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, pidx, heapCell#3, exit, update_part, deposit, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void static_omp_module3() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, pidx, heapCell#3, exit, update_part, deposit, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre245;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre245 = partArray[pidx];
            /*READ_S: [update_part, deposit]
            WRITE_S: []*/
            update_part(_imopVarPre245, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre247;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre247 = partArray[pidx];
            /*READ_S: [update_part, deposit]
            WRITE_S: []*/
            update_part(_imopVarPre247, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, deposit, heapCell#2, pidx, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre249;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre249 = partArray[pidx];
            /*READ_S: [update_part, deposit]
            WRITE_S: []*/
            update_part(_imopVarPre249, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, deposit, __stderrp, partArray, heapCell#3, pidx, exit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void static_omp_module4() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, deposit, __stderrp, partArray, heapCell#3, pidx, exit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre251;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre251 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre251, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre253;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre253 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre253, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre255;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre255 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre255, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, pidx, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre257;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre257 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre257, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, static_omp_module4, CLOMP_partRatio, static_omp_module3, deposit, pidx, deposit, __stderrp, partArray, pidx, deposit, pidx, heapCell#3, pidx, exit, update_part, deposit, static_omp_module2, heapCell#2, static_omp_module1, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void static_omp_cycle() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, static_omp_module4, CLOMP_partRatio, static_omp_module3, deposit, pidx, deposit, __stderrp, partArray, pidx, deposit, pidx, heapCell#3, pidx, exit, update_part, deposit, static_omp_module2, heapCell#2, static_omp_module1, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: [static_omp_module1]
    WRITE_S: []*/
    static_omp_module1();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [static_omp_module2]
    WRITE_S: []*/
    static_omp_module2();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [static_omp_module3]
    WRITE_S: []*/
    static_omp_module3();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [static_omp_module4]
    WRITE_S: []*/
    static_omp_module4();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [CLOMP_numParts, fprintf, static_omp_module3, deposit, pidx, pidx, deposit, heapCell#2, static_omp_module1, calc_deposit, static_omp_module4, CLOMP_partRatio, deposit, __stderrp, static_omp_cycle, partArray, pidx, CLOMP_num_iterations, heapCell#3, pidx, exit, update_part, deposit, static_omp_module2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void do_static_omp_version() {
/*READ_S: [CLOMP_numParts, fprintf, static_omp_module3, deposit, pidx, pidx, deposit, heapCell#2, static_omp_module1, calc_deposit, static_omp_module4, CLOMP_partRatio, deposit, __stderrp, static_omp_cycle, partArray, pidx, CLOMP_num_iterations, heapCell#3, pidx, exit, update_part, deposit, static_omp_module2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long iteration;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, fprintf, static_omp_module3, deposit, pidx, pidx, deposit, heapCell#2, static_omp_module1, calc_deposit, static_omp_module4, CLOMP_partRatio, deposit, __stderrp, static_omp_cycle, partArray, pidx, CLOMP_num_iterations, heapCell#3, pidx, exit, update_part, deposit, static_omp_module2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*READ_S: [CLOMP_numParts, fprintf, static_omp_module3, deposit, pidx, pidx, deposit, heapCell#2, static_omp_module1, calc_deposit, static_omp_module4, CLOMP_partRatio, deposit, __stderrp, static_omp_cycle, partArray, pidx, heapCell#3, pidx, exit, update_part, deposit, static_omp_module2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [static_omp_cycle]
        WRITE_S: []*/
        static_omp_cycle();
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, pidx, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1, deposit]
WRITE_S: [heapCell#3, heapCell#2]*/
void dynamic_omp_module1() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, pidx, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1, deposit]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, deposit, heapCell#1, pidx]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, deposit, heapCell#1, pidx]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, deposit, heapCell#1, pidx]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, deposit, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre259;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre259 = partArray[pidx];
            /*READ_S: [update_part, deposit]
            WRITE_S: []*/
            update_part(_imopVarPre259, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, pidx, heapCell#3, exit, deposit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void dynamic_omp_module2() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, pidx, heapCell#3, exit, deposit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre261;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre261 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre261, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre263;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre263 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre263, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, deposit, __stderrp, partArray, heapCell#3, pidx, exit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void dynamic_omp_module3() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, deposit, __stderrp, partArray, heapCell#3, pidx, exit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre265;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre265 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre265, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre267;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre267 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre267, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, deposit, heapCell#3, pidx, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre269;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre269 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre269, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, heapCell#3, exit, pidx, deposit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void dynamic_omp_module4() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, heapCell#3, exit, pidx, deposit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, pidx, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, pidx, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, pidx, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre271;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre271 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre271, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, pidx, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre273;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre273 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre273, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, deposit, pidx, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, deposit, pidx, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, partArray, deposit, pidx, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre275;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre275 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre275, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [calc_deposit]
    WRITE_S: []*/
    deposit = calc_deposit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, pidx, deposit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(pidx)
    {
    /*READ_S: [CLOMP_numParts, heapCell#3, pidx, deposit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [CLOMP_numParts, heapCell#3, pidx, deposit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(dynamic) nowait
        /*READ_S: [pidx]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*READ_S: [heapCell#3, deposit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            struct _Part *_imopVarPre277;
            /*READ_S: [partArray, heapCell#1]
            WRITE_S: []*/
            _imopVarPre277 = partArray[pidx];
            /*READ_S: [deposit, update_part]
            WRITE_S: []*/
            update_part(_imopVarPre277, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, dynamic_omp_module3, deposit, __stderrp, dynamic_omp_module2, partArray, dynamic_omp_module4, pidx, pidx, heapCell#3, pidx, deposit, pidx, exit, deposit, update_part, dynamic_omp_module1, heapCell#2, heapCell#1, CLOMP_flopScale, deposit]
WRITE_S: [heapCell#3, heapCell#2]*/
void dynamic_omp_cycle() {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, dynamic_omp_module3, deposit, __stderrp, dynamic_omp_module2, partArray, dynamic_omp_module4, pidx, pidx, heapCell#3, pidx, deposit, pidx, exit, deposit, update_part, dynamic_omp_module1, heapCell#2, heapCell#1, CLOMP_flopScale, deposit]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: [dynamic_omp_module1]
    WRITE_S: []*/
    dynamic_omp_module1();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dynamic_omp_module2]
    WRITE_S: []*/
    dynamic_omp_module2();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dynamic_omp_module3]
    WRITE_S: []*/
    dynamic_omp_module3();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dynamic_omp_module4]
    WRITE_S: []*/
    dynamic_omp_module4();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [CLOMP_numParts, fprintf, dynamic_omp_module3, pidx, deposit, deposit, heapCell#2, deposit, calc_deposit, CLOMP_partRatio, deposit, __stderrp, dynamic_omp_module2, partArray, dynamic_omp_module4, pidx, dynamic_omp_cycle, pidx, heapCell#3, CLOMP_num_iterations, pidx, exit, update_part, dynamic_omp_module1, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void do_dynamic_omp_version() {
/*READ_S: [CLOMP_numParts, fprintf, dynamic_omp_module3, pidx, deposit, deposit, heapCell#2, deposit, calc_deposit, CLOMP_partRatio, deposit, __stderrp, dynamic_omp_module2, partArray, dynamic_omp_module4, pidx, dynamic_omp_cycle, pidx, heapCell#3, CLOMP_num_iterations, pidx, exit, update_part, dynamic_omp_module1, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long iteration;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, fprintf, dynamic_omp_module3, pidx, deposit, deposit, heapCell#2, deposit, calc_deposit, CLOMP_partRatio, deposit, __stderrp, dynamic_omp_module2, partArray, dynamic_omp_module4, pidx, dynamic_omp_cycle, pidx, heapCell#3, CLOMP_num_iterations, pidx, exit, update_part, dynamic_omp_module1, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
    /*READ_S: [CLOMP_numParts, fprintf, dynamic_omp_module3, pidx, deposit, deposit, heapCell#2, deposit, calc_deposit, CLOMP_partRatio, deposit, __stderrp, dynamic_omp_module2, partArray, dynamic_omp_module4, pidx, dynamic_omp_cycle, pidx, heapCell#3, pidx, exit, update_part, dynamic_omp_module1, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [dynamic_omp_cycle]
        WRITE_S: []*/
        dynamic_omp_cycle();
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [deposit, heapCell#3, heapCell#2]*/
void manual_omp_module1(int startPidx, int endPidx) {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [deposit, heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: [deposit]*/
    static double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [deposit, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre279;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre279 = partArray[pidx];
        /*READ_S: [deposit, update_part]
        WRITE_S: []*/
        update_part(_imopVarPre279, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, heapCell#3, exit, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, deposit, heapCell#2]*/
void manual_omp_module2(int startPidx, int endPidx) {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, heapCell#3, exit, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, deposit, heapCell#2]*/
    /*READ_S: []
    WRITE_S: [deposit]*/
    static double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre281;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre281 = partArray[pidx];
        /*READ_S: [update_part, deposit]
        WRITE_S: []*/
        update_part(_imopVarPre281, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre283;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre283 = partArray[pidx];
        /*READ_S: [update_part, deposit]
        WRITE_S: []*/
        update_part(_imopVarPre283, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, deposit, heapCell#2]*/
void manual_omp_module3(int startPidx, int endPidx) {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, deposit, heapCell#2]*/
    /*READ_S: []
    WRITE_S: [deposit]*/
    static double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, deposit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, deposit, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre285;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre285 = partArray[pidx];
        /*READ_S: [deposit, update_part]
        WRITE_S: []*/
        update_part(_imopVarPre285, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre287;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre287 = partArray[pidx];
        /*READ_S: [deposit, update_part]
        WRITE_S: []*/
        update_part(_imopVarPre287, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, deposit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre289;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre289 = partArray[pidx];
        /*READ_S: [deposit, update_part]
        WRITE_S: []*/
        update_part(_imopVarPre289, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, deposit, heapCell#2]*/
void manual_omp_module4(int startPidx, int endPidx) {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, deposit, heapCell#3, exit, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, deposit, heapCell#2]*/
    /*READ_S: []
    WRITE_S: [deposit]*/
    static double deposit;
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre291;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre291 = partArray[pidx];
        /*READ_S: [update_part, deposit]
        WRITE_S: []*/
        update_part(_imopVarPre291, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre293;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre293 = partArray[pidx];
        /*READ_S: [update_part, deposit]
        WRITE_S: []*/
        update_part(_imopVarPre293, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre295;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre295 = partArray[pidx];
        /*READ_S: [update_part, deposit]
        WRITE_S: []*/
        update_part(_imopVarPre295, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
#pragma omp single nowait
    {
    /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [deposit, heapCell#2]*/
        /*READ_S: [calc_deposit]
        WRITE_S: []*/
        deposit = calc_deposit();
        /*READ_S: []
        WRITE_S: [deposit]*/
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, deposit, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre297;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre297 = partArray[pidx];
        /*READ_S: [update_part, deposit]
        WRITE_S: []*/
        update_part(_imopVarPre297, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, manual_omp_module1, __stderrp, manual_omp_module2, partArray, deposit, manual_omp_module3, manual_omp_module4, deposit, deposit, heapCell#3, exit, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
void manual_omp_cycle(int startPidx, int endPidx) {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, manual_omp_module1, __stderrp, manual_omp_module2, partArray, deposit, manual_omp_module3, manual_omp_module4, deposit, deposit, heapCell#3, exit, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
    /*READ_S: [manual_omp_module1]
    WRITE_S: []*/
    manual_omp_module1(startPidx, endPidx);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [manual_omp_module2]
    WRITE_S: []*/
    manual_omp_module2(startPidx, endPidx);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [manual_omp_module3]
    WRITE_S: []*/
    manual_omp_module3(startPidx, endPidx);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [manual_omp_module4]
    WRITE_S: []*/
    manual_omp_module4(startPidx, endPidx);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [CLOMP_numParts, fprintf, manual_omp_module2, nearbyint, manual_omp_module4, deposit, num_iterations, deposit, printf, heapCell#2, calc_deposit, CLOMP_partRatio, manual_omp_module1, __stderrp, partArray, deposit, omp_get_num_threads, manual_omp_module3, omp_get_thread_num, heapCell#3, manual_omp_cycle, exit, update_part, deposit, CLOMP_flopScale, heapCell#1]
WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
void do_manual_omp_version(long num_iterations) {
/*READ_S: [CLOMP_numParts, fprintf, manual_omp_module2, nearbyint, manual_omp_module4, deposit, num_iterations, deposit, printf, heapCell#2, calc_deposit, CLOMP_partRatio, manual_omp_module1, __stderrp, partArray, deposit, omp_get_num_threads, manual_omp_module3, omp_get_thread_num, heapCell#3, manual_omp_cycle, exit, update_part, deposit, CLOMP_flopScale, heapCell#1]
WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
    /*READ_S: [CLOMP_numParts, fprintf, manual_omp_module2, nearbyint, manual_omp_module4, deposit, num_iterations, deposit, printf, heapCell#2, calc_deposit, CLOMP_partRatio, manual_omp_module1, __stderrp, partArray, deposit, omp_get_num_threads, manual_omp_module3, omp_get_thread_num, heapCell#3, manual_omp_cycle, exit, update_part, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
#pragma omp parallel
    {
    /*READ_S: [CLOMP_numParts, fprintf, manual_omp_module2, nearbyint, manual_omp_module4, deposit, num_iterations, deposit, printf, heapCell#2, calc_deposit, CLOMP_partRatio, manual_omp_module1, __stderrp, partArray, deposit, omp_get_num_threads, manual_omp_module3, omp_get_thread_num, heapCell#3, manual_omp_cycle, exit, update_part, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        long iteration;
        /*READ_S: []
        WRITE_S: []*/
        int startPidx;
        /*READ_S: []
        WRITE_S: []*/
        int endPidx;
        /*READ_S: []
        WRITE_S: []*/
        double dparts_per_thread;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre298;
        /*READ_S: [omp_get_thread_num]
        WRITE_S: []*/
        _imopVarPre298 = omp_get_thread_num();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int thread_id = _imopVarPre298;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre299;
        /*READ_S: [omp_get_num_threads]
        WRITE_S: []*/
        _imopVarPre299 = omp_get_num_threads();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int numThreads = _imopVarPre299;
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        dparts_per_thread = ((double) CLOMP_numParts) / ((double) numThreads);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (dparts_per_thread < 1.0) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            dparts_per_thread = 1.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre302;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre303;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre302 = ((double) thread_id) * dparts_per_thread;
        /*READ_S: [nearbyint]
        WRITE_S: []*/
        _imopVarPre303 = nearbyint(_imopVarPre302);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        startPidx = (int) _imopVarPre303;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre306;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre307;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre306 = ((double) thread_id + 1) * dparts_per_thread;
        /*READ_S: [nearbyint]
        WRITE_S: []*/
        _imopVarPre307 = nearbyint(_imopVarPre306);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        endPidx = (int) _imopVarPre307 - 1;
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        if (endPidx >= CLOMP_numParts) {
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
            /*READ_S: [CLOMP_numParts]
            WRITE_S: []*/
            endPidx = CLOMP_numParts - 1;
        }
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts, printf]
        WRITE_S: []*/
        if (startPidx >= CLOMP_numParts) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("*** No parts available for thread %i\n", thread_id);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [num_iterations]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, manual_omp_module1, __stderrp, manual_omp_module2, partArray, deposit, manual_omp_module3, manual_omp_module4, deposit, num_iterations, deposit, heapCell#3, manual_omp_cycle, exit, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
        WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
        /*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, manual_omp_module1, __stderrp, manual_omp_module2, partArray, deposit, manual_omp_module3, manual_omp_module4, deposit, deposit, heapCell#3, manual_omp_cycle, exit, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
        WRITE_S: [deposit, heapCell#3, deposit, deposit, deposit, heapCell#2]*/
            /*READ_S: [manual_omp_cycle]
            WRITE_S: []*/
            manual_omp_cycle(startPidx, endPidx);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void bestcase_omp_module1(int startPidx, int endPidx , double deposit) {
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre309;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre309 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre309, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void bestcase_omp_module2(int startPidx, int endPidx , double deposit) {
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre311;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre311 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre311, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre313;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre313 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre313, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void bestcase_omp_module3(int startPidx, int endPidx , double deposit) {
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre315;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre315 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre315, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre317;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre317 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre317, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre319;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre319 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre319, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
void bestcase_omp_module4(int startPidx, int endPidx , double deposit) {
/*READ_S: [heapCell#3, partArray, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long pidx;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre321;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre321 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre321, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre323;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre323 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre323, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre325;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre325 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre325, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, heapCell#1, CLOMP_flopScale]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre327;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre327 = partArray[pidx];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre327, deposit);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#3, partArray, bestcase_omp_module3, bestcase_omp_module4, update_part, bestcase_omp_module1, bestcase_omp_module2, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void bestcase_omp_cycle(int startPidx, int endPidx , double deposit) {
/*READ_S: [heapCell#3, partArray, bestcase_omp_module3, bestcase_omp_module4, update_part, bestcase_omp_module1, bestcase_omp_module2, heapCell#2, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: [bestcase_omp_module1]
    WRITE_S: []*/
    bestcase_omp_module1(startPidx, endPidx, deposit);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [bestcase_omp_module2]
    WRITE_S: []*/
    bestcase_omp_module2(startPidx, endPidx, deposit);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [bestcase_omp_module3]
    WRITE_S: []*/
    bestcase_omp_module3(startPidx, endPidx, deposit);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [bestcase_omp_module4]
    WRITE_S: []*/
    bestcase_omp_module4(startPidx, endPidx, deposit);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, num_iterations, bestcase_omp_module3, bestcase_omp_module4, omp_get_num_threads, bestcase_omp_module1, nearbyint, bestcase_omp_module2, omp_get_thread_num, bestcase_omp_cycle, heapCell#3, exit, update_part, printf, heapCell#2, deposit, CLOMP_max_residue, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
void do_bestcase_omp_version(long num_iterations) {
/*READ_S: [calc_deposit, CLOMP_numParts, fprintf, CLOMP_partRatio, __stderrp, partArray, num_iterations, bestcase_omp_module3, bestcase_omp_module4, omp_get_num_threads, bestcase_omp_module1, nearbyint, bestcase_omp_module2, omp_get_thread_num, bestcase_omp_cycle, heapCell#3, exit, update_part, printf, heapCell#2, deposit, CLOMP_max_residue, CLOMP_flopScale, heapCell#1]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    long iter;
    /*READ_S: []
    WRITE_S: []*/
    long subcycle;
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: [CLOMP_numParts, CLOMP_max_residue]
    WRITE_S: []*/
    deposit = (1.0 + CLOMP_max_residue) / CLOMP_numParts;
    /*READ_S: [CLOMP_numParts, partArray, num_iterations, bestcase_omp_module3, bestcase_omp_module4, omp_get_num_threads, bestcase_omp_module1, nearbyint, bestcase_omp_module2, omp_get_thread_num, bestcase_omp_cycle, heapCell#3, update_part, printf, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel
    {
    /*READ_S: [CLOMP_numParts, partArray, num_iterations, bestcase_omp_module3, bestcase_omp_module4, omp_get_num_threads, bestcase_omp_module1, nearbyint, bestcase_omp_module2, omp_get_thread_num, bestcase_omp_cycle, heapCell#3, update_part, printf, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        long iteration;
        /*READ_S: []
        WRITE_S: []*/
        int startPidx;
        /*READ_S: []
        WRITE_S: []*/
        int endPidx;
        /*READ_S: []
        WRITE_S: []*/
        double dparts_per_thread;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre328;
        /*READ_S: [omp_get_thread_num]
        WRITE_S: []*/
        _imopVarPre328 = omp_get_thread_num();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int thread_id = _imopVarPre328;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre329;
        /*READ_S: [omp_get_num_threads]
        WRITE_S: []*/
        _imopVarPre329 = omp_get_num_threads();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int numThreads = _imopVarPre329;
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        dparts_per_thread = ((double) CLOMP_numParts) / ((double) numThreads);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (dparts_per_thread < 1.0) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            dparts_per_thread = 1.0;
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre332;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre333;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre332 = ((double) thread_id) * dparts_per_thread;
        /*READ_S: [nearbyint]
        WRITE_S: []*/
        _imopVarPre333 = nearbyint(_imopVarPre332);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        startPidx = (int) _imopVarPre333;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre336;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre337;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre336 = ((double) thread_id + 1) * dparts_per_thread;
        /*READ_S: [nearbyint]
        WRITE_S: []*/
        _imopVarPre337 = nearbyint(_imopVarPre336);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        endPidx = (int) _imopVarPre337 - 1;
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        if (endPidx >= CLOMP_numParts) {
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
            /*READ_S: [CLOMP_numParts]
            WRITE_S: []*/
            endPidx = CLOMP_numParts - 1;
        }
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts, printf]
        WRITE_S: []*/
        if (startPidx >= CLOMP_numParts) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("*** No parts available for thread %i\n", thread_id);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [num_iterations]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [partArray, num_iterations, bestcase_omp_module3, bestcase_omp_module4, bestcase_omp_module1, bestcase_omp_module2, bestcase_omp_cycle, heapCell#3, update_part, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
        /*READ_S: [bestcase_omp_cycle, heapCell#3, partArray, bestcase_omp_module3, bestcase_omp_module4, update_part, bestcase_omp_module1, bestcase_omp_module2, heapCell#2, deposit, CLOMP_flopScale, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: [bestcase_omp_cycle, deposit]
            WRITE_S: []*/
            bestcase_omp_cycle(startPidx, endPidx, deposit);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (iter = 0; iter < num_iterations; iter++) {
    /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
        for (subcycle = 0; subcycle < 10; subcycle++) {
        /*READ_S: [calc_deposit, fprintf, CLOMP_numParts, CLOMP_partRatio, __stderrp, heapCell#3, exit, partArray, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: [partArray, heapCell#2, heapCell#1]
            WRITE_S: [heapCell#2]*/
            partArray[0]->update_count = 1;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre338;
            /*READ_S: [calc_deposit]
            WRITE_S: []*/
            _imopVarPre338 = calc_deposit();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#3, partArray, heapCell#2, heapCell#1]
            WRITE_S: [heapCell#3]*/
            partArray[0]->firstZone->value = _imopVarPre338;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [_imopVarPre339, fprintf, CLOMP_numParts, CLOMP_zonesPerPart, __stderrp, partArray, exit, heapCell#2, heapCell#1]
WRITE_S: [heapCell#2, heapCell#1]*/
void addPart(Part *part, long partId) {
/*READ_S: [_imopVarPre339, fprintf, CLOMP_numParts, CLOMP_zonesPerPart, __stderrp, partArray, exit, heapCell#2, heapCell#1]
WRITE_S: [heapCell#2, heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre339;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre339 = (partId < 0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    if (!_imopVarPre339) {
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        _imopVarPre339 = (partId >= CLOMP_numParts);
    }
    /*READ_S: [_imopVarPre339]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre339, fprintf, __stderrp, exit]
    WRITE_S: []*/
    if (_imopVarPre339) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre341;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre341 = (int) partId;
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "addPart error: partId (%i) out of bounds!\n", _imopVarPre341);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [partArray, heapCell#1]
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, exit, partArray, heapCell#1]
    WRITE_S: []*/
    if (partArray[partId] != ((void *) 0)) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre343;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre343 = (int) partId;
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "addPart error: partId (%i) already initialized!\n", _imopVarPre343);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [partArray]
    WRITE_S: [heapCell#1]*/
    partArray[partId] = part;
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->partId = partId;
    /*READ_S: [CLOMP_zonesPerPart, heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->zoneCount = CLOMP_zonesPerPart;
    /*READ_S: [CLOMP_numParts, heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->deposit_ratio = ((double) (partId + 1)) / ((double) (20.0 * CLOMP_numParts));
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->residue = 0.0;
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->firstZone = ((void *) 0);
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->lastZone = ((void *) 0);
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->expected_first_value = -1.0;
    /*READ_S: [heapCell#2]
    WRITE_S: [heapCell#2]*/
    part->expected_residue = -1.0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fprintf, __builtin___memset_chk, __stderrp, heapCell#3, __builtin_object_size, exit, heapCell#2, CLOMP_zoneSize]
WRITE_S: [heapCell#3, heapCell#2]*/
void addZone(Part *part, Zone *zone) {
/*READ_S: [fprintf, __builtin___memset_chk, __stderrp, heapCell#3, __builtin_object_size, exit, heapCell#2, CLOMP_zoneSize]
WRITE_S: [heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
    if (part == ((void *) 0)) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "addZone error: part NULL!\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
    if (zone == ((void *) 0)) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "addZone error: zone NULL!\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre345;
    /*READ_S: [__builtin_object_size, heapCell#3]
    WRITE_S: [heapCell#3]*/
    _imopVarPre345 = __builtin_object_size(zone, 0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__builtin___memset_chk, heapCell#3, CLOMP_zoneSize]
    WRITE_S: [heapCell#3]*/
    __builtin___memset_chk(zone, 0xFF, CLOMP_zoneSize, _imopVarPre345);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    /*READ_S: [heapCell#3, heapCell#2]
    WRITE_S: [heapCell#3, heapCell#2]*/
    if (part->lastZone == ((void *) 0)) {
    /*READ_S: [heapCell#3, heapCell#2]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [heapCell#3]
        WRITE_S: [heapCell#3]*/
        zone->zoneId = 1;
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#2]*/
        part->firstZone = zone;
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#2]*/
        part->lastZone = zone;
    } else {
    /*READ_S: [heapCell#3, heapCell#2]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [heapCell#3, heapCell#2]
        WRITE_S: [heapCell#3]*/
        zone->zoneId = part->lastZone->zoneId + 1;
        /*READ_S: [heapCell#3, heapCell#2]
        WRITE_S: [heapCell#3]*/
        part->lastZone->nextZone = zone;
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#2]*/
        part->lastZone = zone;
    }
    /*READ_S: [heapCell#3]
    WRITE_S: [heapCell#3]*/
    zone->nextZone = ((void *) 0);
    /*READ_S: [heapCell#3, heapCell#2]
    WRITE_S: [heapCell#3]*/
    zone->partId = part->partId;
    /*READ_S: [heapCell#3]
    WRITE_S: [heapCell#3]*/
    zone->value = 0.0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [deposit, dynamic_omp_start_ts, manual_omp_module4, serial_ref_module2, deposit, calc_deposit_start_ts, _imopVarPre339, __builtin___strcpy_chk, deposit, heapCell#2, deposit, omp_barrier_end_ts, CLOMP_partRatio, CLOMP_numThreads, bestcase_omp_module1, do_omp_barrier_only, serial_ref_module3, _imopVarPre154, omp_get_thread_num, print_timestats, manual_omp_end_ts, __builtin___memset_chk, heapCell#3, do_bestcase_omp_version, do_static_omp_version, update_part, deposit, serial_ref_start_ts, CLOMP_numParts, _imopVarPre209, malloc, _imopVarPre357, bestcase_omp_module2, pidx, num_iterations, dynamic_omp_end_ts, gettimeofday, deposit, bestcase_omp_cycle, strcmp, printf, _imopVarPre182, bestcase_omp_end_ts, static_omp_start_ts, _imopVarPre148, print_pseudocode, partId, __stderrp, addPart, CLOMP_zonesPerPart, static_omp_cycle, dynamic_omp_module2, bestcase_omp_module3, omp_get_num_threads, _imopVarPre212, heapCell#0, dynamic_omp_cycle, serial_ref_cycle, num_iterations, serial_ref_module1, pidx, CLOMP_timeScale, CLOMP_num_iterations, pidx, pidx, manual_omp_cycle, calc_deposit_end_ts, dynamic_omp_module1, fprintf, static_omp_module3, dynamic_omp_module3, serial_ref_end_ts, num_iterations, bestcase_omp_module4, do_dynamic_omp_version, omp_get_max_threads, deposit, print_start_message, pidx, print_usage, deposit, addZone, deposit, static_omp_module4, deposit, manual_omp_module1, gethostname, deposit, partArray, dynamic_omp_module4, pidx, bestcase_omp_start_ts, CLOMP_max_residue, heapCell#1, manual_omp_start_ts, do_manual_omp_version, CLOMP_flopScale, serial_ref_module4, pidx, manual_omp_module2, __builtin_object_size, nearbyint, is_reference, do_serial_ref_version, _imopVarPre174, omp_set_num_threads, ceil, omp_barrier_start_ts, ctime_r, static_omp_module1, calc_deposit, _imopVarPre142, &heapCell#3, print_data_stats, convert_to_positive_long, CLOMP_allocThreads, get_timestamp, deposit, manual_omp_module3, pidx, CLOMP_exe_name, time, reinitialize_parts, exit, strtol, static_omp_end_ts, static_omp_module2, deposit, do_calc_deposit_only, CLOMP_zoneSize]
WRITE_S: [CLOMP_numParts, CLOMP_partRatio, CLOMP_numThreads, CLOMP_zonesPerPart, CLOMP_allocThreads, deposit, partArray, deposit, deposit, CLOMP_exe_name, CLOMP_timeScale, heapCell#3, CLOMP_num_iterations, heapCell#2, deposit, bestcase_omp_end_ts, CLOMP_max_residue, CLOMP_zoneSize, heapCell#1, CLOMP_flopScale]*/
int main(int argc, char *argv[]) {
/*READ_S: [deposit, dynamic_omp_start_ts, manual_omp_module4, serial_ref_module2, deposit, calc_deposit_start_ts, _imopVarPre339, __builtin___strcpy_chk, deposit, heapCell#2, deposit, omp_barrier_end_ts, CLOMP_partRatio, CLOMP_numThreads, bestcase_omp_module1, do_omp_barrier_only, serial_ref_module3, _imopVarPre154, omp_get_thread_num, print_timestats, manual_omp_end_ts, __builtin___memset_chk, heapCell#3, do_bestcase_omp_version, do_static_omp_version, update_part, deposit, serial_ref_start_ts, CLOMP_numParts, _imopVarPre209, malloc, _imopVarPre357, bestcase_omp_module2, pidx, num_iterations, dynamic_omp_end_ts, gettimeofday, deposit, bestcase_omp_cycle, strcmp, printf, _imopVarPre182, bestcase_omp_end_ts, static_omp_start_ts, _imopVarPre148, print_pseudocode, partId, __stderrp, addPart, CLOMP_zonesPerPart, static_omp_cycle, dynamic_omp_module2, bestcase_omp_module3, omp_get_num_threads, _imopVarPre212, heapCell#0, dynamic_omp_cycle, serial_ref_cycle, num_iterations, serial_ref_module1, pidx, CLOMP_timeScale, CLOMP_num_iterations, pidx, pidx, manual_omp_cycle, calc_deposit_end_ts, dynamic_omp_module1, fprintf, static_omp_module3, dynamic_omp_module3, serial_ref_end_ts, num_iterations, bestcase_omp_module4, do_dynamic_omp_version, omp_get_max_threads, deposit, print_start_message, pidx, print_usage, deposit, addZone, deposit, static_omp_module4, deposit, manual_omp_module1, gethostname, deposit, partArray, dynamic_omp_module4, pidx, bestcase_omp_start_ts, CLOMP_max_residue, heapCell#1, manual_omp_start_ts, do_manual_omp_version, CLOMP_flopScale, serial_ref_module4, pidx, manual_omp_module2, __builtin_object_size, nearbyint, is_reference, do_serial_ref_version, _imopVarPre174, omp_set_num_threads, ceil, omp_barrier_start_ts, ctime_r, static_omp_module1, calc_deposit, _imopVarPre142, &heapCell#3, print_data_stats, convert_to_positive_long, CLOMP_allocThreads, get_timestamp, deposit, manual_omp_module3, pidx, CLOMP_exe_name, time, reinitialize_parts, exit, strtol, static_omp_end_ts, static_omp_module2, deposit, do_calc_deposit_only, CLOMP_zoneSize]
WRITE_S: [CLOMP_numParts, CLOMP_partRatio, CLOMP_numThreads, CLOMP_zonesPerPart, CLOMP_allocThreads, deposit, partArray, deposit, deposit, CLOMP_exe_name, CLOMP_timeScale, heapCell#3, CLOMP_num_iterations, heapCell#2, deposit, bestcase_omp_end_ts, CLOMP_max_residue, CLOMP_zoneSize, heapCell#1, CLOMP_flopScale]*/
    /*READ_S: []
    WRITE_S: []*/
    char hostname[200];
    /*READ_S: []
    WRITE_S: []*/
    time_t starttime;
    /*READ_S: []
    WRITE_S: []*/
    char startdate[50];
    /*READ_S: []
    WRITE_S: []*/
    long partId;
    /*READ_S: []
    WRITE_S: []*/
    double totalZoneCount;
    /*READ_S: []
    WRITE_S: []*/
    double deposit;
    /*READ_S: []
    WRITE_S: []*/
    double percent_residue;
    /*READ_S: []
    WRITE_S: []*/
    double diterations;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval calc_deposit_start_ts;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval calc_deposit_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    double calc_deposit_seconds;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval omp_barrier_start_ts;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval omp_barrier_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    double omp_barrier_seconds;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval serial_ref_start_ts;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval serial_ref_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    double serial_ref_seconds;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval bestcase_omp_start_ts;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval bestcase_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    double bestcase_omp_seconds;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval static_omp_start_ts;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval static_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    double static_omp_seconds;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval manual_omp_start_ts;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval manual_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    double manual_omp_seconds;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval dynamic_omp_start_ts;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval dynamic_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    double dynamic_omp_seconds;
    /*READ_S: []
    WRITE_S: []*/
    int aidx;
    /*READ_S: [heapCell#0]
    WRITE_S: [CLOMP_exe_name]*/
    CLOMP_exe_name = argv[0];
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Sequoia Benchmark Version 1.0\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, print_usage, exit]
    WRITE_S: []*/
    if (argc != 8) {
    /*READ_S: [CLOMP_exe_name, fprintf, __stderrp, print_usage, exit]
    WRITE_S: []*/
        /*READ_S: [print_usage]
        WRITE_S: []*/
        print_usage();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre348;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre349;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre348 = sizeof (hostname);
    /*READ_S: [gethostname]
    WRITE_S: []*/
    _imopVarPre349 = gethostname(hostname, _imopVarPre348);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__builtin_object_size, __builtin___strcpy_chk, _imopVarPre357]
    WRITE_S: []*/
    if (_imopVarPre349 != 0) {
    /*READ_S: [__builtin_object_size, __builtin___strcpy_chk, _imopVarPre357]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre357;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre358;
        /*READ_S: []
        WRITE_S: []*/
        unsigned int _imopVarPre359;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre357 = 2 > 1;
        /*READ_S: [_imopVarPre357]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre357]
        WRITE_S: []*/
        if (_imopVarPre357) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre358 = 1;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre358 = 0;
        }
        /*READ_S: [__builtin_object_size]
        WRITE_S: []*/
        _imopVarPre359 = __builtin_object_size(hostname, _imopVarPre358);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__builtin___strcpy_chk]
        WRITE_S: []*/
        __builtin___strcpy_chk(hostname, "(Unknown host)", _imopVarPre359);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    signed long int *_imopVarPre361;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre361 = &starttime;
    /*READ_S: [time]
    WRITE_S: []*/
    time(_imopVarPre361);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    signed long int *_imopVarPre363;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre363 = &starttime;
    /*READ_S: [ctime_r]
    WRITE_S: []*/
    ctime_r(_imopVarPre363, startdate);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre365;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre366;
    /*READ_S: [heapCell#0]
    WRITE_S: []*/
    _imopVarPre365 = argv[1];
    /*READ_S: [convert_to_positive_long]
    WRITE_S: []*/
    _imopVarPre366 = convert_to_positive_long("numThreads", _imopVarPre365);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_numThreads]*/
    CLOMP_numThreads = _imopVarPre366;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre368;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre369;
    /*READ_S: [heapCell#0]
    WRITE_S: []*/
    _imopVarPre368 = argv[2];
    /*READ_S: [convert_to_positive_long]
    WRITE_S: []*/
    _imopVarPre369 = convert_to_positive_long("numThreads", _imopVarPre368);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_allocThreads]*/
    CLOMP_allocThreads = _imopVarPre369;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre371;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre372;
    /*READ_S: [heapCell#0]
    WRITE_S: []*/
    _imopVarPre371 = argv[3];
    /*READ_S: [convert_to_positive_long]
    WRITE_S: []*/
    _imopVarPre372 = convert_to_positive_long("numParts", _imopVarPre371);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_numParts]*/
    CLOMP_numParts = _imopVarPre372;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre374;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre375;
    /*READ_S: [heapCell#0]
    WRITE_S: []*/
    _imopVarPre374 = argv[4];
    /*READ_S: [convert_to_positive_long]
    WRITE_S: []*/
    _imopVarPre375 = convert_to_positive_long("zonesPerPart", _imopVarPre374);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_zonesPerPart]*/
    CLOMP_zonesPerPart = _imopVarPre375;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre377;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre378;
    /*READ_S: [heapCell#0]
    WRITE_S: []*/
    _imopVarPre377 = argv[5];
    /*READ_S: [convert_to_positive_long]
    WRITE_S: []*/
    _imopVarPre378 = convert_to_positive_long("zoneSize", _imopVarPre377);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_zoneSize]*/
    CLOMP_zoneSize = _imopVarPre378;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre380;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre381;
    /*READ_S: [heapCell#0]
    WRITE_S: []*/
    _imopVarPre380 = argv[6];
    /*READ_S: [convert_to_positive_long]
    WRITE_S: []*/
    _imopVarPre381 = convert_to_positive_long("flopScale", _imopVarPre380);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_flopScale]*/
    CLOMP_flopScale = _imopVarPre381;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre383;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre384;
    /*READ_S: [heapCell#0]
    WRITE_S: []*/
    _imopVarPre383 = argv[7];
    /*READ_S: [convert_to_positive_long]
    WRITE_S: []*/
    _imopVarPre384 = convert_to_positive_long("timeScale", _imopVarPre383);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_timeScale]*/
    CLOMP_timeScale = _imopVarPre384;
    /*READ_S: [CLOMP_zoneSize]
    WRITE_S: []*/
    /*READ_S: [printf, CLOMP_zoneSize]
    WRITE_S: [CLOMP_zoneSize]*/
    if (CLOMP_zoneSize < sizeof(Zone)) {
    /*READ_S: [printf, CLOMP_zoneSize]
    WRITE_S: [CLOMP_zoneSize]*/
        /*READ_S: []
        WRITE_S: []*/
        signed long int _imopVarPre386;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre386 = (long) sizeof(Zone);
        /*READ_S: [printf, CLOMP_zoneSize]
        WRITE_S: []*/
        printf("***Forcing zoneSize (%ld specified) to minimum zone size %ld\n\n", CLOMP_zoneSize, _imopVarPre386);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [CLOMP_zoneSize]*/
        CLOMP_zoneSize = sizeof(Zone);
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("       Invocation:");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, heapCell#0]
    WRITE_S: []*/
    for (aidx = 0; aidx < argc; aidx++) {
    /*READ_S: [heapCell#0, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre388;
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        _imopVarPre388 = argv[aidx];
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" %s", _imopVarPre388);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("         Hostname: %s\n", hostname);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("       Start time: %s", startdate);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, printf]
    WRITE_S: []*/
    printf("       Executable: %s\n", CLOMP_exe_name);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numThreads]
    WRITE_S: []*/
    /*READ_S: [CLOMP_numThreads, printf, omp_get_max_threads]
    WRITE_S: [CLOMP_numThreads]*/
    if (CLOMP_numThreads == -1) {
    /*READ_S: [CLOMP_numThreads, printf, omp_get_max_threads]
    WRITE_S: [CLOMP_numThreads]*/
        /*READ_S: [omp_get_max_threads]
        WRITE_S: []*/
        CLOMP_numThreads = omp_get_max_threads();
        /*READ_S: []
        WRITE_S: [CLOMP_numThreads]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre390;
        /*READ_S: [CLOMP_numThreads]
        WRITE_S: []*/
        _imopVarPre390 = (int) CLOMP_numThreads;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("      numThreads: %d (using system default)\n", _imopVarPre390);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [CLOMP_numThreads, printf]
    WRITE_S: []*/
        /*READ_S: [CLOMP_numThreads, printf]
        WRITE_S: []*/
        printf("      numThreads: %ld\n", CLOMP_numThreads);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [CLOMP_allocThreads]
    WRITE_S: []*/
    /*READ_S: [CLOMP_numThreads, CLOMP_allocThreads, printf]
    WRITE_S: [CLOMP_allocThreads]*/
    if (CLOMP_allocThreads == -1) {
    /*READ_S: [CLOMP_numThreads, CLOMP_allocThreads, printf]
    WRITE_S: [CLOMP_allocThreads]*/
        /*READ_S: [CLOMP_numThreads]
        WRITE_S: [CLOMP_allocThreads]*/
        CLOMP_allocThreads = CLOMP_numThreads;
        /*READ_S: [CLOMP_allocThreads, printf]
        WRITE_S: []*/
        printf("    allocThreads: %ld (using numThreads)\n", CLOMP_allocThreads);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [CLOMP_allocThreads, printf]
    WRITE_S: []*/
        /*READ_S: [CLOMP_allocThreads, printf]
        WRITE_S: []*/
        printf("    allocThreads: %ld\n", CLOMP_allocThreads);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [CLOMP_numParts, printf]
    WRITE_S: []*/
    printf("        numParts: %ld\n", CLOMP_numParts);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_zonesPerPart, printf]
    WRITE_S: []*/
    printf("    zonesPerPart: %ld\n", CLOMP_zonesPerPart);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, CLOMP_flopScale]
    WRITE_S: []*/
    printf("       flopScale: %ld\n", CLOMP_flopScale);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_timeScale, printf]
    WRITE_S: []*/
    printf("       timeScale: %ld\n", CLOMP_timeScale);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, CLOMP_zoneSize]
    WRITE_S: []*/
    printf("        zoneSize: %ld\n", CLOMP_zoneSize);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre392;
    /*READ_S: [CLOMP_allocThreads]
    WRITE_S: []*/
    _imopVarPre392 = (int) CLOMP_allocThreads;
    /*READ_S: [omp_set_num_threads]
    WRITE_S: []*/
    omp_set_num_threads(_imopVarPre392);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre395;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre396;
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    _imopVarPre395 = CLOMP_numParts * sizeof(Part *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre396 = malloc(_imopVarPre395);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [partArray]*/
    partArray = (Part **) _imopVarPre396;
    /*READ_S: [partArray]
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp, partArray, exit]
    WRITE_S: []*/
    if (partArray == ((void *) 0)) {
    /*READ_S: [fprintf, __stderrp, exit]
    WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "Out of memory allocating part array\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, partArray]
    WRITE_S: [heapCell#1]*/
    for (partId = 0; partId < CLOMP_numParts; partId++) {
    /*READ_S: [partArray]
    WRITE_S: [heapCell#1]*/
        /*READ_S: [partArray]
        WRITE_S: [heapCell#1]*/
        partArray[partId] = ((void *) 0);
    }
    /*READ_S: [CLOMP_numParts]
    WRITE_S: [CLOMP_partRatio]*/
    CLOMP_partRatio = 1.0 / ((double) CLOMP_numParts);
    /*READ_S: [_imopVarPre339, CLOMP_numParts, fprintf, partId, addPart, CLOMP_zonesPerPart, __stderrp, partArray, exit, malloc, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#2, heapCell#1]*/
#pragma omp parallel private(partId)
    {
    /*READ_S: [_imopVarPre339, CLOMP_numParts, fprintf, partId, addPart, CLOMP_zonesPerPart, __stderrp, partArray, exit, malloc, heapCell#2, heapCell#1]
    WRITE_S: [heapCell#2, heapCell#1]*/
        /*READ_S: [_imopVarPre339, CLOMP_numParts, fprintf, partId, addPart, CLOMP_zonesPerPart, __stderrp, partArray, exit, malloc, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#2, heapCell#1]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [partId]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (partId = 0; partId < CLOMP_numParts; partId++) {
        /*READ_S: [_imopVarPre339, fprintf, CLOMP_numParts, addPart, CLOMP_zonesPerPart, __stderrp, partArray, exit, malloc, heapCell#2, heapCell#1]
        WRITE_S: [heapCell#2, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            Part *part;
            /*READ_S: []
            WRITE_S: []*/
            unsigned long int _imopVarPre403;
            /*READ_S: []
            WRITE_S: []*/
            void *_imopVarPre404;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre403 = sizeof(Part);
            /*READ_S: [malloc]
            WRITE_S: []*/
            _imopVarPre404 = malloc(_imopVarPre403);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp, exit]
            WRITE_S: []*/
            if ((part = (Part *) _imopVarPre404) == ((void *) 0)) {
            /*READ_S: [fprintf, __stderrp, exit]
            WRITE_S: []*/
                /*READ_S: [fprintf, __stderrp]
                WRITE_S: []*/
                fprintf(__stderrp, "Out of memory allocating part\n");
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [exit]
                WRITE_S: []*/
                exit(1);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [addPart]
            WRITE_S: []*/
            addPart(part, partId);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [&heapCell#3, CLOMP_numParts, fprintf, partId, CLOMP_zonesPerPart, __stderrp, __builtin_object_size, partArray, malloc, __builtin___memset_chk, heapCell#3, exit, heapCell#2, addZone, CLOMP_zoneSize, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp parallel private(partId)
    {
    /*READ_S: [&heapCell#3, CLOMP_numParts, fprintf, partId, CLOMP_zonesPerPart, __stderrp, __builtin_object_size, partArray, malloc, __builtin___memset_chk, heapCell#3, exit, heapCell#2, addZone, CLOMP_zoneSize, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: [&heapCell#3, CLOMP_numParts, fprintf, partId, CLOMP_zonesPerPart, __stderrp, __builtin_object_size, partArray, malloc, __builtin___memset_chk, heapCell#3, exit, heapCell#2, addZone, CLOMP_zoneSize, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [partId]
        WRITE_S: []*/
        /*READ_S: [CLOMP_numParts]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (partId = 0; partId < CLOMP_numParts; partId++) {
        /*READ_S: [&heapCell#3, fprintf, CLOMP_zonesPerPart, __stderrp, __builtin_object_size, partArray, malloc, __builtin___memset_chk, heapCell#3, exit, heapCell#2, addZone, CLOMP_zoneSize, heapCell#1]
        WRITE_S: [heapCell#3, heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            Zone *zoneArray;
            /*READ_S: []
            WRITE_S: []*/
            Zone *zone;
            /*READ_S: []
            WRITE_S: []*/
            int zoneId;
            /*READ_S: []
            WRITE_S: []*/
            signed long int _imopVarPre407;
            /*READ_S: []
            WRITE_S: []*/
            void *_imopVarPre408;
            /*READ_S: [CLOMP_zonesPerPart, CLOMP_zoneSize]
            WRITE_S: []*/
            _imopVarPre407 = CLOMP_zoneSize * CLOMP_zonesPerPart;
            /*READ_S: [malloc]
            WRITE_S: []*/
            _imopVarPre408 = malloc(_imopVarPre407);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            zoneArray = (Zone *) _imopVarPre408;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp, exit]
            WRITE_S: []*/
            if (zoneArray == ((void *) 0)) {
            /*READ_S: [fprintf, __stderrp, exit]
            WRITE_S: []*/
                /*READ_S: [fprintf, __stderrp]
                WRITE_S: []*/
                fprintf(__stderrp, "Out of memory allocate zone array\n");
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [exit]
                WRITE_S: []*/
                exit(1);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [CLOMP_zonesPerPart]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [&heapCell#3, fprintf, CLOMP_zonesPerPart, __stderrp, __builtin_object_size, partArray, __builtin___memset_chk, heapCell#3, exit, heapCell#2, CLOMP_zoneSize, heapCell#1, addZone]
            WRITE_S: [heapCell#3, heapCell#2]*/
            for (zoneId = 0; zoneId < CLOMP_zonesPerPart; zoneId++) {
            /*READ_S: [&heapCell#3, fprintf, __builtin___memset_chk, __stderrp, heapCell#3, __builtin_object_size, exit, partArray, heapCell#2, CLOMP_zoneSize, heapCell#1, addZone]
            WRITE_S: [heapCell#3, heapCell#2]*/
                /*READ_S: [&heapCell#3]
                WRITE_S: []*/
                zone = &zoneArray[zoneId];
                /*READ_S: []
                WRITE_S: []*/
                struct _Part *_imopVarPre410;
                /*READ_S: [partArray, heapCell#1]
                WRITE_S: []*/
                _imopVarPre410 = partArray[partId];
                /*READ_S: [addZone]
                WRITE_S: []*/
                addZone(_imopVarPre410, zone);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [CLOMP_numParts, CLOMP_zonesPerPart]
    WRITE_S: []*/
    totalZoneCount = (double) CLOMP_numParts * (double) CLOMP_zonesPerPart;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre412;
    /*READ_S: [CLOMP_zonesPerPart]
    WRITE_S: []*/
    _imopVarPre412 = (double) CLOMP_zonesPerPart;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("   Zones per Part: %.0f\n", _imopVarPre412);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre414;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre414 = (double) totalZoneCount;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("      Total Zones: %.0f\n", _imopVarPre414);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre416;
    /*READ_S: [CLOMP_numParts, CLOMP_zoneSize]
    WRITE_S: []*/
    _imopVarPre416 = (double) (totalZoneCount * CLOMP_zoneSize) + (double) (sizeof(Part) * CLOMP_numParts);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Memory (in bytes): %.0f\n", _imopVarPre416);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre418;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre419;
    /*READ_S: [CLOMP_timeScale, CLOMP_flopScale]
    WRITE_S: []*/
    _imopVarPre418 = (((double) 1000000) * ((double) CLOMP_timeScale)) / ((double) totalZoneCount * (double) CLOMP_flopScale);
    /*READ_S: [ceil]
    WRITE_S: []*/
    _imopVarPre419 = ceil(_imopVarPre418);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    diterations = _imopVarPre419;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (diterations > 2000000000.0) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("*** Forcing iterations from (%g) to 2 billion\n", diterations);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        diterations = 2000000000.0;
    }
    /*READ_S: []
    WRITE_S: [CLOMP_num_iterations]*/
    CLOMP_num_iterations = (long) diterations;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre421;
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre421 = (int) CLOMP_num_iterations;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Scaled Iterations: %i\n", _imopVarPre421);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre423;
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre423 = (double) CLOMP_num_iterations * (double) 10.0;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("  Total Subcycles: %.0f\n", _imopVarPre423);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    percent_residue = 0.0;
    /*READ_S: [CLOMP_partRatio]
    WRITE_S: []*/
    deposit = CLOMP_partRatio;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_numParts, heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
    for (partId = 0; partId < CLOMP_numParts; partId++) {
    /*READ_S: [heapCell#3, partArray, update_part, heapCell#2, CLOMP_flopScale, heapCell#1]
    WRITE_S: [heapCell#3, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        struct _Part *_imopVarPre425;
        /*READ_S: [partArray, heapCell#1]
        WRITE_S: []*/
        _imopVarPre425 = partArray[partId];
        /*READ_S: [update_part]
        WRITE_S: []*/
        update_part(_imopVarPre425, deposit);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [partArray, heapCell#2, heapCell#1]
        WRITE_S: []*/
        percent_residue += partArray[partId]->residue;
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre427;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre427 = percent_residue * 100.0;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Iteration Residue: %.6f%%\n", _imopVarPre427);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [CLOMP_max_residue]*/
    CLOMP_max_residue = (1.0 * percent_residue) / (1 - percent_residue);
    /*READ_S: [printf, CLOMP_max_residue]
    WRITE_S: []*/
    printf("      Max Residue: %-8.8g\n", CLOMP_max_residue);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre429;
    /*READ_S: [CLOMP_numThreads]
    WRITE_S: []*/
    _imopVarPre429 = (int) CLOMP_numThreads;
    /*READ_S: [omp_set_num_threads]
    WRITE_S: []*/
    omp_set_num_threads(_imopVarPre429);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("---------------------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("calc_deposit", "------ Start calc_deposit Pseudocode ------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("calc_deposit", "/* Measure *only* non-threadable calc_deposit() overhead.*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("calc_deposit", "/* Expect this overhead to be negligible.*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("calc_deposit", "deposit = calc_deposit ();");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("calc_deposit", "------- End calc_deposit Pseudocode -------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_start_message]
    WRITE_S: []*/
    print_start_message("calc_deposit");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre431;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre431 = &calc_deposit_start_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre431);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [do_calc_deposit_only]
    WRITE_S: []*/
    do_calc_deposit_only();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre433;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre433 = &calc_deposit_end_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre433);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre438;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre439;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre440;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre441;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre442;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre438 = -1.0;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre439 = -1.0;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre440 = &calc_deposit_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre441 = &calc_deposit_start_ts;
    /*READ_S: [print_timestats]
    WRITE_S: []*/
    _imopVarPre442 = print_timestats("calc_deposit", _imopVarPre441, _imopVarPre440, _imopVarPre439, _imopVarPre438);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    calc_deposit_seconds = _imopVarPre442;
    /*READ_S: [do_omp_barrier_only]
    WRITE_S: []*/
    do_omp_barrier_only(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("OMP Barrier", "------ Start OMP Barrier Pseudocode ------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("OMP Barrier", "/* Measure *only* OMP barrier overhead.*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("OMP Barrier", "#pragma omp barrier");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("OMP Barrier", "------- End OMP Barrier Pseudocode -------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_start_message]
    WRITE_S: []*/
    print_start_message("OMP Barrier");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre444;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre444 = &omp_barrier_start_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre444);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations, do_omp_barrier_only]
    WRITE_S: []*/
    do_omp_barrier_only(CLOMP_num_iterations);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre446;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre446 = &omp_barrier_end_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre446);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre451;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre452;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre453;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre454;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre455;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre451 = -1.0;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre452 = -1.0;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre453 = &omp_barrier_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre454 = &omp_barrier_start_ts;
    /*READ_S: [print_timestats]
    WRITE_S: []*/
    _imopVarPre455 = print_timestats("OMP Barrier", _imopVarPre454, _imopVarPre453, _imopVarPre452, _imopVarPre451);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    omp_barrier_seconds = _imopVarPre455;
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [serial_ref_cycle]
    WRITE_S: []*/
    serial_ref_cycle();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Serial Ref", "------ Start Serial Ref Pseudocode ------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Serial Ref", "/* Measure serial reference performance */");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Serial Ref", "deposit = calc_deposit ();");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Serial Ref", "for (pidx = 0; pidx < numParts; pidx++)");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Serial Ref", "  update_part (partArray[pidx], deposit);");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Serial Ref", "------- End Serial Ref Pseudocode -------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_start_message]
    WRITE_S: []*/
    print_start_message("Serial Ref");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre457;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre457 = &serial_ref_start_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre457);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [do_serial_ref_version]
    WRITE_S: []*/
    do_serial_ref_version();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre459;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre459 = &serial_ref_end_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre459);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_data_stats]
    WRITE_S: []*/
    print_data_stats("Serial Ref");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre464;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre465;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre466;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre467;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre468;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre464 = -1.0;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre465 = -1.0;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre466 = &serial_ref_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre467 = &serial_ref_start_ts;
    /*READ_S: [print_timestats]
    WRITE_S: []*/
    _imopVarPre468 = print_timestats("Serial Ref", _imopVarPre467, _imopVarPre466, _imopVarPre465, _imopVarPre464);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    serial_ref_seconds = _imopVarPre468;
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [do_bestcase_omp_version]
    WRITE_S: []*/
    do_bestcase_omp_version(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Bestcase OMP", "------ Start Bestcase OMP Pseudocode ------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Bestcase OMP", "/* Measure the bestcase ref loop runtime for */");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Bestcase OMP", "/* \"free\" threading the following code: */");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Bestcase OMP", "deposit = calc_deposit ();");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Bestcase OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Bestcase OMP", "  update_part (partArray[pidx], deposit);");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Bestcase OMP", "------- End Bestcase OMP Pseudocode -------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_start_message]
    WRITE_S: []*/
    print_start_message("Bestcase OMP");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre470;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre470 = &bestcase_omp_start_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre470);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [do_bestcase_omp_version, CLOMP_num_iterations]
    WRITE_S: []*/
    do_bestcase_omp_version(CLOMP_num_iterations);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre472;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre472 = &bestcase_omp_end_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre472);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre476;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre477;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre478;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre479;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre476 = -1.0;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre477 = &bestcase_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre478 = &bestcase_omp_start_ts;
    /*READ_S: [print_timestats]
    WRITE_S: []*/
    _imopVarPre479 = print_timestats("Bestcase OMP", _imopVarPre478, _imopVarPre477, serial_ref_seconds, _imopVarPre476);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    bestcase_omp_seconds = _imopVarPre479;
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [static_omp_cycle]
    WRITE_S: []*/
    static_omp_cycle();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Static OMP", "------ Start Static OMP Pseudocode ------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Static OMP", "/* Use OpenMP parallel for schedule(static) on original loop. */");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Static OMP", "deposit = calc_deposit ();");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Static OMP", "#pragma omp parallel for private (pidx) schedule(static)");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Static OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Static OMP", "  update_part (partArray[pidx], deposit);");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Static OMP", "------- End Static OMP Pseudocode -------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_start_message]
    WRITE_S: []*/
    print_start_message("Static OMP");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre481;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre481 = &static_omp_start_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre481);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [do_static_omp_version]
    WRITE_S: []*/
    do_static_omp_version();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre483;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre483 = &static_omp_end_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre483);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_data_stats]
    WRITE_S: []*/
    print_data_stats("Static OMP");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre486;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre487;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre488;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre486 = &static_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre487 = &static_omp_start_ts;
    /*READ_S: [print_timestats]
    WRITE_S: []*/
    _imopVarPre488 = print_timestats("Static OMP", _imopVarPre487, _imopVarPre486, serial_ref_seconds, bestcase_omp_seconds);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    static_omp_seconds = _imopVarPre488;
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dynamic_omp_cycle]
    WRITE_S: []*/
    dynamic_omp_cycle();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Dynamic OMP", "------ Start Dynamic OMP Pseudocode ------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Dynamic OMP", "/* Use OpenMP parallel for schedule(dynamic) on orig loop. */");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Dynamic OMP", "deposit = calc_deposit ();");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Dynamic OMP", "#pragma omp parallel for private (pidx) schedule(dynamic)");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Dynamic OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Dynamic OMP", "  update_part (partArray[pidx], deposit);");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Dynamic OMP", "------- End Dynamic OMP Pseudocode -------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_start_message]
    WRITE_S: []*/
    print_start_message("Dynamic OMP");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre490;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre490 = &dynamic_omp_start_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre490);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [do_dynamic_omp_version]
    WRITE_S: []*/
    do_dynamic_omp_version();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre492;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre492 = &dynamic_omp_end_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre492);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_data_stats]
    WRITE_S: []*/
    print_data_stats("Dynamic OMP");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre495;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre496;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre497;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre495 = &dynamic_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre496 = &dynamic_omp_start_ts;
    /*READ_S: [print_timestats]
    WRITE_S: []*/
    _imopVarPre497 = print_timestats("Dynamic OMP", _imopVarPre496, _imopVarPre495, serial_ref_seconds, bestcase_omp_seconds);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    dynamic_omp_seconds = _imopVarPre497;
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [do_manual_omp_version]
    WRITE_S: []*/
    do_manual_omp_version(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [reinitialize_parts]
    WRITE_S: []*/
    reinitialize_parts();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "------ Start Manual OMP Pseudocode ------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "/* At top level, spawn threads and manually partition parts*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "#pragma omp parallel");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "{");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "   int startPidx = ... /* slice based on thread_id*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "   for (iter = 0; iter < num_iterations; iter++) ");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "      do_iter(startPidx, endPidx);");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "}");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "...");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "do_modN(int startPidx, int endPidx) /*do_iter() calls*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "{");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "  #pragma omp barrier /* All threads must finish first!*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "  #pragma omp single  /* Only one thread calcs deposit!*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "  {");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "    deposit = calc_deposit (); /* Deposit shared by threads */");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "  }  /* Implicit omp barrier at end of omp single */");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "  /* All threads execute loop working just on their parts*/");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "  for (pidx = startPidx; pidx <= endPidx; pidx++)");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "    update_part (partArray[pidx], deposit);");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "}");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_pseudocode]
    WRITE_S: []*/
    print_pseudocode("Manual OMP", "------- End Manual OMP Pseudocode -------");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_start_message]
    WRITE_S: []*/
    print_start_message("Manual OMP");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre499;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre499 = &manual_omp_start_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre499);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_num_iterations, do_manual_omp_version]
    WRITE_S: []*/
    do_manual_omp_version(CLOMP_num_iterations);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre501;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre501 = &manual_omp_end_ts;
    /*READ_S: [get_timestamp]
    WRITE_S: []*/
    get_timestamp(_imopVarPre501);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [print_data_stats]
    WRITE_S: []*/
    print_data_stats("Manual OMP");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre504;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre505;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre506;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre504 = &manual_omp_end_ts;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre505 = &manual_omp_start_ts;
    /*READ_S: [print_timestats]
    WRITE_S: []*/
    _imopVarPre506 = print_timestats("Manual OMP", _imopVarPre505, _imopVarPre504, serial_ref_seconds, bestcase_omp_seconds);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    manual_omp_seconds = _imopVarPre506;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("----------- Comma-delimited summary ----------\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [CLOMP_exe_name, CLOMP_numParts, CLOMP_numThreads, CLOMP_zonesPerPart, CLOMP_timeScale, CLOMP_allocThreads, printf, CLOMP_zoneSize, CLOMP_flopScale]
    WRITE_S: []*/
    printf("%s %ld %ld %ld %ld %ld %ld %ld, calc_deposit, OMP Barrier, Serial Ref, Bestcase OMP, Static OMP, Dynamic OMP, Manual OMP\n", CLOMP_exe_name, CLOMP_numThreads, CLOMP_allocThreads, CLOMP_numParts, CLOMP_zonesPerPart, CLOMP_zoneSize, CLOMP_flopScale, CLOMP_timeScale);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Runtime, %g, %g, %g, %g, %g, %g, %g\n", calc_deposit_seconds, omp_barrier_seconds, serial_ref_seconds, bestcase_omp_seconds, static_omp_seconds, dynamic_omp_seconds, manual_omp_seconds);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre514;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre515;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre516;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre517;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre518;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre519;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre520;
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre514 = (((manual_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre515 = (((dynamic_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre516 = (((static_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre517 = (((bestcase_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre518 = (((serial_ref_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre519 = (((omp_barrier_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre520 = (((calc_deposit_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("us/Loop, %g, %g, %g, %g, %g, %g, %g\n", _imopVarPre520, _imopVarPre519, _imopVarPre518, _imopVarPre517, _imopVarPre516, _imopVarPre515, _imopVarPre514);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre526;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre527;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre528;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre529;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre530;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre526 = ((serial_ref_seconds / manual_omp_seconds));
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre527 = ((serial_ref_seconds / dynamic_omp_seconds));
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre528 = ((serial_ref_seconds / static_omp_seconds));
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre529 = ((serial_ref_seconds / bestcase_omp_seconds));
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre530 = ((serial_ref_seconds / serial_ref_seconds));
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Speedup, N/A, N/A, %g, %g, %g, %g, %g\n", _imopVarPre530, _imopVarPre529, _imopVarPre528, _imopVarPre527, _imopVarPre526);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre535;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre536;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre537;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre538;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre535 = (((bestcase_omp_seconds / manual_omp_seconds) * 100.0));
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre536 = (((bestcase_omp_seconds / dynamic_omp_seconds) * 100.0));
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre537 = (((bestcase_omp_seconds / static_omp_seconds) * 100.0));
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre538 = (((bestcase_omp_seconds / bestcase_omp_seconds) * 100.0));
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Efficacy, N/A, N/A, N/A, %.2f%%, %.2f%%, %.2f%%, %.2f%%\n", _imopVarPre538, _imopVarPre537, _imopVarPre536, _imopVarPre535);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre543;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre544;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre545;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre546;
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre543 = (((manual_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre544 = (((dynamic_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre545 = (((static_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*READ_S: [CLOMP_num_iterations]
    WRITE_S: []*/
    _imopVarPre546 = (((bestcase_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Overhead, N/A, N/A, N/A, %.2f, %.2f, %.2f, %.2f\n", _imopVarPre546, _imopVarPre545, _imopVarPre544, _imopVarPre543);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
