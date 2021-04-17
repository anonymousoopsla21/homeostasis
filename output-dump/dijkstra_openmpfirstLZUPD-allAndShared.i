
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
typedef __darwin_size_t size_t;
/*READ_S: []
WRITE_S: [free]*/
void free(void *);
/*READ_S: []
WRITE_S: [malloc]*/
void *malloc(size_t __size);
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
WRITE_S: [__stdoutp]*/
extern FILE *__stdoutp;
/*READ_S: []
WRITE_S: [fprintf]*/
int fprintf(FILE *, const char *, ...);
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *, ...);
/*READ_S: []
WRITE_S: []*/
typedef __darwin_time_t time_t;
/*READ_S: []
WRITE_S: [localtime]*/
struct tm *localtime(const time_t *);
/*READ_S: []
WRITE_S: [strftime]*/
size_t strftime(char *, size_t  , const char * , const struct tm *);
/*READ_S: []
WRITE_S: [time]*/
time_t time(time_t *);
/*READ_S: []
WRITE_S: [omp_get_num_threads]*/
extern int omp_get_num_threads(void );
/*READ_S: []
WRITE_S: [omp_get_thread_num]*/
extern int omp_get_thread_num(void );
/*READ_S: []
WRITE_S: [main]*/
int main(int argc, char **argv);
/*READ_S: []
WRITE_S: [dijkstra_distance]*/
int *dijkstra_distance(int ohd[6][6]);
/*READ_S: []
WRITE_S: [find_nearest]*/
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v);
/*READ_S: []
WRITE_S: [init]*/
void init(int ohd[6][6]);
/*READ_S: []
WRITE_S: [timestamp]*/
void timestamp(void );
/*READ_S: []
WRITE_S: [update_mind]*/
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [malloc, ohd, my_md, omp_get_thread_num, fprintf, __stdoutp, nth, omp_get_num_threads, _imopVarPre34, dijkstra_distance, i4_huge, strftime, timestamp, md, update_mind, printf, time_buffer, mind, mv, heapCell#1, init, connected, time, localtime, heapCell#2, find_nearest, free, time_buffer.f]
WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1, nth, time_buffer.f, time_buffer]*/
int main(int argc, char **argv) {
/*READ_S: [malloc, ohd, my_md, omp_get_thread_num, fprintf, __stdoutp, nth, omp_get_num_threads, _imopVarPre34, dijkstra_distance, i4_huge, strftime, timestamp, md, update_mind, printf, time_buffer, mind, mv, heapCell#1, init, connected, time, localtime, heapCell#2, find_nearest, free, time_buffer.f]
WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1, nth, time_buffer.f, time_buffer]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int i4_huge = 2147483647;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int *mind;
    /*READ_S: []
    WRITE_S: []*/
    int ohd[6][6];
    /*READ_S: [timestamp]
    WRITE_S: []*/
    timestamp();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  C version\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  Use Dijkstra's algorithm to determine the minimum\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  distance from node 0 to each node in a graph,\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  given the distances between each pair of nodes.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  Although a very small example is considered, we\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  demonstrate the use of OpenMP directives for\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  parallel execution.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [init]
    WRITE_S: []*/
    init(ohd);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  Distance matrix:\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    for (i = 0; i < 6; i++) {
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __stdoutp]
        WRITE_S: []*/
        for (j = 0; j < 6; j++) {
        /*READ_S: [fprintf, __stdoutp]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [fprintf, __stdoutp]
            WRITE_S: []*/
            if (ohd[i][j] == i4_huge) {
            /*READ_S: [fprintf, __stdoutp]
            WRITE_S: []*/
                /*READ_S: [fprintf, __stdoutp]
                WRITE_S: []*/
                fprintf(__stdoutp, "  Inf");
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [fprintf, __stdoutp]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre18;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre18 = ohd[i][j];
                /*READ_S: [fprintf, __stdoutp]
                WRITE_S: []*/
                fprintf(__stdoutp, "  %3d", _imopVarPre18);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: [fprintf, __stdoutp]
        WRITE_S: []*/
        fprintf(__stdoutp, "\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [dijkstra_distance]
    WRITE_S: []*/
    mind = dijkstra_distance(ohd);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  Minimum distances from node 0:\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#2, fprintf, __stdoutp]
    WRITE_S: []*/
    for (i = 0; i < 6; i++) {
    /*READ_S: [heapCell#2, fprintf, __stdoutp]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre20;
        /*READ_S: [heapCell#2]
        WRITE_S: []*/
        _imopVarPre20 = mind[i];
        /*READ_S: [fprintf, __stdoutp]
        WRITE_S: []*/
        fprintf(__stdoutp, "  %2d  %2d\n", i, _imopVarPre20);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [heapCell#2, free]
    WRITE_S: [heapCell#2]*/
    free(mind);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "  Normal end of execution.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stdoutp]
    WRITE_S: []*/
    fprintf(__stdoutp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timestamp]
    WRITE_S: []*/
    timestamp();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [malloc, mind, ohd, my_md, omp_get_thread_num, mv, heapCell#1, nth, fprintf, __stdoutp, omp_get_num_threads, connected, _imopVarPre34, i4_huge, md, heapCell#2, update_mind, find_nearest, free, printf]
WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1, nth]*/
int *dijkstra_distance(int ohd[6][6]) {
/*READ_S: [malloc, mind, ohd, my_md, omp_get_thread_num, mv, heapCell#1, nth, fprintf, __stdoutp, omp_get_num_threads, connected, _imopVarPre34, i4_huge, md, heapCell#2, update_mind, find_nearest, free, printf]
WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1, nth]*/
    /*READ_S: []
    WRITE_S: []*/
    int *connected;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int i4_huge = 2147483647;
    /*READ_S: []
    WRITE_S: []*/
    int md;
    /*READ_S: []
    WRITE_S: []*/
    int *mind;
    /*READ_S: []
    WRITE_S: []*/
    int mv;
    /*READ_S: []
    WRITE_S: []*/
    int my_first;
    /*READ_S: []
    WRITE_S: []*/
    int my_id;
    /*READ_S: []
    WRITE_S: []*/
    int my_last;
    /*READ_S: []
    WRITE_S: []*/
    int my_md;
    /*READ_S: []
    WRITE_S: []*/
    int my_mv;
    /*READ_S: []
    WRITE_S: []*/
    int my_step;
    /*READ_S: []
    WRITE_S: []*/
    int nth;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre23;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre24;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre23 = 6 * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre24 = malloc(_imopVarPre23);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    connected = (int *) _imopVarPre24;
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    connected[0] = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    for (i = 1; i < 6; i++) {
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
        /*READ_S: []
        WRITE_S: [heapCell#1]*/
        connected[i] = 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre27;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre28;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre27 = 6 * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre28 = malloc(_imopVarPre27);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    mind = (int *) _imopVarPre28;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#2]*/
    for (i = 0; i < 6; i++) {
    /*READ_S: []
    WRITE_S: [heapCell#2]*/
        /*READ_S: []
        WRITE_S: [heapCell#2]*/
        mind[i] = ohd[0][i];
    }
    /*READ_S: [mind, ohd, my_md, omp_get_thread_num, mv, heapCell#1, fprintf, __stdoutp, nth, omp_get_num_threads, connected, _imopVarPre34, i4_huge, md, heapCell#2, update_mind, find_nearest, printf]
    WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1, nth]*/
#pragma omp parallel private(my_first, my_id, my_last, my_md, my_mv, my_step) shared(connected, md, mind, mv, nth, ohd)
    {
    /*READ_S: [mind, ohd, my_md, omp_get_thread_num, mv, heapCell#1, fprintf, __stdoutp, nth, omp_get_num_threads, connected, _imopVarPre34, i4_huge, md, heapCell#2, update_mind, find_nearest, printf]
    WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1, nth]*/
        /*READ_S: [omp_get_thread_num]
        WRITE_S: []*/
        my_id = omp_get_thread_num();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [omp_get_num_threads]
        WRITE_S: []*/
        nth = omp_get_num_threads();
        /*READ_S: []
        WRITE_S: [nth]*/
        /*READ_S: [nth]
        WRITE_S: []*/
        my_first = (my_id * 6) / nth;
        /*READ_S: [nth]
        WRITE_S: []*/
        my_last = ((my_id + 1) * 6) / nth - 1;
        /*READ_S: [nth, printf]
        WRITE_S: []*/
#pragma omp single nowait
        {
        /*READ_S: [nth, printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nth, printf]
            WRITE_S: []*/
            printf("  P%d: Parallel region begins with %d threads\n", my_id, nth);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("\n");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [fprintf, __stdoutp]
        WRITE_S: []*/
        fprintf(__stdoutp, "  P%d:  First=%d  Last=%d\n", my_id, my_first, my_last);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [mind, ohd, my_md, mv, heapCell#1, connected, _imopVarPre34, i4_huge, md, heapCell#2, update_mind, find_nearest, printf]
        WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1]*/
        for (my_step = 1; my_step < 6; my_step++) {
        /*READ_S: [mind, ohd, my_md, mv, heapCell#1, connected, _imopVarPre34, i4_huge, md, heapCell#2, update_mind, find_nearest, printf]
        WRITE_S: [my_mv, my_md, md, mv, heapCell#2, heapCell#1]*/
            /*READ_S: [i4_huge]
            WRITE_S: [md, mv]*/
#pragma omp single nowait
            {
            /*READ_S: [i4_huge]
            WRITE_S: [md, mv]*/
                /*READ_S: [i4_huge]
                WRITE_S: [md]*/
                md = i4_huge;
                /*READ_S: []
                WRITE_S: [mv]*/
                mv = -1;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            int *_imopVarPre31;
            /*READ_S: []
            WRITE_S: []*/
            int *_imopVarPre32;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre31 = &my_mv;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre32 = &my_md;
            /*READ_S: [mind, connected, find_nearest]
            WRITE_S: []*/
            find_nearest(my_first, my_last, mind, connected, _imopVarPre32, _imopVarPre31);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush CRITICAL_START
            /*READ_S: [md]
            WRITE_S: [md, mv]*/
#pragma omp critical
            {
            /*READ_S: [md]
            WRITE_S: [md, mv]*/
                /*READ_S: [md]
                WRITE_S: []*/
                /*READ_S: [md]
                WRITE_S: [md, mv]*/
                if (my_md < md) {
                /*READ_S: []
                WRITE_S: [md, mv]*/
                    /*READ_S: []
                    WRITE_S: [md]*/
                    md = my_md;
                    /*READ_S: []
                    WRITE_S: [mv]*/
                    mv = my_mv;
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush CRITICAL_END
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [connected, mv, printf]
            WRITE_S: [heapCell#1]*/
#pragma omp single nowait
            {
            /*READ_S: [connected, mv, printf]
            WRITE_S: [heapCell#1]*/
                /*READ_S: [mv]
                WRITE_S: []*/
                /*READ_S: [connected, mv, printf]
                WRITE_S: [heapCell#1]*/
                if (mv != -1) {
                /*READ_S: [connected, mv, printf]
                WRITE_S: [heapCell#1]*/
                    /*READ_S: [connected, mv]
                    WRITE_S: [heapCell#1]*/
                    connected[mv] = 1;
                    /*READ_S: [mv, printf]
                    WRITE_S: []*/
                    printf("  P%d: Connecting node %d.\n", my_id, mv);
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
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [mv]
            WRITE_S: []*/
            /*READ_S: [ohd, mind, connected, mv, heapCell#2, update_mind, heapCell#1]
            WRITE_S: [heapCell#2]*/
            if (mv != -1) {
            /*READ_S: [ohd, mind, connected, mv, heapCell#2, update_mind, heapCell#1]
            WRITE_S: [heapCell#2]*/
                /*READ_S: [ohd, mind, connected, mv, update_mind]
                WRITE_S: []*/
                update_mind(my_first, my_last, mv, connected, ohd, mind);
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
        /*READ_S: [printf]
        WRITE_S: []*/
#pragma omp single nowait
        {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("  P%d: Exiting parallel region.\n", my_id);
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
    /*READ_S: [heapCell#1, free]
    WRITE_S: [heapCell#1]*/
    free(connected);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return mind;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [_imopVarPre34, my_md, heapCell#2, heapCell#1]
WRITE_S: [my_mv, my_md]*/
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v) {
/*READ_S: [_imopVarPre34, my_md, heapCell#2, heapCell#1]
WRITE_S: [my_mv, my_md]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int i4_huge = 2147483647;
    /*READ_S: []
    WRITE_S: [my_md]*/
    *d = i4_huge;
    /*READ_S: []
    WRITE_S: [my_mv]*/
    *v = -1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [_imopVarPre34, my_md, heapCell#2, heapCell#1]
    WRITE_S: [my_mv, my_md]*/
    for (i = s; i <= e; i++) {
    /*READ_S: [_imopVarPre34, my_md, heapCell#2, heapCell#1]
    WRITE_S: [my_mv, my_md]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre34;
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        _imopVarPre34 = !connected[i];
        /*READ_S: [_imopVarPre34]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre34, my_md, heapCell#2]
        WRITE_S: []*/
        if (_imopVarPre34) {
        /*READ_S: [my_md, heapCell#2]
        WRITE_S: []*/
            /*READ_S: [my_md, heapCell#2]
            WRITE_S: []*/
            _imopVarPre34 = (mind[i] < *d);
        }
        /*READ_S: [_imopVarPre34]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre34, heapCell#2]
        WRITE_S: [my_mv, my_md]*/
        if (_imopVarPre34) {
        /*READ_S: [heapCell#2]
        WRITE_S: [my_mv, my_md]*/
            /*READ_S: [heapCell#2]
            WRITE_S: [my_md]*/
            *d = mind[i];
            /*READ_S: []
            WRITE_S: [my_mv]*/
            *v = i;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
void init(int ohd[6][6]) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int i4_huge = 2147483647;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < 6; i++) {
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
        for (j = 0; j < 6; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (i == j) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                ohd[i][i] = 0;
            } else {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                ohd[i][j] = i4_huge;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    ohd[0][1] = ohd[1][0] = 40;
    /*READ_S: []
    WRITE_S: []*/
    ohd[0][2] = ohd[2][0] = 15;
    /*READ_S: []
    WRITE_S: []*/
    ohd[1][2] = ohd[2][1] = 20;
    /*READ_S: []
    WRITE_S: []*/
    ohd[1][3] = ohd[3][1] = 10;
    /*READ_S: []
    WRITE_S: []*/
    ohd[1][4] = ohd[4][1] = 25;
    /*READ_S: []
    WRITE_S: []*/
    ohd[2][3] = ohd[3][2] = 100;
    /*READ_S: []
    WRITE_S: []*/
    ohd[1][5] = ohd[5][1] = 6;
    /*READ_S: []
    WRITE_S: []*/
    ohd[4][5] = ohd[5][4] = 8;
    /*READ_S: []
    WRITE_S: []*/
    return;
}
/*READ_S: [strftime, time, localtime, time_buffer.f, time_buffer, printf]
WRITE_S: [time_buffer.f, time_buffer]*/
void timestamp() {
/*READ_S: [strftime, time, localtime, time_buffer.f, time_buffer, printf]
WRITE_S: [time_buffer.f, time_buffer]*/
    /*READ_S: []
    WRITE_S: [time_buffer.f, time_buffer]*/
    static char time_buffer[40];
    /*READ_S: []
    WRITE_S: []*/
    const struct tm *tm;
    /*READ_S: []
    WRITE_S: []*/
    size_t len;
    /*READ_S: []
    WRITE_S: []*/
    time_t now;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre36;
    /*READ_S: []
    WRITE_S: []*/
    signed long int _imopVarPre37;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre36 = ((void *) 0);
    /*READ_S: [time]
    WRITE_S: []*/
    _imopVarPre37 = time(_imopVarPre36);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    now = _imopVarPre37;
    /*READ_S: []
    WRITE_S: []*/
    signed long int *_imopVarPre39;
    /*READ_S: []
    WRITE_S: []*/
    struct tm *_imopVarPre40;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre39 = &now;
    /*READ_S: [localtime]
    WRITE_S: []*/
    _imopVarPre40 = localtime(_imopVarPre39);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    tm = _imopVarPre40;
    /*READ_S: [strftime, time_buffer.f, time_buffer]
    WRITE_S: [time_buffer.f]*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [time_buffer.f, printf, time_buffer]
    WRITE_S: [time_buffer.f]*/
    printf("%s\n", time_buffer);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#2, heapCell#1]
WRITE_S: [heapCell#2]*/
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]) {
/*READ_S: [heapCell#2, heapCell#1]
WRITE_S: [heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int i4_huge = 2147483647;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#2, heapCell#1]
    WRITE_S: [heapCell#2]*/
    for (i = s; i <= e; i++) {
    /*READ_S: [heapCell#2, heapCell#1]
    WRITE_S: [heapCell#2]*/
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        /*READ_S: [heapCell#2, heapCell#1]
        WRITE_S: [heapCell#2]*/
        if (!connected[i]) {
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#2]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#2]
            WRITE_S: [heapCell#2]*/
            if (ohd[mv][i] < i4_huge) {
            /*READ_S: [heapCell#2]
            WRITE_S: [heapCell#2]*/
                /*READ_S: [heapCell#2]
                WRITE_S: []*/
                /*READ_S: [heapCell#2]
                WRITE_S: [heapCell#2]*/
                if (mind[mv] + ohd[mv][i] < mind[i]) {
                /*READ_S: [heapCell#2]
                WRITE_S: [heapCell#2]*/
                    /*READ_S: [heapCell#2]
                    WRITE_S: [heapCell#2]*/
                    mind[i] = mind[mv] + ohd[mv][i];
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return;
}
