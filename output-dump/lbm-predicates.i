typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long unsigned int __darwin_size_t;
typedef unsigned long __darwin_clock_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint64_t __darwin_ino64_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
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
int fgetc(FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fprintf(FILE *restrict , const char *restrict , ...);
int fputs(const char *restrict , FILE *restrict );
size_t fread(void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
int fscanf(FILE *restrict , const char *restrict , ...);
size_t fwrite(const void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
int printf(const char *restrict , ...);
typedef __darwin_off_t off_t;
typedef __darwin_uid_t uid_t;
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
int atoi(const char *);
void exit(int );
void free(void *);
void *malloc(size_t __size);
typedef __darwin_dev_t dev_t;
typedef __darwin_mode_t mode_t;
struct timespec {
    __darwin_time_t tv_sec;
    long tv_nsec;
} ;
typedef __darwin_clock_t clock_t;
int gettimeofday(struct timeval *restrict , void *restrict );
struct tms {
    clock_t tms_utime;
    clock_t tms_stime;
    clock_t tms_cutime;
    clock_t tms_cstime;
} ;
clock_t times(struct tms *);
typedef __darwin_gid_t gid_t;
long sysconf(int );
extern char *suboptarg;
struct fssearchblock ;
struct searchstate ;
extern double sqrt(double );
size_t strlen(const char *__s);
char *strdup(const char *__s1);
typedef __darwin_blkcnt_t blkcnt_t;
typedef __darwin_blksize_t blksize_t;
typedef __uint16_t nlink_t;
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
int stat(const char *, struct stat *);
struct _filesec ;
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
struct stUn_imopVarPre14 {
    float timeScale;
    clock_t tickStart, tickStop;
    struct tms timeStart, timeStop;
} ;
typedef struct stUn_imopVarPre14 MAIN_Time;
enum enum_imopVarPre15 {
    NOTHING = 0, COMPARE , STORE
} ;
typedef enum enum_imopVarPre15 MAIN_Action;
enum enum_imopVarPre16 {
    LDC = 0, CHANNEL
} ;
typedef enum enum_imopVarPre16 MAIN_SimType;
struct stUn_imopVarPre17 {
    int nTimeSteps;
    char *resultFilename;
    MAIN_Action action;
    MAIN_SimType simType;
    char *obstacleFilename;
} ;
typedef struct stUn_imopVarPre17 MAIN_Param;
void MAIN_parseCommandLine(int nArgs, char *arg[] , MAIN_Param *param , struct pb_Parameters *);
void MAIN_printInfo(const MAIN_Param *param);
void MAIN_initialize(const MAIN_Param *param);
void MAIN_finalize(const MAIN_Param *param);
void MAIN_startClock(MAIN_Time *time);
void MAIN_stopClock(MAIN_Time *time, const MAIN_Param *param);
typedef float LBM_Grid[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
typedef LBM_Grid *LBM_GridPtr;
void LBM_allocateGrid(float **ptr);
void LBM_freeGrid(float **ptr);
void LBM_initializeGrid(LBM_Grid grid);
void LBM_initializeSpecialCellsForLDC(LBM_Grid grid);
void LBM_loadObstacleFile(LBM_Grid grid, const char *filename);
void LBM_initializeSpecialCellsForChannel(LBM_Grid grid);
void LBM_swapGrids(LBM_GridPtr *grid1, LBM_GridPtr *grid2);
void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid);
void LBM_handleInOutFlow(LBM_Grid srcGrid);
void LBM_showGridStatistics(LBM_Grid Grid);
void LBM_storeVelocityField(LBM_Grid grid, const char *filename , const int binary);
void LBM_compareVelocityField(LBM_Grid grid, const char *filename , const int binary);
/*OUT: {
Reverse<--,>}*/
void LBM_allocateGrid(float **ptr) {
    /*OUT: {
    Reverse<--,>}*/
    const size_t margin = 2 * (1 * 120) * (1 * 120) * N_CELL_ENTRIES;
    /*OUT: {
    Reverse<--,>}*/
    const size_t size = sizeof(LBM_Grid) + 2 * margin * sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre148 = malloc(size);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    *ptr = _imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    if (!*ptr) {
        /*OUT: {
        Reverse<--, 208_0;>}*/
        double _imopVarPre150;
        /*OUT: {
        Reverse<--, 208_0;>}*/
        _imopVarPre150 = size / (1024.0 * 1024.0);
        /*OUT: {
        Reverse<--, 208_0;>}*/
        printf("LBM_allocateGrid: could not allocate %.1f MByte\n", _imopVarPre150);
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
    double _imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre152 = size / (1024.0 * 1024.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("LBM_allocateGrid: allocated %.1f MByte\n", _imopVarPre152);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    *ptr += margin;
}
/*OUT: {
Reverse<--,>}*/
void LBM_freeGrid(float **ptr) {
    /*OUT: {
    Reverse<--,>}*/
    const size_t margin = 2 * (1 * 120) * (1 * 120) * N_CELL_ENTRIES;
    /*OUT: {
    Reverse<--,>}*/
    float *_imopVarPre154;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre154 = *ptr - margin;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre154);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    *ptr = ((void *) 0);
}
/*OUT: {
Reverse<--,>}*/
void LBM_initializeGrid(LBM_Grid grid) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
#pragma omp parallel
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<6902,>}*/
        /*OUT: {
        Reverse<6902,>}*/
        /*OUT: {
        Reverse<6902,>}*/
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (150 + 2) * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0);
            /*OUT: {
            Reverse<6902,>}*/
            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))));
            /*OUT: {
            Reverse<6902,>}*/
            (*_aux_) = 0;
            /*OUT: {
            Reverse<6902,>}*/
            ;
        }
        /*OUT: {
        Reverse<6902,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<495,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void LBM_swapGrids(LBM_GridPtr *grid1, LBM_GridPtr *grid2) {
    /*OUT: {
    Reverse<--,>}*/
    LBM_GridPtr aux = *grid1;
    /*OUT: {
    Reverse<--,>}*/
    *grid1 = *grid2;
    /*OUT: {
    Reverse<--,>}*/
    *grid2 = aux;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void LBM_loadObstacleFile(LBM_Grid grid, const char *filename) {
    /*OUT: {
    Reverse<--,>}*/
    int x;
    /*OUT: {
    Reverse<--,>}*/
    int y;
    /*OUT: {
    Reverse<--,>}*/
    int z;
    /*OUT: {
    Reverse<--,>}*/
    struct __sFILE *_imopVarPre155;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre155 = fopen(filename, "rb");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    FILE *file = _imopVarPre155;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 521_1; 517_0;>}*/
    for (z = 0; z < 150; z++) {
        /*OUT: {
        Reverse<--, 517_0;>}*/
        /*OUT: {
        Reverse<--, 517_0;>}*/
        /*OUT: {
        Reverse<--, 525_1; 521_0; 517_0;>}*/
        for (y = 0; y < (1 * 120); y++) {
            /*OUT: {
            Reverse<--, 521_0; 517_0;>}*/
            /*OUT: {
            Reverse<--, 521_0; 517_0;>}*/
            /*OUT: {
            Reverse<--, 525_0; 521_0; 517_0;>}*/
            for (x = 0; x < (1 * 120); x++) {
                /*OUT: {
                Reverse<--, 525_0; 521_0; 517_0;>}*/
                int _imopVarPre157;
                /*OUT: {
                Reverse<--, 525_0; 521_0; 517_0;>}*/
                _imopVarPre157 = fgetc(file);
                /*OUT: {
                Reverse<--, 525_0; 521_0; 517_0;>}*/
                /*OUT: {
                Reverse<--, 525_0; 521_0; 517_0;>}*/
                if (_imopVarPre157 != '.') {
                    /*OUT: {
                    Reverse<--, 534_0; 525_0; 521_0; 517_0;>}*/
                    unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                    /*OUT: {
                    Reverse<--, 534_0; 525_0; 521_0; 517_0;>}*/
                    (*_aux_) |= OBSTACLE;
                }
                /*OUT: {
                Reverse<--, 525_0; 521_0; 517_0;>}*/
                ;
            }
            /*OUT: {
            Reverse<--, 525_1; 521_0; 517_0;>}*/
            fgetc(file);
            /*OUT: {
            Reverse<--, 525_1; 521_0; 517_0;>}*/
        }
        /*OUT: {
        Reverse<--, 521_1; 517_0;>}*/
        fgetc(file);
        /*OUT: {
        Reverse<--, 521_1; 517_0;>}*/
    }
    /*OUT: {
    Reverse<--, 517_1;>}*/
    fclose(file);
    /*OUT: {
    Reverse<--, 517_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
void LBM_initializeSpecialCellsForLDC(LBM_Grid grid) {
    /*OUT: {
    Reverse<--,>}*/
    int x;
    /*OUT: {
    Reverse<--,>}*/
    int y;
    /*OUT: {
    Reverse<--,>}*/
    int z;
