
/*[]*/
typedef unsigned short __uint16_t;
/*[]*/
typedef int __int32_t;
/*[]*/
typedef unsigned int __uint32_t;
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef unsigned long long __uint64_t;
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef unsigned long __darwin_clock_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __int64_t __darwin_blkcnt_t;
/*[]*/
typedef __int32_t __darwin_blksize_t;
/*[]*/
typedef __int32_t __darwin_dev_t;
/*[]*/
typedef __uint32_t __darwin_gid_t;
/*[]*/
typedef __uint64_t __darwin_ino64_t;
/*[]*/
typedef __uint16_t __darwin_mode_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __int32_t __darwin_suseconds_t;
/*[]*/
typedef __uint32_t __darwin_uid_t;
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
int fgetc(FILE *);
/*[]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*[]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*[]*/
int fputs(const char *restrict , FILE *restrict );
/*[]*/
size_t fread(void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
/*[]*/
int fscanf(FILE *restrict , const char *restrict , ...);
/*[]*/
size_t fwrite(const void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
typedef __darwin_off_t off_t;
/*[]*/
typedef __darwin_uid_t uid_t;
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
typedef __darwin_dev_t dev_t;
/*[]*/
typedef __darwin_mode_t mode_t;
/*[]*/
struct timespec {
    __darwin_time_t tv_sec;
    long tv_nsec;
} ;
/*[]*/
typedef __darwin_clock_t clock_t;
/*[]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*[]*/
struct tms {
    clock_t tms_utime;
    clock_t tms_stime;
    clock_t tms_cutime;
    clock_t tms_cstime;
} ;
/*[]*/
clock_t times(struct tms *);
/*[]*/
typedef __darwin_gid_t gid_t;
/*[]*/
long sysconf(int );
/*[]*/
extern char *suboptarg;
/*[]*/
struct fssearchblock ;
/*[]*/
struct searchstate ;
/*[]*/
extern double sqrt(double );
/*[]*/
size_t strlen(const char *__s);
/*[]*/
char *strdup(const char *__s1);
/*[]*/
typedef __darwin_blkcnt_t blkcnt_t;
/*[]*/
typedef __darwin_blksize_t blksize_t;
/*[]*/
typedef __uint16_t nlink_t;
/*[]*/
struct stat {
    dev_t st_dev;
    mode_t st_mode;
    nlink_t st_nlink;
    __darwin_ino64_t st_ino;
    uid_t st_uid;
    gid_t st_gid;
    dev_t st_rdev;
    struct timespec st_atimespec;
    struct timespec st_mtimespec;
    struct timespec st_ctimespec;
    struct timespec st_birthtimespec;
    off_t st_size;
    blkcnt_t st_blocks;
    blksize_t st_blksize;
    __uint32_t st_flags;
    __uint32_t st_gen;
    __int32_t st_lspare;
    __int64_t st_qspare[2];
} ;
/*[]*/
int stat(const char *, struct stat *);
/*[]*/
struct _filesec ;
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
struct stUn_imopVarPre14 {
    float timeScale;
    clock_t tickStart, tickStop;
    struct tms timeStart, timeStop;
} ;
/*[]*/
typedef struct stUn_imopVarPre14 MAIN_Time;
/*[]*/
enum enum_imopVarPre15 {
    NOTHING = 0, COMPARE , STORE
} ;
/*[]*/
typedef enum enum_imopVarPre15 MAIN_Action;
/*[]*/
enum enum_imopVarPre16 {
    LDC = 0, CHANNEL
} ;
/*[]*/
typedef enum enum_imopVarPre16 MAIN_SimType;
/*[]*/
struct stUn_imopVarPre17 {
    int nTimeSteps;
    char *resultFilename;
    MAIN_Action action;
    MAIN_SimType simType;
    char *obstacleFilename;
} ;
/*[]*/
typedef struct stUn_imopVarPre17 MAIN_Param;
/*[]*/
void MAIN_parseCommandLine(int nArgs, char *arg[] , MAIN_Param *param , struct pb_Parameters *);
/*[]*/
void MAIN_printInfo(const MAIN_Param *param);
/*[]*/
void MAIN_initialize(const MAIN_Param *param);
/*[]*/
void MAIN_finalize(const MAIN_Param *param);
/*[]*/
void MAIN_startClock(MAIN_Time *time);
/*[]*/
void MAIN_stopClock(MAIN_Time *time, const MAIN_Param *param);
/*[]*/
typedef float LBM_Grid[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
/*[]*/
typedef LBM_Grid *LBM_GridPtr;
/*[]*/
void LBM_allocateGrid(float **ptr);
/*[]*/
void LBM_freeGrid(float **ptr);
/*[]*/
void LBM_initializeGrid(LBM_Grid grid);
/*[]*/
void LBM_initializeSpecialCellsForLDC(LBM_Grid grid);
/*[]*/
void LBM_loadObstacleFile(LBM_Grid grid, const char *filename);
/*[]*/
void LBM_initializeSpecialCellsForChannel(LBM_Grid grid);
/*[]*/
void LBM_swapGrids(LBM_GridPtr *grid1, LBM_GridPtr *grid2);
/*[]*/
void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid);
/*[]*/
void LBM_handleInOutFlow(LBM_Grid srcGrid);
/*[]*/
void LBM_showGridStatistics(LBM_Grid Grid);
/*[]*/
void LBM_storeVelocityField(LBM_Grid grid, const char *filename , const int binary);
/*[]*/
void LBM_compareVelocityField(LBM_Grid grid, const char *filename , const int binary);
/*[]*/
/*[]*/
void LBM_allocateGrid(float **ptr) {
/*[]*/
    /*[]*/
    const size_t margin = 2 * (1 * 120) * (1 * 120) * N_CELL_ENTRIES;
    /*[]*/
    const size_t size = sizeof(LBM_Grid) + 2 * margin * sizeof(float);
    /*[]*/
    void *_imopVarPre148;
    /*[]*/
    _imopVarPre148 = malloc(size);
    /*[]*/
    /*[]*/
    *ptr = _imopVarPre148;
    /*[]*/
    /*[]*/
    if (!*ptr) {
    /*[]*/
        /*[]*/
        double _imopVarPre150;
        /*[]*/
        _imopVarPre150 = size / (1024.0 * 1024.0);
        /*[]*/
        printf("LBM_allocateGrid: could not allocate %.1f MByte\n", _imopVarPre150);
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    double _imopVarPre152;
    /*[]*/
    _imopVarPre152 = size / (1024.0 * 1024.0);
    /*[]*/
    printf("LBM_allocateGrid: allocated %.1f MByte\n", _imopVarPre152);
    /*[]*/
    /*[]*/
    *ptr += margin;
}
/*[]*/
/*[]*/
void LBM_freeGrid(float **ptr) {
/*[]*/
    /*[]*/
    const size_t margin = 2 * (1 * 120) * (1 * 120) * N_CELL_ENTRIES;
    /*[]*/
    float *_imopVarPre154;
    /*[]*/
    _imopVarPre154 = *ptr - margin;
    /*[]*/
    free(_imopVarPre154);
    /*[]*/
    /*[]*/
    *ptr = ((void *) 0);
}
/*[]*/
/*[]*/
void LBM_initializeGrid(LBM_Grid grid) {
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
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (150 + 2) * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
        /*[1]*/
            /*[1]*/
            ((grid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0);
            /*[1]*/
            ((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*[1]*/
            ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*[1]*/
            ((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*[1]*/
            ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*[1]*/
            ((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*[1]*/
            ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*[1]*/
            ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*[1]*/
            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))));
            /*[1]*/
            (*_aux_) = 0;
            /*[1]*/
            ;
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
void LBM_swapGrids(LBM_GridPtr *grid1, LBM_GridPtr *grid2) {
/*[]*/
    /*[]*/
    LBM_GridPtr aux = *grid1;
    /*[]*/
    *grid1 = *grid2;
    /*[]*/
    *grid2 = aux;
}
/*[]*/
/*[]*/
/*[]*/
void LBM_loadObstacleFile(LBM_Grid grid, const char *filename) {
/*[]*/
    /*[]*/
    int x;
    /*[]*/
    int y;
    /*[]*/
    int z;
    /*[]*/
    struct __sFILE *_imopVarPre155;
    /*[]*/
    _imopVarPre155 = fopen(filename, "rb");
    /*[]*/
    /*[]*/
    FILE *file = _imopVarPre155;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (z = 0; z < 150; z++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (y = 0; y < (1 * 120); y++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (x = 0; x < (1 * 120); x++) {
            /*[]*/
                /*[]*/
                int _imopVarPre157;
                /*[]*/
                _imopVarPre157 = fgetc(file);
                /*[]*/
                /*[]*/
                /*[]*/
                if (_imopVarPre157 != '.') {
                /*[]*/
                    /*[]*/
                    unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                    /*[]*/
                    (*_aux_) |= OBSTACLE;
                }
                /*[]*/
                ;
            }
            /*[]*/
            fgetc(file);
            /*[]*/
        }
        /*[]*/
        fgetc(file);
        /*[]*/
    }
    /*[]*/
    fclose(file);
    /*[]*/
}
/*[]*/
/*[]*/
void LBM_initializeSpecialCellsForLDC(LBM_Grid grid) {
/*[]*/
    /*[]*/
    int x;
    /*[]*/
    int y;
    /*[]*/
    int z;
    /*[3]*/
#pragma omp parallel private(x, y)
    {
    /*[3]*/
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (z = -2; z < 150 + 2; z++) {
        /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (y = 0; y < (1 * 120); y++) {
            /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                /*[3]*/
                for (x = 0; x < (1 * 120); x++) {
                /*[3]*/
                    /*[3]*/
                    int _imopVarPre158;
                    /*[3]*/
                    int _imopVarPre159;
                    /*[3]*/
                    int _imopVarPre160;
                    /*[3]*/
                    int _imopVarPre161;
                    /*[3]*/
                    int _imopVarPre162;
                    /*[3]*/
                    _imopVarPre158 = x == 0;
                    /*[3]*/
                    /*[3]*/
                    if (!_imopVarPre158) {
                    /*[3]*/
                        /*[3]*/
                        _imopVarPre159 = x == (1 * 120) - 1;
                        /*[3]*/
                        /*[3]*/
                        if (!_imopVarPre159) {
                        /*[3]*/
                            /*[3]*/
                            _imopVarPre160 = y == 0;
                            /*[3]*/
                            /*[3]*/
                            if (!_imopVarPre160) {
                            /*[3]*/
                                /*[3]*/
                                _imopVarPre161 = y == (1 * 120) - 1;
                                /*[3]*/
                                /*[3]*/
                                if (!_imopVarPre161) {
                                /*[3]*/
                                    /*[3]*/
                                    _imopVarPre162 = z == 0;
                                    /*[3]*/
                                    /*[3]*/
                                    if (!_imopVarPre162) {
                                    /*[3]*/
                                        /*[3]*/
                                        _imopVarPre162 = z == 150 - 1;
                                    }
                                    /*[3]*/
                                    _imopVarPre161 = _imopVarPre162;
                                }
                                /*[3]*/
                                _imopVarPre160 = _imopVarPre161;
                            }
                            /*[3]*/
                            _imopVarPre159 = _imopVarPre160;
                        }
                        /*[3]*/
                        _imopVarPre158 = _imopVarPre159;
                    }
                    /*[3]*/
                    /*[3]*/
                    if (_imopVarPre158) {
                    /*[3]*/
                        /*[3]*/
                        unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                        /*[3]*/
                        (*_aux_) |= OBSTACLE;
                        /*[3]*/
                        ;
                    } else {
                    /*[3]*/
                        /*[3]*/
                        int _imopVarPre168;
                        /*[3]*/
                        int _imopVarPre169;
                        /*[3]*/
                        int _imopVarPre170;
                        /*[3]*/
                        int _imopVarPre171;
                        /*[3]*/
                        int _imopVarPre172;
                        /*[3]*/
                        _imopVarPre168 = z == 1;
                        /*[3]*/
                        /*[3]*/
                        if (!_imopVarPre168) {
                        /*[3]*/
                            /*[3]*/
                            _imopVarPre168 = z == 150 - 2;
                        }
                        /*[3]*/
                        _imopVarPre169 = _imopVarPre168;
                        /*[3]*/
                        /*[3]*/
                        if (_imopVarPre169) {
                        /*[3]*/
                            /*[3]*/
                            _imopVarPre170 = x > 1;
                            /*[3]*/
                            /*[3]*/
                            if (_imopVarPre170) {
                            /*[3]*/
                                /*[3]*/
                                _imopVarPre171 = x < (1 * 120) - 2;
                                /*[3]*/
                                /*[3]*/
                                if (_imopVarPre171) {
                                /*[3]*/
                                    /*[3]*/
                                    _imopVarPre172 = y > 1;
                                    /*[3]*/
                                    /*[3]*/
                                    if (_imopVarPre172) {
                                    /*[3]*/
                                        /*[3]*/
                                        _imopVarPre172 = y < (1 * 120) - 2;
                                    }
                                    /*[3]*/
                                    _imopVarPre171 = _imopVarPre172;
                                }
                                /*[3]*/
                                _imopVarPre170 = _imopVarPre171;
                            }
                            /*[3]*/
                            _imopVarPre169 = _imopVarPre170;
                        }
                        /*[3]*/
                        /*[3]*/
                        if (_imopVarPre169) {
                        /*[3]*/
                            /*[3]*/
                            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                            /*[3]*/
                            (*_aux_) |= ACCEL;
                            /*[3]*/
                            ;
                        }
                    }
                }
            }
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
    }
}
/*[]*/
/*[]*/
void LBM_initializeSpecialCellsForChannel(LBM_Grid grid) {
/*[]*/
    /*[]*/
    int x;
    /*[]*/
    int y;
    /*[]*/
    int z;
    /*[5]*/
#pragma omp parallel private(x, y)
    {
    /*[5]*/
        /*[5]*/
#pragma omp for nowait
        /*[5]*/
        /*[5]*/
        /*[5]*/
        for (z = -2; z < 150 + 2; z++) {
        /*[5]*/
            /*[5]*/
            /*[5]*/
            /*[5]*/
            /*[5]*/
            for (y = 0; y < (1 * 120); y++) {
            /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                for (x = 0; x < (1 * 120); x++) {
                /*[5]*/
                    /*[5]*/
                    int _imopVarPre173;
                    /*[5]*/
                    int _imopVarPre174;
                    /*[5]*/
                    int _imopVarPre175;
                    /*[5]*/
                    _imopVarPre173 = x == 0;
                    /*[5]*/
                    /*[5]*/
                    if (!_imopVarPre173) {
                    /*[5]*/
                        /*[5]*/
                        _imopVarPre174 = x == (1 * 120) - 1;
                        /*[5]*/
                        /*[5]*/
                        if (!_imopVarPre174) {
                        /*[5]*/
                            /*[5]*/
                            _imopVarPre175 = y == 0;
                            /*[5]*/
                            /*[5]*/
                            if (!_imopVarPre175) {
                            /*[5]*/
                                /*[5]*/
                                _imopVarPre175 = y == (1 * 120) - 1;
                            }
                            /*[5]*/
                            _imopVarPre174 = _imopVarPre175;
                        }
                        /*[5]*/
                        _imopVarPre173 = _imopVarPre174;
                    }
                    /*[5]*/
                    /*[5]*/
                    if (_imopVarPre173) {
                    /*[5]*/
                        /*[5]*/
                        unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                        /*[5]*/
                        (*_aux_) |= OBSTACLE;
                        /*[5]*/
                        ;
                        /*[5]*/
                        int _imopVarPre178;
                        /*[5]*/
                        int _imopVarPre179;
                        /*[5]*/
                        _imopVarPre178 = z == 0;
                        /*[5]*/
                        /*[5]*/
                        if (!_imopVarPre178) {
                        /*[5]*/
                            /*[5]*/
                            _imopVarPre178 = z == 150 - 1;
                        }
                        /*[5]*/
                        _imopVarPre179 = _imopVarPre178;
                        /*[5]*/
                        /*[5]*/
                        if (_imopVarPre179) {
                        /*[5]*/
                            /*[5]*/
                            _imopVarPre179 = !((*((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))))) & OBSTACLE);
                        }
                        /*[5]*/
                        /*[5]*/
                        if (_imopVarPre179) {
                        /*[5]*/
                            /*[5]*/
                            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                            /*[5]*/
                            (*_aux_) |= IN_OUT_FLOW;
                        }
                        /*[5]*/
                        ;
                    }
                }
            }
        }
        /*[5]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[5]*/
#pragma omp barrier
    }
}
/*[]*/
/*[]*/
/*[]*/
void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    float ux;
    /*[]*/
    float uy;
    /*[]*/
    float uz;
    /*[]*/
    float u2;
    /*[]*/
    float rho;
    /*[7]*/
#pragma omp parallel private(ux, uy, uz, u2, rho)
    {
    /*[7]*/
        /*[7]*/
#pragma omp for nowait
        /*[7]*/
        /*[7]*/
        /*[7]*/
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
        /*[7]*/
            /*[7]*/
            /*[7]*/
            if (((*((unsigned int *) ((void *) (&(((srcGrid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & OBSTACLE)) {
            /*[7]*/
                /*[7]*/
                (((dstGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(S + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(N + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(W + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(E + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(SW + N_CELL_ENTRIES * ((-1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(SE + N_CELL_ENTRIES * ((+1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(NW + N_CELL_ENTRIES * ((-1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(NE + N_CELL_ENTRIES * ((+1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(SB + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(ST + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(NB + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(NT + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(WB + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(WT + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(EB + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                (((dstGrid[(ET + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*[7]*/
                continue;
            }
            /*[7]*/
            rho = +(((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*[7]*/
            ux = +(((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*[7]*/
            uy = +(((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*[7]*/
            uz = +(((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*[7]*/
            ux /= rho;
            /*[7]*/
            uy /= rho;
            /*[7]*/
            uz /= rho;
            /*[7]*/
            /*[7]*/
            if (((*((unsigned int *) ((void *) (&(((srcGrid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & ACCEL)) {
            /*[7]*/
                /*[7]*/
                ux = 0.005f;
                /*[7]*/
                uy = 0.002f;
                /*[7]*/
                uz = 0.000f;
            }
            /*[7]*/
            u2 = 1.5f * (ux * ux + uy * uy + uz * uz);
            /*[7]*/
            (((dstGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 3.0) * 1.95f * rho * (1.0f - u2);
            /*[7]*/
            (((dstGrid[(N + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uy * (4.5f * uy + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(S + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uy * (4.5f * uy - 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(E + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + ux * (4.5f * ux + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(W + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + ux * (4.5f * ux - 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uz * (4.5f * uz + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uz * (4.5f * uz - 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(NE + N_CELL_ENTRIES * ((+1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux + uy) * (4.5f * (+ux + uy) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(NW + N_CELL_ENTRIES * ((-1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux + uy) * (4.5f * (-ux + uy) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(SE + N_CELL_ENTRIES * ((+1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux - uy) * (4.5f * (+ux - uy) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(SW + N_CELL_ENTRIES * ((-1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux - uy) * (4.5f * (-ux - uy) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(NT + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+uy + uz) * (4.5f * (+uy + uz) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(NB + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+uy - uz) * (4.5f * (+uy - uz) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(ST + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-uy + uz) * (4.5f * (-uy + uz) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(SB + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-uy - uz) * (4.5f * (-uy - uz) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(ET + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux + uz) * (4.5f * (+ux + uz) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(EB + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux - uz) * (4.5f * (+ux - uz) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(WT + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux + uz) * (4.5f * (-ux + uz) + 3.0f) - u2);
            /*[7]*/
            (((dstGrid[(WB + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux - uz) * (4.5f * (-ux - uz) + 3.0f) - u2);
        }
        /*[7]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[7]*/
#pragma omp barrier
    }
}
/*[]*/
/*[]*/
void LBM_handleInOutFlow(LBM_Grid srcGrid) {
/*[]*/
    /*[]*/
    float ux;
    /*[]*/
    float uy;
    /*[]*/
    float uz;
    /*[]*/
    float rho;
    /*[]*/
    float ux1;
    /*[]*/
    float uy1;
    /*[]*/
    float uz1;
    /*[]*/
    float rho1;
    /*[]*/
    float ux2;
    /*[]*/
    float uy2;
    /*[]*/
    float uz2;
    /*[]*/
    float rho2;
    /*[]*/
    float u2;
    /*[]*/
    float px;
    /*[]*/
    float py;
    /*[]*/
    int i;
    /*[9]*/
#pragma omp parallel private(ux, uy, uz, rho, ux1, uy1, uz1, rho1, ux2, uy2, uz2, rho2, u2, px, py)
    {
    /*[9]*/
        /*[9]*/
#pragma omp for nowait
        /*[9]*/
        /*[9]*/
        /*[9]*/
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
        /*[9]*/
            /*[9]*/
            rho1 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]);
            /*[9]*/
            rho2 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]);
            /*[9]*/
            rho = 2.0 * rho1 - rho2;
            /*[9]*/
            px = (((i / N_CELL_ENTRIES) % (1 * 120)) / (0.5 * ((1 * 120) - 1))) - 1.0;
            /*[9]*/
            py = ((((i / N_CELL_ENTRIES) / (1 * 120)) % (1 * 120)) / (0.5 * ((1 * 120) - 1))) - 1.0;
            /*[9]*/
            ux = 0.00;
            /*[9]*/
            uy = 0.00;
            /*[9]*/
            uz = 0.01 * (1.0 - px * px) * (1.0 - py * py);
            /*[9]*/
            u2 = 1.5 * (ux * ux + uy * uy + uz * uz);
            /*[9]*/
            ((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0) * rho * (1.0 - u2);
            /*[9]*/
            ((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy - 3.0) - u2);
            /*[9]*/
            ((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux - 3.0) - u2);
            /*[9]*/
            ((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz - 3.0) - u2);
            /*[9]*/
            ((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uy) * (4.5 * (+ux + uy) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uy) * (4.5 * (-ux + uy) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uy) * (4.5 * (+ux - uy) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uy) * (4.5 * (-ux - uy) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy + uz) * (4.5 * (+uy + uz) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy - uz) * (4.5 * (+uy - uz) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy + uz) * (4.5 * (-uy + uz) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy - uz) * (4.5 * (-uy - uz) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uz) * (4.5 * (+ux + uz) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uz) * (4.5 * (+ux - uz) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uz) * (4.5 * (-ux + uz) + 3.0) - u2);
            /*[9]*/
            ((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uz) * (4.5 * (-ux - uz) + 3.0) - u2);
        }
        /*[9]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[9]*/
#pragma omp barrier
    }
    /*[11]*/
#pragma omp parallel private(ux, uy, uz, rho, ux1, uy1, uz1, rho1, ux2, uy2, uz2, rho2, u2, px, py)
    {
    /*[11]*/
        /*[11]*/
#pragma omp for nowait
        /*[11]*/
        /*[11]*/
        /*[11]*/
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (150 - 1) * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
        /*[11]*/
            /*[11]*/
            rho1 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            ux1 = +(srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            uy1 = +(srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            uz1 = +(srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            ux1 /= rho1;
            /*[11]*/
            uy1 /= rho1;
            /*[11]*/
            uz1 /= rho1;
            /*[11]*/
            rho2 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            ux2 = +(srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            uy2 = +(srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            uz2 = +(srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*[11]*/
            ux2 /= rho2;
            /*[11]*/
            uy2 /= rho2;
            /*[11]*/
            uz2 /= rho2;
            /*[11]*/
            rho = 1.0;
            /*[11]*/
            ux = 2 * ux1 - ux2;
            /*[11]*/
            uy = 2 * uy1 - uy2;
            /*[11]*/
            uz = 2 * uz1 - uz2;
            /*[11]*/
            u2 = 1.5 * (ux * ux + uy * uy + uz * uz);
            /*[11]*/
            ((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0) * rho * (1.0 - u2);
            /*[11]*/
            ((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy - 3.0) - u2);
            /*[11]*/
            ((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux - 3.0) - u2);
            /*[11]*/
            ((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz - 3.0) - u2);
            /*[11]*/
            ((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uy) * (4.5 * (+ux + uy) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uy) * (4.5 * (-ux + uy) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uy) * (4.5 * (+ux - uy) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uy) * (4.5 * (-ux - uy) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy + uz) * (4.5 * (+uy + uz) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy - uz) * (4.5 * (+uy - uz) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy + uz) * (4.5 * (-uy + uz) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy - uz) * (4.5 * (-uy - uz) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uz) * (4.5 * (+ux + uz) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uz) * (4.5 * (+ux - uz) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uz) * (4.5 * (-ux + uz) + 3.0) - u2);
            /*[11]*/
            ((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uz) * (4.5 * (-ux - uz) + 3.0) - u2);
        }
        /*[11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[11]*/
#pragma omp barrier
    }
}
/*[]*/
/*[]*/
void LBM_showGridStatistics(LBM_Grid grid) {
/*[]*/
    /*[]*/
    int nObstacleCells = 0;
    /*[]*/
    int nAccelCells = 0;
    /*[]*/
    int nFluidCells = 0;
    /*[]*/
    float ux;
    /*[]*/
    float uy;
    /*[]*/
    float uz;
    /*[]*/
    float minU2 = 1e+30;
    /*[]*/
    float maxU2 = -1e+30;
    /*[]*/
    float u2;
    /*[]*/
    float minRho = 1e+30;
    /*[]*/
    float maxRho = -1e+30;
    /*[]*/
    float rho;
    /*[]*/
    float mass = 0;
    /*[]*/
    int i;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
    /*[]*/
        /*[]*/
        rho = +((grid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
        /*[]*/
        /*[]*/
        if (rho < minRho) {
        /*[]*/
            /*[]*/
            minRho = rho;
        }
        /*[]*/
        /*[]*/
        if (rho > maxRho) {
        /*[]*/
            /*[]*/
            maxRho = rho;
        }
        /*[]*/
        mass += rho;
        /*[]*/
        /*[]*/
        if (((*((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & OBSTACLE)) {
        /*[]*/
            /*[]*/
            nObstacleCells++;
        } else {
        /*[]*/
            /*[]*/
            /*[]*/
            if (((*((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & ACCEL)) {
            /*[]*/
                /*[]*/
                nAccelCells++;
            } else {
            /*[]*/
                /*[]*/
                nFluidCells++;
            }
            /*[]*/
            ux = +((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            /*[]*/
            uy = +((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            /*[]*/
            uz = +((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            /*[]*/
            u2 = (ux * ux + uy * uy + uz * uz) / (rho * rho);
            /*[]*/
            /*[]*/
            if (u2 < minU2) {
            /*[]*/
                /*[]*/
                minU2 = u2;
            }
            /*[]*/
            /*[]*/
            if (u2 > maxU2) {
            /*[]*/
                /*[]*/
                maxU2 = u2;
            }
        }
    }
    /*[]*/
    double _imopVarPre182;
    /*[]*/
    double _imopVarPre183;
    /*[]*/
    _imopVarPre182 = sqrt(maxU2);
    /*[]*/
    /*[]*/
    _imopVarPre183 = sqrt(minU2);
    /*[]*/
    /*[]*/
    printf("LBM_showGridStatistics:\n" "\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n" "\tminRho: %8.4f maxRho: %8.4f mass: %e\n" "\tminU: %e maxU: %e\n\n", nObstacleCells, nAccelCells, nFluidCells, minRho, maxRho, mass, _imopVarPre183, _imopVarPre182);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
static void storeValue(FILE *file, float *v) {
/*[]*/
    /*[]*/
    const int litteBigEndianTest = 1;
    /*[]*/
    /*[]*/
    if ((*((unsigned char *) &litteBigEndianTest)) == 0) {
    /*[]*/
        /*[]*/
        const char *vPtr = (char *) v;
        /*[]*/
        char buffer[sizeof(float)];
        /*[]*/
        int i;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < sizeof(float); i++) {
        /*[]*/
            /*[]*/
            buffer[i] = vPtr[sizeof(float) - i - 1];
        }
        /*[]*/
        unsigned long int _imopVarPre185;
        /*[]*/
        _imopVarPre185 = sizeof(float);
        /*[]*/
        fwrite(buffer, _imopVarPre185, 1, file);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        unsigned long int _imopVarPre187;
        /*[]*/
        _imopVarPre187 = sizeof(float);
        /*[]*/
        fwrite(v, _imopVarPre187, 1, file);
        /*[]*/
    }
}
/*[]*/
/*[]*/
/*[]*/
static void loadValue(FILE *file, float *v) {
/*[]*/
    /*[]*/
    const int litteBigEndianTest = 1;
    /*[]*/
    /*[]*/
    if ((*((unsigned char *) &litteBigEndianTest)) == 0) {
    /*[]*/
        /*[]*/
        char *vPtr = (char *) v;
        /*[]*/
        char buffer[sizeof(float)];
        /*[]*/
        int i;
        /*[]*/
        unsigned long int _imopVarPre189;
        /*[]*/
        _imopVarPre189 = sizeof(float);
        /*[]*/
        fread(buffer, _imopVarPre189, 1, file);
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < sizeof(float); i++) {
        /*[]*/
            /*[]*/
            vPtr[i] = buffer[sizeof(float) - i - 1];
        }
    } else {
    /*[]*/
        /*[]*/
        unsigned long int _imopVarPre191;
        /*[]*/
        _imopVarPre191 = sizeof(float);
        /*[]*/
        fread(v, _imopVarPre191, 1, file);
        /*[]*/
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void LBM_storeVelocityField(LBM_Grid grid, const char *filename , const int binary) {
/*[]*/
    /*[]*/
    int x;
    /*[]*/
    int y;
    /*[]*/
    int z;
    /*[]*/
    float rho;
    /*[]*/
    float ux;
    /*[]*/
    float uy;
    /*[]*/
    float uz;
    /*[]*/
    int _imopVarPre198;
    /*[]*/
    char *_imopVarPre199;
    /*[]*/
    struct __sFILE *_imopVarPre200;
    /*[]*/
    _imopVarPre198 = binary;
    /*[]*/
    /*[]*/
    if (_imopVarPre198) {
    /*[]*/
        /*[]*/
        _imopVarPre199 = "wb";
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre199 = "w";
    }
    /*[]*/
    _imopVarPre200 = fopen(filename, _imopVarPre199);
    /*[]*/
    /*[]*/
    FILE *file = _imopVarPre200;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (z = 0; z < 150; z++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (y = 0; y < (1 * 120); y++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (x = 0; x < (1 * 120); x++) {
            /*[]*/
                /*[]*/
                rho = +(grid[(C + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                ux = +(grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                uy = +(grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                uz = +(grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                ux /= rho;
                /*[]*/
                uy /= rho;
                /*[]*/
                uz /= rho;
                /*[]*/
                /*[]*/
                if (binary) {
                /*[]*/
                    /*[]*/
                    float *_imopVarPre202;
                    /*[]*/
                    _imopVarPre202 = &ux;
                    /*[]*/
                    storeValue(file, _imopVarPre202);
                    /*[]*/
                    /*[]*/
                    float *_imopVarPre204;
                    /*[]*/
                    _imopVarPre204 = &uy;
                    /*[]*/
                    storeValue(file, _imopVarPre204);
                    /*[]*/
                    /*[]*/
                    float *_imopVarPre206;
                    /*[]*/
                    _imopVarPre206 = &uz;
                    /*[]*/
                    storeValue(file, _imopVarPre206);
                    /*[]*/
                } else {
                /*[]*/
                    /*[]*/
                    fprintf(file, "%e %e %e\n", ux, uy, uz);
                    /*[]*/
                }
            }
        }
    }
    /*[]*/
    fclose(file);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void LBM_compareVelocityField(LBM_Grid grid, const char *filename , const int binary) {
/*[]*/
    /*[]*/
    int x;
    /*[]*/
    int y;
    /*[]*/
    int z;
    /*[]*/
    float rho;
    /*[]*/
    float ux;
    /*[]*/
    float uy;
    /*[]*/
    float uz;
    /*[]*/
    float fileUx;
    /*[]*/
    float fileUy;
    /*[]*/
    float fileUz;
    /*[]*/
    float dUx;
    /*[]*/
    float dUy;
    /*[]*/
    float dUz;
    /*[]*/
    float diff2;
    /*[]*/
    float maxDiff2 = -1e+30;
    /*[]*/
    int _imopVarPre213;
    /*[]*/
    char *_imopVarPre214;
    /*[]*/
    struct __sFILE *_imopVarPre215;
    /*[]*/
    _imopVarPre213 = binary;
    /*[]*/
    /*[]*/
    if (_imopVarPre213) {
    /*[]*/
        /*[]*/
        _imopVarPre214 = "rb";
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre214 = "r";
    }
    /*[]*/
    _imopVarPre215 = fopen(filename, _imopVarPre214);
    /*[]*/
    /*[]*/
    FILE *file = _imopVarPre215;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (z = 0; z < 150; z++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (y = 0; y < (1 * 120); y++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (x = 0; x < (1 * 120); x++) {
            /*[]*/
                /*[]*/
                rho = +(grid[(C + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                ux = +(grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                uy = +(grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                uz = +(grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*[]*/
                ux /= rho;
                /*[]*/
                uy /= rho;
                /*[]*/
                uz /= rho;
                /*[]*/
                /*[]*/
                if (binary) {
                /*[]*/
                    /*[]*/
                    float *_imopVarPre217;
                    /*[]*/
                    _imopVarPre217 = &fileUx;
                    /*[]*/
                    loadValue(file, _imopVarPre217);
                    /*[]*/
                    /*[]*/
                    float *_imopVarPre219;
                    /*[]*/
                    _imopVarPre219 = &fileUy;
                    /*[]*/
                    loadValue(file, _imopVarPre219);
                    /*[]*/
                    /*[]*/
                    float *_imopVarPre221;
                    /*[]*/
                    _imopVarPre221 = &fileUz;
                    /*[]*/
                    loadValue(file, _imopVarPre221);
                    /*[]*/
                } else {
                /*[]*/
                    /*[]*/
                    /*[]*/
                    if (sizeof(float) == sizeof(double)) {
                    /*[]*/
                        /*[]*/
                        float *_imopVarPre225;
                        /*[]*/
                        float *_imopVarPre226;
                        /*[]*/
                        float *_imopVarPre227;
                        /*[]*/
                        _imopVarPre225 = &fileUz;
                        /*[]*/
                        _imopVarPre226 = &fileUy;
                        /*[]*/
                        _imopVarPre227 = &fileUx;
                        /*[]*/
                        fscanf(file, "%lf %lf %lf\n", _imopVarPre227, _imopVarPre226, _imopVarPre225);
                        /*[]*/
                    } else {
                    /*[]*/
                        /*[]*/
                        float *_imopVarPre231;
                        /*[]*/
                        float *_imopVarPre232;
                        /*[]*/
                        float *_imopVarPre233;
                        /*[]*/
                        _imopVarPre231 = &fileUz;
                        /*[]*/
                        _imopVarPre232 = &fileUy;
                        /*[]*/
                        _imopVarPre233 = &fileUx;
                        /*[]*/
                        fscanf(file, "%f %f %f\n", _imopVarPre233, _imopVarPre232, _imopVarPre231);
                        /*[]*/
                    }
                }
                /*[]*/
                dUx = ux - fileUx;
                /*[]*/
                dUy = uy - fileUy;
                /*[]*/
                dUz = uz - fileUz;
                /*[]*/
                diff2 = dUx * dUx + dUy * dUy + dUz * dUz;
                /*[]*/
                /*[]*/
                if (diff2 > maxDiff2) {
                /*[]*/
                    /*[]*/
                    maxDiff2 = diff2;
                }
            }
        }
    }
    /*[]*/
    double _imopVarPre240;
    /*[]*/
    int _imopVarPre241;
    /*[]*/
    char *_imopVarPre242;
    /*[]*/
    double _imopVarPre243;
    /*[]*/
    _imopVarPre240 = sqrt(maxDiff2);
    /*[]*/
    /*[]*/
    _imopVarPre241 = _imopVarPre240 > 1e-5;
    /*[]*/
    /*[]*/
    if (_imopVarPre241) {
    /*[]*/
        /*[]*/
        _imopVarPre242 = "##### ERROR #####";
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre242 = "OK";
    }
    /*[]*/
    _imopVarPre243 = sqrt(maxDiff2);
    /*[]*/
    /*[]*/
    printf("LBM_compareVelocityField: maxDiff = %e  ==>  %s\n\n", _imopVarPre243, _imopVarPre242);
    /*[]*/
    /*[]*/
    fclose(file);
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
        char *_imopVarPre245;
        /*[]*/
        _imopVarPre245 = *p;
        /*[]*/
        free(_imopVarPre245);
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
    unsigned long int _imopVarPre248;
    /*[]*/
    void *_imopVarPre249;
    /*[]*/
    _imopVarPre248 = (count + 1) * sizeof(char *);
    /*[]*/
    _imopVarPre249 = malloc(_imopVarPre248);
    /*[]*/
    /*[]*/
    ret = (char **) _imopVarPre249;
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
        int _imopVarPre251;
        /*[]*/
        substring_end = substring;
        /*[]*/
        _imopVarPre251 = (*substring_end != ',');
        /*[]*/
        /*[]*/
        if (_imopVarPre251) {
        /*[]*/
            /*[]*/
            _imopVarPre251 = (*substring_end != 0);
        }
        /*[]*/
        /*[]*/
        for (; _imopVarPre251; ) {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            substring_end++;
            /*[]*/
            _imopVarPre251 = (*substring_end != ',');
            /*[]*/
            /*[]*/
            if (_imopVarPre251) {
            /*[]*/
                /*[]*/
                _imopVarPre251 = (*substring_end != 0);
            }
        }
        /*[]*/
        substring_length = substring_end - substring;
        /*[]*/
        int _imopVarPre254;
        /*[]*/
        void *_imopVarPre255;
        /*[]*/
        _imopVarPre254 = substring_length + 1;
        /*[]*/
        _imopVarPre255 = malloc(_imopVarPre254);
        /*[]*/
        /*[]*/
        ret[i] = (char *) _imopVarPre255;
        /*[]*/
        char *_imopVarPre261;
        /*[]*/
        unsigned int _imopVarPre262;
        /*[]*/
        char *_imopVarPre263;
        /*[]*/
        _imopVarPre261 = ret[i];
        /*[]*/
        _imopVarPre262 = __builtin_object_size(_imopVarPre261, 0);
        /*[]*/
        /*[]*/
        _imopVarPre263 = ret[i];
        /*[]*/
        __builtin___memcpy_chk(_imopVarPre263, substring, substring_length, _imopVarPre262);
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
    char *_imopVarPre264;
    /*[]*/
    _imopVarPre264 = get_argument(ap);
    /*[]*/
    /*[]*/
    char *ret = _imopVarPre264;
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
    unsigned long int _imopVarPre267;
    /*[]*/
    void *_imopVarPre268;
    /*[]*/
    _imopVarPre267 = sizeof(struct pb_Parameters);
    /*[]*/
    _imopVarPre268 = malloc(_imopVarPre267);
    /*[]*/
    /*[]*/
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre268;
    /*[]*/
    ret->outFile = ((void *) 0);
    /*[]*/
    unsigned long int _imopVarPre271;
    /*[]*/
    void *_imopVarPre272;
    /*[]*/
    _imopVarPre271 = sizeof(char *);
    /*[]*/
    _imopVarPre272 = malloc(_imopVarPre271);
    /*[]*/
    /*[]*/
    ret->inpFiles = (char **) _imopVarPre272;
    /*[]*/
    ret->inpFiles[0] = ((void *) 0);
    /*[]*/
    int _imopVarPre275;
    /*[]*/
    struct argparse *_imopVarPre276;
    /*[]*/
    _imopVarPre275 = *_argc;
    /*[]*/
    _imopVarPre276 = &ap;
    /*[]*/
    initialize_argparse(_imopVarPre276, _imopVarPre275, argv);
    /*[]*/
    /*[]*/
    struct argparse *_imopVarPre279;
    /*[]*/
    int _imopVarPre280;
    /*[]*/
    _imopVarPre279 = &ap;
    /*[]*/
    _imopVarPre280 = is_end_of_arguments(_imopVarPre279);
    /*[]*/
    /*[]*/
    /*[]*/
    while (!_imopVarPre280) {
    /*[]*/
        /*[]*/
        struct argparse *_imopVarPre282;
        /*[]*/
        char *_imopVarPre283;
        /*[]*/
        _imopVarPre282 = &ap;
        /*[]*/
        _imopVarPre283 = get_argument(_imopVarPre282);
        /*[]*/
        /*[]*/
        char *arg = _imopVarPre283;
        /*[]*/
        int _imopVarPre286;
        /*[]*/
        int _imopVarPre287;
        /*[]*/
        _imopVarPre286 = (arg[0] == '-');
        /*[]*/
        /*[]*/
        if (_imopVarPre286) {
        /*[]*/
            /*[]*/
            _imopVarPre287 = (arg[1] != 0);
            /*[]*/
            /*[]*/
            if (_imopVarPre287) {
            /*[]*/
                /*[]*/
                _imopVarPre287 = (arg[2] == 0);
            }
            /*[]*/
            _imopVarPre286 = _imopVarPre287;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre286) {
        /*[]*/
            /*[]*/
            struct argparse *_imopVarPre289;
            /*[]*/
            _imopVarPre289 = &ap;
            /*[]*/
            delete_argument(_imopVarPre289);
            /*[]*/
            /*[]*/
            /*[]*/
            switch (arg[1]) {
            /*[]*/
                /*[]*/
                case 'o': ;
                /*[]*/
                struct argparse *_imopVarPre291;
                /*[]*/
                int _imopVarPre292;
                /*[]*/
                _imopVarPre291 = &ap;
                /*[]*/
                _imopVarPre292 = is_end_of_arguments(_imopVarPre291);
                /*[]*/
                /*[]*/
                /*[]*/
                if (_imopVarPre292) {
                /*[]*/
                    /*[]*/
                    err_message = "Expecting file name after '-o'\n";
                    /*[]*/
                    goto error;
                }
                /*[]*/
                char *_imopVarPre294;
                /*[]*/
                _imopVarPre294 = ret->outFile;
                /*[]*/
                free(_imopVarPre294);
                /*[]*/
                /*[]*/
                struct argparse *_imopVarPre299;
                /*[]*/
                char *_imopVarPre300;
                /*[]*/
                char *_imopVarPre301;
                /*[]*/
                _imopVarPre299 = &ap;
                /*[]*/
                _imopVarPre300 = consume_argument(_imopVarPre299);
                /*[]*/
                /*[]*/
                _imopVarPre301 = strdup(_imopVarPre300);
                /*[]*/
                /*[]*/
                ret->outFile = _imopVarPre301;
                /*[]*/
                break;
                /*[]*/
                case 'i': ;
                /*[]*/
                struct argparse *_imopVarPre303;
                /*[]*/
                int _imopVarPre304;
                /*[]*/
                _imopVarPre303 = &ap;
                /*[]*/
                _imopVarPre304 = is_end_of_arguments(_imopVarPre303);
                /*[]*/
                /*[]*/
                /*[]*/
                if (_imopVarPre304) {
                /*[]*/
                    /*[]*/
                    err_message = "Expecting file name after '-i'\n";
                    /*[]*/
                    goto error;
                }
                /*[]*/
                struct argparse *_imopVarPre309;
                /*[]*/
                char *_imopVarPre310;
                /*[]*/
                char **_imopVarPre311;
                /*[]*/
                _imopVarPre309 = &ap;
                /*[]*/
                _imopVarPre310 = consume_argument(_imopVarPre309);
                /*[]*/
                /*[]*/
                _imopVarPre311 = read_string_array(_imopVarPre310);
                /*[]*/
                /*[]*/
                ret->inpFiles = _imopVarPre311;
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
            struct argparse *_imopVarPre313;
            /*[]*/
            _imopVarPre313 = &ap;
            /*[]*/
            next_argument(_imopVarPre313);
            /*[]*/
        }
        /*[]*/
        _imopVarPre279 = &ap;
        /*[]*/
        _imopVarPre280 = is_end_of_arguments(_imopVarPre279);
        /*[]*/
    }
    /*[]*/
    end_of_options: *_argc = ap.argc;
    /*[]*/
    struct argparse *_imopVarPre315;
    /*[]*/
    _imopVarPre315 = &ap;
    /*[]*/
    finalize_argparse(_imopVarPre315);
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
    char *_imopVarPre317;
    /*[]*/
    _imopVarPre317 = p->outFile;
    /*[]*/
    free(_imopVarPre317);
    /*[]*/
    /*[]*/
    char **_imopVarPre319;
    /*[]*/
    _imopVarPre319 = p->inpFiles;
    /*[]*/
    free_string_array(_imopVarPre319);
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
    void *_imopVarPre322;
    /*[]*/
    struct timeval *_imopVarPre323;
    /*[]*/
    _imopVarPre322 = ((void *) 0);
    /*[]*/
    _imopVarPre323 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre323, _imopVarPre322);
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
    void *_imopVarPre326;
    /*[]*/
    struct timeval *_imopVarPre327;
    /*[]*/
    _imopVarPre326 = ((void *) 0);
    /*[]*/
    _imopVarPre327 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre327, _imopVarPre326);
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
    void *_imopVarPre334;
    /*[]*/
    struct timeval *_imopVarPre335;
    /*[]*/
    _imopVarPre334 = ((void *) 0);
    /*[]*/
    _imopVarPre335 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre335, _imopVarPre334);
    /*[]*/
    /*[]*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*[]*/
    unsigned long long int _imopVarPre338;
    /*[]*/
    unsigned long long int *_imopVarPre339;
    /*[]*/
    _imopVarPre338 = timer->init;
    /*[]*/
    _imopVarPre339 = &timer->elapsed;
    /*[]*/
    accumulate_time(_imopVarPre339, _imopVarPre338, fini);
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
    void *_imopVarPre342;
    /*[]*/
    struct timeval *_imopVarPre343;
    /*[]*/
    _imopVarPre342 = ((void *) 0);
    /*[]*/
    _imopVarPre343 = &tv;
    /*[]*/
    gettimeofday(_imopVarPre343, _imopVarPre342);
    /*[]*/
    /*[]*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*[]*/
    /*[]*/
    if (numNotRunning & 0x2) {
    /*[]*/
        /*[]*/
        unsigned long long int _imopVarPre346;
        /*[]*/
        unsigned long long int *_imopVarPre347;
        /*[]*/
        _imopVarPre346 = timer->init;
        /*[]*/
        _imopVarPre347 = &timer->elapsed;
        /*[]*/
        accumulate_time(_imopVarPre347, _imopVarPre346, fini);
        /*[]*/
        /*[]*/
        timer->init = fini;
    }
    /*[]*/
    /*[]*/
    if (numNotRunning & 0x1) {
    /*[]*/
        /*[]*/
        unsigned long long int _imopVarPre350;
        /*[]*/
        unsigned long long int *_imopVarPre351;
        /*[]*/
        _imopVarPre350 = subtimer->init;
        /*[]*/
        _imopVarPre351 = &subtimer->elapsed;
        /*[]*/
        accumulate_time(_imopVarPre351, _imopVarPre350, fini);
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
    unsigned long long int _imopVarPre352;
    /*[]*/
    _imopVarPre352 = get_time();
    /*[]*/
    /*[]*/
    timers->wall_begin = _imopVarPre352;
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
        struct pb_Timer *_imopVarPre354;
        /*[]*/
        _imopVarPre354 = &timers->timers[n];
        /*[]*/
        pb_ResetTimer(_imopVarPre354);
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
            struct pb_Timer *_imopVarPre412;
            /*[]*/
            struct pb_Timer *_imopVarPre413;
            /*[]*/
            _imopVarPre412 = &currSubTimer->timer;
            /*[]*/
            _imopVarPre413 = &timers->timers[timers->current];
            /*[]*/
            pb_StopTimerAndSubTimer(_imopVarPre413, _imopVarPre412);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            struct pb_Timer *_imopVarPre415;
            /*[]*/
            _imopVarPre415 = &timers->timers[timers->current];
            /*[]*/
            pb_StopTimer(_imopVarPre415);
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
        struct pb_Timer *_imopVarPre417;
        /*[]*/
        _imopVarPre417 = &timers->timers[timer];
        /*[]*/
        pb_StartTimer(_imopVarPre417);
        /*[]*/
    }
}
/*[]*/
/*[]*/
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
/*[]*/
    /*[]*/
    unsigned long long int _imopVarPre418;
    /*[]*/
    _imopVarPre418 = get_time();
    /*[]*/
    /*[]*/
    pb_Timestamp wall_end = _imopVarPre418;
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
        struct pb_Timer *_imopVarPre421;
        /*[]*/
        double _imopVarPre422;
        /*[]*/
        _imopVarPre421 = &t[i];
        /*[]*/
        _imopVarPre422 = pb_GetElapsedTime(_imopVarPre421);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre422 != 0) {
        /*[]*/
            /*[]*/
            struct pb_Timer *_imopVarPre428;
            /*[]*/
            double _imopVarPre429;
            /*[]*/
            char *_imopVarPre430;
            /*[]*/
            _imopVarPre428 = &t[i];
            /*[]*/
            _imopVarPre429 = pb_GetElapsedTime(_imopVarPre428);
            /*[]*/
            /*[]*/
            _imopVarPre430 = categories[i - 1];
            /*[]*/
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre430, _imopVarPre429);
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
                    char *_imopVarPre433;
                    /*[]*/
                    unsigned long int _imopVarPre434;
                    /*[]*/
                    _imopVarPre433 = sub->label;
                    /*[]*/
                    _imopVarPre434 = strlen(_imopVarPre433);
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre434 > maxSubLength) {
                    /*[]*/
                        /*[]*/
                        char *_imopVarPre436;
                        /*[]*/
                        unsigned long int _imopVarPre437;
                        /*[]*/
                        _imopVarPre436 = sub->label;
                        /*[]*/
                        _imopVarPre437 = strlen(_imopVarPre436);
                        /*[]*/
                        /*[]*/
                        maxSubLength = _imopVarPre437;
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
                    struct pb_Timer *_imopVarPre443;
                    /*[]*/
                    double _imopVarPre444;
                    /*[]*/
                    char *_imopVarPre445;
                    /*[]*/
                    _imopVarPre443 = &sub->timer;
                    /*[]*/
                    _imopVarPre444 = pb_GetElapsedTime(_imopVarPre443);
                    /*[]*/
                    /*[]*/
                    _imopVarPre445 = sub->label;
                    /*[]*/
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre445, _imopVarPre444);
                    /*[]*/
                    /*[]*/
                    sub = sub->next;
                }
            }
        }
    }
    /*[]*/
    struct pb_Timer *_imopVarPre448;
    /*[]*/
    double _imopVarPre449;
    /*[]*/
    _imopVarPre448 = &t[pb_TimerID_OVERLAP];
    /*[]*/
    _imopVarPre449 = pb_GetElapsedTime(_imopVarPre448);
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre449 != 0) {
    /*[]*/
        /*[]*/
        struct pb_Timer *_imopVarPre454;
        /*[]*/
        double _imopVarPre455;
        /*[]*/
        _imopVarPre454 = &t[pb_TimerID_OVERLAP];
        /*[]*/
        _imopVarPre455 = pb_GetElapsedTime(_imopVarPre454);
        /*[]*/
        /*[]*/
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre455);
        /*[]*/
    }
    /*[]*/
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    /*[]*/
    printf("Timer Wall Time: %f\n", walltime);
    /*[]*/
}
/*[]*/
static LBM_GridPtr srcGrid;
/*[]*/
static LBM_GridPtr dstGrid;
/*[]*/
struct pb_TimerSet timers;
/*[]*/
/*[]*/
/*[]*/
int main(int nArgs, char *arg[]) {
/*[]*/
    /*[]*/
    MAIN_Param param;
    /*[]*/
    MAIN_Time time;
    /*[]*/
    int t;
    /*[]*/
    struct pb_TimerSet *_imopVarPre463;
    /*[]*/
    _imopVarPre463 = &timers;
    /*[]*/
    pb_InitializeTimerSet(_imopVarPre463);
    /*[]*/
    /*[]*/
    struct pb_TimerSet *_imopVarPre465;
    /*[]*/
    _imopVarPre465 = &timers;
    /*[]*/
    pb_SwitchToTimer(_imopVarPre465, pb_TimerID_COMPUTE);
    /*[]*/
    /*[]*/
    struct pb_Parameters *params;
    /*[]*/
    int *_imopVarPre467;
    /*[]*/
    struct pb_Parameters *_imopVarPre468;
    /*[]*/
    _imopVarPre467 = &nArgs;
    /*[]*/
    _imopVarPre468 = pb_ReadParameters(_imopVarPre467, arg);
    /*[]*/
    /*[]*/
    params = _imopVarPre468;
    /*[]*/
    struct stUn_imopVarPre17 *_imopVarPre470;
    /*[]*/
    _imopVarPre470 = &param;
    /*[]*/
    MAIN_parseCommandLine(nArgs, arg, _imopVarPre470, params);
    /*[]*/
    /*[]*/
    struct stUn_imopVarPre17 *_imopVarPre472;
    /*[]*/
    _imopVarPre472 = &param;
    /*[]*/
    MAIN_printInfo(_imopVarPre472);
    /*[]*/
    /*[]*/
    struct stUn_imopVarPre17 *_imopVarPre474;
    /*[]*/
    _imopVarPre474 = &param;
    /*[]*/
    MAIN_initialize(_imopVarPre474);
    /*[]*/
    /*[]*/
    struct stUn_imopVarPre14 *_imopVarPre476;
    /*[]*/
    _imopVarPre476 = &time;
    /*[]*/
    MAIN_startClock(_imopVarPre476);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (t = 1; t <= param.nTimeSteps; t++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (param.simType == CHANNEL) {
        /*[]*/
            /*[]*/
            float *_imopVarPre478;
            /*[]*/
            _imopVarPre478 = *srcGrid;
            /*[]*/
            LBM_handleInOutFlow(_imopVarPre478);
            /*[]*/
        }
        /*[]*/
        float *_imopVarPre481;
        /*[]*/
        float *_imopVarPre482;
        /*[]*/
        _imopVarPre481 = *dstGrid;
        /*[]*/
        _imopVarPre482 = *srcGrid;
        /*[]*/
        LBM_performStreamCollide(_imopVarPre482, _imopVarPre481);
        /*[]*/
        /*[]*/
        float ( **_imopVarPre485 )[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
        /*[]*/
        float ( **_imopVarPre486 )[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
        /*[]*/
        _imopVarPre485 = &dstGrid;
        /*[]*/
        _imopVarPre486 = &srcGrid;
        /*[]*/
        LBM_swapGrids(_imopVarPre486, _imopVarPre485);
        /*[]*/
        /*[]*/
        /*[]*/
        if ((t & 63) == 0) {
        /*[]*/
            /*[]*/
            printf("timestep: %i\n", t);
            /*[]*/
        }
    }
    /*[]*/
    struct stUn_imopVarPre17 *_imopVarPre489;
    /*[]*/
    struct stUn_imopVarPre14 *_imopVarPre490;
    /*[]*/
    _imopVarPre489 = &param;
    /*[]*/
    _imopVarPre490 = &time;
    /*[]*/
    MAIN_stopClock(_imopVarPre490, _imopVarPre489);
    /*[]*/
    /*[]*/
    struct stUn_imopVarPre17 *_imopVarPre492;
    /*[]*/
    _imopVarPre492 = &param;
    /*[]*/
    MAIN_finalize(_imopVarPre492);
    /*[]*/
    /*[]*/
    struct pb_TimerSet *_imopVarPre494;
    /*[]*/
    _imopVarPre494 = &timers;
    /*[]*/
    pb_SwitchToTimer(_imopVarPre494, pb_TimerID_NONE);
    /*[]*/
    /*[]*/
    struct pb_TimerSet *_imopVarPre496;
    /*[]*/
    _imopVarPre496 = &timers;
    /*[]*/
    pb_PrintTimerSet(_imopVarPre496);
    /*[]*/
    /*[]*/
    pb_FreeParameters(params);
    /*[]*/
    /*[]*/
    return 0;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void MAIN_parseCommandLine(int nArgs, char *arg[] , MAIN_Param *param , struct pb_Parameters *params) {
/*[]*/
    /*[]*/
    struct stat fileStat;
    /*[]*/
    /*[]*/
    if (nArgs < 2) {
    /*[]*/
        /*[]*/
        printf("syntax: lbm <time steps>\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    char *_imopVarPre498;
    /*[]*/
    int _imopVarPre499;
    /*[]*/
    _imopVarPre498 = arg[1];
    /*[]*/
    _imopVarPre499 = atoi(_imopVarPre498);
    /*[]*/
    /*[]*/
    param->nTimeSteps = _imopVarPre499;
    /*[]*/
    /*[]*/
    if (params->inpFiles[0] != ((void *) 0)) {
    /*[]*/
        /*[]*/
        param->obstacleFilename = params->inpFiles[0];
        /*[]*/
        struct stat *_imopVarPre503;
        /*[]*/
        char *_imopVarPre504;
        /*[]*/
        int _imopVarPre505;
        /*[]*/
        _imopVarPre503 = &fileStat;
        /*[]*/
        _imopVarPre504 = param->obstacleFilename;
        /*[]*/
        _imopVarPre505 = stat(_imopVarPre504, _imopVarPre503);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre505 != 0) {
        /*[]*/
            /*[]*/
            char *_imopVarPre507;
            /*[]*/
            _imopVarPre507 = param->obstacleFilename;
            /*[]*/
            printf("MAIN_parseCommandLine: cannot stat obstacle file '%s'\n", _imopVarPre507);
            /*[]*/
            /*[]*/
            exit(1);
            /*[]*/
        }
        /*[]*/
        /*[]*/
        if (fileStat.st_size != (1 * 120) * (1 * 120) * 150 + ((1 * 120) + 1) * 150) {
        /*[]*/
            /*[]*/
            int _imopVarPre511;
            /*[]*/
            int _imopVarPre512;
            /*[]*/
            char *_imopVarPre513;
            /*[]*/
            _imopVarPre511 = (1 * 120) * (1 * 120) * 150 + ((1 * 120) + 1) * 150;
            /*[]*/
            _imopVarPre512 = (int) fileStat.st_size;
            /*[]*/
            _imopVarPre513 = param->obstacleFilename;
            /*[]*/
            printf("MAIN_parseCommandLine:\n" "\tsize of file '%s' is %i bytes\n" "\texpected size is %i bytes\n", _imopVarPre513, _imopVarPre512, _imopVarPre511);
            /*[]*/
            /*[]*/
            exit(1);
            /*[]*/
        }
    } else {
    /*[]*/
        /*[]*/
        param->obstacleFilename = ((void *) 0);
    }
    /*[]*/
    param->resultFilename = params->outFile;
    /*[]*/
    param->action = STORE;
    /*[]*/
    param->simType = LDC;
}
/*[]*/
/*[]*/
void MAIN_printInfo(const MAIN_Param *param) {
/*[]*/
    /*[]*/
    const char actionString[3][32] = {"nothing", "compare" , "store"};
    /*[]*/
    const char simTypeString[3][32] = {"lid-driven cavity", "channel flow"};
    /*[]*/
    int _imopVarPre523;
    /*[]*/
    char *_imopVarPre524;
    /*[]*/
    char *_imopVarPre525;
    /*[]*/
    char *_imopVarPre526;
    /*[]*/
    char *_imopVarPre527;
    /*[]*/
    int _imopVarPre528;
    /*[]*/
    double _imopVarPre529;
    /*[]*/
    int _imopVarPre530;
    /*[]*/
    int _imopVarPre531;
    /*[]*/
    _imopVarPre523 = (param->obstacleFilename == ((void *) 0));
    /*[]*/
    /*[]*/
    if (_imopVarPre523) {
    /*[]*/
        /*[]*/
        _imopVarPre524 = "<none>";
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre524 = param->obstacleFilename;
    }
    /*[]*/
    _imopVarPre525 = simTypeString[param->simType];
    /*[]*/
    _imopVarPre526 = actionString[param->action];
    /*[]*/
    _imopVarPre527 = param->resultFilename;
    /*[]*/
    _imopVarPre528 = param->nTimeSteps;
    /*[]*/
    _imopVarPre529 = 1e-6 * (1 * 120) * (1 * 120) * 150;
    /*[]*/
    _imopVarPre530 = (1 * 120);
    /*[]*/
    _imopVarPre531 = (1 * 120);
    /*[]*/
    printf("MAIN_printInfo:\n" "\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n" "\tnTimeSteps     : %i\n" "\tresult file    : %s\n" "\taction         : %s\n" "\tsimulation type: %s\n" "\tobstacle file  : %s\n\n", _imopVarPre531, _imopVarPre530, 150, _imopVarPre529, _imopVarPre528, _imopVarPre527, _imopVarPre526, _imopVarPre525, _imopVarPre524);
    /*[]*/
}
/*[]*/
/*[]*/
void MAIN_initialize(const MAIN_Param *param) {
/*[]*/
    /*[]*/
    float **_imopVarPre533;
    /*[]*/
    _imopVarPre533 = (float **) &srcGrid;
    /*[]*/
    LBM_allocateGrid(_imopVarPre533);
    /*[]*/
    /*[]*/
    float **_imopVarPre535;
    /*[]*/
    _imopVarPre535 = (float **) &dstGrid;
    /*[]*/
    LBM_allocateGrid(_imopVarPre535);
    /*[]*/
    /*[]*/
    float *_imopVarPre537;
    /*[]*/
    _imopVarPre537 = *srcGrid;
    /*[]*/
    LBM_initializeGrid(_imopVarPre537);
    /*[]*/
    /*[]*/
    float *_imopVarPre539;
    /*[]*/
    _imopVarPre539 = *dstGrid;
    /*[]*/
    LBM_initializeGrid(_imopVarPre539);
    /*[]*/
    /*[]*/
    /*[]*/
    if (param->obstacleFilename != ((void *) 0)) {
    /*[]*/
        /*[]*/
        char *_imopVarPre542;
        /*[]*/
        float *_imopVarPre543;
        /*[]*/
        _imopVarPre542 = param->obstacleFilename;
        /*[]*/
        _imopVarPre543 = *srcGrid;
        /*[]*/
        LBM_loadObstacleFile(_imopVarPre543, _imopVarPre542);
        /*[]*/
        /*[]*/
        char *_imopVarPre546;
        /*[]*/
        float *_imopVarPre547;
        /*[]*/
        _imopVarPre546 = param->obstacleFilename;
        /*[]*/
        _imopVarPre547 = *dstGrid;
        /*[]*/
        LBM_loadObstacleFile(_imopVarPre547, _imopVarPre546);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (param->simType == CHANNEL) {
    /*[]*/
        /*[]*/
        float *_imopVarPre549;
        /*[]*/
        _imopVarPre549 = *srcGrid;
        /*[]*/
        LBM_initializeSpecialCellsForChannel(_imopVarPre549);
        /*[]*/
        /*[]*/
        float *_imopVarPre551;
        /*[]*/
        _imopVarPre551 = *dstGrid;
        /*[]*/
        LBM_initializeSpecialCellsForChannel(_imopVarPre551);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        float *_imopVarPre553;
        /*[]*/
        _imopVarPre553 = *srcGrid;
        /*[]*/
        LBM_initializeSpecialCellsForLDC(_imopVarPre553);
        /*[]*/
        /*[]*/
        float *_imopVarPre555;
        /*[]*/
        _imopVarPre555 = *dstGrid;
        /*[]*/
        LBM_initializeSpecialCellsForLDC(_imopVarPre555);
        /*[]*/
    }
    /*[]*/
    float *_imopVarPre557;
    /*[]*/
    _imopVarPre557 = *srcGrid;
    /*[]*/
    LBM_showGridStatistics(_imopVarPre557);
    /*[]*/
}
/*[]*/
/*[]*/
void MAIN_finalize(const MAIN_Param *param) {
/*[]*/
    /*[]*/
    float *_imopVarPre559;
    /*[]*/
    _imopVarPre559 = *srcGrid;
    /*[]*/
    LBM_showGridStatistics(_imopVarPre559);
    /*[]*/
    /*[]*/
    /*[]*/
    if (param->action == COMPARE) {
    /*[]*/
        /*[]*/
        int _imopVarPre563;
        /*[]*/
        char *_imopVarPre564;
        /*[]*/
        float *_imopVarPre565;
        /*[]*/
        _imopVarPre563 = (-1);
        /*[]*/
        _imopVarPre564 = param->resultFilename;
        /*[]*/
        _imopVarPre565 = *srcGrid;
        /*[]*/
        LBM_compareVelocityField(_imopVarPre565, _imopVarPre564, _imopVarPre563);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (param->action == STORE) {
    /*[]*/
        /*[]*/
        int _imopVarPre569;
        /*[]*/
        char *_imopVarPre570;
        /*[]*/
        float *_imopVarPre571;
        /*[]*/
        _imopVarPre569 = (-1);
        /*[]*/
        _imopVarPre570 = param->resultFilename;
        /*[]*/
        _imopVarPre571 = *srcGrid;
        /*[]*/
        LBM_storeVelocityField(_imopVarPre571, _imopVarPre570, _imopVarPre569);
        /*[]*/
    }
    /*[]*/
    float **_imopVarPre573;
    /*[]*/
    _imopVarPre573 = (float **) &srcGrid;
    /*[]*/
    LBM_freeGrid(_imopVarPre573);
    /*[]*/
    /*[]*/
    float **_imopVarPre575;
    /*[]*/
    _imopVarPre575 = (float **) &dstGrid;
    /*[]*/
    LBM_freeGrid(_imopVarPre575);
    /*[]*/
}
/*[]*/
/*[]*/
void MAIN_startClock(MAIN_Time *time) {
/*[]*/
    /*[]*/
    signed long int _imopVarPre577;
    /*[]*/
    _imopVarPre577 = sysconf(3);
    /*[]*/
    /*[]*/
    time->timeScale = 1.0 / _imopVarPre577;
    /*[]*/
    struct tms *_imopVarPre579;
    /*[]*/
    unsigned long int _imopVarPre580;
    /*[]*/
    _imopVarPre579 = &(time->timeStart);
    /*[]*/
    _imopVarPre580 = times(_imopVarPre579);
    /*[]*/
    /*[]*/
    time->tickStart = _imopVarPre580;
}
/*[]*/
/*[]*/
/*[]*/
void MAIN_stopClock(MAIN_Time *time, const MAIN_Param *param) {
/*[]*/
    /*[]*/
    struct tms *_imopVarPre582;
    /*[]*/
    unsigned long int _imopVarPre583;
    /*[]*/
    _imopVarPre582 = &(time->timeStop);
    /*[]*/
    _imopVarPre583 = times(_imopVarPre582);
    /*[]*/
    /*[]*/
    time->tickStop = _imopVarPre583;
    /*[]*/
    double _imopVarPre589;
    /*[]*/
    float _imopVarPre590;
    /*[]*/
    float _imopVarPre591;
    /*[]*/
    float _imopVarPre592;
    /*[]*/
    float _imopVarPre593;
    /*[]*/
    _imopVarPre589 = 1.0e-6 * (1 * 120) * (1 * 120) * 150 * param->nTimeSteps / (time->tickStop - time->tickStart) / time->timeScale;
    /*[]*/
    _imopVarPre590 = (time->tickStop - time->tickStart) * time->timeScale;
    /*[]*/
    _imopVarPre591 = (time->timeStop.tms_utime - time->timeStart.tms_utime + time->timeStop.tms_stime - time->timeStart.tms_stime) * time->timeScale;
    /*[]*/
    _imopVarPre592 = (time->timeStop.tms_stime - time->timeStart.tms_stime) * time->timeScale;
    /*[]*/
    _imopVarPre593 = (time->timeStop.tms_utime - time->timeStart.tms_utime) * time->timeScale;
    /*[]*/
    printf("MAIN_stopClock:\n" "\tusr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\n\n", _imopVarPre593, _imopVarPre592, _imopVarPre591, _imopVarPre590, _imopVarPre589);
    /*[]*/
}
