typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
void free(void *);
void *malloc(size_t __size);
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
int fprintf(FILE *, const char *, ...);
int printf(const char *, ...);
typedef __darwin_time_t time_t;
struct tm *localtime(const time_t *);
size_t strftime(char *, size_t  , const char * , const struct tm *);
time_t time(time_t *);
extern int omp_get_num_threads(void );
extern int omp_get_thread_num(void );
int main(int argc, char **argv);
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v);
void init(int ohd[6][6]);
void timestamp(void );
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]);
int main(int argc, char **argv) {
    int i;
    int i4_huge = 2147483647;
    int j;
    int *mind;
    int ohd[6][6];
    timestamp();
    fprintf(__stdoutp, "\n");
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    fprintf(__stdoutp, "  C version\n");
    fprintf(__stdoutp, "  Use Dijkstra's algorithm to determine the minimum\n");
    fprintf(__stdoutp, "  distance from node 0 to each node in a graph,\n");
    fprintf(__stdoutp, "  given the distances between each pair of nodes.\n");
    fprintf(__stdoutp, "\n");
    fprintf(__stdoutp, "  Although a very small example is considered, we\n");
    fprintf(__stdoutp, "  demonstrate the use of OpenMP directives for\n");
    fprintf(__stdoutp, "  parallel execution.\n");
    init(ohd);
    fprintf(__stdoutp, "\n");
    fprintf(__stdoutp, "  Distance matrix:\n");
    fprintf(__stdoutp, "\n");
    for (i = 0; i < 6; i++) {
        for (j = 0; j < 6; j++) {
            if (ohd[i][j] == i4_huge) {
                fprintf(__stdoutp, "  Inf");
            } else {
                int _imopVarPre18;
                _imopVarPre18 = ohd[i][j];
                fprintf(__stdoutp, "  %3d", _imopVarPre18);
            }
        }
        fprintf(__stdoutp, "\n");
    }
    int *connected;
    int i_imopVar0;
    int i4_huge_imopVar1 = 2147483647;
    int md;
    int *mind_imopVar2;
    int mv;
    int my_first;
    int my_id;
    int my_last;
    int my_md;
    int my_mv;
    int my_step;
    int nth;
    unsigned long int _imopVarPre23;
    void *_imopVarPre24;
    _imopVarPre23 = 6 * sizeof(int);
    _imopVarPre24 = malloc(_imopVarPre23);
    connected = (int *) _imopVarPre24;
    connected[0] = 1;
    for (i_imopVar0 = 1; i_imopVar0 < 6; i_imopVar0++) {
        connected[i_imopVar0] = 0;
    }
    unsigned long int _imopVarPre27;
    void *_imopVarPre28;
    _imopVarPre27 = 6 * sizeof(int);
    _imopVarPre28 = malloc(_imopVarPre27);
    mind_imopVar2 = (int *) _imopVarPre28;
    for (i_imopVar0 = 0; i_imopVar0 < 6; i_imopVar0++) {
        mind_imopVar2[i_imopVar0] = ohd[0][i_imopVar0];
    }
#pragma omp parallel private(my_first, my_id, my_last, my_md, my_mv, my_step) shared(connected, md, mind_imopVar2, mv, nth, ohd)
    {
        my_id = omp_get_thread_num();
        nth = omp_get_num_threads();
        my_first = (my_id * 6) / nth;
        my_last = ((my_id + 1) * 6) / nth - 1;
#pragma omp single nowait
        {
            printf("\n");
            printf("  P%d: Parallel region begins with %d threads\n", my_id, nth);
            printf("\n");
        }
        fprintf(__stdoutp, "  P%d:  First=%d  Last=%d\n", my_id, my_first, my_last);
        for (my_step = 1; my_step < 6; my_step++) {
#pragma omp single nowait
            {
                md = i4_huge_imopVar1;
                mv = -1;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            int *_imopVarPre31;
            int *_imopVarPre32;
            _imopVarPre31 = &my_mv;
            _imopVarPre32 = &my_md;
            find_nearest(my_first, my_last, mind_imopVar2, connected, _imopVarPre32, _imopVarPre31);
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
            {
                if (my_md < md) {
                    md = my_md;
                    mv = my_mv;
                }
            }
// #pragma omp dummyFlush CRITICAL_END
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp single nowait
            {
                if (mv != -1) {
                    connected[mv] = 1;
                    printf("  P%d: Connecting node %d.\n", my_id, mv);
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            if (mv != -1) {
                update_mind(my_first, my_last, mv, connected, ohd, mind_imopVar2);
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        }
#pragma omp single nowait
        {
            printf("\n");
            printf("  P%d: Exiting parallel region.\n", my_id);
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
    }
    free(connected);
    mind_imopVar2 = mind_imopVar2;
    fprintf(__stdoutp, "\n");
    fprintf(__stdoutp, "  Minimum distances from node 0:\n");
    fprintf(__stdoutp, "\n");
    for (i = 0; i < 6; i++) {
        int _imopVarPre20;
        _imopVarPre20 = mind[i];
        fprintf(__stdoutp, "  %2d  %2d\n", i, _imopVarPre20);
    }
    free(mind);
    fprintf(__stdoutp, "\n");
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    fprintf(__stdoutp, "  Normal end of execution.\n");
    fprintf(__stdoutp, "\n");
    timestamp();
    return 0;
}
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v) {
    int i;
    int i4_huge = 2147483647;
    *d = i4_huge;
    *v = -1;
    for (i = s; i <= e; i++) {
        int _imopVarPre34;
        _imopVarPre34 = !connected[i];
        if (_imopVarPre34) {
            _imopVarPre34 = (mind[i] < *d);
        }
        if (_imopVarPre34) {
            *d = mind[i];
            *v = i;
        }
    }
    return;
}
void init(int ohd[6][6]) {
    int i;
    int i4_huge = 2147483647;
    int j;
    for (i = 0; i < 6; i++) {
        for (j = 0; j < 6; j++) {
            if (i == j) {
                ohd[i][i] = 0;
            } else {
                ohd[i][j] = i4_huge;
            }
        }
    }
    ohd[0][1] = ohd[1][0] = 40;
    ohd[0][2] = ohd[2][0] = 15;
    ohd[1][2] = ohd[2][1] = 20;
    ohd[1][3] = ohd[3][1] = 10;
    ohd[1][4] = ohd[4][1] = 25;
    ohd[2][3] = ohd[3][2] = 100;
    ohd[1][5] = ohd[5][1] = 6;
    ohd[4][5] = ohd[5][4] = 8;
    return;
}
void timestamp(void ) {
    static char time_buffer[40];
    const struct tm *tm;
    size_t len;
    time_t now;
    void *_imopVarPre36;
    signed long int _imopVarPre37;
    _imopVarPre36 = ((void *) 0);
    _imopVarPre37 = time(_imopVarPre36);
    now = _imopVarPre37;
    signed long int *_imopVarPre39;
    struct tm *_imopVarPre40;
    _imopVarPre39 = &now;
    _imopVarPre40 = localtime(_imopVarPre39);
    tm = _imopVarPre40;
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    printf("%s\n", time_buffer);
    return;
}
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]) {
    int i;
    int i4_huge = 2147483647;
    for (i = s; i <= e; i++) {
        if (!connected[i]) {
            if (ohd[mv][i] < i4_huge) {
                if (mind[mv] + ohd[mv][i] < mind[i]) {
                    mind[i] = mind[mv] + ohd[mv][i];
                }
            }
        }
    }
    return;
}
