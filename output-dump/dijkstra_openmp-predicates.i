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
int *dijkstra_distance(int ohd[6][6]);
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v);
void init(int ohd[6][6]);
void timestamp(void );
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int i4_huge = 2147483647;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int *mind;
    /*OUT: {
    Reverse<--,>}*/
    int ohd[6][6];
    /*OUT: {
    Reverse<--,>}*/
    timestamp();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  C version\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  Use Dijkstra's algorithm to determine the minimum\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  distance from node 0 to each node in a graph,\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  given the distances between each pair of nodes.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  Although a very small example is considered, we\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  demonstrate the use of OpenMP directives for\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  parallel execution.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    init(ohd);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "  Distance matrix:\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 153_1; 150_0;>}*/
    for (i = 0; i < 6; i++) {
        /*OUT: {
        Reverse<--, 150_0;>}*/
        /*OUT: {
        Reverse<--, 150_0;>}*/
        /*OUT: {
        Reverse<--, 153_0; 150_0;>}*/
        for (j = 0; j < 6; j++) {
            /*OUT: {
            Reverse<--, 153_0; 150_0;>}*/
            if (ohd[i][j] == i4_huge) {
                /*OUT: {
                Reverse<--, 157_0; 153_0; 150_0;>}*/
                fprintf(__stdoutp, "  Inf");
                /*OUT: {
                Reverse<--, 157_0; 153_0; 150_0;>}*/
            } else {
                /*OUT: {
                Reverse<--, 157_1; 153_0; 150_0;>}*/
                int _imopVarPre18;
                /*OUT: {
                Reverse<--, 157_1; 153_0; 150_0;>}*/
                _imopVarPre18 = ohd[i][j];
                /*OUT: {
                Reverse<--, 157_1; 153_0; 150_0;>}*/
                fprintf(__stdoutp, "  %3d", _imopVarPre18);
                /*OUT: {
                Reverse<--, 157_1; 153_0; 150_0;>}*/
            }
        }
        /*OUT: {
        Reverse<--, 153_1; 150_0;>}*/
        fprintf(__stdoutp, "\n");
        /*OUT: {
        Reverse<--, 153_1; 150_0;>}*/
    }
    /*OUT: {
    Reverse<--, 150_1;>}*/
    mind = dijkstra_distance(ohd);
    /*OUT: {
    Reverse<--, 150_1;>}*/
    /*OUT: {
    Reverse<--, 150_1;>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--, 150_1;>}*/
    /*OUT: {
    Reverse<--, 150_1;>}*/
    fprintf(__stdoutp, "  Minimum distances from node 0:\n");
    /*OUT: {
    Reverse<--, 150_1;>}*/
    /*OUT: {
    Reverse<--, 150_1;>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--, 150_1;>}*/
    /*OUT: {
    Reverse<--, 150_1;>}*/
    /*OUT: {
    Reverse<--, 150_1;>}*/
    /*OUT: {
    Reverse<--, 200_0; 150_1;>}*/
    for (i = 0; i < 6; i++) {
        /*OUT: {
        Reverse<--, 200_0; 150_1;>}*/
        int _imopVarPre20;
        /*OUT: {
        Reverse<--, 200_0; 150_1;>}*/
        _imopVarPre20 = mind[i];
        /*OUT: {
        Reverse<--, 200_0; 150_1;>}*/
        fprintf(__stdoutp, "  %2d  %2d\n", i, _imopVarPre20);
        /*OUT: {
        Reverse<--, 200_0; 150_1;>}*/
    }
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    free(mind);
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    fprintf(__stdoutp, "  Normal end of execution.\n");
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    fprintf(__stdoutp, "\n");
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    timestamp();
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    /*OUT: {
    Reverse<--, 200_1; 150_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
int *dijkstra_distance(int ohd[6][6]) {
    /*OUT: {
    Reverse<--,>}*/
    int *connected;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int i4_huge = 2147483647;
    /*OUT: {
    Reverse<--,>}*/
    int md;
    /*OUT: {
    Reverse<--,>}*/
    int *mind;
    /*OUT: {
    Reverse<--,>}*/
    int mv;
    /*OUT: {
    Reverse<--,>}*/
    int my_first;
    /*OUT: {
    Reverse<--,>}*/
    int my_id;
    /*OUT: {
    Reverse<--,>}*/
    int my_last;
    /*OUT: {
    Reverse<--,>}*/
    int my_md;
    /*OUT: {
    Reverse<--,>}*/
    int my_mv;
    /*OUT: {
    Reverse<--,>}*/
    int my_step;
    /*OUT: {
    Reverse<--,>}*/
    int nth;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre23;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre24;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre23 = 6 * sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre24 = malloc(_imopVarPre23);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    connected = (int *) _imopVarPre24;
    /*OUT: {
    Reverse<--,>}*/
    connected[0] = 1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 273_0;>}*/
    for (i = 1; i < 6; i++) {
        /*OUT: {
        Reverse<--, 273_0;>}*/
        connected[i] = 0;
    }
    /*OUT: {
    Reverse<--, 273_1;>}*/
    unsigned long int _imopVarPre27;
    /*OUT: {
    Reverse<--, 273_1;>}*/
    void *_imopVarPre28;
    /*OUT: {
    Reverse<--, 273_1;>}*/
    _imopVarPre27 = 6 * sizeof(int);
    /*OUT: {
    Reverse<--, 273_1;>}*/
    _imopVarPre28 = malloc(_imopVarPre27);
    /*OUT: {
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 273_1;>}*/
    mind = (int *) _imopVarPre28;
    /*OUT: {
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 273_1;>}*/
    /*OUT: {
    Reverse<--, 291_0; 273_1;>}*/
    for (i = 0; i < 6; i++) {
        /*OUT: {
        Reverse<--, 291_0; 273_1;>}*/
        mind[i] = ohd[0][i];
    }
