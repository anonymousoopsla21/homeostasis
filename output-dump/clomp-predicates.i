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
int fprintf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
void exit(int );
void *malloc(size_t __size);
long strtol(const char *__str, char **__endptr , int __base);
extern void omp_set_num_threads(int );
extern int omp_get_num_threads(void );
extern int omp_get_max_threads(void );
extern int omp_get_thread_num(void );
int gethostname(char *, size_t );
typedef __darwin_time_t time_t;
extern char *suboptarg;
struct fssearchblock ;
struct searchstate ;
int strcmp(const char *__s1, const char *__s2);
time_t time(time_t *);
char *ctime_r(const time_t *, char *);
int gettimeofday(struct timeval *restrict , void *restrict );
extern double ceil(double );
extern double nearbyint(double );
long CLOMP_numThreads = -2;
long CLOMP_allocThreads = -2;
long CLOMP_numParts = -1;
long CLOMP_zonesPerPart = -1;
long CLOMP_flopScale = -1;
long CLOMP_timeScale = -1;
long CLOMP_zoneSize = -1;
char *CLOMP_exe_name = ((void *) 0);
struct _Zone {
    long zoneId;
    long partId;
    double value;
    struct _Zone *nextZone;
} ;
typedef struct _Zone Zone;
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
typedef struct _Part Part;
Part **partArray = ((void *) 0);
double CLOMP_partRatio = 0.0;
long CLOMP_num_iterations = 0.0;
double CLOMP_max_residue = 0.0;
void print_usage() {
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "Usage: %s numThreads allocThreads numParts \\\n" "           zonesPerPart zoneSize flopScale timeScale\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  numThreads: Number of OpenMP threads to use (-1 for system default)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  allocThreads: #threads when allocating data (-1 for numThreads)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  numParts: Number of independent pieces of work (loop iterations)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  zonesPerPart: Number of zones in the first part (3 flops/zone/part)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  zoneSize: Bytes in zone, only first ~32 used (512 nominal, >= 32 valid)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  flopScale: Scales flops/zone to increase memory reuse (1 nominal, >=1 Valid)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  timeScale: Scales target time per test (10-100 nominal, 1-10000 Valid)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "Some interesting testcases (last number controls run time):\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "           Target input:    %s -1 1 64 100 32 1 100\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "   Target/NUMA friendly:    %s -1 -1 64 100 32 1 100\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "         Cache friendly:    %s -1 1 64 1 32 100 100\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  Cache/OpenMP friendly:    %s -1 1 64 1 32 1000 100\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "        Mem-bound input:    %s -1 1 64 10000 512 1 100\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "Mem-bound/NUMA friendly:    %s -1 -1 64 10000 512 1 100\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
long convert_to_positive_long(const char *parm_name, const char *parm_val) {
    /*OUT: {
    Reverse<--,>}*/
    long val;
    /*OUT: {
    Reverse<--,>}*/
    char *endPtr;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre142;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre142 = (parm_name == ((void *) 0));
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre142) {
        /*OUT: {
        Reverse<--, 179_0;>}*/
        _imopVarPre142 = (parm_val == ((void *) 0));
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre142) {
        /*OUT: {
        Reverse<--, 184_0;>}*/
        fprintf(__stderrp, "Error in convert_to_positive_long: Passed NULL pointers!\n");
        /*OUT: {
        Reverse<--, 184_0;>}*/
        /*OUT: {
        Reverse<--, 184_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 184_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    char **_imopVarPre144;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre144 = &endPtr;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre145 = strtol(parm_val, _imopVarPre144, 0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    val = _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    if (endPtr[0] != 0) {
        /*OUT: {
        Reverse<--, 208_0;>}*/
        fprintf(__stderrp, "Error converting '%s' parameter value '%s' to long at '%s'!\n", parm_name, parm_val, endPtr);
        /*OUT: {
        Reverse<--, 208_0;>}*/
        /*OUT: {
        Reverse<--, 208_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 208_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre147;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre147 = strcmp(parm_name, "numThreads");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre148 = (_imopVarPre147 == 0);
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre148) {
        /*OUT: {
        Reverse<--, 231_0;>}*/
        _imopVarPre152 = strcmp(parm_name, "allocThreads");
        /*OUT: {
        Reverse<--, 231_0;>}*/
        /*OUT: {
        Reverse<--, 231_0;>}*/
        _imopVarPre148 = (_imopVarPre152 == 0);
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre148) {
        /*OUT: {
        Reverse<--, 241_0;>}*/
        int _imopVarPre154;
        /*OUT: {
        Reverse<--, 241_0;>}*/
        _imopVarPre154 = (val < 1);
        /*OUT: {
        Reverse<--, 241_0;>}*/
        if (_imopVarPre154) {
            /*OUT: {
            Reverse<--, 246_0; 241_0;>}*/
            _imopVarPre154 = (val != -1);
        }
        /*OUT: {
        Reverse<--, 241_0;>}*/
        if (_imopVarPre154) {
            /*OUT: {
            Reverse<--, 250_0; 241_0;>}*/
            fprintf(__stderrp, "Invalid value %ld for parameter %s, must be > 0 or -1!\n", val, parm_name);
            /*OUT: {
            Reverse<--, 250_0; 241_0;>}*/
            /*OUT: {
            Reverse<--, 250_0; 241_0;>}*/
            print_usage();
            /*OUT: {
            Reverse<--, 250_0; 241_0;>}*/
            /*OUT: {
            Reverse<--, 250_0; 241_0;>}*/
            exit(1);
            /*OUT: {
            Reverse<--, 250_0; 241_0;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 241_1;>}*/
        if (val < 1) {
            /*OUT: {
            Reverse<--, 266_0; 241_1;>}*/
            fprintf(__stderrp, "Invalid value %ld for parameter %s, must be > 0\n", val, parm_name);
            /*OUT: {
            Reverse<--, 266_0; 241_1;>}*/
            /*OUT: {
            Reverse<--, 266_0; 241_1;>}*/
            print_usage();
            /*OUT: {
            Reverse<--, 266_0; 241_1;>}*/
            /*OUT: {
            Reverse<--, 266_0; 241_1;>}*/
            exit(1);
            /*OUT: {
            Reverse<--, 266_0; 241_1;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    return val;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void update_part(Part *part, double incoming_deposit) {
    /*OUT: {
    Reverse<--,>}*/
    Zone *zone;
    /*OUT: {
    Reverse<--,>}*/
    double deposit_ratio;
    /*OUT: {
    Reverse<--,>}*/
    double remaining_deposit;
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long scale_count;
    /*OUT: {
    Reverse<--,>}*/
    part->update_count++;
    /*OUT: {
    Reverse<--,>}*/
    deposit_ratio = part->deposit_ratio;
    /*OUT: {
    Reverse<--,>}*/
    remaining_deposit = incoming_deposit;
    /*OUT: {
    Reverse<--,>}*/
    if (CLOMP_flopScale == 1) {
        /*OUT: {
        Reverse<--, 297_0;>}*/
        /*OUT: {
        Reverse<--, 297_0;>}*/
        /*OUT: {
        Reverse<--, 300_0; 297_0;>}*/
        for (zone = part->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
            /*OUT: {
            Reverse<--, 300_0; 297_0;>}*/
            deposit = remaining_deposit * deposit_ratio;
            /*OUT: {
            Reverse<--, 300_0; 297_0;>}*/
            zone->value += deposit;
            /*OUT: {
            Reverse<--, 300_0; 297_0;>}*/
            remaining_deposit -= deposit;
        }
    } else {
        /*OUT: {
        Reverse<--, 297_1;>}*/
        /*OUT: {
        Reverse<--, 297_1;>}*/
        /*OUT: {
        Reverse<--, 313_1; 310_0; 297_1;>}*/
        for (zone = part->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
            /*OUT: {
            Reverse<--, 310_0; 297_1;>}*/
            /*OUT: {
            Reverse<--, 310_0; 297_1;>}*/
            /*OUT: {
            Reverse<--, 313_0; 310_0; 297_1;>}*/
            for (scale_count = 0; scale_count < CLOMP_flopScale; scale_count++) {
                /*OUT: {
                Reverse<--, 313_0; 310_0; 297_1;>}*/
                deposit = remaining_deposit * deposit_ratio;
                /*OUT: {
                Reverse<--, 313_0; 310_0; 297_1;>}*/
                zone->value += deposit;
                /*OUT: {
                Reverse<--, 313_0; 310_0; 297_1;>}*/
                remaining_deposit -= deposit;
            }
        }
    }
    /*OUT: {
    Reverse<--, 300_1; 297_0;>
    Reverse<--, 310_1; 297_1;>}*/
    part->residue = remaining_deposit;
}
void reinitialize_parts() {
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    Zone *zone;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 331_1; 326_0;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 326_0;>}*/
        /*OUT: {
        Reverse<--, 326_0;>}*/
        /*OUT: {
        Reverse<--, 331_0; 326_0;>}*/
        for (zone = partArray[pidx]->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
            /*OUT: {
            Reverse<--, 331_0; 326_0;>}*/
            zone->value = 0.0;
        }
        /*OUT: {
        Reverse<--, 331_1; 326_0;>}*/
        partArray[pidx]->residue = 0.0;
        /*OUT: {
        Reverse<--, 331_1; 326_0;>}*/
        partArray[pidx]->update_count = 0;
    }
    /*OUT: {
    Reverse<--, 326_1;>}*/
    /*OUT: {
    Reverse<--, 326_1;>}*/
    /*OUT: {
    Reverse<--, 342_0; 326_1;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 342_0; 326_1;>}*/
        struct _Part *_imopVarPre156;
        /*OUT: {
        Reverse<--, 342_0; 326_1;>}*/
        _imopVarPre156 = partArray[pidx];
        /*OUT: {
        Reverse<--, 342_0; 326_1;>}*/
        update_part(_imopVarPre156, 0.0);
        /*OUT: {
        Reverse<--, 342_0; 326_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
void print_start_message(const char *desc) {
    /*OUT: {
    Reverse<--,>}*/
    time_t starttime;
    /*OUT: {
    Reverse<--,>}*/
    char startdate[50];
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre158;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre158 = &starttime;
    /*OUT: {
    Reverse<--,>}*/
    time(_imopVarPre158);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre160;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre160 = &starttime;
    /*OUT: {
    Reverse<--,>}*/
    ctime_r(_imopVarPre160, startdate);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("%13s  Started: %s", desc, startdate);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre162;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre162 = strcmp(desc, "calc_deposit");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre162 != 0) {
        /*OUT: {
        Reverse<--, 384_0;>}*/
        int _imopVarPre164;
        /*OUT: {
        Reverse<--, 384_0;>}*/
        _imopVarPre164 = strcmp(desc, "Serial Ref");
        /*OUT: {
        Reverse<--, 384_0;>}*/
        /*OUT: {
        Reverse<--, 384_0;>}*/
        if (_imopVarPre164 != 0) {
            /*OUT: {
            Reverse<--, 392_0; 384_0;>}*/
            int _imopVarPre166;
            /*OUT: {
            Reverse<--, 392_0; 384_0;>}*/
            _imopVarPre166 = omp_get_max_threads();
            /*OUT: {
            Reverse<--, 392_0; 384_0;>}*/
            /*OUT: {
            Reverse<--, 392_0; 384_0;>}*/
            printf("%13s #Threads: %d\n", desc, _imopVarPre166);
            /*OUT: {
            Reverse<--, 392_0; 384_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 392_1; 384_0;>}*/
            printf("%13s #Threads: N/A\n", desc);
            /*OUT: {
            Reverse<--, 392_1; 384_0;>}*/
        }
    }
}
/*OUT: {
Reverse<--,>}*/
void get_timestamp(struct timeval *ts) {
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre170;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre169 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre170 = gettimeofday(ts, _imopVarPre169);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre170 != 0) {
        /*OUT: {
        Reverse<--, 422_0;>}*/
        fprintf(__stderrp, "Unable to get time of day, exiting\n");
        /*OUT: {
        Reverse<--, 422_0;>}*/
        /*OUT: {
        Reverse<--, 422_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 422_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void print_pseudocode(const char *desc, const char *pseudocode) {
    /*OUT: {
    Reverse<--,>}*/
    printf("%13s:| %s\n", desc, pseudocode);
    /*OUT: {
    Reverse<--,>}*/
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
double print_timestats(const char *desc, struct timeval *start_ts , struct timeval *end_ts , double base_seconds , double bestcase_seconds) {
    /*OUT: {
    Reverse<--,>}*/
    double seconds;
    /*OUT: {
    Reverse<--,>}*/
    seconds = ((double) end_ts->tv_sec + ((double) end_ts->tv_usec * 1e-6)) - ((double) start_ts->tv_sec + ((double) start_ts->tv_usec * 1e-6));
    /*OUT: {
    Reverse<--,>}*/
    printf("%13s  Runtime: %g (wallclock, in seconds)\n", desc, seconds);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre172 = (seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("%13s  us/Loop: %g (wallclock, in microseconds)\n", desc, _imopVarPre172);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre174;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre174 = (base_seconds > 0.0);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre174) {
        /*OUT: {
        Reverse<--, 471_0;>}*/
        _imopVarPre174 = (seconds > 0.0);
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre174) {
        /*OUT: {
        Reverse<--, 475_0;>}*/
        if (base_seconds > seconds) {
            /*OUT: {
            Reverse<--, 476_0; 475_0;>}*/
            double _imopVarPre176;
            /*OUT: {
            Reverse<--, 476_0; 475_0;>}*/
            _imopVarPre176 = base_seconds / seconds;
            /*OUT: {
            Reverse<--, 476_0; 475_0;>}*/
            printf("%13s  Speedup: %.2f\n", desc, _imopVarPre176);
            /*OUT: {
            Reverse<--, 476_0; 475_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 476_1; 475_0;>}*/
            double _imopVarPre179;
            /*OUT: {
            Reverse<--, 476_1; 475_0;>}*/
            double _imopVarPre180;
            /*OUT: {
            Reverse<--, 476_1; 475_0;>}*/
            _imopVarPre179 = seconds / base_seconds;
            /*OUT: {
            Reverse<--, 476_1; 475_0;>}*/
            _imopVarPre180 = base_seconds / seconds;
            /*OUT: {
            Reverse<--, 476_1; 475_0;>}*/
            printf("%13s  Speedup: %.2f (%.2fX slowdown)\n", desc, _imopVarPre180, _imopVarPre179);
            /*OUT: {
            Reverse<--, 476_1; 475_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre182;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre182 = (bestcase_seconds > 0.0);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre182) {
        /*OUT: {
        Reverse<--, 500_0;>}*/
        _imopVarPre182 = (seconds > 0.0);
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre182) {
        /*OUT: {
        Reverse<--, 504_0;>}*/
        double _imopVarPre185;
        /*OUT: {
        Reverse<--, 504_0;>}*/
        double _imopVarPre186;
        /*OUT: {
        Reverse<--, 504_0;>}*/
        _imopVarPre185 = (bestcase_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
        /*OUT: {
        Reverse<--, 504_0;>}*/
        _imopVarPre186 = (bestcase_seconds / seconds) * 100.0;
        /*OUT: {
        Reverse<--, 504_0;>}*/
        printf("%13s Efficacy: %.2f%% (of bestcase %g us/Loop)\n", desc, _imopVarPre186, _imopVarPre185);
        /*OUT: {
        Reverse<--, 504_0;>}*/
        /*OUT: {
        Reverse<--, 504_0;>}*/
        double _imopVarPre188;
        /*OUT: {
        Reverse<--, 504_0;>}*/
        _imopVarPre188 = ((seconds - bestcase_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0);
        /*OUT: {
        Reverse<--, 504_0;>}*/
        printf("%13s Overhead: %g (versus bestcase, in us/Loop)\n", desc, _imopVarPre188);
        /*OUT: {
        Reverse<--, 504_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    printf("---------------------\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return seconds;
}
/*OUT: {
Reverse<--,>}*/
void print_data_stats(const char *desc) {
    /*OUT: {
    Reverse<--,>}*/
    double value_sum;
    /*OUT: {
    Reverse<--,>}*/
    double residue_sum;
    /*OUT: {
    Reverse<--,>}*/
    double last_value;
    /*OUT: {
    Reverse<--,>}*/
    double dtotal;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    Zone *zone;
    /*OUT: {
    Reverse<--,>}*/
    int is_reference;
    /*OUT: {
    Reverse<--,>}*/
    int error_count;
    /*OUT: {
    Reverse<--,>}*/
    value_sum = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    residue_sum = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre190;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre190 = strcmp(desc, "Serial Ref");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre190 == 0) {
        /*OUT: {
        Reverse<--, 557_0;>}*/
        is_reference = 1;
    } else {
        /*OUT: {
        Reverse<--, 557_1;>}*/
        is_reference = 0;
    }
    /*OUT: {
    Reverse<--,>}*/
    error_count = 0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 624_1; 565_0;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 565_0;>}*/
        if (is_reference) {
            /*OUT: {
            Reverse<--, 567_0; 565_0;>}*/
            partArray[pidx]->expected_first_value = partArray[pidx]->firstZone->value;
            /*OUT: {
            Reverse<--, 567_0; 565_0;>}*/
            partArray[pidx]->expected_residue = partArray[pidx]->residue;
        } else {
            /*OUT: {
            Reverse<--, 567_1; 565_0;>}*/
            if (partArray[pidx]->expected_first_value != partArray[pidx]->firstZone->value) {
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                error_count++;
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                double _imopVarPre194;
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                double _imopVarPre195;
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                int _imopVarPre196;
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                _imopVarPre194 = partArray[pidx]->expected_first_value;
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                _imopVarPre195 = partArray[pidx]->firstZone->value;
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                _imopVarPre196 = (int) pidx;
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
                fprintf(__stderrp, "%s check failure: part %i first zone value (%g) != reference value (%g)!\n", desc, _imopVarPre196, _imopVarPre195, _imopVarPre194);
                /*OUT: {
                Reverse<--, 578_0; 567_1; 565_0;>}*/
            }
            /*OUT: {
            Reverse<--, 567_1; 565_0;>}*/
            if (partArray[pidx]->expected_residue != partArray[pidx]->residue) {
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                error_count++;
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                double _imopVarPre200;
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                double _imopVarPre201;
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                int _imopVarPre202;
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                _imopVarPre200 = partArray[pidx]->expected_residue;
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                _imopVarPre201 = partArray[pidx]->residue;
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                _imopVarPre202 = (int) pidx;
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
                fprintf(__stderrp, "%s check failure: part %i residue (%g) != reference residue (%g)!\n", desc, _imopVarPre202, _imopVarPre201, _imopVarPre200);
                /*OUT: {
                Reverse<--, 599_0; 567_1; 565_0;>}*/
            }
        }
        /*OUT: {
        Reverse<--, 565_0;>}*/
        last_value = partArray[pidx]->firstZone->value;
        /*OUT: {
        Reverse<--, 565_0;>}*/
        /*OUT: {
        Reverse<--, 565_0;>}*/
        /*OUT: {
        Reverse<--, 624_0; 565_0;>}*/
        for (zone = partArray[pidx]->firstZone; zone != ((void *) 0); zone = zone->nextZone) {
            /*OUT: {
            Reverse<--, 624_0; 565_0;>}*/
            if (zone->value > last_value) {
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                double _imopVarPre206;
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                int _imopVarPre207;
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                int _imopVarPre208;
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                _imopVarPre206 = zone->value;
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                _imopVarPre207 = (int) zone->zoneId;
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                _imopVarPre208 = (int) zone->partId;
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                fprintf(__stderrp, "*** %s check failure (part %i zone %i): " "previous (%g) < current (%g)!\n", desc, _imopVarPre208, _imopVarPre207, last_value, _imopVarPre206);
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                /*OUT: {
                Reverse<--, 626_0; 624_0; 565_0;>}*/
                error_count++;
            }
            /*OUT: {
            Reverse<--, 624_0; 565_0;>}*/
            value_sum += zone->value;
            /*OUT: {
            Reverse<--, 624_0; 565_0;>}*/
            last_value = zone->value;
        }
        /*OUT: {
        Reverse<--, 624_1; 565_0;>}*/
        residue_sum += partArray[pidx]->residue;
    }
    /*OUT: {
    Reverse<--, 565_1;>}*/
    dtotal = value_sum + residue_sum;
    /*OUT: {
    Reverse<--, 565_1;>}*/
    int _imopVarPre209;
    /*OUT: {
    Reverse<--, 565_1;>}*/
    _imopVarPre209 = ((dtotal + 0.00001) < ((double) CLOMP_num_iterations * 10.0));
    /*OUT: {
    Reverse<--, 565_1;>}*/
    if (!_imopVarPre209) {
        /*OUT: {
        Reverse<--, 658_0; 565_1;>}*/
        _imopVarPre209 = ((dtotal - 0.00001) > ((double) CLOMP_num_iterations * 10.0));
    }
    /*OUT: {
    Reverse<--, 565_1;>}*/
    if (_imopVarPre209) {
        /*OUT: {
        Reverse<--, 664_0; 565_1;>}*/
        double _imopVarPre211;
        /*OUT: {
        Reverse<--, 664_0; 565_1;>}*/
        _imopVarPre211 = ((double) CLOMP_num_iterations * 10.0);
        /*OUT: {
        Reverse<--, 664_0; 565_1;>}*/
        fprintf(__stderrp, "*** %s check failure:  Total (%-.15g) != Expected (%.15g)\n", desc, dtotal, _imopVarPre211);
        /*OUT: {
        Reverse<--, 664_0; 565_1;>}*/
        /*OUT: {
        Reverse<--, 664_0; 565_1;>}*/
        error_count++;
    }
    /*OUT: {
    Reverse<--, 565_1;>}*/
    int _imopVarPre212;
    /*OUT: {
    Reverse<--, 565_1;>}*/
    _imopVarPre212 = (residue_sum < 0.0);
    /*OUT: {
    Reverse<--, 565_1;>}*/
    if (!_imopVarPre212) {
        /*OUT: {
        Reverse<--, 680_0; 565_1;>}*/
        _imopVarPre212 = (residue_sum > (CLOMP_max_residue + 0.000001));
    }
    /*OUT: {
    Reverse<--, 565_1;>}*/
    if (_imopVarPre212) {
        /*OUT: {
        Reverse<--, 685_0; 565_1;>}*/
        fprintf(__stderrp, "*** %s check failure: Residue (%-.15g) outside bounds 0 - %.15g\n", desc, residue_sum, CLOMP_max_residue);
        /*OUT: {
        Reverse<--, 685_0; 565_1;>}*/
        /*OUT: {
        Reverse<--, 685_0; 565_1;>}*/
        error_count++;
    }
    /*OUT: {
    Reverse<--, 565_1;>}*/
    if (partArray[0]->update_count != 1) {
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        int _imopVarPre214;
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        _imopVarPre214 = (int) partArray[0]->update_count;
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        fprintf(__stderrp, "Error in calc_deposit: Part updated %i times since last calc_deposit!\n", _imopVarPre214);
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        fprintf(__stderrp, "Benchmark designed to have calc_deposit called exactly once per update!\n");
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        fprintf(__stderrp, "Critical error: Exiting...\n");
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 694_0; 565_1;>}*/
    }
    /*OUT: {
    Reverse<--, 565_1;>}*/
    if (error_count > 0) {
        /*OUT: {
        Reverse<--, 719_0; 565_1;>}*/
        fprintf(__stderrp, "ERROR: %i check failures detected in '%s' data. Exiting...\n", error_count, desc);
        /*OUT: {
        Reverse<--, 719_0; 565_1;>}*/
        /*OUT: {
        Reverse<--, 719_0; 565_1;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 719_0; 565_1;>}*/
    }
    /*OUT: {
    Reverse<--, 565_1;>}*/
    printf("%13s Checksum: Sum=%-8.8g Residue=%-8.8g Total=%-.9g\n", desc, value_sum, residue_sum, dtotal);
    /*OUT: {
    Reverse<--, 565_1;>}*/
}
double calc_deposit() {
    /*OUT: {
    Reverse<--,>}*/
    double residue;
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    if (partArray[0]->update_count != 1) {
        /*OUT: {
        Reverse<--, 739_0;>}*/
        int _imopVarPre216;
        /*OUT: {
        Reverse<--, 739_0;>}*/
        _imopVarPre216 = (int) partArray[0]->update_count;
        /*OUT: {
        Reverse<--, 739_0;>}*/
        fprintf(__stderrp, "Error in calc_deposit: Part updated %i times since last call!\n", _imopVarPre216);
        /*OUT: {
        Reverse<--, 739_0;>}*/
        /*OUT: {
        Reverse<--, 739_0;>}*/
        fprintf(__stderrp, "Benchmark designed to have calc_deposit called exactly once per update!\n");
        /*OUT: {
        Reverse<--, 739_0;>}*/
        /*OUT: {
        Reverse<--, 739_0;>}*/
        fprintf(__stderrp, "Critical error: Exiting...\n");
        /*OUT: {
        Reverse<--, 739_0;>}*/
        /*OUT: {
        Reverse<--, 739_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 739_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    partArray[0]->update_count = 0;
    /*OUT: {
    Reverse<--,>}*/
    residue = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 770_0;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 770_0;>}*/
        residue += partArray[pidx]->residue;
    }
    /*OUT: {
    Reverse<--, 770_1;>}*/
    deposit = (1.0 + residue) * CLOMP_partRatio;
    /*OUT: {
    Reverse<--, 770_1;>}*/
    return deposit;
}
void do_calc_deposit_only() {
    /*OUT: {
    Reverse<--,>}*/
    long iteration;
    /*OUT: {
    Reverse<--,>}*/
    long subcycle;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 786_1; 783_0;>}*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
        /*OUT: {
        Reverse<--, 783_0;>}*/
        /*OUT: {
        Reverse<--, 783_0;>}*/
        /*OUT: {
        Reverse<--, 786_0; 783_0;>}*/
        for (subcycle = 0; subcycle < 10; subcycle++) {
            /*OUT: {
            Reverse<--, 786_0; 783_0;>}*/
            partArray[0]->update_count = 1;
            /*OUT: {
            Reverse<--, 786_0; 783_0;>}*/
            double _imopVarPre217;
            /*OUT: {
            Reverse<--, 786_0; 783_0;>}*/
            _imopVarPre217 = calc_deposit();
            /*OUT: {
            Reverse<--, 786_0; 783_0;>}*/
            /*OUT: {
            Reverse<--, 786_0; 783_0;>}*/
            partArray[0]->firstZone->value = _imopVarPre217;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
void do_omp_barrier_only(long num_iterations) {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<3882,>}*/
        long iteration;
        /*OUT: {
        Reverse<3882,>}*/
        long subcycle;
        /*OUT: {
        Reverse<3882,>}*/
        /*OUT: {
        Reverse<3882,>
        Reverse<810, 808_1;>}*/
        /*OUT: {
        Reverse<3882, 808_1; 805_0;>
        Reverse<810, 808_1;>}*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
            /*OUT: {
            Reverse<810, 805_0; 808_1;>
            Reverse<3882, 805_0;>}*/
            /*OUT: {
            Reverse<810,>
            Reverse<3882, 805_0;>}*/
            /*OUT: {
            Reverse<810,>}*/
            for (subcycle = 0; subcycle < 10; subcycle++) {
                /*OUT: {
                Reverse<3882, 808_0; 805_0;>
                Reverse<810, 808_0;>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<810,>}*/
#pragma omp barrier
            }
        }
    }
}
void serial_ref_module1() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 820_0;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 820_0;>}*/
        struct _Part *_imopVarPre219;
        /*OUT: {
        Reverse<--, 820_0;>}*/
        _imopVarPre219 = partArray[pidx];
        /*OUT: {
        Reverse<--, 820_0;>}*/
        update_part(_imopVarPre219, deposit);
        /*OUT: {
        Reverse<--, 820_0;>}*/
    }
}
void serial_ref_module2() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 840_0;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 840_0;>}*/
        struct _Part *_imopVarPre221;
        /*OUT: {
        Reverse<--, 840_0;>}*/
        _imopVarPre221 = partArray[pidx];
        /*OUT: {
        Reverse<--, 840_0;>}*/
        update_part(_imopVarPre221, deposit);
        /*OUT: {
        Reverse<--, 840_0;>}*/
    }
    /*OUT: {
    Reverse<--, 840_1;>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--, 840_1;>}*/
    /*OUT: {
    Reverse<--, 840_1;>}*/
    /*OUT: {
    Reverse<--, 840_1;>}*/
    /*OUT: {
    Reverse<--, 858_0; 840_1;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 858_0; 840_1;>}*/
        struct _Part *_imopVarPre223;
        /*OUT: {
        Reverse<--, 858_0; 840_1;>}*/
        _imopVarPre223 = partArray[pidx];
        /*OUT: {
        Reverse<--, 858_0; 840_1;>}*/
        update_part(_imopVarPre223, deposit);
        /*OUT: {
        Reverse<--, 858_0; 840_1;>}*/
    }
}
void serial_ref_module3() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 878_0;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 878_0;>}*/
        struct _Part *_imopVarPre225;
        /*OUT: {
        Reverse<--, 878_0;>}*/
        _imopVarPre225 = partArray[pidx];
        /*OUT: {
        Reverse<--, 878_0;>}*/
        update_part(_imopVarPre225, deposit);
        /*OUT: {
        Reverse<--, 878_0;>}*/
    }
    /*OUT: {
    Reverse<--, 878_1;>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--, 878_1;>}*/
    /*OUT: {
    Reverse<--, 878_1;>}*/
    /*OUT: {
    Reverse<--, 878_1;>}*/
    /*OUT: {
    Reverse<--, 896_0; 878_1;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 896_0; 878_1;>}*/
        struct _Part *_imopVarPre227;
        /*OUT: {
        Reverse<--, 896_0; 878_1;>}*/
        _imopVarPre227 = partArray[pidx];
        /*OUT: {
        Reverse<--, 896_0; 878_1;>}*/
        update_part(_imopVarPre227, deposit);
        /*OUT: {
        Reverse<--, 896_0; 878_1;>}*/
    }
    /*OUT: {
    Reverse<--, 896_1; 878_1;>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--, 896_1; 878_1;>}*/
    /*OUT: {
    Reverse<--, 896_1; 878_1;>}*/
    /*OUT: {
    Reverse<--, 896_1; 878_1;>}*/
    /*OUT: {
    Reverse<--, 914_0; 896_1; 878_1;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 914_0; 896_1; 878_1;>}*/
        struct _Part *_imopVarPre229;
        /*OUT: {
        Reverse<--, 914_0; 896_1; 878_1;>}*/
        _imopVarPre229 = partArray[pidx];
        /*OUT: {
        Reverse<--, 914_0; 896_1; 878_1;>}*/
        update_part(_imopVarPre229, deposit);
        /*OUT: {
        Reverse<--, 914_0; 896_1; 878_1;>}*/
    }
}
void serial_ref_module4() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 934_0;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 934_0;>}*/
        struct _Part *_imopVarPre231;
        /*OUT: {
        Reverse<--, 934_0;>}*/
        _imopVarPre231 = partArray[pidx];
        /*OUT: {
        Reverse<--, 934_0;>}*/
        update_part(_imopVarPre231, deposit);
        /*OUT: {
        Reverse<--, 934_0;>}*/
    }
    /*OUT: {
    Reverse<--, 934_1;>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--, 934_1;>}*/
    /*OUT: {
    Reverse<--, 934_1;>}*/
    /*OUT: {
    Reverse<--, 934_1;>}*/
    /*OUT: {
    Reverse<--, 952_0; 934_1;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 952_0; 934_1;>}*/
        struct _Part *_imopVarPre233;
        /*OUT: {
        Reverse<--, 952_0; 934_1;>}*/
        _imopVarPre233 = partArray[pidx];
        /*OUT: {
        Reverse<--, 952_0; 934_1;>}*/
        update_part(_imopVarPre233, deposit);
        /*OUT: {
        Reverse<--, 952_0; 934_1;>}*/
    }
    /*OUT: {
    Reverse<--, 952_1; 934_1;>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--, 952_1; 934_1;>}*/
    /*OUT: {
    Reverse<--, 952_1; 934_1;>}*/
    /*OUT: {
    Reverse<--, 952_1; 934_1;>}*/
    /*OUT: {
    Reverse<--, 970_0; 952_1; 934_1;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 970_0; 952_1; 934_1;>}*/
        struct _Part *_imopVarPre235;
        /*OUT: {
        Reverse<--, 970_0; 952_1; 934_1;>}*/
        _imopVarPre235 = partArray[pidx];
        /*OUT: {
        Reverse<--, 970_0; 952_1; 934_1;>}*/
        update_part(_imopVarPre235, deposit);
        /*OUT: {
        Reverse<--, 970_0; 952_1; 934_1;>}*/
    }
    /*OUT: {
    Reverse<--, 970_1; 952_1; 934_1;>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--, 970_1; 952_1; 934_1;>}*/
    /*OUT: {
    Reverse<--, 970_1; 952_1; 934_1;>}*/
    /*OUT: {
    Reverse<--, 970_1; 952_1; 934_1;>}*/
    /*OUT: {
    Reverse<--, 988_0; 970_1; 952_1; 934_1;>}*/
    for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
        /*OUT: {
        Reverse<--, 988_0; 970_1; 952_1; 934_1;>}*/
        struct _Part *_imopVarPre237;
        /*OUT: {
        Reverse<--, 988_0; 970_1; 952_1; 934_1;>}*/
        _imopVarPre237 = partArray[pidx];
        /*OUT: {
        Reverse<--, 988_0; 970_1; 952_1; 934_1;>}*/
        update_part(_imopVarPre237, deposit);
        /*OUT: {
        Reverse<--, 988_0; 970_1; 952_1; 934_1;>}*/
    }
}
void serial_ref_cycle() {
    /*OUT: {
    Reverse<--,>}*/
    serial_ref_module1();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    serial_ref_module2();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    serial_ref_module3();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    serial_ref_module4();
    /*OUT: {
    Reverse<--,>}*/
}
void do_serial_ref_version() {
    /*OUT: {
    Reverse<--,>}*/
    long iteration;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1021_0;>}*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
        /*OUT: {
        Reverse<--, 1021_0;>}*/
        serial_ref_cycle();
        /*OUT: {
        Reverse<--, 1021_0;>}*/
    }
}
void static_omp_module1() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<3973,>}*/
        /*OUT: {
        Reverse<3973,>}*/
        /*OUT: {
        Reverse<3973,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<3973,>}*/
            struct _Part *_imopVarPre239;
            /*OUT: {
            Reverse<3973,>}*/
            _imopVarPre239 = partArray[pidx];
            /*OUT: {
            Reverse<3973,>}*/
            update_part(_imopVarPre239, deposit);
            /*OUT: {
            Reverse<3973,>}*/
        }
        /*OUT: {
        Reverse<3973,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1050,>}*/
