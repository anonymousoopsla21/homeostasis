
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __darwin_size_t size_t;
/*[]*/
void free(void *);
/*[]*/
void *malloc(size_t __size);
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
extern FILE *__stdoutp;
/*[]*/
int fprintf(FILE *, const char *, ...);
/*[]*/
int printf(const char *, ...);
/*[]*/
typedef __darwin_time_t time_t;
/*[]*/
struct tm *localtime(const time_t *);
/*[]*/
size_t strftime(char *, size_t  , const char * , const struct tm *);
/*[]*/
time_t time(time_t *);
/*[]*/
extern int omp_get_num_threads(void );
/*[]*/
extern int omp_get_thread_num(void );
/*[]*/
int main(int argc, char **argv);
/*[]*/
int *dijkstra_distance(int ohd[6][6]);
/*[]*/
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v);
/*[]*/
void init(int ohd[6][6]);
/*[]*/
void timestamp(void );
/*[]*/
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]);
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int i4_huge = 2147483647;
    /*[]*/
    int j;
    /*[]*/
    int *mind;
    /*[]*/
    int ohd[6][6];
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  C version\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  Use Dijkstra's algorithm to determine the minimum\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  distance from node 0 to each node in a graph,\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  given the distances between each pair of nodes.\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  Although a very small example is considered, we\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  demonstrate the use of OpenMP directives for\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  parallel execution.\n");
    /*[]*/
    /*[]*/
    init(ohd);
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  Distance matrix:\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 6; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < 6; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            if (ohd[i][j] == i4_huge) {
            /*[]*/
                /*[]*/
                fprintf(__stdoutp, "  Inf");
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                int _imopVarPre18;
                /*[]*/
                _imopVarPre18 = ohd[i][j];
                /*[]*/
                fprintf(__stdoutp, "  %3d", _imopVarPre18);
                /*[]*/
            }
        }
        /*[]*/
        fprintf(__stdoutp, "\n");
        /*[]*/
    }
    /*[]*/
    mind = dijkstra_distance(ohd);
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  Minimum distances from node 0:\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 6; i++) {
    /*[]*/
        /*[]*/
        int _imopVarPre20;
        /*[]*/
        _imopVarPre20 = mind[i];
        /*[]*/
        fprintf(__stdoutp, "  %2d  %2d\n", i, _imopVarPre20);
        /*[]*/
    }
    /*[]*/
    free(mind);
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "  Normal end of execution.\n");
    /*[]*/
    /*[]*/
    fprintf(__stdoutp, "\n");
    /*[]*/
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    return 0;
}
/*[]*/
/*[]*/
int *dijkstra_distance(int ohd[6][6]) {
/*[]*/
    /*[]*/
    int *connected;
    /*[]*/
    int i;
    /*[]*/
    int i4_huge = 2147483647;
    /*[]*/
    int md;
    /*[]*/
    int *mind;
    /*[]*/
    int mv;
    /*[]*/
    int my_first;
    /*[]*/
    int my_id;
    /*[]*/
    int my_last;
    /*[]*/
    int my_md;
    /*[]*/
    int my_mv;
    /*[]*/
    int my_step;
    /*[]*/
    int nth;
    /*[]*/
    unsigned long int _imopVarPre23;
    /*[]*/
    void *_imopVarPre24;
    /*[]*/
    _imopVarPre23 = 6 * sizeof(int);
    /*[]*/
    _imopVarPre24 = malloc(_imopVarPre23);
    /*[]*/
    /*[]*/
    connected = (int *) _imopVarPre24;
    /*[]*/
    connected[0] = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < 6; i++) {
    /*[]*/
        /*[]*/
        connected[i] = 0;
    }
    /*[]*/
    unsigned long int _imopVarPre27;
    /*[]*/
    void *_imopVarPre28;
    /*[]*/
    _imopVarPre27 = 6 * sizeof(int);
    /*[]*/
    _imopVarPre28 = malloc(_imopVarPre27);
    /*[]*/
    /*[]*/
    mind = (int *) _imopVarPre28;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 6; i++) {
    /*[]*/
        /*[]*/
        mind[i] = ohd[0][i];
    }
    /*[1]*/