#pragma omp parallel private(x, y)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<6941,>}*/
        /*OUT: {
        Reverse<6941,>}*/
        /*OUT: {
        Reverse<6941, 577_1;>}*/
        for (z = -2; z < 150 + 2; z++) {
            /*OUT: {
            Reverse<6941,>}*/
            /*OUT: {
            Reverse<6941,>}*/
            /*OUT: {
            Reverse<6941, 581_1; 577_0;>}*/
            for (y = 0; y < (1 * 120); y++) {
                /*OUT: {
                Reverse<6941, 577_0;>}*/
                /*OUT: {
                Reverse<6941, 577_0;>}*/
                /*OUT: {
                Reverse<6941, 581_0; 577_0;>}*/
                for (x = 0; x < (1 * 120); x++) {
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    int _imopVarPre158;
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    int _imopVarPre159;
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    int _imopVarPre160;
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    int _imopVarPre161;
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    int _imopVarPre162;
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    _imopVarPre158 = x == 0;
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    if (!_imopVarPre158) {
                        /*OUT: {
                        Reverse<6941, 590_0; 581_0; 577_0;>}*/
                        _imopVarPre159 = x == (1 * 120) - 1;
                        /*OUT: {
                        Reverse<6941, 590_0; 581_0; 577_0;>}*/
                        if (!_imopVarPre159) {
                            /*OUT: {
                            Reverse<6941, 594_0; 590_0; 581_0; 577_0;>}*/
                            _imopVarPre160 = y == 0;
                            /*OUT: {
                            Reverse<6941, 594_0; 590_0; 581_0; 577_0;>}*/
                            if (!_imopVarPre160) {
                                /*OUT: {
                                Reverse<6941, 597_0; 594_0; 590_0; 581_0; 577_0;>}*/
                                _imopVarPre161 = y == (1 * 120) - 1;
                                /*OUT: {
                                Reverse<6941, 597_0; 594_0; 590_0; 581_0; 577_0;>}*/
                                if (!_imopVarPre161) {
                                    /*OUT: {
                                    Reverse<6941, 601_0; 597_0; 594_0; 590_0; 581_0; 577_0;>}*/
                                    _imopVarPre162 = z == 0;
                                    /*OUT: {
                                    Reverse<6941, 601_0; 597_0; 594_0; 590_0; 581_0; 577_0;>}*/
                                    if (!_imopVarPre162) {
                                        /*OUT: {
                                        Reverse<6941, 604_0; 601_0; 597_0; 594_0; 590_0; 581_0; 577_0;>}*/
                                        _imopVarPre162 = z == 150 - 1;
                                    }
                                    /*OUT: {
                                    Reverse<6941, 601_0; 597_0; 594_0; 590_0; 581_0; 577_0;>}*/
                                    _imopVarPre161 = _imopVarPre162;
                                }
                                /*OUT: {
                                Reverse<6941, 597_0; 594_0; 590_0; 581_0; 577_0;>}*/
                                _imopVarPre160 = _imopVarPre161;
                            }
                            /*OUT: {
                            Reverse<6941, 594_0; 590_0; 581_0; 577_0;>}*/
                            _imopVarPre159 = _imopVarPre160;
                        }
                        /*OUT: {
                        Reverse<6941, 590_0; 581_0; 577_0;>}*/
                        _imopVarPre158 = _imopVarPre159;
                    }
                    /*OUT: {
                    Reverse<6941, 581_0; 577_0;>}*/
                    if (_imopVarPre158) {
                        /*OUT: {
                        Reverse<6941, 615_0; 581_0; 577_0;>}*/
                        unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                        /*OUT: {
                        Reverse<6941, 615_0; 581_0; 577_0;>}*/
                        (*_aux_) |= OBSTACLE;
                        /*OUT: {
                        Reverse<6941, 615_0; 581_0; 577_0;>}*/
                        ;
                    } else {
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        int _imopVarPre168;
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        int _imopVarPre169;
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        int _imopVarPre170;
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        int _imopVarPre171;
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        int _imopVarPre172;
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        _imopVarPre168 = z == 1;
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        if (!_imopVarPre168) {
                            /*OUT: {
                            Reverse<6941, 639_0; 615_1; 581_0; 577_0;>}*/
                            _imopVarPre168 = z == 150 - 2;
                        }
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        _imopVarPre169 = _imopVarPre168;
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        if (_imopVarPre169) {
                            /*OUT: {
                            Reverse<6941, 644_0; 615_1; 581_0; 577_0;>}*/
                            _imopVarPre170 = x > 1;
                            /*OUT: {
                            Reverse<6941, 644_0; 615_1; 581_0; 577_0;>}*/
                            if (_imopVarPre170) {
                                /*OUT: {
                                Reverse<6941, 647_0; 644_0; 615_1; 581_0; 577_0;>}*/
                                _imopVarPre171 = x < (1 * 120) - 2;
                                /*OUT: {
                                Reverse<6941, 647_0; 644_0; 615_1; 581_0; 577_0;>}*/
                                if (_imopVarPre171) {
                                    /*OUT: {
                                    Reverse<6941, 651_0; 647_0; 644_0; 615_1; 581_0; 577_0;>}*/
                                    _imopVarPre172 = y > 1;
                                    /*OUT: {
                                    Reverse<6941, 651_0; 647_0; 644_0; 615_1; 581_0; 577_0;>}*/
                                    if (_imopVarPre172) {
                                        /*OUT: {
                                        Reverse<6941, 654_0; 651_0; 647_0; 644_0; 615_1; 581_0; 577_0;>}*/
                                        _imopVarPre172 = y < (1 * 120) - 2;
                                    }
                                    /*OUT: {
                                    Reverse<6941, 651_0; 647_0; 644_0; 615_1; 581_0; 577_0;>}*/
                                    _imopVarPre171 = _imopVarPre172;
                                }
                                /*OUT: {
                                Reverse<6941, 647_0; 644_0; 615_1; 581_0; 577_0;>}*/
                                _imopVarPre170 = _imopVarPre171;
                            }
                            /*OUT: {
                            Reverse<6941, 644_0; 615_1; 581_0; 577_0;>}*/
                            _imopVarPre169 = _imopVarPre170;
                        }
                        /*OUT: {
                        Reverse<6941, 615_1; 581_0; 577_0;>}*/
                        if (_imopVarPre169) {
                            /*OUT: {
                            Reverse<6941, 664_0; 615_1; 581_0; 577_0;>}*/
                            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                            /*OUT: {
                            Reverse<6941, 664_0; 615_1; 581_0; 577_0;>}*/
                            (*_aux_) |= ACCEL;
                            /*OUT: {
                            Reverse<6941, 664_0; 615_1; 581_0; 577_0;>}*/
                            ;
                        }
                    }
                }
            }
        }
        /*OUT: {
        Reverse<6941,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<681,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
void LBM_initializeSpecialCellsForChannel(LBM_Grid grid) {
    /*OUT: {
    Reverse<--,>}*/
    int x;
    /*OUT: {
    Reverse<--,>}*/
    int y;
    /*OUT: {
    Reverse<--,>}*/
    int z;