#pragma omp barrier
    }
}
void static_omp_module2() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<3986,>}*/
        /*OUT: {
        Reverse<3986,>}*/
        /*OUT: {
        Reverse<3986,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<3986,>}*/
            struct _Part *_imopVarPre241;
            /*OUT: {
            Reverse<3986,>}*/
            _imopVarPre241 = partArray[pidx];
            /*OUT: {
            Reverse<3986,>}*/
            update_part(_imopVarPre241, deposit);
            /*OUT: {
            Reverse<3986,>}*/
        }
        /*OUT: {
        Reverse<3986,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1073,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<3994,>}*/
        /*OUT: {
        Reverse<3994,>}*/
        /*OUT: {
        Reverse<3994,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<3994,>}*/
            struct _Part *_imopVarPre243;
            /*OUT: {
            Reverse<3994,>}*/
            _imopVarPre243 = partArray[pidx];
            /*OUT: {
            Reverse<3994,>}*/
            update_part(_imopVarPre243, deposit);
            /*OUT: {
            Reverse<3994,>}*/
        }
        /*OUT: {
        Reverse<3994,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1094,>}*/
#pragma omp barrier
    }
}
void static_omp_module3() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4007,>}*/
        /*OUT: {
        Reverse<4007,>}*/
        /*OUT: {
        Reverse<4007,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4007,>}*/
            struct _Part *_imopVarPre245;
            /*OUT: {
            Reverse<4007,>}*/
            _imopVarPre245 = partArray[pidx];
            /*OUT: {
            Reverse<4007,>}*/
            update_part(_imopVarPre245, deposit);
            /*OUT: {
            Reverse<4007,>}*/
        }
        /*OUT: {
        Reverse<4007,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1117,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4015,>}*/
        /*OUT: {
        Reverse<4015,>}*/
        /*OUT: {
        Reverse<4015,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4015,>}*/
            struct _Part *_imopVarPre247;
            /*OUT: {
            Reverse<4015,>}*/
            _imopVarPre247 = partArray[pidx];
            /*OUT: {
            Reverse<4015,>}*/
            update_part(_imopVarPre247, deposit);
            /*OUT: {
            Reverse<4015,>}*/
        }
        /*OUT: {
        Reverse<4015,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1138,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4023,>}*/
        /*OUT: {
        Reverse<4023,>}*/
        /*OUT: {
        Reverse<4023,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4023,>}*/
            struct _Part *_imopVarPre249;
            /*OUT: {
            Reverse<4023,>}*/
            _imopVarPre249 = partArray[pidx];
            /*OUT: {
            Reverse<4023,>}*/
            update_part(_imopVarPre249, deposit);
            /*OUT: {
            Reverse<4023,>}*/
        }
        /*OUT: {
        Reverse<4023,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1159,>}*/