#pragma omp parallel private(my_first, my_id, my_last, my_md, my_mv, my_step) shared(connected, md, mind, mv, nth, ohd)
    {
    /*[1]*/
        /*[1]*/
        my_id = omp_get_thread_num();
        /*[1]*/
        /*[1]*/
        nth = omp_get_num_threads();
        /*[1]*/
        /*[1]*/
        my_first = (my_id * 6) / nth;
        /*[1]*/
        my_last = ((my_id + 1) * 6) / nth - 1;
        /*[1]*/
#pragma omp single nowait
        {
        /*[1]*/
            /*[1]*/
            printf("\n");
            /*[1]*/
            /*[1]*/
            printf("  P%d: Parallel region begins with %d threads\n", my_id, nth);
            /*[1]*/
            /*[1]*/
            printf("\n");
            /*[1]*/
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
        /*[2]*/
        fprintf(__stdoutp, "  P%d:  First=%d  Last=%d\n", my_id, my_first, my_last);
        /*[2]*/
        /*[2]*/
        /*[2, 3]*/
        /*[3]*/
        /*[2]*/
        for (my_step = 1; my_step < 6; my_step++) {
        /*[2, 3]*/
            /*[2, 3]*/
#pragma omp single nowait
            {
            /*[2, 3]*/
                /*[2, 3]*/
                md = i4_huge;
                /*[2, 3]*/
                mv = -1;
            }
            /*[2, 3]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2, 3]*/
#pragma omp barrier
            /*[4]*/
            int *_imopVarPre31;
            /*[4]*/
            int *_imopVarPre32;
            /*[4]*/
            _imopVarPre31 = &my_mv;
            /*[4]*/
            _imopVarPre32 = &my_md;
            /*[4]*/
            find_nearest(my_first, my_last, mind, connected, _imopVarPre32, _imopVarPre31);
            /*[4]*/
            /*[4]*/
            // #pragma omp dummyFlush CRITICAL_START
            /*[4]*/
#pragma omp critical
            {
            /*[4]*/
                /*[4]*/
                /*[4]*/
                if (my_md < md) {
                /*[4]*/
                    /*[4]*/
                    md = my_md;
                    /*[4]*/
                    mv = my_mv;
                }
            }
            /*[4]*/
            // #pragma omp dummyFlush CRITICAL_END
            /*[4]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4]*/
#pragma omp barrier
            /*[5]*/
#pragma omp single nowait
            {
            /*[5]*/
                /*[5]*/
                /*[5]*/
                if (mv != -1) {
                /*[5]*/
                    /*[5]*/
                    connected[mv] = 1;
                    /*[5]*/
                    printf("  P%d: Connecting node %d.\n", my_id, mv);
                    /*[5]*/
                }
            }
            /*[5]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[5]*/
#pragma omp barrier
            /*[6]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6]*/
#pragma omp barrier
            /*[7]*/
            /*[7]*/
            if (mv != -1) {
            /*[7]*/
                /*[7]*/
                update_mind(my_first, my_last, mv, connected, ohd, mind);
                /*[7]*/
            }
            /*[7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[7]*/
#pragma omp barrier
        }
        /*[2, 3]*/
#pragma omp single nowait
        {
        /*[2, 3]*/
            /*[2, 3]*/
            printf("\n");
            /*[2, 3]*/
            /*[2, 3]*/
            printf("  P%d: Exiting parallel region.\n", my_id);
            /*[2, 3]*/
        }
        /*[2, 3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2, 3]*/
#pragma omp barrier
    }
    /*[]*/
    free(connected);
    /*[]*/
    /*[]*/
    return mind;
}
/*[4]*/
/*[4]*/
/*[4]*/
/*[4]*/
/*[4]*/
/*[4]*/
/*[4]*/
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v) {
/*[4]*/
    /*[4]*/
    int i;
    /*[4]*/
    int i4_huge = 2147483647;
    /*[4]*/
    *d = i4_huge;
    /*[4]*/
    *v = -1;
    /*[4]*/
    /*[4]*/
    /*[4]*/
    /*[4]*/
    for (i = s; i <= e; i++) {
    /*[4]*/
        /*[4]*/
        int _imopVarPre34;
        /*[4]*/
        _imopVarPre34 = !connected[i];
        /*[4]*/
        /*[4]*/
        if (_imopVarPre34) {
        /*[4]*/
            /*[4]*/
            _imopVarPre34 = (mind[i] < *d);
        }
        /*[4]*/
        /*[4]*/
        if (_imopVarPre34) {
        /*[4]*/
            /*[4]*/
            *d = mind[i];
            /*[4]*/
            *v = i;
        }
    }
    /*[4]*/
    return;
}
/*[]*/
/*[]*/
void init(int ohd[6][6]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int i4_huge = 2147483647;
    /*[]*/
    int j;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 6; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < 6; j++) {
        /*[]*/
            /*[]*/
            /*[]*/
            if (i == j) {
            /*[]*/
                /*[]*/
                ohd[i][i] = 0;
            } else {
            /*[]*/
                /*[]*/
                ohd[i][j] = i4_huge;
            }
        }
    }
    /*[]*/
    ohd[0][1] = ohd[1][0] = 40;
    /*[]*/
    ohd[0][2] = ohd[2][0] = 15;
    /*[]*/
    ohd[1][2] = ohd[2][1] = 20;
    /*[]*/
    ohd[1][3] = ohd[3][1] = 10;
    /*[]*/
    ohd[1][4] = ohd[4][1] = 25;
    /*[]*/
    ohd[2][3] = ohd[3][2] = 100;
    /*[]*/
    ohd[1][5] = ohd[5][1] = 6;
    /*[]*/
    ohd[4][5] = ohd[5][4] = 8;
    /*[]*/
    return;
}
/*[]*/
void timestamp() {
/*[]*/
    /*[]*/
    static char time_buffer[40];
    /*[]*/
    const struct tm *tm;
    /*[]*/
    size_t len;
    /*[]*/
    time_t now;
    /*[]*/
    void *_imopVarPre36;
    /*[]*/
    signed long int _imopVarPre37;
    /*[]*/
    _imopVarPre36 = ((void *) 0);
    /*[]*/
    _imopVarPre37 = time(_imopVarPre36);
    /*[]*/
    /*[]*/
    now = _imopVarPre37;
    /*[]*/
    signed long int *_imopVarPre39;
    /*[]*/
    struct tm *_imopVarPre40;
    /*[]*/
    _imopVarPre39 = &now;
    /*[]*/
    _imopVarPre40 = localtime(_imopVarPre39);
    /*[]*/
    /*[]*/
    tm = _imopVarPre40;
    /*[]*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*[]*/
    /*[]*/
    printf("%s\n", time_buffer);
    /*[]*/
    /*[]*/
    return;
}
/*[7]*/
/*[7]*/
/*[7]*/
/*[7]*/
/*[7]*/
/*[7]*/
/*[7]*/
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]) {
/*[7]*/
    /*[7]*/
    int i;
    /*[7]*/
    int i4_huge = 2147483647;
    /*[7]*/
    /*[7]*/
    /*[7]*/
    /*[7]*/
    for (i = s; i <= e; i++) {
    /*[7]*/
        /*[7]*/
        /*[7]*/
        if (!connected[i]) {
        /*[7]*/
            /*[7]*/
            /*[7]*/
            if (ohd[mv][i] < i4_huge) {
            /*[7]*/
                /*[7]*/
                /*[7]*/
                if (mind[mv] + ohd[mv][i] < mind[i]) {
                /*[7]*/
                    /*[7]*/
                    mind[i] = mind[mv] + ohd[mv][i];
                }
            }
        }
    }
    /*[7]*/
    return;
}