#pragma omp parallel private(x, y)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<7012,>}*/
        /*OUT: {
        Reverse<7012,>}*/
        /*OUT: {
        Reverse<7012, 693_1;>}*/
        for (z = -2; z < 150 + 2; z++) {
            /*OUT: {
            Reverse<7012,>}*/
            /*OUT: {
            Reverse<7012,>}*/
            /*OUT: {
            Reverse<7012, 697_1; 693_0;>}*/
            for (y = 0; y < (1 * 120); y++) {
                /*OUT: {
                Reverse<7012, 693_0;>}*/
                /*OUT: {
                Reverse<7012, 693_0;>}*/
                /*OUT: {
                Reverse<7012, 697_0; 693_0;>}*/
                for (x = 0; x < (1 * 120); x++) {
                    /*OUT: {
                    Reverse<7012, 697_0; 693_0;>}*/
                    int _imopVarPre173;
                    /*OUT: {
                    Reverse<7012, 697_0; 693_0;>}*/
                    int _imopVarPre174;
                    /*OUT: {
                    Reverse<7012, 697_0; 693_0;>}*/
                    int _imopVarPre175;
                    /*OUT: {
                    Reverse<7012, 697_0; 693_0;>}*/
                    _imopVarPre173 = x == 0;
                    /*OUT: {
                    Reverse<7012, 697_0; 693_0;>}*/
                    if (!_imopVarPre173) {
                        /*OUT: {
                        Reverse<7012, 704_0; 697_0; 693_0;>}*/
                        _imopVarPre174 = x == (1 * 120) - 1;
                        /*OUT: {
                        Reverse<7012, 704_0; 697_0; 693_0;>}*/
                        if (!_imopVarPre174) {
                            /*OUT: {
                            Reverse<7012, 708_0; 704_0; 697_0; 693_0;>}*/
                            _imopVarPre175 = y == 0;
                            /*OUT: {
                            Reverse<7012, 708_0; 704_0; 697_0; 693_0;>}*/
                            if (!_imopVarPre175) {
                                /*OUT: {
                                Reverse<7012, 711_0; 708_0; 704_0; 697_0; 693_0;>}*/
                                _imopVarPre175 = y == (1 * 120) - 1;
                            }
                            /*OUT: {
                            Reverse<7012, 708_0; 704_0; 697_0; 693_0;>}*/
                            _imopVarPre174 = _imopVarPre175;
                        }
                        /*OUT: {
                        Reverse<7012, 704_0; 697_0; 693_0;>}*/
                        _imopVarPre173 = _imopVarPre174;
                    }
                    /*OUT: {
                    Reverse<7012, 697_0; 693_0;>}*/
                    if (_imopVarPre173) {
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        (*_aux_) |= OBSTACLE;
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        ;
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        int _imopVarPre178;
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        int _imopVarPre179;
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        _imopVarPre178 = z == 0;
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        if (!_imopVarPre178) {
                            /*OUT: {
                            Reverse<7012, 740_0; 719_0; 697_0; 693_0;>}*/
                            _imopVarPre178 = z == 150 - 1;
                        }
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        _imopVarPre179 = _imopVarPre178;
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        if (_imopVarPre179) {
                            /*OUT: {
                            Reverse<7012, 745_0; 719_0; 697_0; 693_0;>}*/
                            _imopVarPre179 = !((*((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))))) & OBSTACLE);
                        }
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        if (_imopVarPre179) {
                            /*OUT: {
                            Reverse<7012, 761_0; 719_0; 697_0; 693_0;>}*/
                            unsigned int *const _aux_ = ((unsigned int *) ((void *) (&((grid[(FLAGS + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))])))));
                            /*OUT: {
                            Reverse<7012, 761_0; 719_0; 697_0; 693_0;>}*/
                            (*_aux_) |= IN_OUT_FLOW;
                        }
                        /*OUT: {
                        Reverse<7012, 719_0; 697_0; 693_0;>}*/
                        ;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<7012,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<778,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    float ux;
    /*OUT: {
    Reverse<--,>}*/
    float uy;
    /*OUT: {
    Reverse<--,>}*/
    float uz;
    /*OUT: {
    Reverse<--,>}*/
    float u2;
    /*OUT: {
    Reverse<--,>}*/
    float rho;
#pragma omp parallel private(ux, uy, uz, u2, rho)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<7061,>}*/
        /*OUT: {
        Reverse<7061,>}*/
        /*OUT: {
        Reverse<7061,>}*/
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            /*OUT: {
            Reverse<7061,>}*/
            if (((*((unsigned int *) ((void *) (&(((srcGrid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & OBSTACLE)) {
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(S + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(N + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(W + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(E + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(SW + N_CELL_ENTRIES * ((-1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(SE + N_CELL_ENTRIES * ((+1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(NW + N_CELL_ENTRIES * ((-1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(NE + N_CELL_ENTRIES * ((+1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(SB + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(ST + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(NB + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(NT + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(WB + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(WT + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(EB + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                (((dstGrid[(ET + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
                /*OUT: {
                Reverse<7061, 817_0;>}*/
                continue;
            }
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            rho = +(((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            ux = +(((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            uy = +(((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            uz = +(((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) - (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])));
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            ux /= rho;
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            uy /= rho;
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            uz /= rho;
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            if (((*((unsigned int *) ((void *) (&(((srcGrid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & ACCEL)) {
                /*OUT: {
                Reverse<7061, 1698_0; 817_1;>}*/
                ux = 0.005f;
                /*OUT: {
                Reverse<7061, 1698_0; 817_1;>}*/
                uy = 0.002f;
                /*OUT: {
                Reverse<7061, 1698_0; 817_1;>}*/
                uz = 0.000f;
            }
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            u2 = 1.5f * (ux * ux + uy * uy + uz * uz);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 3.0) * 1.95f * rho * (1.0f - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(N + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uy * (4.5f * uy + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(S + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uy * (4.5f * uy - 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(E + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + ux * (4.5f * ux + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(W + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + ux * (4.5f * ux - 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uz * (4.5f * uz + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 18.0) * 1.95f * rho * (1.0f + uz * (4.5f * uz - 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(NE + N_CELL_ENTRIES * ((+1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux + uy) * (4.5f * (+ux + uy) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(NW + N_CELL_ENTRIES * ((-1) + (+1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux + uy) * (4.5f * (-ux + uy) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(SE + N_CELL_ENTRIES * ((+1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux - uy) * (4.5f * (+ux - uy) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(SW + N_CELL_ENTRIES * ((-1) + (-1) * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux - uy) * (4.5f * (-ux - uy) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(NT + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+uy + uz) * (4.5f * (+uy + uz) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(NB + N_CELL_ENTRIES * (0 + (+1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+uy - uz) * (4.5f * (+uy - uz) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(ST + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-uy + uz) * (4.5f * (-uy + uz) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(SB + N_CELL_ENTRIES * (0 + (-1) * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-uy - uz) * (4.5f * (-uy - uz) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(ET + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux + uz) * (4.5f * (+ux + uz) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(EB + N_CELL_ENTRIES * ((+1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (+ux - uz) * (4.5f * (+ux - uz) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(WT + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (+1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux + uz) * (4.5f * (-ux + uz) + 3.0f) - u2);
            /*OUT: {
            Reverse<7061, 817_1;>}*/
            (((dstGrid[(WB + N_CELL_ENTRIES * ((-1) + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]))) = (1.0f - 1.95f) * (((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))) + (1.0 / 36.0) * 1.95f * rho * (1.0f + (-ux - uz) * (4.5f * (-ux - uz) + 3.0f) - u2);
        }
        /*OUT: {
        Reverse<7061,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2217,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
void LBM_handleInOutFlow(LBM_Grid srcGrid) {
    /*OUT: {
    Reverse<--,>}*/
    float ux;
    /*OUT: {
    Reverse<--,>}*/
    float uy;
    /*OUT: {
    Reverse<--,>}*/
    float uz;
    /*OUT: {
    Reverse<--,>}*/
    float rho;
    /*OUT: {
    Reverse<--,>}*/
    float ux1;
    /*OUT: {
    Reverse<--,>}*/
    float uy1;
    /*OUT: {
    Reverse<--,>}*/
    float uz1;
    /*OUT: {
    Reverse<--,>}*/
    float rho1;
    /*OUT: {
    Reverse<--,>}*/
    float ux2;
    /*OUT: {
    Reverse<--,>}*/
    float uy2;
    /*OUT: {
    Reverse<--,>}*/
    float uz2;
    /*OUT: {
    Reverse<--,>}*/
    float rho2;
    /*OUT: {
    Reverse<--,>}*/
    float u2;
    /*OUT: {
    Reverse<--,>}*/
    float px;
    /*OUT: {
    Reverse<--,>}*/
    float py;
    /*OUT: {
    Reverse<--,>}*/
    int i;
#pragma omp parallel private(ux, uy, uz, rho, ux1, uy1, uz1, rho1, ux2, uy2, uz2, rho2, u2, px, py)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<16060,>}*/
        /*OUT: {
        Reverse<16060,>}*/
        /*OUT: {
        Reverse<16060,>}*/
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            /*OUT: {
            Reverse<16060,>}*/
            rho1 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 1 * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16060,>}*/
            rho2 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 2 * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16060,>}*/
            rho = 2.0 * rho1 - rho2;
            /*OUT: {
            Reverse<16060,>}*/
            px = (((i / N_CELL_ENTRIES) % (1 * 120)) / (0.5 * ((1 * 120) - 1))) - 1.0;
            /*OUT: {
            Reverse<16060,>}*/
            py = ((((i / N_CELL_ENTRIES) / (1 * 120)) % (1 * 120)) / (0.5 * ((1 * 120) - 1))) - 1.0;
            /*OUT: {
            Reverse<16060,>}*/
            ux = 0.00;
            /*OUT: {
            Reverse<16060,>}*/
            uy = 0.00;
            /*OUT: {
            Reverse<16060,>}*/
            uz = 0.01 * (1.0 - px * px) * (1.0 - py * py);
            /*OUT: {
            Reverse<16060,>}*/
            u2 = 1.5 * (ux * ux + uy * uy + uz * uz);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0) * rho * (1.0 - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy - 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux - 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz - 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uy) * (4.5 * (+ux + uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uy) * (4.5 * (-ux + uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uy) * (4.5 * (+ux - uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uy) * (4.5 * (-ux - uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy + uz) * (4.5 * (+uy + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy - uz) * (4.5 * (+uy - uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy + uz) * (4.5 * (-uy + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy - uz) * (4.5 * (-uy - uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uz) * (4.5 * (+ux + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uz) * (4.5 * (+ux - uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uz) * (4.5 * (-ux + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16060,>}*/
            ((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uz) * (4.5 * (-ux - uz) + 3.0) - u2);
        }
        /*OUT: {
        Reverse<16060,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<2824,>}*/
#pragma omp barrier
    }
#pragma omp parallel private(ux, uy, uz, rho, ux1, uy1, uz1, rho1, ux2, uy2, uz2, rho2, u2, px, py)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<16068,>}*/
        /*OUT: {
        Reverse<16068,>}*/
        /*OUT: {
        Reverse<16068,>}*/
        for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (150 - 1) * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
            /*OUT: {
            Reverse<16068,>}*/
            rho1 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            ux1 = +(srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            uy1 = +(srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            uz1 = +(srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-1) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            ux1 /= rho1;
            /*OUT: {
            Reverse<16068,>}*/
            uy1 /= rho1;
            /*OUT: {
            Reverse<16068,>}*/
            uz1 /= rho1;
            /*OUT: {
            Reverse<16068,>}*/
            rho2 = +(srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            ux2 = +(srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            uy2 = +(srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            uz2 = +(srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) + (srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]) - (srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + (-2) * (1 * 120) * (1 * 120))) + i]);
            /*OUT: {
            Reverse<16068,>}*/
            ux2 /= rho2;
            /*OUT: {
            Reverse<16068,>}*/
            uy2 /= rho2;
            /*OUT: {
            Reverse<16068,>}*/
            uz2 /= rho2;
            /*OUT: {
            Reverse<16068,>}*/
            rho = 1.0;
            /*OUT: {
            Reverse<16068,>}*/
            ux = 2 * ux1 - ux2;
            /*OUT: {
            Reverse<16068,>}*/
            uy = 2 * uy1 - uy2;
            /*OUT: {
            Reverse<16068,>}*/
            uz = 2 * uz1 - uz2;
            /*OUT: {
            Reverse<16068,>}*/
            u2 = 1.5 * (ux * ux + uy * uy + uz * uz);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 3.0) * rho * (1.0 - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uy * (4.5 * uy - 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + ux * (4.5 * ux - 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 18.0) * rho * (1.0 + uz * (4.5 * uz - 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uy) * (4.5 * (+ux + uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uy) * (4.5 * (-ux + uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uy) * (4.5 * (+ux - uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uy) * (4.5 * (-ux - uy) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy + uz) * (4.5 * (+uy + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+uy - uz) * (4.5 * (+uy - uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy + uz) * (4.5 * (-uy + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-uy - uz) * (4.5 * (-uy - uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux + uz) * (4.5 * (+ux + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (+ux - uz) * (4.5 * (+ux - uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux + uz) * (4.5 * (-ux + uz) + 3.0) - u2);
            /*OUT: {
            Reverse<16068,>}*/
            ((srcGrid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) = (1.0 / 36.0) * rho * (1.0 + (-ux - uz) * (4.5 * (-ux - uz) + 3.0) - u2);
        }
        /*OUT: {
        Reverse<16068,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<3935,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
void LBM_showGridStatistics(LBM_Grid grid) {
    /*OUT: {
    Reverse<--,>}*/
    int nObstacleCells = 0;
    /*OUT: {
    Reverse<--,>}*/
    int nAccelCells = 0;
    /*OUT: {
    Reverse<--,>}*/
    int nFluidCells = 0;
    /*OUT: {
    Reverse<--,>}*/
    float ux;
    /*OUT: {
    Reverse<--,>}*/
    float uy;
    /*OUT: {
    Reverse<--,>}*/
    float uz;
    /*OUT: {
    Reverse<--,>}*/
    float minU2 = 1e+30;
    /*OUT: {
    Reverse<--,>}*/
    float maxU2 = -1e+30;
    /*OUT: {
    Reverse<--,>}*/
    float u2;
    /*OUT: {
    Reverse<--,>}*/
    float minRho = 1e+30;
    /*OUT: {
    Reverse<--,>}*/
    float maxRho = -1e+30;
    /*OUT: {
    Reverse<--,>}*/
    float rho;
    /*OUT: {
    Reverse<--,>}*/
    float mass = 0;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 3962_0;>}*/
    for (i = (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))); i < (0 + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 150 * (1 * 120) * (1 * 120))); i += N_CELL_ENTRIES) {
        /*OUT: {
        Reverse<--, 3962_0;>}*/
        rho = +((grid[(C + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
        /*OUT: {
        Reverse<--, 3962_0;>}*/
        if (rho < minRho) {
            /*OUT: {
            Reverse<--, 4118_0; 3962_0;>}*/
            minRho = rho;
        }
        /*OUT: {
        Reverse<--, 3962_0;>}*/
        if (rho > maxRho) {
            /*OUT: {
            Reverse<--, 4121_0; 3962_0;>}*/
            maxRho = rho;
        }
        /*OUT: {
        Reverse<--, 3962_0;>}*/
        mass += rho;
        /*OUT: {
        Reverse<--, 3962_0;>}*/
        if (((*((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & OBSTACLE)) {
            /*OUT: {
            Reverse<--, 4140_0; 3962_0;>}*/
            nObstacleCells++;
        } else {
            /*OUT: {
            Reverse<--, 4140_1; 3962_0;>}*/
            if (((*((unsigned int *) ((void *) (&(((grid[(FLAGS + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]))))))) & ACCEL)) {
                /*OUT: {
                Reverse<--, 4157_0; 4140_1; 3962_0;>}*/
                nAccelCells++;
            } else {
                /*OUT: {
                Reverse<--, 4157_1; 4140_1; 3962_0;>}*/
                nFluidCells++;
            }
            /*OUT: {
            Reverse<--, 4140_1; 3962_0;>}*/
            ux = +((grid[(E + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(W + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            /*OUT: {
            Reverse<--, 4140_1; 3962_0;>}*/
            uy = +((grid[(N + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(S + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SE + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SW + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            /*OUT: {
            Reverse<--, 4140_1; 3962_0;>}*/
            uz = +((grid[(T + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(B + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(NT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(NB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ST + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(SB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(ET + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(EB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) + ((grid[(WT + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i])) - ((grid[(WB + N_CELL_ENTRIES * (0 + 0 * (1 * 120) + 0 * (1 * 120) * (1 * 120))) + i]));
            /*OUT: {
            Reverse<--, 4140_1; 3962_0;>}*/
            u2 = (ux * ux + uy * uy + uz * uz) / (rho * rho);
            /*OUT: {
            Reverse<--, 4140_1; 3962_0;>}*/
            if (u2 < minU2) {
                /*OUT: {
                Reverse<--, 4412_0; 4140_1; 3962_0;>}*/
                minU2 = u2;
            }
            /*OUT: {
            Reverse<--, 4140_1; 3962_0;>}*/
            if (u2 > maxU2) {
                /*OUT: {
                Reverse<--, 4415_0; 4140_1; 3962_0;>}*/
                maxU2 = u2;
            }
        }
    }
    /*OUT: {
    Reverse<--, 3962_1;>}*/
    double _imopVarPre182;
    /*OUT: {
    Reverse<--, 3962_1;>}*/
    double _imopVarPre183;
    /*OUT: {
    Reverse<--, 3962_1;>}*/
    _imopVarPre182 = sqrt(maxU2);
    /*OUT: {
    Reverse<--, 3962_1;>}*/
    /*OUT: {
    Reverse<--, 3962_1;>}*/
    _imopVarPre183 = sqrt(minU2);
    /*OUT: {
    Reverse<--, 3962_1;>}*/
    /*OUT: {
    Reverse<--, 3962_1;>}*/
    printf("LBM_showGridStatistics:\n" "\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n" "\tminRho: %8.4f maxRho: %8.4f mass: %e\n" "\tminU: %e maxU: %e\n\n", nObstacleCells, nAccelCells, nFluidCells, minRho, maxRho, mass, _imopVarPre183, _imopVarPre182);
    /*OUT: {
    Reverse<--, 3962_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void storeValue(FILE *file, float *v) {
    /*OUT: {
    Reverse<--,>}*/
    const int litteBigEndianTest = 1;
    /*OUT: {
    Reverse<--,>}*/
    if ((*((unsigned char *) &litteBigEndianTest)) == 0) {
        /*OUT: {
        Reverse<--, 4442_0;>}*/
        const char *vPtr = (char *) v;
        /*OUT: {
        Reverse<--, 4442_0;>}*/
        char buffer[sizeof(float)];
        /*OUT: {
        Reverse<--, 4442_0;>}*/
        int i;
        /*OUT: {
        Reverse<--, 4442_0;>}*/
        /*OUT: {
        Reverse<--, 4442_0;>}*/
        /*OUT: {
        Reverse<--, 4447_0; 4442_0;>}*/
        for (i = 0; i < sizeof(float); i++) {
            /*OUT: {
            Reverse<--, 4447_0; 4442_0;>}*/
            buffer[i] = vPtr[sizeof(float) - i - 1];
        }
        /*OUT: {
        Reverse<--, 4447_1; 4442_0;>}*/
        unsigned long int _imopVarPre185;
        /*OUT: {
        Reverse<--, 4447_1; 4442_0;>}*/
        _imopVarPre185 = sizeof(float);
        /*OUT: {
        Reverse<--, 4447_1; 4442_0;>}*/
        fwrite(buffer, _imopVarPre185, 1, file);
        /*OUT: {
        Reverse<--, 4447_1; 4442_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 4442_1;>}*/
        unsigned long int _imopVarPre187;
        /*OUT: {
        Reverse<--, 4442_1;>}*/
        _imopVarPre187 = sizeof(float);
        /*OUT: {
        Reverse<--, 4442_1;>}*/
        fwrite(v, _imopVarPre187, 1, file);
        /*OUT: {
        Reverse<--, 4442_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void loadValue(FILE *file, float *v) {
    /*OUT: {
    Reverse<--,>}*/
    const int litteBigEndianTest = 1;
    /*OUT: {
    Reverse<--,>}*/
    if ((*((unsigned char *) &litteBigEndianTest)) == 0) {
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        char *vPtr = (char *) v;
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        char buffer[sizeof(float)];
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        int i;
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        unsigned long int _imopVarPre189;
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        _imopVarPre189 = sizeof(float);
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        fread(buffer, _imopVarPre189, 1, file);
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        /*OUT: {
        Reverse<--, 4474_0;>}*/
        /*OUT: {
        Reverse<--, 4487_0; 4474_0;>}*/
        for (i = 0; i < sizeof(float); i++) {
            /*OUT: {
            Reverse<--, 4487_0; 4474_0;>}*/
            vPtr[i] = buffer[sizeof(float) - i - 1];
        }
    } else {
        /*OUT: {
        Reverse<--, 4474_1;>}*/
        unsigned long int _imopVarPre191;
        /*OUT: {
        Reverse<--, 4474_1;>}*/
        _imopVarPre191 = sizeof(float);
        /*OUT: {
        Reverse<--, 4474_1;>}*/
        fread(v, _imopVarPre191, 1, file);
        /*OUT: {
        Reverse<--, 4474_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void LBM_storeVelocityField(LBM_Grid grid, const char *filename , const int binary) {
    /*OUT: {
    Reverse<--,>}*/
    int x;
    /*OUT: {
    Reverse<--,>}*/
    int y;
    /*OUT: {
    Reverse<--,>}*/
    int z;
    /*OUT: {
    Reverse<--,>}*/
    float rho;
    /*OUT: {
    Reverse<--,>}*/
    float ux;
    /*OUT: {
    Reverse<--,>}*/
    float uy;
    /*OUT: {
    Reverse<--,>}*/
    float uz;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre198;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre199;
    /*OUT: {
    Reverse<--,>}*/
    struct __sFILE *_imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre198 = binary;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre198) {
        /*OUT: {
        Reverse<--, 4516_0;>}*/
        _imopVarPre199 = "wb";
    } else {
        /*OUT: {
        Reverse<--, 4516_1;>}*/
        _imopVarPre199 = "w";
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre200 = fopen(filename, _imopVarPre199);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    FILE *file = _imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 4533_1; 4529_0;>}*/
    for (z = 0; z < 150; z++) {
        /*OUT: {
        Reverse<--, 4529_0;>}*/
        /*OUT: {
        Reverse<--, 4529_0;>}*/
        /*OUT: {
        Reverse<--, 4537_1; 4533_0; 4529_0;>}*/
        for (y = 0; y < (1 * 120); y++) {
            /*OUT: {
            Reverse<--, 4533_0; 4529_0;>}*/
            /*OUT: {
            Reverse<--, 4533_0; 4529_0;>}*/
            /*OUT: {
            Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
            for (x = 0; x < (1 * 120); x++) {
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                rho = +(grid[(C + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                ux = +(grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                uy = +(grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                uz = +(grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                ux /= rho;
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                uy /= rho;
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                uz /= rho;
                /*OUT: {
                Reverse<--, 4537_0; 4533_0; 4529_0;>}*/
                if (binary) {
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    float *_imopVarPre202;
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    _imopVarPre202 = &ux;
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    storeValue(file, _imopVarPre202);
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    float *_imopVarPre204;
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    _imopVarPre204 = &uy;
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    storeValue(file, _imopVarPre204);
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    float *_imopVarPre206;
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    _imopVarPre206 = &uz;
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                    storeValue(file, _imopVarPre206);
                    /*OUT: {
                    Reverse<--, 4896_0; 4537_0; 4533_0; 4529_0;>}*/
                } else {
                    /*OUT: {
                    Reverse<--, 4896_1; 4537_0; 4533_0; 4529_0;>}*/
                    fprintf(file, "%e %e %e\n", ux, uy, uz);
                    /*OUT: {
                    Reverse<--, 4896_1; 4537_0; 4533_0; 4529_0;>}*/
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 4529_1;>}*/
    fclose(file);
    /*OUT: {
    Reverse<--, 4529_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void LBM_compareVelocityField(LBM_Grid grid, const char *filename , const int binary) {
    /*OUT: {
    Reverse<--,>}*/
    int x;
    /*OUT: {
    Reverse<--,>}*/
    int y;
    /*OUT: {
    Reverse<--,>}*/
    int z;
    /*OUT: {
    Reverse<--,>}*/
    float rho;
    /*OUT: {
    Reverse<--,>}*/
    float ux;
    /*OUT: {
    Reverse<--,>}*/
    float uy;
    /*OUT: {
    Reverse<--,>}*/
    float uz;
    /*OUT: {
    Reverse<--,>}*/
    float fileUx;
    /*OUT: {
    Reverse<--,>}*/
    float fileUy;
    /*OUT: {
    Reverse<--,>}*/
    float fileUz;
    /*OUT: {
    Reverse<--,>}*/
    float dUx;
    /*OUT: {
    Reverse<--,>}*/
    float dUy;
    /*OUT: {
    Reverse<--,>}*/
    float dUz;
    /*OUT: {
    Reverse<--,>}*/
    float diff2;
    /*OUT: {
    Reverse<--,>}*/
    float maxDiff2 = -1e+30;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre213;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre214;
    /*OUT: {
    Reverse<--,>}*/
    struct __sFILE *_imopVarPre215;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre213 = binary;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre213) {
        /*OUT: {
        Reverse<--, 4954_0;>}*/
        _imopVarPre214 = "rb";
    } else {
        /*OUT: {
        Reverse<--, 4954_1;>}*/
        _imopVarPre214 = "r";
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre215 = fopen(filename, _imopVarPre214);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    FILE *file = _imopVarPre215;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 4971_1; 4967_0;>}*/
    for (z = 0; z < 150; z++) {
        /*OUT: {
        Reverse<--, 4967_0;>}*/
        /*OUT: {
        Reverse<--, 4967_0;>}*/
        /*OUT: {
        Reverse<--, 4975_1; 4971_0; 4967_0;>}*/
        for (y = 0; y < (1 * 120); y++) {
            /*OUT: {
            Reverse<--, 4971_0; 4967_0;>}*/
            /*OUT: {
            Reverse<--, 4971_0; 4967_0;>}*/
            /*OUT: {
            Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
            for (x = 0; x < (1 * 120); x++) {
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                rho = +(grid[(C + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                ux = +(grid[(E + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(W + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                uy = +(grid[(N + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(S + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SE + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SW + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                uz = +(grid[(T + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(B + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(NT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(NB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ST + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(SB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(ET + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(EB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) + (grid[(WT + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]) - (grid[(WB + N_CELL_ENTRIES * (x + y * (1 * 120) + z * (1 * 120) * (1 * 120)))]);
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                ux /= rho;
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                uy /= rho;
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                uz /= rho;
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                if (binary) {
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    float *_imopVarPre217;
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    _imopVarPre217 = &fileUx;
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    loadValue(file, _imopVarPre217);
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    float *_imopVarPre219;
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    _imopVarPre219 = &fileUy;
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    loadValue(file, _imopVarPre219);
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    float *_imopVarPre221;
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    _imopVarPre221 = &fileUz;
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                    loadValue(file, _imopVarPre221);
                    /*OUT: {
                    Reverse<--, 5334_0; 4975_0; 4971_0; 4967_0;>}*/
                } else {
                    /*OUT: {
                    Reverse<--, 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                    if (sizeof(float) == sizeof(double)) {
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        float *_imopVarPre225;
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        float *_imopVarPre226;
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        float *_imopVarPre227;
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        _imopVarPre225 = &fileUz;
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        _imopVarPre226 = &fileUy;
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        _imopVarPre227 = &fileUx;
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        fscanf(file, "%lf %lf %lf\n", _imopVarPre227, _imopVarPre226, _imopVarPre225);
                        /*OUT: {
                        Reverse<--, 5359_0; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                    } else {
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        float *_imopVarPre231;
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        float *_imopVarPre232;
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        float *_imopVarPre233;
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        _imopVarPre231 = &fileUz;
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        _imopVarPre232 = &fileUy;
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        _imopVarPre233 = &fileUx;
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                        fscanf(file, "%f %f %f\n", _imopVarPre233, _imopVarPre232, _imopVarPre231);
                        /*OUT: {
                        Reverse<--, 5359_1; 5334_1; 4975_0; 4971_0; 4967_0;>}*/
                    }
                }
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                dUx = ux - fileUx;
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                dUy = uy - fileUy;
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                dUz = uz - fileUz;
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                diff2 = dUx * dUx + dUy * dUy + dUz * dUz;
                /*OUT: {
                Reverse<--, 4975_0; 4971_0; 4967_0;>}*/
                if (diff2 > maxDiff2) {
                    /*OUT: {
                    Reverse<--, 5396_0; 4975_0; 4971_0; 4967_0;>}*/
                    maxDiff2 = diff2;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    double _imopVarPre240;
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    int _imopVarPre241;
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    char *_imopVarPre242;
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    double _imopVarPre243;
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    _imopVarPre240 = sqrt(maxDiff2);
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    _imopVarPre241 = _imopVarPre240 > 1e-5;
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    if (_imopVarPre241) {
        /*OUT: {
        Reverse<--, 5411_0; 4967_1;>}*/
        _imopVarPre242 = "##### ERROR #####";
    } else {
        /*OUT: {
        Reverse<--, 5411_1; 4967_1;>}*/
        _imopVarPre242 = "OK";
    }
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    _imopVarPre243 = sqrt(maxDiff2);
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    printf("LBM_compareVelocityField: maxDiff = %e  ==>  %s\n\n", _imopVarPre243, _imopVarPre242);
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    /*OUT: {
    Reverse<--, 4967_1;>}*/
    fclose(file);
    /*OUT: {
    Reverse<--, 4967_1;>}*/
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
        Reverse<--, 5434_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 5434_1;>}*/
    /*OUT: {
    Reverse<--, 5434_1;>}*/
    /*OUT: {
    Reverse<--, 5437_0; 5434_1;>}*/
    for (p = string_array; *p; p++) {
        /*OUT: {
        Reverse<--, 5437_0; 5434_1;>}*/
        char *_imopVarPre245;
        /*OUT: {
        Reverse<--, 5437_0; 5434_1;>}*/
        _imopVarPre245 = *p;
        /*OUT: {
        Reverse<--, 5437_0; 5434_1;>}*/
        free(_imopVarPre245);
        /*OUT: {
        Reverse<--, 5437_0; 5434_1;>}*/
    }
    /*OUT: {
    Reverse<--, 5437_1; 5434_1;>}*/
    free(string_array);
    /*OUT: {
    Reverse<--, 5437_1; 5434_1;>}*/
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
    Reverse<--, 5461_0;>}*/
    for (i = 0; in[i]; i++) {
        /*OUT: {
        Reverse<--, 5461_0;>}*/
        if (in[i] == ',') {
            /*OUT: {
            Reverse<--, 5464_0; 5461_0;>}*/
            count++;
        }
    }
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    unsigned long int _imopVarPre248;
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    void *_imopVarPre249;
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    _imopVarPre248 = (count + 1) * sizeof(char *);
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    _imopVarPre249 = malloc(_imopVarPre248);
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    ret = (char **) _imopVarPre249;
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    substring = in;
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    /*OUT: {
    Reverse<--, 5461_1;>}*/
    /*OUT: {
    Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
    for (i = 0; i < count; i++) {
        /*OUT: {
        Reverse<--, 5483_0; 5461_1;>}*/
        char *substring_end;
        /*OUT: {
        Reverse<--, 5483_0; 5461_1;>}*/
        int substring_length;
        /*OUT: {
        Reverse<--, 5483_0; 5461_1;>}*/
        int _imopVarPre251;
        /*OUT: {
        Reverse<--, 5483_0; 5461_1;>}*/
        substring_end = substring;
        /*OUT: {
        Reverse<--, 5483_0; 5461_1;>}*/
        _imopVarPre251 = (*substring_end != ',');
        /*OUT: {
        Reverse<--, 5483_0; 5461_1;>}*/
        if (_imopVarPre251) {
            /*OUT: {
            Reverse<--, 5493_0; 5483_0; 5461_1;>}*/
            _imopVarPre251 = (*substring_end != 0);
        }
        /*OUT: {
        Reverse<--, 5483_0; 5461_1;>}*/
        for (; _imopVarPre251; ) {
            /*OUT: {
            Reverse<--, 5497_0; 5483_0; 5461_1;>}*/
            ;
            /*OUT: {
            Reverse<--, 5497_0; 5483_0; 5461_1;>}*/
            substring_end++;
            /*OUT: {
            Reverse<--, 5497_0; 5483_0; 5461_1;>}*/
            _imopVarPre251 = (*substring_end != ',');
            /*OUT: {
            Reverse<--, 5497_0; 5483_0; 5461_1;>}*/
            if (_imopVarPre251) {
                /*OUT: {
                Reverse<--, 5504_0; 5497_0; 5483_0; 5461_1;>}*/
                _imopVarPre251 = (*substring_end != 0);
            }
        }
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        substring_length = substring_end - substring;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        int _imopVarPre254;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        void *_imopVarPre255;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        _imopVarPre254 = substring_length + 1;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        _imopVarPre255 = malloc(_imopVarPre254);
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        ret[i] = (char *) _imopVarPre255;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        char *_imopVarPre261;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        unsigned int _imopVarPre262;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        char *_imopVarPre263;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        _imopVarPre261 = ret[i];
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        _imopVarPre262 = __builtin_object_size(_imopVarPre261, 0);
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        _imopVarPre263 = ret[i];
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        __builtin___memcpy_chk(_imopVarPre263, substring, substring_length, _imopVarPre262);
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        ret[i][substring_length] = 0;
        /*OUT: {
        Reverse<--, 5497_1; 5483_0; 5461_1;>}*/
        substring = substring_end + 1;
    }
    /*OUT: {
    Reverse<--, 5483_1; 5461_1;>}*/
    ret[i] = ((void *) 0);
    /*OUT: {
    Reverse<--, 5483_1; 5461_1;>}*/
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
    Reverse<--, 5566_0;>}*/
    for (; ap->argn < ap->argc; ap->argn++) {
        /*OUT: {
        Reverse<--, 5566_0;>}*/
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
        Reverse<--, 5571_0;>}*/
        fprintf(__stderrp, "delete_argument\n");
        /*OUT: {
        Reverse<--, 5571_0;>}*/
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
        Reverse<--, 5582_0;>}*/
        fprintf(__stderrp, "next_argument\n");
        /*OUT: {
        Reverse<--, 5582_0;>}*/
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
    char *_imopVarPre264;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre264 = get_argument(ap);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *ret = _imopVarPre264;
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
    unsigned long int _imopVarPre267;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre268;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre267 = sizeof(struct pb_Parameters);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre268 = malloc(_imopVarPre267);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre268;
    /*OUT: {
    Reverse<--,>}*/
    ret->outFile = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre271;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre272;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre271 = sizeof(char *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre272 = malloc(_imopVarPre271);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles = (char **) _imopVarPre272;
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles[0] = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre275;
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre276;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre275 = *_argc;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre276 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    initialize_argparse(_imopVarPre276, _imopVarPre275, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre279;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre280;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre279 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre280 = is_end_of_arguments(_imopVarPre279);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    while (!_imopVarPre280) {
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        struct argparse *_imopVarPre282;
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        char *_imopVarPre283;
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        _imopVarPre282 = &ap;
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        _imopVarPre283 = get_argument(_imopVarPre282);
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        char *arg = _imopVarPre283;
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        int _imopVarPre286;
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        int _imopVarPre287;
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        _imopVarPre286 = (arg[0] == '-');
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        if (_imopVarPre286) {
            /*OUT: {
            Reverse<--, 5687_0; 5669_0;>}*/
            _imopVarPre287 = (arg[1] != 0);
            /*OUT: {
            Reverse<--, 5687_0; 5669_0;>}*/
            if (_imopVarPre287) {
                /*OUT: {
                Reverse<--, 5692_0; 5687_0; 5669_0;>}*/
                _imopVarPre287 = (arg[2] == 0);
            }
            /*OUT: {
            Reverse<--, 5687_0; 5669_0;>}*/
            _imopVarPre286 = _imopVarPre287;
        }
        /*OUT: {
        Reverse<--, 5669_0;>}*/
        if (_imopVarPre286) {
            /*OUT: {
            Reverse<--, 5699_0; 5669_0;>}*/
            struct argparse *_imopVarPre289;
            /*OUT: {
            Reverse<--, 5699_0; 5669_0;>}*/
            _imopVarPre289 = &ap;
            /*OUT: {
            Reverse<--, 5699_0; 5669_0;>}*/
            delete_argument(_imopVarPre289);
            /*OUT: {
            Reverse<--, 5699_0; 5669_0;>}*/
            /*OUT: {
            Reverse<--, 5699_0; 5669_0;>}*/
            switch (arg[1]) {
                /*OUT: {
                Reverse<--, 5709_0; 5699_0; 5669_0;>}*/
                case 'o': ;
                /*OUT: {
                Reverse<--, 5709_0; 5699_0; 5669_0;>}*/
                struct argparse *_imopVarPre291;
                /*OUT: {
                Reverse<--, 5709_0; 5699_0; 5669_0;>}*/
                int _imopVarPre292;
                /*OUT: {
                Reverse<--, 5709_0; 5699_0; 5669_0;>}*/
                _imopVarPre291 = &ap;
                /*OUT: {
                Reverse<--, 5709_0; 5699_0; 5669_0;>}*/
                _imopVarPre292 = is_end_of_arguments(_imopVarPre291);
                /*OUT: {
                Reverse<--, 5709_0; 5699_0; 5669_0;>}*/
                /*OUT: {
                Reverse<--, 5709_0; 5699_0; 5669_0;>}*/
                if (_imopVarPre292) {
                    /*OUT: {
                    Reverse<--, 5721_0; 5709_0; 5699_0; 5669_0;>}*/
                    err_message = "Expecting file name after '-o'\n";
                    /*OUT: {
                    Reverse<--, 5721_0; 5709_0; 5699_0; 5669_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                char *_imopVarPre294;
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                _imopVarPre294 = ret->outFile;
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                free(_imopVarPre294);
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                struct argparse *_imopVarPre299;
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                char *_imopVarPre300;
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                char *_imopVarPre301;
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                _imopVarPre299 = &ap;
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                _imopVarPre300 = consume_argument(_imopVarPre299);
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                _imopVarPre301 = strdup(_imopVarPre300);
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                ret->outFile = _imopVarPre301;
                /*OUT: {
                Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 5709_2; 5699_0; 5669_0;>}*/
                case 'i': ;
                /*OUT: {
                Reverse<--, 5709_2; 5699_0; 5669_0;>}*/
                struct argparse *_imopVarPre303;
                /*OUT: {
                Reverse<--, 5709_2; 5699_0; 5669_0;>}*/
                int _imopVarPre304;
                /*OUT: {
                Reverse<--, 5709_2; 5699_0; 5669_0;>}*/
                _imopVarPre303 = &ap;
                /*OUT: {
                Reverse<--, 5709_2; 5699_0; 5669_0;>}*/
                _imopVarPre304 = is_end_of_arguments(_imopVarPre303);
                /*OUT: {
                Reverse<--, 5709_2; 5699_0; 5669_0;>}*/
                /*OUT: {
                Reverse<--, 5709_2; 5699_0; 5669_0;>}*/
                if (_imopVarPre304) {
                    /*OUT: {
                    Reverse<--, 5764_0; 5709_2; 5699_0; 5669_0;>}*/
                    err_message = "Expecting file name after '-i'\n";
                    /*OUT: {
                    Reverse<--, 5764_0; 5709_2; 5699_0; 5669_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                struct argparse *_imopVarPre309;
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                char *_imopVarPre310;
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                char **_imopVarPre311;
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                _imopVarPre309 = &ap;
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                _imopVarPre310 = consume_argument(_imopVarPre309);
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                _imopVarPre311 = read_string_array(_imopVarPre310);
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                ret->inpFiles = _imopVarPre311;
                /*OUT: {
                Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 5709_1; 5699_0; 5669_0;>}*/
                case '-': goto end_of_options;
                /*OUT: {
                Reverse<--, 5709_3; 5699_0; 5669_0;>}*/
                default: err_message = "Unexpected command-line parameter\n";
                /*OUT: {
                Reverse<--, 5709_3; 5699_0; 5669_0;>}*/
                goto error;
            }
        } else {
            /*OUT: {
            Reverse<--, 5699_1; 5669_0;>}*/
            struct argparse *_imopVarPre313;
            /*OUT: {
            Reverse<--, 5699_1; 5669_0;>}*/
            _imopVarPre313 = &ap;
            /*OUT: {
            Reverse<--, 5699_1; 5669_0;>}*/
            next_argument(_imopVarPre313);
            /*OUT: {
            Reverse<--, 5699_1; 5669_0;>}*/
        }
        /*OUT: {
        Reverse<--, 5699_1; 5669_0;>
        Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>
        Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
        _imopVarPre279 = &ap;
        /*OUT: {
        Reverse<--, 5699_1; 5669_0;>
        Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>
        Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
        _imopVarPre280 = is_end_of_arguments(_imopVarPre279);
        /*OUT: {
        Reverse<--, 5699_1; 5669_0;>
        Reverse<--, 5721_1; 5709_0; 5699_0; 5669_0;>
        Reverse<--, 5764_1; 5709_2; 5699_0; 5669_0;>}*/
    }
    /*OUT: {
    Reverse<--, 5669_1;>
    Reverse<--, 5709_1; 5699_0; 5669_0;>}*/
    end_of_options: *_argc = ap.argc;
    /*OUT: {
    Reverse<--, 5669_1;>
    Reverse<--, 5709_1; 5699_0; 5669_0;>}*/
    struct argparse *_imopVarPre315;
    /*OUT: {
    Reverse<--, 5669_1;>
    Reverse<--, 5709_1; 5699_0; 5669_0;>}*/
    _imopVarPre315 = &ap;
    /*OUT: {
    Reverse<--, 5669_1;>
    Reverse<--, 5709_1; 5699_0; 5669_0;>}*/
    finalize_argparse(_imopVarPre315);
    /*OUT: {
    Reverse<--, 5669_1;>
    Reverse<--, 5709_1; 5699_0; 5669_0;>}*/
    /*OUT: {
    Reverse<--, 5669_1;>
    Reverse<--, 5709_1; 5699_0; 5669_0;>}*/
    return ret;
    /*OUT: {
    Reverse<--, 5709_3; 5699_0; 5669_0;>
    Reverse<--, 5721_0; 5709_0; 5699_0; 5669_0;>
    Reverse<--, 5764_0; 5709_2; 5699_0; 5669_0;>}*/
    error: fputs(err_message, __stderrp);
    /*OUT: {
    Reverse<--, 5709_3; 5699_0; 5669_0;>
    Reverse<--, 5721_0; 5709_0; 5699_0; 5669_0;>
    Reverse<--, 5764_0; 5709_2; 5699_0; 5669_0;>}*/
    /*OUT: {
    Reverse<--, 5709_3; 5699_0; 5669_0;>
    Reverse<--, 5721_0; 5709_0; 5699_0; 5669_0;>
    Reverse<--, 5764_0; 5709_2; 5699_0; 5669_0;>}*/
    pb_FreeParameters(ret);
    /*OUT: {
    Reverse<--, 5709_3; 5699_0; 5669_0;>
    Reverse<--, 5721_0; 5709_0; 5699_0; 5669_0;>
    Reverse<--, 5764_0; 5709_2; 5699_0; 5669_0;>}*/
    /*OUT: {
    Reverse<--, 5709_3; 5699_0; 5669_0;>
    Reverse<--, 5721_0; 5709_0; 5699_0; 5669_0;>
    Reverse<--, 5764_0; 5709_2; 5699_0; 5669_0;>}*/
    return ((void *) 0);
}
/*OUT: {
Reverse<--,>}*/
void pb_FreeParameters(struct pb_Parameters *p) {
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre317;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre317 = p->outFile;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre317);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char **_imopVarPre319;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre319 = p->inpFiles;
    /*OUT: {
    Reverse<--,>}*/
    free_string_array(_imopVarPre319);
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
    void *_imopVarPre322;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre323;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre322 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre323 = &tv;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre323, _imopVarPre322);
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
        Reverse<--, 5882_0;>}*/
        fputs("Ignoring attempt to start a running timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 5882_0;>}*/
        /*OUT: {
        Reverse<--, 5882_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    timer->state = pb_Timer_RUNNING;
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    void *_imopVarPre326;
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    struct timeval *_imopVarPre327;
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    _imopVarPre326 = ((void *) 0);
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    _imopVarPre327 = &tv;
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    gettimeofday(_imopVarPre327, _imopVarPre326);
    /*OUT: {
    Reverse<--, 5882_1;>}*/
    /*OUT: {
    Reverse<--, 5882_1;>}*/
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
        Reverse<--, 5908_0;>}*/
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 5908_0;>}*/
        /*OUT: {
        Reverse<--, 5908_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    void *_imopVarPre334;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    struct timeval *_imopVarPre335;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    _imopVarPre334 = ((void *) 0);
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    _imopVarPre335 = &tv;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    gettimeofday(_imopVarPre335, _imopVarPre334);
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    unsigned long long int _imopVarPre338;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    unsigned long long int *_imopVarPre339;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    _imopVarPre338 = timer->init;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    _imopVarPre339 = &timer->elapsed;
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    accumulate_time(_imopVarPre339, _imopVarPre338, fini);
    /*OUT: {
    Reverse<--, 5908_1;>}*/
    /*OUT: {
    Reverse<--, 5908_1;>}*/
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
        Reverse<--, 5949_0;>}*/
        fputs("Warning: Timer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 5949_0;>}*/
        /*OUT: {
        Reverse<--, 5949_0;>}*/
        numNotRunning &= 0x1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (subtimer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 5957_0;>}*/
        fputs("Warning: Subtimer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 5957_0;>}*/
        /*OUT: {
        Reverse<--, 5957_0;>}*/
        numNotRunning &= 0x2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (numNotRunning == 0x0) {
        /*OUT: {
        Reverse<--, 5965_0;>}*/
        fputs("Ignoring attempt to stop stopped timer and subtimer\n", __stderrp);
        /*OUT: {
        Reverse<--, 5965_0;>}*/
        /*OUT: {
        Reverse<--, 5965_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    subtimer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    void *_imopVarPre342;
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    struct timeval *_imopVarPre343;
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    _imopVarPre342 = ((void *) 0);
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    _imopVarPre343 = &tv;
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    gettimeofday(_imopVarPre343, _imopVarPre342);
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    if (numNotRunning & 0x2) {
        /*OUT: {
        Reverse<--, 5991_0; 5965_1;>}*/
        unsigned long long int _imopVarPre346;
        /*OUT: {
        Reverse<--, 5991_0; 5965_1;>}*/
        unsigned long long int *_imopVarPre347;
        /*OUT: {
        Reverse<--, 5991_0; 5965_1;>}*/
        _imopVarPre346 = timer->init;
        /*OUT: {
        Reverse<--, 5991_0; 5965_1;>}*/
        _imopVarPre347 = &timer->elapsed;
        /*OUT: {
        Reverse<--, 5991_0; 5965_1;>}*/
        accumulate_time(_imopVarPre347, _imopVarPre346, fini);
        /*OUT: {
        Reverse<--, 5991_0; 5965_1;>}*/
        /*OUT: {
        Reverse<--, 5991_0; 5965_1;>}*/
        timer->init = fini;
    }
    /*OUT: {
    Reverse<--, 5965_1;>}*/
    if (numNotRunning & 0x1) {
        /*OUT: {
        Reverse<--, 6005_0; 5965_1;>}*/
        unsigned long long int _imopVarPre350;
        /*OUT: {
        Reverse<--, 6005_0; 5965_1;>}*/
        unsigned long long int *_imopVarPre351;
        /*OUT: {
        Reverse<--, 6005_0; 5965_1;>}*/
        _imopVarPre350 = subtimer->init;
        /*OUT: {
        Reverse<--, 6005_0; 5965_1;>}*/
        _imopVarPre351 = &subtimer->elapsed;
        /*OUT: {
        Reverse<--, 6005_0; 5965_1;>}*/
        accumulate_time(_imopVarPre351, _imopVarPre350, fini);
        /*OUT: {
        Reverse<--, 6005_0; 5965_1;>}*/
        /*OUT: {
        Reverse<--, 6005_0; 5965_1;>}*/
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
        Reverse<--, 6021_0;>}*/
        fputs("Elapsed time from a running timer is inaccurate\n", __stderrp);
        /*OUT: {
        Reverse<--, 6021_0;>}*/
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
    unsigned long long int _imopVarPre352;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre352 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timers->wall_begin = _imopVarPre352;
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
    Reverse<--, 6048_0;>}*/
    for (n = 0; n < pb_TimerID_LAST; n++) {
        /*OUT: {
        Reverse<--, 6048_0;>}*/
        struct pb_Timer *_imopVarPre354;
        /*OUT: {
        Reverse<--, 6048_0;>}*/
        _imopVarPre354 = &timers->timers[n];
        /*OUT: {
        Reverse<--, 6048_0;>}*/
        pb_ResetTimer(_imopVarPre354);
        /*OUT: {
        Reverse<--, 6048_0;>}*/
        /*OUT: {
        Reverse<--, 6048_0;>}*/
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
        Reverse<--, 6065_0;>}*/
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        /*OUT: {
        Reverse<--, 6065_0;>}*/
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        /*OUT: {
        Reverse<--, 6065_0;>}*/
        if (subtimerlist != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 6071_0; 6065_0;>}*/
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        /*OUT: {
        Reverse<--, 6065_0;>}*/
        if (currSubTimer != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 6076_0; 6065_0;>}*/
            struct pb_Timer *_imopVarPre412;
            /*OUT: {
            Reverse<--, 6076_0; 6065_0;>}*/
            struct pb_Timer *_imopVarPre413;
            /*OUT: {
            Reverse<--, 6076_0; 6065_0;>}*/
            _imopVarPre412 = &currSubTimer->timer;
            /*OUT: {
            Reverse<--, 6076_0; 6065_0;>}*/
            _imopVarPre413 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 6076_0; 6065_0;>}*/
            pb_StopTimerAndSubTimer(_imopVarPre413, _imopVarPre412);
            /*OUT: {
            Reverse<--, 6076_0; 6065_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 6076_1; 6065_0;>}*/
            struct pb_Timer *_imopVarPre415;
            /*OUT: {
            Reverse<--, 6076_1; 6065_0;>}*/
            _imopVarPre415 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 6076_1; 6065_0;>}*/
            pb_StopTimer(_imopVarPre415);
            /*OUT: {
            Reverse<--, 6076_1; 6065_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    timers->current = timer;
    /*OUT: {
    Reverse<--,>}*/
    if (timer != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 6100_0;>}*/
        struct pb_Timer *_imopVarPre417;
        /*OUT: {
        Reverse<--, 6100_0;>}*/
        _imopVarPre417 = &timers->timers[timer];
        /*OUT: {
        Reverse<--, 6100_0;>}*/
        pb_StartTimer(_imopVarPre417);
        /*OUT: {
        Reverse<--, 6100_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    /*OUT: {
    Reverse<--,>}*/
    unsigned long long int _imopVarPre418;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre418 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp wall_end = _imopVarPre418;
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
    Reverse<--, 6163_1; 6140_0; 6127_0;>
    Reverse<--, 6140_1; 6127_0;>
    Reverse<--, 6203_1; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        /*OUT: {
        Reverse<--, 6127_0;>}*/
        struct pb_Timer *_imopVarPre421;
        /*OUT: {
        Reverse<--, 6127_0;>}*/
        double _imopVarPre422;
        /*OUT: {
        Reverse<--, 6127_0;>}*/
        _imopVarPre421 = &t[i];
        /*OUT: {
        Reverse<--, 6127_0;>}*/
        _imopVarPre422 = pb_GetElapsedTime(_imopVarPre421);
        /*OUT: {
        Reverse<--, 6127_0;>}*/
        /*OUT: {
        Reverse<--, 6127_0;>}*/
        if (_imopVarPre422 != 0) {
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            struct pb_Timer *_imopVarPre428;
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            double _imopVarPre429;
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            char *_imopVarPre430;
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            _imopVarPre428 = &t[i];
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            _imopVarPre429 = pb_GetElapsedTime(_imopVarPre428);
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            _imopVarPre430 = categories[i - 1];
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre430, _imopVarPre429);
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            /*OUT: {
            Reverse<--, 6140_0; 6127_0;>}*/
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                /*OUT: {
                Reverse<--, 6163_0; 6140_0; 6127_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 6163_0; 6140_0; 6127_0;>}*/
                maxSubLength = 0;
                /*OUT: {
                Reverse<--, 6163_0; 6140_0; 6127_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                    char *_imopVarPre433;
                    /*OUT: {
                    Reverse<--, 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                    unsigned long int _imopVarPre434;
                    /*OUT: {
                    Reverse<--, 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                    _imopVarPre433 = sub->label;
                    /*OUT: {
                    Reverse<--, 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                    _imopVarPre434 = strlen(_imopVarPre433);
                    /*OUT: {
                    Reverse<--, 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                    /*OUT: {
                    Reverse<--, 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                    if (_imopVarPre434 > maxSubLength) {
                        /*OUT: {
                        Reverse<--, 6181_0; 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                        char *_imopVarPre436;
                        /*OUT: {
                        Reverse<--, 6181_0; 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                        unsigned long int _imopVarPre437;
                        /*OUT: {
                        Reverse<--, 6181_0; 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                        _imopVarPre436 = sub->label;
                        /*OUT: {
                        Reverse<--, 6181_0; 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                        _imopVarPre437 = strlen(_imopVarPre436);
                        /*OUT: {
                        Reverse<--, 6181_0; 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                        /*OUT: {
                        Reverse<--, 6181_0; 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                        maxSubLength = _imopVarPre437;
                    }
                    /*OUT: {
                    Reverse<--, 6170_0; 6163_0; 6140_0; 6127_0;>}*/
                    sub = sub->next;
                }
                /*OUT: {
                Reverse<--, 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                if (maxSubLength <= maxCategoryLength) {
                    /*OUT: {
                    Reverse<--, 6196_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    maxSubLength = maxCategoryLength;
                }
                /*OUT: {
                Reverse<--, 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    struct pb_Timer *_imopVarPre443;
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    double _imopVarPre444;
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    char *_imopVarPre445;
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    _imopVarPre443 = &sub->timer;
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    _imopVarPre444 = pb_GetElapsedTime(_imopVarPre443);
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    _imopVarPre445 = sub->label;
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre445, _imopVarPre444);
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    /*OUT: {
                    Reverse<--, 6203_0; 6170_1; 6163_0; 6140_0; 6127_0;>}*/
                    sub = sub->next;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    struct pb_Timer *_imopVarPre448;
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    double _imopVarPre449;
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    _imopVarPre448 = &t[pb_TimerID_OVERLAP];
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    _imopVarPre449 = pb_GetElapsedTime(_imopVarPre448);
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    if (_imopVarPre449 != 0) {
        /*OUT: {
        Reverse<--, 6235_0; 6127_1;>}*/
        struct pb_Timer *_imopVarPre454;
        /*OUT: {
        Reverse<--, 6235_0; 6127_1;>}*/
        double _imopVarPre455;
        /*OUT: {
        Reverse<--, 6235_0; 6127_1;>}*/
        _imopVarPre454 = &t[pb_TimerID_OVERLAP];
        /*OUT: {
        Reverse<--, 6235_0; 6127_1;>}*/
        _imopVarPre455 = pb_GetElapsedTime(_imopVarPre454);
        /*OUT: {
        Reverse<--, 6235_0; 6127_1;>}*/
        /*OUT: {
        Reverse<--, 6235_0; 6127_1;>}*/
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre455);
        /*OUT: {
        Reverse<--, 6235_0; 6127_1;>}*/
    }
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    /*OUT: {
    Reverse<--, 6127_1;>}*/
    printf("Timer Wall Time: %f\n", walltime);
    /*OUT: {
    Reverse<--, 6127_1;>}*/
}
static LBM_GridPtr srcGrid;
static LBM_GridPtr dstGrid;
struct pb_TimerSet timers;
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int nArgs, char *arg[]) {
    /*OUT: {
    Reverse<--,>}*/
    MAIN_Param param;
    /*OUT: {
    Reverse<--,>}*/
    MAIN_Time time;
    /*OUT: {
    Reverse<--,>}*/
    int t;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet *_imopVarPre463;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre463 = &timers;
    /*OUT: {
    Reverse<--,>}*/
    pb_InitializeTimerSet(_imopVarPre463);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet *_imopVarPre465;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre465 = &timers;
    /*OUT: {
    Reverse<--,>}*/
    pb_SwitchToTimer(_imopVarPre465, pb_TimerID_COMPUTE);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *params;
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre467;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *_imopVarPre468;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre467 = &nArgs;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre468 = pb_ReadParameters(_imopVarPre467, arg);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    params = _imopVarPre468;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre17 *_imopVarPre470;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre470 = &param;
    /*OUT: {
    Reverse<--,>}*/
    MAIN_parseCommandLine(nArgs, arg, _imopVarPre470, params);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre17 *_imopVarPre472;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre472 = &param;
    /*OUT: {
    Reverse<--,>}*/
    MAIN_printInfo(_imopVarPre472);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre17 *_imopVarPre474;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre474 = &param;
    /*OUT: {
    Reverse<--,>}*/
    MAIN_initialize(_imopVarPre474);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre14 *_imopVarPre476;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre476 = &time;
    /*OUT: {
    Reverse<--,>}*/
    MAIN_startClock(_imopVarPre476);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 6329_0;>}*/
    for (t = 1; t <= param.nTimeSteps; t++) {
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        if (param.simType == CHANNEL) {
            /*OUT: {
            Reverse<--, 6331_0; 6329_0;>}*/
            float *_imopVarPre478;
            /*OUT: {
            Reverse<--, 6331_0; 6329_0;>}*/
            _imopVarPre478 = *srcGrid;
            /*OUT: {
            Reverse<--, 6331_0; 6329_0;>}*/
            LBM_handleInOutFlow(_imopVarPre478);
            /*OUT: {
            Reverse<--, 6331_0; 6329_0;>}*/
        }
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        float *_imopVarPre481;
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        float *_imopVarPre482;
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        _imopVarPre481 = *dstGrid;
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        _imopVarPre482 = *srcGrid;
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        LBM_performStreamCollide(_imopVarPre482, _imopVarPre481);
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        float ( **_imopVarPre485 )[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        float ( **_imopVarPre486 )[(150) * (1 * (120)) * (1 * (120)) * N_CELL_ENTRIES];
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        _imopVarPre485 = &dstGrid;
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        _imopVarPre486 = &srcGrid;
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        LBM_swapGrids(_imopVarPre486, _imopVarPre485);
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        /*OUT: {
        Reverse<--, 6329_0;>}*/
        if ((t & 63) == 0) {
            /*OUT: {
            Reverse<--, 6373_0; 6329_0;>}*/
            printf("timestep: %i\n", t);
            /*OUT: {
            Reverse<--, 6373_0; 6329_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    struct stUn_imopVarPre17 *_imopVarPre489;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    struct stUn_imopVarPre14 *_imopVarPre490;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    _imopVarPre489 = &param;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    _imopVarPre490 = &time;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    MAIN_stopClock(_imopVarPre490, _imopVarPre489);
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    struct stUn_imopVarPre17 *_imopVarPre492;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    _imopVarPre492 = &param;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    MAIN_finalize(_imopVarPre492);
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    struct pb_TimerSet *_imopVarPre494;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    _imopVarPre494 = &timers;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    pb_SwitchToTimer(_imopVarPre494, pb_TimerID_NONE);
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    struct pb_TimerSet *_imopVarPre496;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    _imopVarPre496 = &timers;
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    pb_PrintTimerSet(_imopVarPre496);
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    pb_FreeParameters(params);
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    /*OUT: {
    Reverse<--, 6329_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void MAIN_parseCommandLine(int nArgs, char *arg[] , MAIN_Param *param , struct pb_Parameters *params) {
    /*OUT: {
    Reverse<--,>}*/
    struct stat fileStat;
    /*OUT: {
    Reverse<--,>}*/
    if (nArgs < 2) {
        /*OUT: {
        Reverse<--, 6426_0;>}*/
        printf("syntax: lbm <time steps>\n");
        /*OUT: {
        Reverse<--, 6426_0;>}*/
        /*OUT: {
        Reverse<--, 6426_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 6426_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre498;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre499;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre498 = arg[1];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre499 = atoi(_imopVarPre498);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    param->nTimeSteps = _imopVarPre499;
    /*OUT: {
    Reverse<--,>}*/
    if (params->inpFiles[0] != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        param->obstacleFilename = params->inpFiles[0];
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        struct stat *_imopVarPre503;
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        char *_imopVarPre504;
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        int _imopVarPre505;
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        _imopVarPre503 = &fileStat;
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        _imopVarPre504 = param->obstacleFilename;
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        _imopVarPre505 = stat(_imopVarPre504, _imopVarPre503);
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        if (_imopVarPre505 != 0) {
            /*OUT: {
            Reverse<--, 6469_0; 6452_0;>}*/
            char *_imopVarPre507;
            /*OUT: {
            Reverse<--, 6469_0; 6452_0;>}*/
            _imopVarPre507 = param->obstacleFilename;
            /*OUT: {
            Reverse<--, 6469_0; 6452_0;>}*/
            printf("MAIN_parseCommandLine: cannot stat obstacle file '%s'\n", _imopVarPre507);
            /*OUT: {
            Reverse<--, 6469_0; 6452_0;>}*/
            /*OUT: {
            Reverse<--, 6469_0; 6452_0;>}*/
            exit(1);
            /*OUT: {
            Reverse<--, 6469_0; 6452_0;>}*/
        }
        /*OUT: {
        Reverse<--, 6452_0;>}*/
        if (fileStat.st_size != (1 * 120) * (1 * 120) * 150 + ((1 * 120) + 1) * 150) {
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            int _imopVarPre511;
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            int _imopVarPre512;
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            char *_imopVarPre513;
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            _imopVarPre511 = (1 * 120) * (1 * 120) * 150 + ((1 * 120) + 1) * 150;
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            _imopVarPre512 = (int) fileStat.st_size;
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            _imopVarPre513 = param->obstacleFilename;
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            printf("MAIN_parseCommandLine:\n" "\tsize of file '%s' is %i bytes\n" "\texpected size is %i bytes\n", _imopVarPre513, _imopVarPre512, _imopVarPre511);
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
            exit(1);
            /*OUT: {
            Reverse<--, 6487_0; 6452_0;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 6452_1;>}*/
        param->obstacleFilename = ((void *) 0);
    }
    /*OUT: {
    Reverse<--,>}*/
    param->resultFilename = params->outFile;
    /*OUT: {
    Reverse<--,>}*/
    param->action = STORE;
    /*OUT: {
    Reverse<--,>}*/
    param->simType = LDC;
}
/*OUT: {
Reverse<--,>}*/
void MAIN_printInfo(const MAIN_Param *param) {
    /*OUT: {
    Reverse<--,>}*/
    const char actionString[3][32] = {"nothing", "compare" , "store"};
    /*OUT: {
    Reverse<--,>}*/
    const char simTypeString[3][32] = {"lid-driven cavity", "channel flow"};
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre523;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre524;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre525;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre526;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre527;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre528;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre529;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre530;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre531;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre523 = (param->obstacleFilename == ((void *) 0));
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre523) {
        /*OUT: {
        Reverse<--, 6536_0;>}*/
        _imopVarPre524 = "<none>";
    } else {
        /*OUT: {
        Reverse<--, 6536_1;>}*/
        _imopVarPre524 = param->obstacleFilename;
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre525 = simTypeString[param->simType];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre526 = actionString[param->action];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre527 = param->resultFilename;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre528 = param->nTimeSteps;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre529 = 1e-6 * (1 * 120) * (1 * 120) * 150;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre530 = (1 * 120);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre531 = (1 * 120);
    /*OUT: {
    Reverse<--,>}*/
    printf("MAIN_printInfo:\n" "\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n" "\tnTimeSteps     : %i\n" "\tresult file    : %s\n" "\taction         : %s\n" "\tsimulation type: %s\n" "\tobstacle file  : %s\n\n", _imopVarPre531, _imopVarPre530, 150, _imopVarPre529, _imopVarPre528, _imopVarPre527, _imopVarPre526, _imopVarPre525, _imopVarPre524);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
void MAIN_initialize(const MAIN_Param *param) {
    /*OUT: {
    Reverse<--,>}*/
    float **_imopVarPre533;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre533 = (float **) &srcGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_allocateGrid(_imopVarPre533);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    float **_imopVarPre535;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre535 = (float **) &dstGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_allocateGrid(_imopVarPre535);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    float *_imopVarPre537;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre537 = *srcGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_initializeGrid(_imopVarPre537);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    float *_imopVarPre539;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre539 = *dstGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_initializeGrid(_imopVarPre539);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (param->obstacleFilename != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        char *_imopVarPre542;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        float *_imopVarPre543;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        _imopVarPre542 = param->obstacleFilename;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        _imopVarPre543 = *srcGrid;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        LBM_loadObstacleFile(_imopVarPre543, _imopVarPre542);
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        char *_imopVarPre546;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        float *_imopVarPre547;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        _imopVarPre546 = param->obstacleFilename;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        _imopVarPre547 = *dstGrid;
        /*OUT: {
        Reverse<--, 6600_0;>}*/
        LBM_loadObstacleFile(_imopVarPre547, _imopVarPre546);
        /*OUT: {
        Reverse<--, 6600_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (param->simType == CHANNEL) {
        /*OUT: {
        Reverse<--, 6623_0;>}*/
        float *_imopVarPre549;
        /*OUT: {
        Reverse<--, 6623_0;>}*/
        _imopVarPre549 = *srcGrid;
        /*OUT: {
        Reverse<--, 6623_0;>}*/
        LBM_initializeSpecialCellsForChannel(_imopVarPre549);
        /*OUT: {
        Reverse<--, 6623_0;>}*/
        /*OUT: {
        Reverse<--, 6623_0;>}*/
        float *_imopVarPre551;
        /*OUT: {
        Reverse<--, 6623_0;>}*/
        _imopVarPre551 = *dstGrid;
        /*OUT: {
        Reverse<--, 6623_0;>}*/
        LBM_initializeSpecialCellsForChannel(_imopVarPre551);
        /*OUT: {
        Reverse<--, 6623_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 6623_1;>}*/
        float *_imopVarPre553;
        /*OUT: {
        Reverse<--, 6623_1;>}*/
        _imopVarPre553 = *srcGrid;
        /*OUT: {
        Reverse<--, 6623_1;>}*/
        LBM_initializeSpecialCellsForLDC(_imopVarPre553);
        /*OUT: {
        Reverse<--, 6623_1;>}*/
        /*OUT: {
        Reverse<--, 6623_1;>}*/
        float *_imopVarPre555;
        /*OUT: {
        Reverse<--, 6623_1;>}*/
        _imopVarPre555 = *dstGrid;
        /*OUT: {
        Reverse<--, 6623_1;>}*/
        LBM_initializeSpecialCellsForLDC(_imopVarPre555);
        /*OUT: {
        Reverse<--, 6623_1;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    float *_imopVarPre557;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre557 = *srcGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_showGridStatistics(_imopVarPre557);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
void MAIN_finalize(const MAIN_Param *param) {
    /*OUT: {
    Reverse<--,>}*/
    float *_imopVarPre559;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre559 = *srcGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_showGridStatistics(_imopVarPre559);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (param->action == COMPARE) {
        /*OUT: {
        Reverse<--, 6673_0;>}*/
        int _imopVarPre563;
        /*OUT: {
        Reverse<--, 6673_0;>}*/
        char *_imopVarPre564;
        /*OUT: {
        Reverse<--, 6673_0;>}*/
        float *_imopVarPre565;
        /*OUT: {
        Reverse<--, 6673_0;>}*/
        _imopVarPre563 = (-1);
        /*OUT: {
        Reverse<--, 6673_0;>}*/
        _imopVarPre564 = param->resultFilename;
        /*OUT: {
        Reverse<--, 6673_0;>}*/
        _imopVarPre565 = *srcGrid;
        /*OUT: {
        Reverse<--, 6673_0;>}*/
        LBM_compareVelocityField(_imopVarPre565, _imopVarPre564, _imopVarPre563);
        /*OUT: {
        Reverse<--, 6673_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (param->action == STORE) {
        /*OUT: {
        Reverse<--, 6689_0;>}*/
        int _imopVarPre569;
        /*OUT: {
        Reverse<--, 6689_0;>}*/
        char *_imopVarPre570;
        /*OUT: {
        Reverse<--, 6689_0;>}*/
        float *_imopVarPre571;
        /*OUT: {
        Reverse<--, 6689_0;>}*/
        _imopVarPre569 = (-1);
        /*OUT: {
        Reverse<--, 6689_0;>}*/
        _imopVarPre570 = param->resultFilename;
        /*OUT: {
        Reverse<--, 6689_0;>}*/
        _imopVarPre571 = *srcGrid;
        /*OUT: {
        Reverse<--, 6689_0;>}*/
        LBM_storeVelocityField(_imopVarPre571, _imopVarPre570, _imopVarPre569);
        /*OUT: {
        Reverse<--, 6689_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    float **_imopVarPre573;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre573 = (float **) &srcGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_freeGrid(_imopVarPre573);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    float **_imopVarPre575;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre575 = (float **) &dstGrid;
    /*OUT: {
    Reverse<--,>}*/
    LBM_freeGrid(_imopVarPre575);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
void MAIN_startClock(MAIN_Time *time) {
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre577;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre577 = sysconf(3);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    time->timeScale = 1.0 / _imopVarPre577;
    /*OUT: {
    Reverse<--,>}*/
    struct tms *_imopVarPre579;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre580;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre579 = &(time->timeStart);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre580 = times(_imopVarPre579);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    time->tickStart = _imopVarPre580;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void MAIN_stopClock(MAIN_Time *time, const MAIN_Param *param) {
    /*OUT: {
    Reverse<--,>}*/
    struct tms *_imopVarPre582;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre583;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre582 = &(time->timeStop);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre583 = times(_imopVarPre582);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    time->tickStop = _imopVarPre583;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre589;
    /*OUT: {
    Reverse<--,>}*/
    float _imopVarPre590;
    /*OUT: {
    Reverse<--,>}*/
    float _imopVarPre591;
    /*OUT: {
    Reverse<--,>}*/
    float _imopVarPre592;
    /*OUT: {
    Reverse<--,>}*/
    float _imopVarPre593;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre589 = 1.0e-6 * (1 * 120) * (1 * 120) * 150 * param->nTimeSteps / (time->tickStop - time->tickStart) / time->timeScale;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre590 = (time->tickStop - time->tickStart) * time->timeScale;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre591 = (time->timeStop.tms_utime - time->timeStart.tms_utime + time->timeStop.tms_stime - time->timeStart.tms_stime) * time->timeScale;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre592 = (time->timeStop.tms_stime - time->timeStart.tms_stime) * time->timeScale;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre593 = (time->timeStop.tms_utime - time->timeStart.tms_utime) * time->timeScale;
    /*OUT: {
    Reverse<--,>}*/
    printf("MAIN_stopClock:\n" "\tusr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\n\n", _imopVarPre593, _imopVarPre592, _imopVarPre591, _imopVarPre590, _imopVarPre589);
    /*OUT: {
    Reverse<--,>}*/
}