#pragma omp barrier
    }
}
void static_omp_module4() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4036,>}*/
        /*OUT: {
        Reverse<4036,>}*/
        /*OUT: {
        Reverse<4036,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4036,>}*/
            struct _Part *_imopVarPre251;
            /*OUT: {
            Reverse<4036,>}*/
            _imopVarPre251 = partArray[pidx];
            /*OUT: {
            Reverse<4036,>}*/
            update_part(_imopVarPre251, deposit);
            /*OUT: {
            Reverse<4036,>}*/
        }
        /*OUT: {
        Reverse<4036,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1182,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4044,>}*/
        /*OUT: {
        Reverse<4044,>}*/
        /*OUT: {
        Reverse<4044,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4044,>}*/
            struct _Part *_imopVarPre253;
            /*OUT: {
            Reverse<4044,>}*/
            _imopVarPre253 = partArray[pidx];
            /*OUT: {
            Reverse<4044,>}*/
            update_part(_imopVarPre253, deposit);
            /*OUT: {
            Reverse<4044,>}*/
        }
        /*OUT: {
        Reverse<4044,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1203,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4052,>}*/
        /*OUT: {
        Reverse<4052,>}*/
        /*OUT: {
        Reverse<4052,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4052,>}*/
            struct _Part *_imopVarPre255;
            /*OUT: {
            Reverse<4052,>}*/
            _imopVarPre255 = partArray[pidx];
            /*OUT: {
            Reverse<4052,>}*/
            update_part(_imopVarPre255, deposit);
            /*OUT: {
            Reverse<4052,>}*/
        }
        /*OUT: {
        Reverse<4052,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1224,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4060,>}*/
        /*OUT: {
        Reverse<4060,>}*/
        /*OUT: {
        Reverse<4060,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4060,>}*/
            struct _Part *_imopVarPre257;
            /*OUT: {
            Reverse<4060,>}*/
            _imopVarPre257 = partArray[pidx];
            /*OUT: {
            Reverse<4060,>}*/
            update_part(_imopVarPre257, deposit);
            /*OUT: {
            Reverse<4060,>}*/
        }
        /*OUT: {
        Reverse<4060,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1245,>}*/