#pragma omp parallel private(my_first, my_id, my_last, my_md, my_mv, my_step) shared(connected, md, mind, mv, nth, ohd)
    {
        /*OUT: {
        Reverse<603,>}*/
        my_id = omp_get_thread_num();
        /*OUT: {
        Reverse<603,>}*/
        /*OUT: {
        Reverse<603,>}*/
        nth = omp_get_num_threads();
        /*OUT: {
        Reverse<603,>}*/
        /*OUT: {
        Reverse<603,>}*/
        my_first = (my_id * 6) / nth;
        /*OUT: {
        Reverse<603,>}*/
        my_last = ((my_id + 1) * 6) / nth - 1;
#pragma omp single nowait
        {
            /*OUT: {
            Reverse<603,>}*/
            printf("\n");
            /*OUT: {
            Reverse<603,>}*/
            /*OUT: {
            Reverse<603,>}*/
            printf("  P%d: Parallel region begins with %d threads\n", my_id, nth);
            /*OUT: {
            Reverse<603,>}*/
            /*OUT: {
            Reverse<603,>}*/
            printf("\n");
            /*OUT: {
            Reverse<603,>}*/
        }
        /*OUT: {
        Reverse<603,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<332,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<332,>}*/
        fprintf(__stdoutp, "  P%d:  First=%d  Last=%d\n", my_id, my_first, my_last);
        /*OUT: {
        Reverse<332,>}*/
        /*OUT: {
        Reverse<332,>}*/
        /*OUT: {
        Reverse<332,>
        Reverse<380,>}*/
        /*OUT: {
        Reverse<380,>}*/
        for (my_step = 1; my_step < 6; my_step++) {
#pragma omp single nowait
            {
                /*OUT: {
                Reverse<332, 339_0;>
                Reverse<380, 339_0;>}*/
                md = i4_huge;
                /*OUT: {
                Reverse<332, 339_0;>
                Reverse<380, 339_0;>}*/
                mv = -1;
            }
            /*OUT: {
            Reverse<332, 339_0;>
            Reverse<380, 339_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<345,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<345,>}*/
            int *_imopVarPre31;
            /*OUT: {
            Reverse<345,>}*/
            int *_imopVarPre32;
            /*OUT: {
            Reverse<345,>}*/
            _imopVarPre31 = &my_mv;
            /*OUT: {
            Reverse<345,>}*/
            _imopVarPre32 = &my_md;
            /*OUT: {
            Reverse<345,>}*/
            find_nearest(my_first, my_last, mind, connected, _imopVarPre32, _imopVarPre31);
            /*OUT: {
            Reverse<345,>}*/
            /*OUT: {
            Reverse<345,>}*/
            // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
            {
                /*OUT: {
                Reverse<345,>}*/
                if (my_md < md) {
                    /*OUT: {
                    Reverse<345, 357_0;>}*/
                    md = my_md;
                    /*OUT: {
                    Reverse<345, 357_0;>}*/
                    mv = my_mv;
                }
            }
            /*OUT: {
            Reverse<345,>}*/
            // #pragma omp dummyFlush CRITICAL_END
            /*OUT: {
            Reverse<345,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<362,>}*/
#pragma omp barrier
#pragma omp single nowait
            {
                /*OUT: {
                Reverse<362,>}*/
                if (mv != -1) {
                    /*OUT: {
                    Reverse<362, 363_0;>}*/
                    connected[mv] = 1;
                    /*OUT: {
                    Reverse<362, 363_0;>}*/
                    printf("  P%d: Connecting node %d.\n", my_id, mv);
                    /*OUT: {
                    Reverse<362, 363_0;>}*/
                }
            }
            /*OUT: {
            Reverse<362,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<372,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<372,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<373,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<373,>}*/
            if (mv != -1) {
                /*OUT: {
                Reverse<373, 374_0;>}*/
                update_mind(my_first, my_last, mv, connected, ohd, mind);
                /*OUT: {
                Reverse<373, 374_0;>}*/
            }
            /*OUT: {
            Reverse<373,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<380,>}*/
#pragma omp barrier
        }
#pragma omp single nowait
        {
            /*OUT: {
            Reverse<332, 339_1;>
            Reverse<380, 339_1;>}*/
            printf("\n");
            /*OUT: {
            Reverse<332, 339_1;>
            Reverse<380, 339_1;>}*/
            /*OUT: {
            Reverse<332, 339_1;>
            Reverse<380, 339_1;>}*/
            printf("  P%d: Exiting parallel region.\n", my_id);
            /*OUT: {
            Reverse<332, 339_1;>
            Reverse<380, 339_1;>}*/
        }
        /*OUT: {
        Reverse<332, 339_1;>
        Reverse<380, 339_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<391,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 291_1; 273_1;>}*/
    free(connected);
    /*OUT: {
    Reverse<--, 291_1; 273_1;>}*/
    /*OUT: {
    Reverse<--, 291_1; 273_1;>}*/
    return mind;
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
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int i4_huge = 2147483647;
    /*OUT: {
    Reverse<--,>}*/
    *d = i4_huge;
    /*OUT: {
    Reverse<--,>}*/
    *v = -1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 412_0;>}*/
    for (i = s; i <= e; i++) {
        /*OUT: {
        Reverse<--, 412_0;>}*/
        int _imopVarPre34;
        /*OUT: {
        Reverse<--, 412_0;>}*/
        _imopVarPre34 = !connected[i];
        /*OUT: {
        Reverse<--, 412_0;>}*/
        if (_imopVarPre34) {
            /*OUT: {
            Reverse<--, 418_0; 412_0;>}*/
            _imopVarPre34 = (mind[i] < *d);
        }
        /*OUT: {
        Reverse<--, 412_0;>}*/
        if (_imopVarPre34) {
            /*OUT: {
            Reverse<--, 423_0; 412_0;>}*/
            *d = mind[i];
            /*OUT: {
            Reverse<--, 423_0; 412_0;>}*/
            *v = i;
        }
    }
    /*OUT: {
    Reverse<--, 412_1;>}*/
    return;
}
/*OUT: {
Reverse<--,>}*/
void init(int ohd[6][6]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int i4_huge = 2147483647;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 438_1; 435_0;>}*/
    for (i = 0; i < 6; i++) {
        /*OUT: {
        Reverse<--, 435_0;>}*/
        /*OUT: {
        Reverse<--, 435_0;>}*/
        /*OUT: {
        Reverse<--, 438_0; 435_0;>}*/
        for (j = 0; j < 6; j++) {
            /*OUT: {
            Reverse<--, 438_0; 435_0;>}*/
            if (i == j) {
                /*OUT: {
                Reverse<--, 440_0; 438_0; 435_0;>}*/
                ohd[i][i] = 0;
            } else {
                /*OUT: {
                Reverse<--, 440_1; 438_0; 435_0;>}*/
                ohd[i][j] = i4_huge;
            }
        }
    }
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[0][1] = ohd[1][0] = 40;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[0][2] = ohd[2][0] = 15;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[1][2] = ohd[2][1] = 20;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[1][3] = ohd[3][1] = 10;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[1][4] = ohd[4][1] = 25;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[2][3] = ohd[3][2] = 100;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[1][5] = ohd[5][1] = 6;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    ohd[4][5] = ohd[5][4] = 8;
    /*OUT: {
    Reverse<--, 435_1;>}*/
    return;
}
void timestamp() {
    /*OUT: {
    Reverse<--,>}*/
    static char time_buffer[40];
    /*OUT: {
    Reverse<--,>}*/
    const struct tm *tm;
    /*OUT: {
    Reverse<--,>}*/
    size_t len;
    /*OUT: {
    Reverse<--,>}*/
    time_t now;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre36;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre37;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre36 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre37 = time(_imopVarPre36);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    now = _imopVarPre37;
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre39;
    /*OUT: {
    Reverse<--,>}*/
    struct tm *_imopVarPre40;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre39 = &now;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre40 = localtime(_imopVarPre39);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    tm = _imopVarPre40;
    /*OUT: {
    Reverse<--,>}*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("%s\n", time_buffer);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return;
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
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int i4_huge = 2147483647;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 548_0;>}*/
    for (i = s; i <= e; i++) {
        /*OUT: {
        Reverse<--, 548_0;>}*/
        if (!connected[i]) {
            /*OUT: {
            Reverse<--, 551_0; 548_0;>}*/
            if (ohd[mv][i] < i4_huge) {
                /*OUT: {
                Reverse<--, 554_0; 551_0; 548_0;>}*/
                if (mind[mv] + ohd[mv][i] < mind[i]) {
                    /*OUT: {
                    Reverse<--, 559_0; 554_0; 551_0; 548_0;>}*/
                    mind[i] = mind[mv] + ohd[mv][i];
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 548_1;>}*/
    return;
}