#pragma omp barrier
    }
}
void static_omp_cycle() {
    /*OUT: {
    Reverse<--,>}*/
    static_omp_module1();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    static_omp_module2();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    static_omp_module3();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    static_omp_module4();
    /*OUT: {
    Reverse<--,>}*/
}
void do_static_omp_version() {
    /*OUT: {
    Reverse<--,>}*/
    long iteration;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1268_0;>}*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
        /*OUT: {
        Reverse<--, 1268_0;>}*/
        static_omp_cycle();
        /*OUT: {
        Reverse<--, 1268_0;>}*/
    }
}
void dynamic_omp_module1() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4087,>}*/
        /*OUT: {
        Reverse<4087,>}*/
        /*OUT: {
        Reverse<4087,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4087,>}*/
            struct _Part *_imopVarPre259;
            /*OUT: {
            Reverse<4087,>}*/
            _imopVarPre259 = partArray[pidx];
            /*OUT: {
            Reverse<4087,>}*/
            update_part(_imopVarPre259, deposit);
            /*OUT: {
            Reverse<4087,>}*/
        }
        /*OUT: {
        Reverse<4087,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1297,>}*/
#pragma omp barrier
    }
}
void dynamic_omp_module2() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4100,>}*/
        /*OUT: {
        Reverse<4100,>}*/
        /*OUT: {
        Reverse<4100,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4100,>}*/
            struct _Part *_imopVarPre261;
            /*OUT: {
            Reverse<4100,>}*/
            _imopVarPre261 = partArray[pidx];
            /*OUT: {
            Reverse<4100,>}*/
            update_part(_imopVarPre261, deposit);
            /*OUT: {
            Reverse<4100,>}*/
        }
        /*OUT: {
        Reverse<4100,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1320,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4108,>}*/
        /*OUT: {
        Reverse<4108,>}*/
        /*OUT: {
        Reverse<4108,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4108,>}*/
            struct _Part *_imopVarPre263;
            /*OUT: {
            Reverse<4108,>}*/
            _imopVarPre263 = partArray[pidx];
            /*OUT: {
            Reverse<4108,>}*/
            update_part(_imopVarPre263, deposit);
            /*OUT: {
            Reverse<4108,>}*/
        }
        /*OUT: {
        Reverse<4108,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1341,>}*/
#pragma omp barrier
    }
}
void dynamic_omp_module3() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4121,>}*/
        /*OUT: {
        Reverse<4121,>}*/
        /*OUT: {
        Reverse<4121,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4121,>}*/
            struct _Part *_imopVarPre265;
            /*OUT: {
            Reverse<4121,>}*/
            _imopVarPre265 = partArray[pidx];
            /*OUT: {
            Reverse<4121,>}*/
            update_part(_imopVarPre265, deposit);
            /*OUT: {
            Reverse<4121,>}*/
        }
        /*OUT: {
        Reverse<4121,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1364,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4129,>}*/
        /*OUT: {
        Reverse<4129,>}*/
        /*OUT: {
        Reverse<4129,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4129,>}*/
            struct _Part *_imopVarPre267;
            /*OUT: {
            Reverse<4129,>}*/
            _imopVarPre267 = partArray[pidx];
            /*OUT: {
            Reverse<4129,>}*/
            update_part(_imopVarPre267, deposit);
            /*OUT: {
            Reverse<4129,>}*/
        }
        /*OUT: {
        Reverse<4129,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1385,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4137,>}*/
        /*OUT: {
        Reverse<4137,>}*/
        /*OUT: {
        Reverse<4137,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4137,>}*/
            struct _Part *_imopVarPre269;
            /*OUT: {
            Reverse<4137,>}*/
            _imopVarPre269 = partArray[pidx];
            /*OUT: {
            Reverse<4137,>}*/
            update_part(_imopVarPre269, deposit);
            /*OUT: {
            Reverse<4137,>}*/
        }
        /*OUT: {
        Reverse<4137,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1406,>}*/
#pragma omp barrier
    }
}
void dynamic_omp_module4() {
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4150,>}*/
        /*OUT: {
        Reverse<4150,>}*/
        /*OUT: {
        Reverse<4150,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4150,>}*/
            struct _Part *_imopVarPre271;
            /*OUT: {
            Reverse<4150,>}*/
            _imopVarPre271 = partArray[pidx];
            /*OUT: {
            Reverse<4150,>}*/
            update_part(_imopVarPre271, deposit);
            /*OUT: {
            Reverse<4150,>}*/
        }
        /*OUT: {
        Reverse<4150,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1429,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4158,>}*/
        /*OUT: {
        Reverse<4158,>}*/
        /*OUT: {
        Reverse<4158,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4158,>}*/
            struct _Part *_imopVarPre273;
            /*OUT: {
            Reverse<4158,>}*/
            _imopVarPre273 = partArray[pidx];
            /*OUT: {
            Reverse<4158,>}*/
            update_part(_imopVarPre273, deposit);
            /*OUT: {
            Reverse<4158,>}*/
        }
        /*OUT: {
        Reverse<4158,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1450,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4166,>}*/
        /*OUT: {
        Reverse<4166,>}*/
        /*OUT: {
        Reverse<4166,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4166,>}*/
            struct _Part *_imopVarPre275;
            /*OUT: {
            Reverse<4166,>}*/
            _imopVarPre275 = partArray[pidx];
            /*OUT: {
            Reverse<4166,>}*/
            update_part(_imopVarPre275, deposit);
            /*OUT: {
            Reverse<4166,>}*/
        }
        /*OUT: {
        Reverse<4166,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1471,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    deposit = calc_deposit();
    /*OUT: {
    Reverse<--,>}*/
#pragma omp parallel private(pidx)
    {
#pragma omp for schedule(dynamic) nowait
        /*OUT: {
        Reverse<4174,>}*/
        /*OUT: {
        Reverse<4174,>}*/
        /*OUT: {
        Reverse<4174,>}*/
        for (pidx = 0; pidx < CLOMP_numParts; pidx++) {
            /*OUT: {
            Reverse<4174,>}*/
            struct _Part *_imopVarPre277;
            /*OUT: {
            Reverse<4174,>}*/
            _imopVarPre277 = partArray[pidx];
            /*OUT: {
            Reverse<4174,>}*/
            update_part(_imopVarPre277, deposit);
            /*OUT: {
            Reverse<4174,>}*/
        }
        /*OUT: {
        Reverse<4174,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1492,>}*/
#pragma omp barrier
    }
}
void dynamic_omp_cycle() {
    /*OUT: {
    Reverse<--,>}*/
    dynamic_omp_module1();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    dynamic_omp_module2();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    dynamic_omp_module3();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    dynamic_omp_module4();
    /*OUT: {
    Reverse<--,>}*/
}
void do_dynamic_omp_version() {
    /*OUT: {
    Reverse<--,>}*/
    long iteration;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1515_0;>}*/
    for (iteration = 0; iteration < CLOMP_num_iterations; iteration++) {
        /*OUT: {
        Reverse<--, 1515_0;>}*/
        dynamic_omp_cycle();
        /*OUT: {
        Reverse<--, 1515_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void manual_omp_module1(int startPidx, int endPidx) {
    /*OUT: {
    Reverse<--,>}*/
    static double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1526,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1526,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1526,>}*/
    }
    /*OUT: {
    Reverse<1526,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1533,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1533,>}*/
    /*OUT: {
    Reverse<1533,>}*/
    /*OUT: {
    Reverse<1533, 1535_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1533, 1535_0;>}*/
        struct _Part *_imopVarPre279;
        /*OUT: {
        Reverse<1533, 1535_0;>}*/
        _imopVarPre279 = partArray[pidx];
        /*OUT: {
        Reverse<1533, 1535_0;>}*/
        update_part(_imopVarPre279, deposit);
        /*OUT: {
        Reverse<1533, 1535_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void manual_omp_module2(int startPidx, int endPidx) {
    /*OUT: {
    Reverse<--,>}*/
    static double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1550,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1550,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1550,>}*/
    }
    /*OUT: {
    Reverse<1550,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1557,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1557,>}*/
    /*OUT: {
    Reverse<1557,>}*/
    /*OUT: {
    Reverse<1557, 1559_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1557, 1559_0;>}*/
        struct _Part *_imopVarPre281;
        /*OUT: {
        Reverse<1557, 1559_0;>}*/
        _imopVarPre281 = partArray[pidx];
        /*OUT: {
        Reverse<1557, 1559_0;>}*/
        update_part(_imopVarPre281, deposit);
        /*OUT: {
        Reverse<1557, 1559_0;>}*/
    }
    /*OUT: {
    Reverse<1557, 1559_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1570,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1570,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1570,>}*/
    }
    /*OUT: {
    Reverse<1570,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1577,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1577,>}*/
    /*OUT: {
    Reverse<1577,>}*/
    /*OUT: {
    Reverse<1577, 1579_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1577, 1579_0;>}*/
        struct _Part *_imopVarPre283;
        /*OUT: {
        Reverse<1577, 1579_0;>}*/
        _imopVarPre283 = partArray[pidx];
        /*OUT: {
        Reverse<1577, 1579_0;>}*/
        update_part(_imopVarPre283, deposit);
        /*OUT: {
        Reverse<1577, 1579_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void manual_omp_module3(int startPidx, int endPidx) {
    /*OUT: {
    Reverse<--,>}*/
    static double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1594,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1594,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1594,>}*/
    }
    /*OUT: {
    Reverse<1594,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1601,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1601,>}*/
    /*OUT: {
    Reverse<1601,>}*/
    /*OUT: {
    Reverse<1601, 1603_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1601, 1603_0;>}*/
        struct _Part *_imopVarPre285;
        /*OUT: {
        Reverse<1601, 1603_0;>}*/
        _imopVarPre285 = partArray[pidx];
        /*OUT: {
        Reverse<1601, 1603_0;>}*/
        update_part(_imopVarPre285, deposit);
        /*OUT: {
        Reverse<1601, 1603_0;>}*/
    }
    /*OUT: {
    Reverse<1601, 1603_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1614,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1614,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1614,>}*/
    }
    /*OUT: {
    Reverse<1614,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1621,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1621,>}*/
    /*OUT: {
    Reverse<1621,>}*/
    /*OUT: {
    Reverse<1621, 1623_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1621, 1623_0;>}*/
        struct _Part *_imopVarPre287;
        /*OUT: {
        Reverse<1621, 1623_0;>}*/
        _imopVarPre287 = partArray[pidx];
        /*OUT: {
        Reverse<1621, 1623_0;>}*/
        update_part(_imopVarPre287, deposit);
        /*OUT: {
        Reverse<1621, 1623_0;>}*/
    }
    /*OUT: {
    Reverse<1621, 1623_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1634,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1634,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1634,>}*/
    }
    /*OUT: {
    Reverse<1634,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1641,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1641,>}*/
    /*OUT: {
    Reverse<1641,>}*/
    /*OUT: {
    Reverse<1641, 1643_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1641, 1643_0;>}*/
        struct _Part *_imopVarPre289;
        /*OUT: {
        Reverse<1641, 1643_0;>}*/
        _imopVarPre289 = partArray[pidx];
        /*OUT: {
        Reverse<1641, 1643_0;>}*/
        update_part(_imopVarPre289, deposit);
        /*OUT: {
        Reverse<1641, 1643_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void manual_omp_module4(int startPidx, int endPidx) {
    /*OUT: {
    Reverse<--,>}*/
    static double deposit;
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1658,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1658,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1658,>}*/
    }
    /*OUT: {
    Reverse<1658,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1665,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1665,>}*/
    /*OUT: {
    Reverse<1665,>}*/
    /*OUT: {
    Reverse<1665, 1667_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1665, 1667_0;>}*/
        struct _Part *_imopVarPre291;
        /*OUT: {
        Reverse<1665, 1667_0;>}*/
        _imopVarPre291 = partArray[pidx];
        /*OUT: {
        Reverse<1665, 1667_0;>}*/
        update_part(_imopVarPre291, deposit);
        /*OUT: {
        Reverse<1665, 1667_0;>}*/
    }
    /*OUT: {
    Reverse<1665, 1667_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1678,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1678,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1678,>}*/
    }
    /*OUT: {
    Reverse<1678,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1685,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1685,>}*/
    /*OUT: {
    Reverse<1685,>}*/
    /*OUT: {
    Reverse<1685, 1687_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1685, 1687_0;>}*/
        struct _Part *_imopVarPre293;
        /*OUT: {
        Reverse<1685, 1687_0;>}*/
        _imopVarPre293 = partArray[pidx];
        /*OUT: {
        Reverse<1685, 1687_0;>}*/
        update_part(_imopVarPre293, deposit);
        /*OUT: {
        Reverse<1685, 1687_0;>}*/
    }
    /*OUT: {
    Reverse<1685, 1687_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1698,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1698,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1698,>}*/
    }
    /*OUT: {
    Reverse<1698,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1705,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1705,>}*/
    /*OUT: {
    Reverse<1705,>}*/
    /*OUT: {
    Reverse<1705, 1707_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1705, 1707_0;>}*/
        struct _Part *_imopVarPre295;
        /*OUT: {
        Reverse<1705, 1707_0;>}*/
        _imopVarPre295 = partArray[pidx];
        /*OUT: {
        Reverse<1705, 1707_0;>}*/
        update_part(_imopVarPre295, deposit);
        /*OUT: {
        Reverse<1705, 1707_0;>}*/
    }
    /*OUT: {
    Reverse<1705, 1707_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1718,>}*/
#pragma omp barrier
#pragma omp single nowait
    {
        /*OUT: {
        Reverse<1718,>}*/
        deposit = calc_deposit();
        /*OUT: {
        Reverse<1718,>}*/
    }
    /*OUT: {
    Reverse<1718,>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<1725,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<1725,>}*/
    /*OUT: {
    Reverse<1725,>}*/
    /*OUT: {
    Reverse<1725, 1727_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<1725, 1727_0;>}*/
        struct _Part *_imopVarPre297;
        /*OUT: {
        Reverse<1725, 1727_0;>}*/
        _imopVarPre297 = partArray[pidx];
        /*OUT: {
        Reverse<1725, 1727_0;>}*/
        update_part(_imopVarPre297, deposit);
        /*OUT: {
        Reverse<1725, 1727_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void manual_omp_cycle(int startPidx, int endPidx) {
    /*OUT: {
    Reverse<--,>}*/
    manual_omp_module1(startPidx, endPidx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    manual_omp_module2(startPidx, endPidx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    manual_omp_module3(startPidx, endPidx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    manual_omp_module4(startPidx, endPidx);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
void do_manual_omp_version(long num_iterations) {
#pragma omp parallel
    {
        /*OUT: {
        Reverse<4306,>}*/
        long iteration;
        /*OUT: {
        Reverse<4306,>}*/
        int startPidx;
        /*OUT: {
        Reverse<4306,>}*/
        int endPidx;
        /*OUT: {
        Reverse<4306,>}*/
        double dparts_per_thread;
        /*OUT: {
        Reverse<4306,>}*/
        int _imopVarPre298;
        /*OUT: {
        Reverse<4306,>}*/
        _imopVarPre298 = omp_get_thread_num();
        /*OUT: {
        Reverse<4306,>}*/
        /*OUT: {
        Reverse<4306,>}*/
        int thread_id = _imopVarPre298;
        /*OUT: {
        Reverse<4306,>}*/
        int _imopVarPre299;
        /*OUT: {
        Reverse<4306,>}*/
        _imopVarPre299 = omp_get_num_threads();
        /*OUT: {
        Reverse<4306,>}*/
        /*OUT: {
        Reverse<4306,>}*/
        int numThreads = _imopVarPre299;
        /*OUT: {
        Reverse<4306,>}*/
        dparts_per_thread = ((double) CLOMP_numParts) / ((double) numThreads);
        /*OUT: {
        Reverse<4306,>}*/
        if (dparts_per_thread < 1.0) {
            /*OUT: {
            Reverse<4306, 1785_0;>}*/
            dparts_per_thread = 1.0;
        }
        /*OUT: {
        Reverse<4306,>}*/
        double _imopVarPre302;
        /*OUT: {
        Reverse<4306,>}*/
        double _imopVarPre303;
        /*OUT: {
        Reverse<4306,>}*/
        _imopVarPre302 = ((double) thread_id) * dparts_per_thread;
        /*OUT: {
        Reverse<4306,>}*/
        _imopVarPre303 = nearbyint(_imopVarPre302);
        /*OUT: {
        Reverse<4306,>}*/
        /*OUT: {
        Reverse<4306,>}*/
        startPidx = (int) _imopVarPre303;
        /*OUT: {
        Reverse<4306,>}*/
        double _imopVarPre306;
        /*OUT: {
        Reverse<4306,>}*/
        double _imopVarPre307;
        /*OUT: {
        Reverse<4306,>}*/
        _imopVarPre306 = ((double) thread_id + 1) * dparts_per_thread;
        /*OUT: {
        Reverse<4306,>}*/
        _imopVarPre307 = nearbyint(_imopVarPre306);
        /*OUT: {
        Reverse<4306,>}*/
        /*OUT: {
        Reverse<4306,>}*/
        endPidx = (int) _imopVarPre307 - 1;
        /*OUT: {
        Reverse<4306,>}*/
        if (endPidx >= CLOMP_numParts) {
            /*OUT: {
            Reverse<4306, 1814_0;>}*/
            endPidx = CLOMP_numParts - 1;
        }
        /*OUT: {
        Reverse<4306,>}*/
        if (startPidx >= CLOMP_numParts) {
            /*OUT: {
            Reverse<4306, 1817_0;>}*/
            printf("*** No parts available for thread %i\n", thread_id);
            /*OUT: {
            Reverse<4306, 1817_0;>}*/
        }
        /*OUT: {
        Reverse<4306,>}*/
        /*OUT: {
        Reverse<4306,>}*/
        /*OUT: {
        Reverse<4306, 1824_0;>}*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
            /*OUT: {
            Reverse<4306, 1824_0;>}*/
            manual_omp_cycle(startPidx, endPidx);
            /*OUT: {
            Reverse<4306, 1824_0;>}*/
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void bestcase_omp_module1(int startPidx, int endPidx , double deposit) {
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1836_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1836_0;>}*/
        struct _Part *_imopVarPre309;
        /*OUT: {
        Reverse<--, 1836_0;>}*/
        _imopVarPre309 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1836_0;>}*/
        update_part(_imopVarPre309, deposit);
        /*OUT: {
        Reverse<--, 1836_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void bestcase_omp_module2(int startPidx, int endPidx , double deposit) {
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1852_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1852_0;>}*/
        struct _Part *_imopVarPre311;
        /*OUT: {
        Reverse<--, 1852_0;>}*/
        _imopVarPre311 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1852_0;>}*/
        update_part(_imopVarPre311, deposit);
        /*OUT: {
        Reverse<--, 1852_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1852_1;>}*/
    /*OUT: {
    Reverse<--, 1852_1;>}*/
    /*OUT: {
    Reverse<--, 1864_0; 1852_1;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1864_0; 1852_1;>}*/
        struct _Part *_imopVarPre313;
        /*OUT: {
        Reverse<--, 1864_0; 1852_1;>}*/
        _imopVarPre313 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1864_0; 1852_1;>}*/
        update_part(_imopVarPre313, deposit);
        /*OUT: {
        Reverse<--, 1864_0; 1852_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void bestcase_omp_module3(int startPidx, int endPidx , double deposit) {
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1880_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1880_0;>}*/
        struct _Part *_imopVarPre315;
        /*OUT: {
        Reverse<--, 1880_0;>}*/
        _imopVarPre315 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1880_0;>}*/
        update_part(_imopVarPre315, deposit);
        /*OUT: {
        Reverse<--, 1880_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1880_1;>}*/
    /*OUT: {
    Reverse<--, 1880_1;>}*/
    /*OUT: {
    Reverse<--, 1892_0; 1880_1;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1892_0; 1880_1;>}*/
        struct _Part *_imopVarPre317;
        /*OUT: {
        Reverse<--, 1892_0; 1880_1;>}*/
        _imopVarPre317 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1892_0; 1880_1;>}*/
        update_part(_imopVarPre317, deposit);
        /*OUT: {
        Reverse<--, 1892_0; 1880_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1892_1; 1880_1;>}*/
    /*OUT: {
    Reverse<--, 1892_1; 1880_1;>}*/
    /*OUT: {
    Reverse<--, 1904_0; 1892_1; 1880_1;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1904_0; 1892_1; 1880_1;>}*/
        struct _Part *_imopVarPre319;
        /*OUT: {
        Reverse<--, 1904_0; 1892_1; 1880_1;>}*/
        _imopVarPre319 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1904_0; 1892_1; 1880_1;>}*/
        update_part(_imopVarPre319, deposit);
        /*OUT: {
        Reverse<--, 1904_0; 1892_1; 1880_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void bestcase_omp_module4(int startPidx, int endPidx , double deposit) {
    /*OUT: {
    Reverse<--,>}*/
    long pidx;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1920_0;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1920_0;>}*/
        struct _Part *_imopVarPre321;
        /*OUT: {
        Reverse<--, 1920_0;>}*/
        _imopVarPre321 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1920_0;>}*/
        update_part(_imopVarPre321, deposit);
        /*OUT: {
        Reverse<--, 1920_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1920_1;>}*/
    /*OUT: {
    Reverse<--, 1920_1;>}*/
    /*OUT: {
    Reverse<--, 1932_0; 1920_1;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1932_0; 1920_1;>}*/
        struct _Part *_imopVarPre323;
        /*OUT: {
        Reverse<--, 1932_0; 1920_1;>}*/
        _imopVarPre323 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1932_0; 1920_1;>}*/
        update_part(_imopVarPre323, deposit);
        /*OUT: {
        Reverse<--, 1932_0; 1920_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1932_1; 1920_1;>}*/
    /*OUT: {
    Reverse<--, 1932_1; 1920_1;>}*/
    /*OUT: {
    Reverse<--, 1944_0; 1932_1; 1920_1;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1944_0; 1932_1; 1920_1;>}*/
        struct _Part *_imopVarPre325;
        /*OUT: {
        Reverse<--, 1944_0; 1932_1; 1920_1;>}*/
        _imopVarPre325 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1944_0; 1932_1; 1920_1;>}*/
        update_part(_imopVarPre325, deposit);
        /*OUT: {
        Reverse<--, 1944_0; 1932_1; 1920_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1944_1; 1932_1; 1920_1;>}*/
    /*OUT: {
    Reverse<--, 1944_1; 1932_1; 1920_1;>}*/
    /*OUT: {
    Reverse<--, 1956_0; 1944_1; 1932_1; 1920_1;>}*/
    for (pidx = startPidx; pidx <= endPidx; pidx++) {
        /*OUT: {
        Reverse<--, 1956_0; 1944_1; 1932_1; 1920_1;>}*/
        struct _Part *_imopVarPre327;
        /*OUT: {
        Reverse<--, 1956_0; 1944_1; 1932_1; 1920_1;>}*/
        _imopVarPre327 = partArray[pidx];
        /*OUT: {
        Reverse<--, 1956_0; 1944_1; 1932_1; 1920_1;>}*/
        update_part(_imopVarPre327, deposit);
        /*OUT: {
        Reverse<--, 1956_0; 1944_1; 1932_1; 1920_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void bestcase_omp_cycle(int startPidx, int endPidx , double deposit) {
    /*OUT: {
    Reverse<--,>}*/
    bestcase_omp_module1(startPidx, endPidx, deposit);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    bestcase_omp_module2(startPidx, endPidx, deposit);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    bestcase_omp_module3(startPidx, endPidx, deposit);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    bestcase_omp_module4(startPidx, endPidx, deposit);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
void do_bestcase_omp_version(long num_iterations) {
    /*OUT: {
    Reverse<--,>}*/
    long iter;
    /*OUT: {
    Reverse<--,>}*/
    long subcycle;
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    deposit = (1.0 + CLOMP_max_residue) / CLOMP_numParts;
#pragma omp parallel
    {
        /*OUT: {
        Reverse<4396,>}*/
        long iteration;
        /*OUT: {
        Reverse<4396,>}*/
        int startPidx;
        /*OUT: {
        Reverse<4396,>}*/
        int endPidx;
        /*OUT: {
        Reverse<4396,>}*/
        double dparts_per_thread;
        /*OUT: {
        Reverse<4396,>}*/
        int _imopVarPre328;
        /*OUT: {
        Reverse<4396,>}*/
        _imopVarPre328 = omp_get_thread_num();
        /*OUT: {
        Reverse<4396,>}*/
        /*OUT: {
        Reverse<4396,>}*/
        int thread_id = _imopVarPre328;
        /*OUT: {
        Reverse<4396,>}*/
        int _imopVarPre329;
        /*OUT: {
        Reverse<4396,>}*/
        _imopVarPre329 = omp_get_num_threads();
        /*OUT: {
        Reverse<4396,>}*/
        /*OUT: {
        Reverse<4396,>}*/
        int numThreads = _imopVarPre329;
        /*OUT: {
        Reverse<4396,>}*/
        dparts_per_thread = ((double) CLOMP_numParts) / ((double) numThreads);
        /*OUT: {
        Reverse<4396,>}*/
        if (dparts_per_thread < 1.0) {
            /*OUT: {
            Reverse<4396, 2021_0;>}*/
            dparts_per_thread = 1.0;
        }
        /*OUT: {
        Reverse<4396,>}*/
        double _imopVarPre332;
        /*OUT: {
        Reverse<4396,>}*/
        double _imopVarPre333;
        /*OUT: {
        Reverse<4396,>}*/
        _imopVarPre332 = ((double) thread_id) * dparts_per_thread;
        /*OUT: {
        Reverse<4396,>}*/
        _imopVarPre333 = nearbyint(_imopVarPre332);
        /*OUT: {
        Reverse<4396,>}*/
        /*OUT: {
        Reverse<4396,>}*/
        startPidx = (int) _imopVarPre333;
        /*OUT: {
        Reverse<4396,>}*/
        double _imopVarPre336;
        /*OUT: {
        Reverse<4396,>}*/
        double _imopVarPre337;
        /*OUT: {
        Reverse<4396,>}*/
        _imopVarPre336 = ((double) thread_id + 1) * dparts_per_thread;
        /*OUT: {
        Reverse<4396,>}*/
        _imopVarPre337 = nearbyint(_imopVarPre336);
        /*OUT: {
        Reverse<4396,>}*/
        /*OUT: {
        Reverse<4396,>}*/
        endPidx = (int) _imopVarPre337 - 1;
        /*OUT: {
        Reverse<4396,>}*/
        if (endPidx >= CLOMP_numParts) {
            /*OUT: {
            Reverse<4396, 2050_0;>}*/
            endPidx = CLOMP_numParts - 1;
        }
        /*OUT: {
        Reverse<4396,>}*/
        if (startPidx >= CLOMP_numParts) {
            /*OUT: {
            Reverse<4396, 2053_0;>}*/
            printf("*** No parts available for thread %i\n", thread_id);
            /*OUT: {
            Reverse<4396, 2053_0;>}*/
        }
        /*OUT: {
        Reverse<4396,>}*/
        /*OUT: {
        Reverse<4396,>}*/
        /*OUT: {
        Reverse<4396, 2060_0;>}*/
        for (iteration = 0; iteration < num_iterations; iteration++) {
            /*OUT: {
            Reverse<4396, 2060_0;>}*/
            bestcase_omp_cycle(startPidx, endPidx, deposit);
            /*OUT: {
            Reverse<4396, 2060_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2071_1; 2068_0;>}*/
    for (iter = 0; iter < num_iterations; iter++) {
        /*OUT: {
        Reverse<--, 2068_0;>}*/
        /*OUT: {
        Reverse<--, 2068_0;>}*/
        /*OUT: {
        Reverse<--, 2071_0; 2068_0;>}*/
        for (subcycle = 0; subcycle < 10; subcycle++) {
            /*OUT: {
            Reverse<--, 2071_0; 2068_0;>}*/
            partArray[0]->update_count = 1;
            /*OUT: {
            Reverse<--, 2071_0; 2068_0;>}*/
            double _imopVarPre338;
            /*OUT: {
            Reverse<--, 2071_0; 2068_0;>}*/
            _imopVarPre338 = calc_deposit();
            /*OUT: {
            Reverse<--, 2071_0; 2068_0;>}*/
            /*OUT: {
            Reverse<--, 2071_0; 2068_0;>}*/
            partArray[0]->firstZone->value = _imopVarPre338;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void addPart(Part *part, long partId) {
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre339;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre339 = (partId < 0);
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre339) {
        /*OUT: {
        Reverse<--, 2092_0;>}*/
        _imopVarPre339 = (partId >= CLOMP_numParts);
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre339) {
        /*OUT: {
        Reverse<--, 2096_0;>}*/
        int _imopVarPre341;
        /*OUT: {
        Reverse<--, 2096_0;>}*/
        _imopVarPre341 = (int) partId;
        /*OUT: {
        Reverse<--, 2096_0;>}*/
        fprintf(__stderrp, "addPart error: partId (%i) out of bounds!\n", _imopVarPre341);
        /*OUT: {
        Reverse<--, 2096_0;>}*/
        /*OUT: {
        Reverse<--, 2096_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2096_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (partArray[partId] != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2112_0;>}*/
        int _imopVarPre343;
        /*OUT: {
        Reverse<--, 2112_0;>}*/
        _imopVarPre343 = (int) partId;
        /*OUT: {
        Reverse<--, 2112_0;>}*/
        fprintf(__stderrp, "addPart error: partId (%i) already initialized!\n", _imopVarPre343);
        /*OUT: {
        Reverse<--, 2112_0;>}*/
        /*OUT: {
        Reverse<--, 2112_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2112_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    partArray[partId] = part;
    /*OUT: {
    Reverse<--,>}*/
    part->partId = partId;
    /*OUT: {
    Reverse<--,>}*/
    part->zoneCount = CLOMP_zonesPerPart;
    /*OUT: {
    Reverse<--,>}*/
    part->deposit_ratio = ((double) (partId + 1)) / ((double) (20.0 * CLOMP_numParts));
    /*OUT: {
    Reverse<--,>}*/
    part->residue = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    part->firstZone = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    part->lastZone = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    part->expected_first_value = -1.0;
    /*OUT: {
    Reverse<--,>}*/
    part->expected_residue = -1.0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void addZone(Part *part, Zone *zone) {
    /*OUT: {
    Reverse<--,>}*/
    if (part == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2154_0;>}*/
        fprintf(__stderrp, "addZone error: part NULL!\n");
        /*OUT: {
        Reverse<--, 2154_0;>}*/
        /*OUT: {
        Reverse<--, 2154_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2154_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (zone == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2166_0;>}*/
        fprintf(__stderrp, "addZone error: zone NULL!\n");
        /*OUT: {
        Reverse<--, 2166_0;>}*/
        /*OUT: {
        Reverse<--, 2166_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2166_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre345;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre345 = __builtin_object_size(zone, 0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    __builtin___memset_chk(zone, 0xFF, CLOMP_zoneSize, _imopVarPre345);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (part->lastZone == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2190_0;>}*/
        zone->zoneId = 1;
        /*OUT: {
        Reverse<--, 2190_0;>}*/
        part->firstZone = zone;
        /*OUT: {
        Reverse<--, 2190_0;>}*/
        part->lastZone = zone;
    } else {
        /*OUT: {
        Reverse<--, 2190_1;>}*/
        zone->zoneId = part->lastZone->zoneId + 1;
        /*OUT: {
        Reverse<--, 2190_1;>}*/
        part->lastZone->nextZone = zone;
        /*OUT: {
        Reverse<--, 2190_1;>}*/
        part->lastZone = zone;
    }
    /*OUT: {
    Reverse<--,>}*/
    zone->nextZone = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    zone->partId = part->partId;
    /*OUT: {
    Reverse<--,>}*/
    zone->value = 0.0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    char hostname[200];
    /*OUT: {
    Reverse<--,>}*/
    time_t starttime;
    /*OUT: {
    Reverse<--,>}*/
    char startdate[50];
    /*OUT: {
    Reverse<--,>}*/
    long partId;
    /*OUT: {
    Reverse<--,>}*/
    double totalZoneCount;
    /*OUT: {
    Reverse<--,>}*/
    double deposit;
    /*OUT: {
    Reverse<--,>}*/
    double percent_residue;
    /*OUT: {
    Reverse<--,>}*/
    double diterations;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval calc_deposit_start_ts;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval calc_deposit_end_ts;
    /*OUT: {
    Reverse<--,>}*/
    double calc_deposit_seconds;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval omp_barrier_start_ts;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval omp_barrier_end_ts;
    /*OUT: {
    Reverse<--,>}*/
    double omp_barrier_seconds;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval serial_ref_start_ts;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval serial_ref_end_ts;
    /*OUT: {
    Reverse<--,>}*/
    double serial_ref_seconds;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval bestcase_omp_start_ts;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval bestcase_omp_end_ts;
    /*OUT: {
    Reverse<--,>}*/
    double bestcase_omp_seconds;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval static_omp_start_ts;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval static_omp_end_ts;
    /*OUT: {
    Reverse<--,>}*/
    double static_omp_seconds;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval manual_omp_start_ts;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval manual_omp_end_ts;
    /*OUT: {
    Reverse<--,>}*/
    double manual_omp_seconds;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval dynamic_omp_start_ts;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval dynamic_omp_end_ts;
    /*OUT: {
    Reverse<--,>}*/
    double dynamic_omp_seconds;
    /*OUT: {
    Reverse<--,>}*/
    int aidx;
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_exe_name = argv[0];
    /*OUT: {
    Reverse<--,>}*/
    printf("Sequoia Benchmark Version 1.0\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (argc != 8) {
        /*OUT: {
        Reverse<--, 2250_0;>}*/
        print_usage();
        /*OUT: {
        Reverse<--, 2250_0;>}*/
        /*OUT: {
        Reverse<--, 2250_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2250_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre348;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre349;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre348 = sizeof (hostname);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre349 = gethostname(hostname, _imopVarPre348);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre349 != 0) {
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        int _imopVarPre357;
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        int _imopVarPre358;
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        unsigned int _imopVarPre359;
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        _imopVarPre357 = 2 > 1;
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        if (_imopVarPre357) {
            /*OUT: {
            Reverse<--, 2278_0; 2272_0;>}*/
            _imopVarPre358 = 1;
        } else {
            /*OUT: {
            Reverse<--, 2278_1; 2272_0;>}*/
            _imopVarPre358 = 0;
        }
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        _imopVarPre359 = __builtin_object_size(hostname, _imopVarPre358);
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        /*OUT: {
        Reverse<--, 2272_0;>}*/
        __builtin___strcpy_chk(hostname, "(Unknown host)", _imopVarPre359);
        /*OUT: {
        Reverse<--, 2272_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre361;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre361 = &starttime;
    /*OUT: {
    Reverse<--,>}*/
    time(_imopVarPre361);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre363;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre363 = &starttime;
    /*OUT: {
    Reverse<--,>}*/
    ctime_r(_imopVarPre363, startdate);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre365;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre366;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre365 = argv[1];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre366 = convert_to_positive_long("numThreads", _imopVarPre365);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_numThreads = _imopVarPre366;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre368;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre369;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre368 = argv[2];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre369 = convert_to_positive_long("numThreads", _imopVarPre368);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_allocThreads = _imopVarPre369;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre371;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre372;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre371 = argv[3];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre372 = convert_to_positive_long("numParts", _imopVarPre371);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_numParts = _imopVarPre372;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre374;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre375;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre374 = argv[4];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre375 = convert_to_positive_long("zonesPerPart", _imopVarPre374);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_zonesPerPart = _imopVarPre375;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre377;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre378;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre377 = argv[5];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre378 = convert_to_positive_long("zoneSize", _imopVarPre377);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_zoneSize = _imopVarPre378;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre380;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre381;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre380 = argv[6];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre381 = convert_to_positive_long("flopScale", _imopVarPre380);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_flopScale = _imopVarPre381;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre383;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre384;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre383 = argv[7];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre384 = convert_to_positive_long("timeScale", _imopVarPre383);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    CLOMP_timeScale = _imopVarPre384;
    /*OUT: {
    Reverse<--,>}*/
    if (CLOMP_zoneSize < sizeof(Zone)) {
        /*OUT: {
        Reverse<--, 2401_0;>}*/
        signed long int _imopVarPre386;
        /*OUT: {
        Reverse<--, 2401_0;>}*/
        _imopVarPre386 = (long) sizeof(Zone);
        /*OUT: {
        Reverse<--, 2401_0;>}*/
        printf("***Forcing zoneSize (%ld specified) to minimum zone size %ld\n\n", CLOMP_zoneSize, _imopVarPre386);
        /*OUT: {
        Reverse<--, 2401_0;>}*/
        /*OUT: {
        Reverse<--, 2401_0;>}*/
        CLOMP_zoneSize = sizeof(Zone);
    }
    /*OUT: {
    Reverse<--,>}*/
    printf("       Invocation:");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2418_0;>}*/
    for (aidx = 0; aidx < argc; aidx++) {
        /*OUT: {
        Reverse<--, 2418_0;>}*/
        char *_imopVarPre388;
        /*OUT: {
        Reverse<--, 2418_0;>}*/
        _imopVarPre388 = argv[aidx];
        /*OUT: {
        Reverse<--, 2418_0;>}*/
        printf(" %s", _imopVarPre388);
        /*OUT: {
        Reverse<--, 2418_0;>}*/
    }
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("         Hostname: %s\n", hostname);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("       Start time: %s", startdate);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("       Executable: %s\n", CLOMP_exe_name);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    if (CLOMP_numThreads == -1) {
        /*OUT: {
        Reverse<--, 2449_0; 2418_1;>}*/
        CLOMP_numThreads = omp_get_max_threads();
        /*OUT: {
        Reverse<--, 2449_0; 2418_1;>}*/
        /*OUT: {
        Reverse<--, 2449_0; 2418_1;>}*/
        int _imopVarPre390;
        /*OUT: {
        Reverse<--, 2449_0; 2418_1;>}*/
        _imopVarPre390 = (int) CLOMP_numThreads;
        /*OUT: {
        Reverse<--, 2449_0; 2418_1;>}*/
        printf("      numThreads: %d (using system default)\n", _imopVarPre390);
        /*OUT: {
        Reverse<--, 2449_0; 2418_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 2449_1; 2418_1;>}*/
        printf("      numThreads: %ld\n", CLOMP_numThreads);
        /*OUT: {
        Reverse<--, 2449_1; 2418_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    if (CLOMP_allocThreads == -1) {
        /*OUT: {
        Reverse<--, 2469_0; 2418_1;>}*/
        CLOMP_allocThreads = CLOMP_numThreads;
        /*OUT: {
        Reverse<--, 2469_0; 2418_1;>}*/
        printf("    allocThreads: %ld (using numThreads)\n", CLOMP_allocThreads);
        /*OUT: {
        Reverse<--, 2469_0; 2418_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 2469_1; 2418_1;>}*/
        printf("    allocThreads: %ld\n", CLOMP_allocThreads);
        /*OUT: {
        Reverse<--, 2469_1; 2418_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("        numParts: %ld\n", CLOMP_numParts);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("    zonesPerPart: %ld\n", CLOMP_zonesPerPart);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("       flopScale: %ld\n", CLOMP_flopScale);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("       timeScale: %ld\n", CLOMP_timeScale);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    printf("        zoneSize: %ld\n", CLOMP_zoneSize);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    int _imopVarPre392;
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    _imopVarPre392 = (int) CLOMP_allocThreads;
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    omp_set_num_threads(_imopVarPre392);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    unsigned long int _imopVarPre395;
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    void *_imopVarPre396;
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    _imopVarPre395 = CLOMP_numParts * sizeof(Part *);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    _imopVarPre396 = malloc(_imopVarPre395);
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    partArray = (Part **) _imopVarPre396;
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    if (partArray == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2528_0; 2418_1;>}*/
        fprintf(__stderrp, "Out of memory allocating part array\n");
        /*OUT: {
        Reverse<--, 2528_0; 2418_1;>}*/
        /*OUT: {
        Reverse<--, 2528_0; 2418_1;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 2528_0; 2418_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_0; 2418_1;>}*/
    for (partId = 0; partId < CLOMP_numParts; partId++) {
        /*OUT: {
        Reverse<--, 2540_0; 2418_1;>}*/
        partArray[partId] = ((void *) 0);
    }
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    CLOMP_partRatio = 1.0 / ((double) CLOMP_numParts);
#pragma omp parallel private(partId)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4507,>}*/
        /*OUT: {
        Reverse<4507,>}*/
        /*OUT: {
        Reverse<4507,>}*/
        for (partId = 0; partId < CLOMP_numParts; partId++) {
            /*OUT: {
            Reverse<4507,>}*/
            Part *part;
            /*OUT: {
            Reverse<4507,>}*/
            unsigned long int _imopVarPre403;
            /*OUT: {
            Reverse<4507,>}*/
            void *_imopVarPre404;
            /*OUT: {
            Reverse<4507,>}*/
            _imopVarPre403 = sizeof(Part);
            /*OUT: {
            Reverse<4507,>}*/
            _imopVarPre404 = malloc(_imopVarPre403);
            /*OUT: {
            Reverse<4507,>}*/
            /*OUT: {
            Reverse<4507,>}*/
            if ((part = (Part *) _imopVarPre404) == ((void *) 0)) {
                /*OUT: {
                Reverse<4507, 2567_0;>}*/
                fprintf(__stderrp, "Out of memory allocating part\n");
                /*OUT: {
                Reverse<4507, 2567_0;>}*/
                /*OUT: {
                Reverse<4507, 2567_0;>}*/
                exit(1);
                /*OUT: {
                Reverse<4507, 2567_0;>}*/
            }
            /*OUT: {
            Reverse<4507,>}*/
            addPart(part, partId);
            /*OUT: {
            Reverse<4507,>}*/
        }
        /*OUT: {
        Reverse<4507,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2583,>}*/
#pragma omp barrier
    }
#pragma omp parallel private(partId)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<4519,>}*/
        /*OUT: {
        Reverse<4519,>}*/
        /*OUT: {
        Reverse<4519, 2617_1;>}*/
        for (partId = 0; partId < CLOMP_numParts; partId++) {
            /*OUT: {
            Reverse<4519,>}*/
            Zone *zoneArray;
            /*OUT: {
            Reverse<4519,>}*/
            Zone *zone;
            /*OUT: {
            Reverse<4519,>}*/
            int zoneId;
            /*OUT: {
            Reverse<4519,>}*/
            signed long int _imopVarPre407;
            /*OUT: {
            Reverse<4519,>}*/
            void *_imopVarPre408;
            /*OUT: {
            Reverse<4519,>}*/
            _imopVarPre407 = CLOMP_zoneSize * CLOMP_zonesPerPart;
            /*OUT: {
            Reverse<4519,>}*/
            _imopVarPre408 = malloc(_imopVarPre407);
            /*OUT: {
            Reverse<4519,>}*/
            /*OUT: {
            Reverse<4519,>}*/
            zoneArray = (Zone *) _imopVarPre408;
            /*OUT: {
            Reverse<4519,>}*/
            if (zoneArray == ((void *) 0)) {
                /*OUT: {
                Reverse<4519, 2605_0;>}*/
                fprintf(__stderrp, "Out of memory allocate zone array\n");
                /*OUT: {
                Reverse<4519, 2605_0;>}*/
                /*OUT: {
                Reverse<4519, 2605_0;>}*/
                exit(1);
                /*OUT: {
                Reverse<4519, 2605_0;>}*/
            }
            /*OUT: {
            Reverse<4519,>}*/
            /*OUT: {
            Reverse<4519,>}*/
            /*OUT: {
            Reverse<4519, 2617_0;>}*/
            for (zoneId = 0; zoneId < CLOMP_zonesPerPart; zoneId++) {
                /*OUT: {
                Reverse<4519, 2617_0;>}*/
                zone = &zoneArray[zoneId];
                /*OUT: {
                Reverse<4519, 2617_0;>}*/
                struct _Part *_imopVarPre410;
                /*OUT: {
                Reverse<4519, 2617_0;>}*/
                _imopVarPre410 = partArray[partId];
                /*OUT: {
                Reverse<4519, 2617_0;>}*/
                addZone(_imopVarPre410, zone);
                /*OUT: {
                Reverse<4519, 2617_0;>}*/
            }
        }
        /*OUT: {
        Reverse<4519,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2631,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    totalZoneCount = (double) CLOMP_numParts * (double) CLOMP_zonesPerPart;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    double _imopVarPre412;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    _imopVarPre412 = (double) CLOMP_zonesPerPart;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    printf("   Zones per Part: %.0f\n", _imopVarPre412);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    double _imopVarPre414;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    _imopVarPre414 = (double) totalZoneCount;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    printf("      Total Zones: %.0f\n", _imopVarPre414);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    double _imopVarPre416;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    _imopVarPre416 = (double) (totalZoneCount * CLOMP_zoneSize) + (double) (sizeof(Part) * CLOMP_numParts);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    printf("Memory (in bytes): %.0f\n", _imopVarPre416);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    double _imopVarPre418;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    double _imopVarPre419;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    _imopVarPre418 = (((double) 1000000) * ((double) CLOMP_timeScale)) / ((double) totalZoneCount * (double) CLOMP_flopScale);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    _imopVarPre419 = ceil(_imopVarPre418);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    diterations = _imopVarPre419;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    if (diterations > 2000000000.0) {
        /*OUT: {
        Reverse<--, 2676_0; 2540_1; 2418_1;>}*/
        printf("*** Forcing iterations from (%g) to 2 billion\n", diterations);
        /*OUT: {
        Reverse<--, 2676_0; 2540_1; 2418_1;>}*/
        /*OUT: {
        Reverse<--, 2676_0; 2540_1; 2418_1;>}*/
        diterations = 2000000000.0;
    }
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    CLOMP_num_iterations = (long) diterations;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    int _imopVarPre421;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    _imopVarPre421 = (int) CLOMP_num_iterations;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    printf("Scaled Iterations: %i\n", _imopVarPre421);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    double _imopVarPre423;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    _imopVarPre423 = (double) CLOMP_num_iterations * (double) 10.0;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    printf("  Total Subcycles: %.0f\n", _imopVarPre423);
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    percent_residue = 0.0;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    deposit = CLOMP_partRatio;
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_0; 2540_1; 2418_1;>}*/
    for (partId = 0; partId < CLOMP_numParts; partId++) {
        /*OUT: {
        Reverse<--, 2707_0; 2540_1; 2418_1;>}*/
        struct _Part *_imopVarPre425;
        /*OUT: {
        Reverse<--, 2707_0; 2540_1; 2418_1;>}*/
        _imopVarPre425 = partArray[partId];
        /*OUT: {
        Reverse<--, 2707_0; 2540_1; 2418_1;>}*/
        update_part(_imopVarPre425, deposit);
        /*OUT: {
        Reverse<--, 2707_0; 2540_1; 2418_1;>}*/
        /*OUT: {
        Reverse<--, 2707_0; 2540_1; 2418_1;>}*/
        percent_residue += partArray[partId]->residue;
    }
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre427;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre427 = percent_residue * 100.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("Iteration Residue: %.6f%%\n", _imopVarPre427);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    CLOMP_max_residue = (1.0 * percent_residue) / (1 - percent_residue);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("      Max Residue: %-8.8g\n", CLOMP_max_residue);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    int _imopVarPre429;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre429 = (int) CLOMP_numThreads;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    omp_set_num_threads(_imopVarPre429);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("---------------------\n");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("calc_deposit", "------ Start calc_deposit Pseudocode ------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("calc_deposit", "/* Measure *only* non-threadable calc_deposit() overhead.*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("calc_deposit", "/* Expect this overhead to be negligible.*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("calc_deposit", "deposit = calc_deposit ();");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("calc_deposit", "------- End calc_deposit Pseudocode -------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_start_message("calc_deposit");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre431;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre431 = &calc_deposit_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre431);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_calc_deposit_only();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre433;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre433 = &calc_deposit_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre433);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre438;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre439;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre440;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre441;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre442;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre438 = -1.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre439 = -1.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre440 = &calc_deposit_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre441 = &calc_deposit_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre442 = print_timestats("calc_deposit", _imopVarPre441, _imopVarPre440, _imopVarPre439, _imopVarPre438);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    calc_deposit_seconds = _imopVarPre442;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_omp_barrier_only(1);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("OMP Barrier", "------ Start OMP Barrier Pseudocode ------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("OMP Barrier", "/* Measure *only* OMP barrier overhead.*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("OMP Barrier", "#pragma omp barrier");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("OMP Barrier", "------- End OMP Barrier Pseudocode -------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_start_message("OMP Barrier");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre444;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre444 = &omp_barrier_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre444);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_omp_barrier_only(CLOMP_num_iterations);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre446;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre446 = &omp_barrier_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre446);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre451;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre452;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre453;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre454;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre455;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre451 = -1.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre452 = -1.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre453 = &omp_barrier_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre454 = &omp_barrier_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre455 = print_timestats("OMP Barrier", _imopVarPre454, _imopVarPre453, _imopVarPre452, _imopVarPre451);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    omp_barrier_seconds = _imopVarPre455;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    serial_ref_cycle();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Serial Ref", "------ Start Serial Ref Pseudocode ------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Serial Ref", "/* Measure serial reference performance */");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Serial Ref", "deposit = calc_deposit ();");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Serial Ref", "for (pidx = 0; pidx < numParts; pidx++)");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Serial Ref", "  update_part (partArray[pidx], deposit);");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Serial Ref", "------- End Serial Ref Pseudocode -------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_start_message("Serial Ref");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre457;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre457 = &serial_ref_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre457);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_serial_ref_version();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre459;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre459 = &serial_ref_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre459);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_data_stats("Serial Ref");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre464;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre465;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre466;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre467;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre468;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre464 = -1.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre465 = -1.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre466 = &serial_ref_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre467 = &serial_ref_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre468 = print_timestats("Serial Ref", _imopVarPre467, _imopVarPre466, _imopVarPre465, _imopVarPre464);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    serial_ref_seconds = _imopVarPre468;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_bestcase_omp_version(1);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Bestcase OMP", "------ Start Bestcase OMP Pseudocode ------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Bestcase OMP", "/* Measure the bestcase ref loop runtime for */");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Bestcase OMP", "/* \"free\" threading the following code: */");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Bestcase OMP", "deposit = calc_deposit ();");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Bestcase OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Bestcase OMP", "  update_part (partArray[pidx], deposit);");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Bestcase OMP", "------- End Bestcase OMP Pseudocode -------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_start_message("Bestcase OMP");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre470;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre470 = &bestcase_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre470);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_bestcase_omp_version(CLOMP_num_iterations);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre472;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre472 = &bestcase_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre472);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre476;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre477;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre478;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre479;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre476 = -1.0;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre477 = &bestcase_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre478 = &bestcase_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre479 = print_timestats("Bestcase OMP", _imopVarPre478, _imopVarPre477, serial_ref_seconds, _imopVarPre476);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    bestcase_omp_seconds = _imopVarPre479;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    static_omp_cycle();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Static OMP", "------ Start Static OMP Pseudocode ------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Static OMP", "/* Use OpenMP parallel for schedule(static) on original loop. */");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Static OMP", "deposit = calc_deposit ();");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Static OMP", "#pragma omp parallel for private (pidx) schedule(static)");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Static OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Static OMP", "  update_part (partArray[pidx], deposit);");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Static OMP", "------- End Static OMP Pseudocode -------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_start_message("Static OMP");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre481;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre481 = &static_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre481);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_static_omp_version();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre483;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre483 = &static_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre483);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_data_stats("Static OMP");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre486;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre487;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre488;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre486 = &static_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre487 = &static_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre488 = print_timestats("Static OMP", _imopVarPre487, _imopVarPre486, serial_ref_seconds, bestcase_omp_seconds);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    static_omp_seconds = _imopVarPre488;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    dynamic_omp_cycle();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Dynamic OMP", "------ Start Dynamic OMP Pseudocode ------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Dynamic OMP", "/* Use OpenMP parallel for schedule(dynamic) on orig loop. */");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Dynamic OMP", "deposit = calc_deposit ();");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Dynamic OMP", "#pragma omp parallel for private (pidx) schedule(dynamic)");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Dynamic OMP", "for (pidx = 0; pidx < numParts; pidx++)");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Dynamic OMP", "  update_part (partArray[pidx], deposit);");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Dynamic OMP", "------- End Dynamic OMP Pseudocode -------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_start_message("Dynamic OMP");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre490;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre490 = &dynamic_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre490);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_dynamic_omp_version();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre492;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre492 = &dynamic_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre492);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_data_stats("Dynamic OMP");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre495;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre496;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre497;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre495 = &dynamic_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre496 = &dynamic_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre497 = print_timestats("Dynamic OMP", _imopVarPre496, _imopVarPre495, serial_ref_seconds, bestcase_omp_seconds);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    dynamic_omp_seconds = _imopVarPre497;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_manual_omp_version(1);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    reinitialize_parts();
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "------ Start Manual OMP Pseudocode ------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "/* At top level, spawn threads and manually partition parts*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "#pragma omp parallel");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "{");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "   int startPidx = ... /* slice based on thread_id*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "   for (iter = 0; iter < num_iterations; iter++) ");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "      do_iter(startPidx, endPidx);");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "}");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "...");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "do_modN(int startPidx, int endPidx) /*do_iter() calls*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "{");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "  #pragma omp barrier /* All threads must finish first!*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "  #pragma omp single  /* Only one thread calcs deposit!*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "  {");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "    deposit = calc_deposit (); /* Deposit shared by threads */");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "  }  /* Implicit omp barrier at end of omp single */");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "  /* All threads execute loop working just on their parts*/");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "  for (pidx = startPidx; pidx <= endPidx; pidx++)");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "    update_part (partArray[pidx], deposit);");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "}");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_pseudocode("Manual OMP", "------- End Manual OMP Pseudocode -------");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_start_message("Manual OMP");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre499;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre499 = &manual_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre499);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    do_manual_omp_version(CLOMP_num_iterations);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre501;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre501 = &manual_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    get_timestamp(_imopVarPre501);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    print_data_stats("Manual OMP");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre504;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    struct timeval *_imopVarPre505;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre506;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre504 = &manual_omp_end_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre505 = &manual_omp_start_ts;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre506 = print_timestats("Manual OMP", _imopVarPre505, _imopVarPre504, serial_ref_seconds, bestcase_omp_seconds);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    manual_omp_seconds = _imopVarPre506;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("----------- Comma-delimited summary ----------\n");
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("%s %ld %ld %ld %ld %ld %ld %ld, calc_deposit, OMP Barrier, Serial Ref, Bestcase OMP, Static OMP, Dynamic OMP, Manual OMP\n", CLOMP_exe_name, CLOMP_numThreads, CLOMP_allocThreads, CLOMP_numParts, CLOMP_zonesPerPart, CLOMP_zoneSize, CLOMP_flopScale, CLOMP_timeScale);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("Runtime, %g, %g, %g, %g, %g, %g, %g\n", calc_deposit_seconds, omp_barrier_seconds, serial_ref_seconds, bestcase_omp_seconds, static_omp_seconds, dynamic_omp_seconds, manual_omp_seconds);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre514;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre515;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre516;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre517;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre518;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre519;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre520;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre514 = (((manual_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre515 = (((dynamic_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre516 = (((static_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre517 = (((bestcase_omp_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre518 = (((serial_ref_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre519 = (((omp_barrier_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre520 = (((calc_deposit_seconds * 1000000.0) / ((double) CLOMP_num_iterations * 10.0)));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("us/Loop, %g, %g, %g, %g, %g, %g, %g\n", _imopVarPre520, _imopVarPre519, _imopVarPre518, _imopVarPre517, _imopVarPre516, _imopVarPre515, _imopVarPre514);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre526;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre527;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre528;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre529;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre530;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre526 = ((serial_ref_seconds / manual_omp_seconds));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre527 = ((serial_ref_seconds / dynamic_omp_seconds));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre528 = ((serial_ref_seconds / static_omp_seconds));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre529 = ((serial_ref_seconds / bestcase_omp_seconds));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre530 = ((serial_ref_seconds / serial_ref_seconds));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("Speedup, N/A, N/A, %g, %g, %g, %g, %g\n", _imopVarPre530, _imopVarPre529, _imopVarPre528, _imopVarPre527, _imopVarPre526);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre535;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre536;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre537;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre538;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre535 = (((bestcase_omp_seconds / manual_omp_seconds) * 100.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre536 = (((bestcase_omp_seconds / dynamic_omp_seconds) * 100.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre537 = (((bestcase_omp_seconds / static_omp_seconds) * 100.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre538 = (((bestcase_omp_seconds / bestcase_omp_seconds) * 100.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("Efficacy, N/A, N/A, N/A, %.2f%%, %.2f%%, %.2f%%, %.2f%%\n", _imopVarPre538, _imopVarPre537, _imopVarPre536, _imopVarPre535);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre543;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre544;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre545;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    double _imopVarPre546;
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre543 = (((manual_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre544 = (((dynamic_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre545 = (((static_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    _imopVarPre546 = (((bestcase_omp_seconds - bestcase_omp_seconds) * 1000000.0) / ((double) CLOMP_num_iterations * 10.0));
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    printf("Overhead, N/A, N/A, N/A, %.2f, %.2f, %.2f, %.2f\n", _imopVarPre546, _imopVarPre545, _imopVarPre544, _imopVarPre543);
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    /*OUT: {
    Reverse<--, 2707_1; 2540_1; 2418_1;>}*/
    return 0;
}
