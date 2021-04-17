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
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int i4_huge = 2147483647;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int j;
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int *mind;
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ohd[6][6];
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    timestamp();
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  C version\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  Use Dijkstra's algorithm to determine the minimum\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  distance from node 0 to each node in a graph,\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  given the distances between each pair of nodes.\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  Although a very small example is considered, we\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  demonstrate the use of OpenMP directives for\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  parallel execution.\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    init(ohd);
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  Distance matrix:\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    for (i = 0; i < 6; i++) {
        /*OUT: [ptsTo(mind) := [nullCell];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(mind) := [nullCell];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(mind) := [nullCell];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        for (j = 0; j < 6; j++) {
            /*OUT: [ptsTo(mind) := [nullCell];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(tm) := [nullCell];
            ptsTo(_imopVarPre36) := [nullCell];
            ptsTo(_imopVarPre39) := [now];
            ptsTo(_imopVarPre40) := [nullCell];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            if (ohd[i][j] == i4_huge) {
                /*OUT: [ptsTo(mind) := [nullCell];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre36) := [nullCell];
                ptsTo(_imopVarPre39) := [now];
                ptsTo(_imopVarPre40) := [nullCell];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                fprintf(__stdoutp, "  Inf");
                /*OUT: [ptsTo(mind) := [nullCell];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre36) := [nullCell];
                ptsTo(_imopVarPre39) := [now];
                ptsTo(_imopVarPre40) := [nullCell];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
            } else {
                /*OUT: [ptsTo(mind) := [nullCell];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre36) := [nullCell];
                ptsTo(_imopVarPre39) := [now];
                ptsTo(_imopVarPre40) := [nullCell];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                int _imopVarPre18;
                /*OUT: [ptsTo(mind) := [nullCell];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre36) := [nullCell];
                ptsTo(_imopVarPre39) := [now];
                ptsTo(_imopVarPre40) := [nullCell];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                _imopVarPre18 = ohd[i][j];
                /*OUT: [ptsTo(mind) := [nullCell];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre36) := [nullCell];
                ptsTo(_imopVarPre39) := [now];
                ptsTo(_imopVarPre40) := [nullCell];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                fprintf(__stdoutp, "  %3d", _imopVarPre18);
                /*OUT: [ptsTo(mind) := [nullCell];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(tm) := [nullCell];
                ptsTo(_imopVarPre36) := [nullCell];
                ptsTo(_imopVarPre39) := [now];
                ptsTo(_imopVarPre40) := [nullCell];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
            }
        }
        /*OUT: [ptsTo(mind) := [nullCell];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        fprintf(__stdoutp, "\n");
        /*OUT: [ptsTo(mind) := [nullCell];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
    }
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    mind = dijkstra_distance(ohd);
    /*OUT: [ptsTo(mind) := [heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  Minimum distances from node 0:\n");
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    for (i = 0; i < 6; i++) {
        /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
        ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        int _imopVarPre20;
        /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
        ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        _imopVarPre20 = mind[i];
        /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
        ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        fprintf(__stdoutp, "  %2d  %2d\n", i, _imopVarPre20);
        /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
        ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(tm) := [nullCell];
        ptsTo(_imopVarPre36) := [nullCell];
        ptsTo(_imopVarPre39) := [now];
        ptsTo(_imopVarPre40) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
    }
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    free(mind);
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "DIJKSTRA_OPENMP\n");
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "  Normal end of execution.\n");
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    fprintf(__stdoutp, "\n");
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell, heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    timestamp();
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(mind) := [nullCell];
    ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    return 0;
}
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd) := [ohd.f];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
int *dijkstra_distance(int ohd[6][6]) {
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int *connected;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int i;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int i4_huge = 2147483647;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int md;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int *mind;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int mv;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int my_first;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int my_id;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int my_last;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int my_md;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int my_mv;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int my_step;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int nth;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    unsigned long int _imopVarPre23;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    void *_imopVarPre24;
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre23 = 6 * sizeof(int);
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre24 = malloc(_imopVarPre23);
    /*OUT: [ptsTo(connected) := [nullCell];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    connected = (int *) _imopVarPre24;
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    connected[0] = 1;
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    for (i = 1; i < 6; i++) {
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [nullCell];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        connected[i] = 0;
    }
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    unsigned long int _imopVarPre27;
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    void *_imopVarPre28;
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre27 = 6 * sizeof(int);
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [nullCell];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre28 = malloc(_imopVarPre27);
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [nullCell];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    mind = (int *) _imopVarPre28;
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    for (i = 0; i < 6; i++) {
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        mind[i] = ohd[0][i];
    }
#pragma omp parallel private(my_first, my_id, my_last, my_md, my_mv, my_step) shared(connected, md, mind, mv, nth, ohd)
    {
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        my_id = omp_get_thread_num();
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        nth = omp_get_num_threads();
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        my_first = (my_id * 6) / nth;
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        my_last = ((my_id + 1) * 6) / nth - 1;
#pragma omp single nowait
        {
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            printf("\n");
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            printf("  P%d: Parallel region begins with %d threads\n", my_id, nth);
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            printf("\n");
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
        }
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
#pragma omp barrier
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        fprintf(__stdoutp, "  P%d:  First=%d  Last=%d\n", my_id, my_first, my_last);
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        for (my_step = 1; my_step < 6; my_step++) {
#pragma omp single nowait
            {
                /*OUT: [ptsTo(connected) := [heapCell#1];
                ptsTo(mind) := [heapCell#2];
                ptsTo(_imopVarPre24) := [heapCell#1];
                ptsTo(_imopVarPre28) := [heapCell#2];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                md = i4_huge;
                /*OUT: [ptsTo(connected) := [heapCell#1];
                ptsTo(mind) := [heapCell#2];
                ptsTo(_imopVarPre24) := [heapCell#1];
                ptsTo(_imopVarPre28) := [heapCell#2];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                mv = -1;
            }
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [nullCell];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            int *_imopVarPre31;
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [nullCell];
            ptsTo(_imopVarPre32) := [nullCell];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            int *_imopVarPre32;
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [nullCell];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            _imopVarPre31 = &my_mv;
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            _imopVarPre32 = &my_md;
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            find_nearest(my_first, my_last, mind, connected, _imopVarPre32, _imopVarPre31);
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
            {
                /*OUT: [ptsTo(connected) := [heapCell#1];
                ptsTo(mind) := [heapCell#2];
                ptsTo(_imopVarPre24) := [heapCell#1];
                ptsTo(_imopVarPre28) := [heapCell#2];
                ptsTo(_imopVarPre31) := [my_mv];
                ptsTo(_imopVarPre32) := [my_md];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                if (my_md < md) {
                    /*OUT: [ptsTo(connected) := [heapCell#1];
                    ptsTo(mind) := [heapCell#2];
                    ptsTo(_imopVarPre24) := [heapCell#1];
                    ptsTo(_imopVarPre28) := [heapCell#2];
                    ptsTo(_imopVarPre31) := [my_mv];
                    ptsTo(_imopVarPre32) := [my_md];
                    ptsTo(__stdoutp) := [nullCell];
                    ptsTo(ohd) := [ohd.f];
                    ptsTo(ohd.f) := [nullCell];
                    ptsTo(heapCell#1) := [nullCell];
                    ptsTo(heapCell#2) := [ohd.f];
                    ]*/
                    md = my_md;
                    /*OUT: [ptsTo(connected) := [heapCell#1];
                    ptsTo(mind) := [heapCell#2];
                    ptsTo(_imopVarPre24) := [heapCell#1];
                    ptsTo(_imopVarPre28) := [heapCell#2];
                    ptsTo(_imopVarPre31) := [my_mv];
                    ptsTo(_imopVarPre32) := [my_md];
                    ptsTo(__stdoutp) := [nullCell];
                    ptsTo(ohd) := [ohd.f];
                    ptsTo(ohd.f) := [nullCell];
                    ptsTo(heapCell#1) := [nullCell];
                    ptsTo(heapCell#2) := [ohd.f];
                    ]*/
                    mv = my_mv;
                }
            }
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            // #pragma omp dummyFlush CRITICAL_END
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
#pragma omp barrier
#pragma omp single nowait
            {
                /*OUT: [ptsTo(connected) := [heapCell#1];
                ptsTo(mind) := [heapCell#2];
                ptsTo(_imopVarPre24) := [heapCell#1];
                ptsTo(_imopVarPre28) := [heapCell#2];
                ptsTo(_imopVarPre31) := [my_mv];
                ptsTo(_imopVarPre32) := [my_md];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                if (mv != -1) {
                    /*OUT: [ptsTo(connected) := [heapCell#1];
                    ptsTo(mind) := [heapCell#2];
                    ptsTo(_imopVarPre24) := [heapCell#1];
                    ptsTo(_imopVarPre28) := [heapCell#2];
                    ptsTo(_imopVarPre31) := [my_mv];
                    ptsTo(_imopVarPre32) := [my_md];
                    ptsTo(__stdoutp) := [nullCell];
                    ptsTo(ohd) := [ohd.f];
                    ptsTo(ohd.f) := [nullCell];
                    ptsTo(heapCell#1) := [nullCell];
                    ptsTo(heapCell#2) := [ohd.f];
                    ]*/
                    connected[mv] = 1;
                    /*OUT: [ptsTo(connected) := [heapCell#1];
                    ptsTo(mind) := [heapCell#2];
                    ptsTo(_imopVarPre24) := [heapCell#1];
                    ptsTo(_imopVarPre28) := [heapCell#2];
                    ptsTo(_imopVarPre31) := [my_mv];
                    ptsTo(_imopVarPre32) := [my_md];
                    ptsTo(__stdoutp) := [nullCell];
                    ptsTo(ohd) := [ohd.f];
                    ptsTo(ohd.f) := [nullCell];
                    ptsTo(heapCell#1) := [nullCell];
                    ptsTo(heapCell#2) := [ohd.f];
                    ]*/
                    printf("  P%d: Connecting node %d.\n", my_id, mv);
                    /*OUT: [ptsTo(connected) := [heapCell#1];
                    ptsTo(mind) := [heapCell#2];
                    ptsTo(_imopVarPre24) := [heapCell#1];
                    ptsTo(_imopVarPre28) := [heapCell#2];
                    ptsTo(_imopVarPre31) := [my_mv];
                    ptsTo(_imopVarPre32) := [my_md];
                    ptsTo(__stdoutp) := [nullCell];
                    ptsTo(ohd) := [ohd.f];
                    ptsTo(ohd.f) := [nullCell];
                    ptsTo(heapCell#1) := [nullCell];
                    ptsTo(heapCell#2) := [ohd.f];
                    ]*/
                }
            }
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            if (mv != -1) {
                /*OUT: [ptsTo(connected) := [heapCell#1];
                ptsTo(mind) := [heapCell#2];
                ptsTo(_imopVarPre24) := [heapCell#1];
                ptsTo(_imopVarPre28) := [heapCell#2];
                ptsTo(_imopVarPre31) := [my_mv];
                ptsTo(_imopVarPre32) := [my_md];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                update_mind(my_first, my_last, mv, connected, ohd, mind);
                /*OUT: [ptsTo(connected) := [heapCell#1];
                ptsTo(mind) := [heapCell#2];
                ptsTo(_imopVarPre24) := [heapCell#1];
                ptsTo(_imopVarPre28) := [heapCell#2];
                ptsTo(_imopVarPre31) := [my_mv];
                ptsTo(_imopVarPre32) := [my_md];
                ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
            }
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(_imopVarPre31) := [my_mv];
            ptsTo(_imopVarPre32) := [my_md];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
#pragma omp barrier
        }
#pragma omp single nowait
        {
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            printf("\n");
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            printf("  P%d: Exiting parallel region.\n", my_id);
            /*OUT: [ptsTo(connected) := [heapCell#1];
            ptsTo(mind) := [heapCell#2];
            ptsTo(_imopVarPre24) := [heapCell#1];
            ptsTo(_imopVarPre28) := [heapCell#2];
            ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
        }
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(connected) := [heapCell#1];
        ptsTo(mind) := [heapCell#2];
        ptsTo(_imopVarPre24) := [heapCell#1];
        ptsTo(_imopVarPre28) := [heapCell#2];
        ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    free(connected);
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(connected) := [heapCell#1];
    ptsTo(mind) := [heapCell#2];
    ptsTo(_imopVarPre24) := [heapCell#1];
    ptsTo(_imopVarPre28) := [heapCell#2];
    ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    return mind;
}
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
ptsTo(mind) := [heapCell#2];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
ptsTo(connected) := [heapCell#1];
ptsTo(mind) := [heapCell#2];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
ptsTo(connected) := [heapCell#1];
ptsTo(d) := [my_md];
ptsTo(mind) := [heapCell#2];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
ptsTo(connected) := [heapCell#1];
ptsTo(d) := [my_md];
ptsTo(mind) := [heapCell#2];
ptsTo(v) := [my_mv];
]*/
void find_nearest(int s, int e , int mind[6] , int connected[6] , int *d , int *v) {
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    int i;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    int i4_huge = 2147483647;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    *d = i4_huge;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    *v = -1;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    for (i = s; i <= e; i++) {
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ptsTo(connected) := [heapCell#1];
        ptsTo(d) := [my_md];
        ptsTo(mind) := [heapCell#2];
        ptsTo(v) := [my_mv];
        ]*/
        int _imopVarPre34;
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ptsTo(connected) := [heapCell#1];
        ptsTo(d) := [my_md];
        ptsTo(mind) := [heapCell#2];
        ptsTo(v) := [my_mv];
        ]*/
        _imopVarPre34 = !connected[i];
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ptsTo(connected) := [heapCell#1];
        ptsTo(d) := [my_md];
        ptsTo(mind) := [heapCell#2];
        ptsTo(v) := [my_mv];
        ]*/
        if (_imopVarPre34) {
            /*OUT: [ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ptsTo(connected) := [heapCell#1];
            ptsTo(d) := [my_md];
            ptsTo(mind) := [heapCell#2];
            ptsTo(v) := [my_mv];
            ]*/
            _imopVarPre34 = (mind[i] < *d);
        }
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ptsTo(connected) := [heapCell#1];
        ptsTo(d) := [my_md];
        ptsTo(mind) := [heapCell#2];
        ptsTo(v) := [my_mv];
        ]*/
        if (_imopVarPre34) {
            /*OUT: [ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ptsTo(connected) := [heapCell#1];
            ptsTo(d) := [my_md];
            ptsTo(mind) := [heapCell#2];
            ptsTo(v) := [my_mv];
            ]*/
            *d = mind[i];
            /*OUT: [ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ptsTo(connected) := [heapCell#1];
            ptsTo(d) := [my_md];
            ptsTo(mind) := [heapCell#2];
            ptsTo(v) := [my_mv];
            ]*/
            *v = i;
        }
    }
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ptsTo(connected) := [heapCell#1];
    ptsTo(d) := [my_md];
    ptsTo(mind) := [heapCell#2];
    ptsTo(v) := [my_mv];
    ]*/
    return;
}
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd) := [ohd.f];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
void init(int ohd[6][6]) {
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int i;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int i4_huge = 2147483647;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int j;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    for (i = 0; i < 6; i++) {
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        for (j = 0; j < 6; j++) {
            /*OUT: [ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            if (i == j) {
                /*OUT: [ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                ohd[i][i] = 0;
            } else {
                /*OUT: [ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                ohd[i][j] = i4_huge;
            }
        }
    }
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[0][1] = ohd[1][0] = 40;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[0][2] = ohd[2][0] = 15;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[1][2] = ohd[2][1] = 20;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[1][3] = ohd[3][1] = 10;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[1][4] = ohd[4][1] = 25;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[2][3] = ohd[3][2] = 100;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[1][5] = ohd[5][1] = 6;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    ohd[4][5] = ohd[5][4] = 8;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    return;
}
void timestamp() {
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    static char time_buffer[40];
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    const struct tm *tm;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    size_t len;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    time_t now;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    void *_imopVarPre36;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    signed long int _imopVarPre37;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre36 = ((void *) 0);
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre37 = time(_imopVarPre36);
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    now = _imopVarPre37;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    signed long int *_imopVarPre39;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [nullCell];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    struct tm *_imopVarPre40;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre39 = &now;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    _imopVarPre40 = localtime(_imopVarPre39);
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    tm = _imopVarPre40;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    printf("%s\n", time_buffer);
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(tm) := [nullCell];
    ptsTo(_imopVarPre36) := [nullCell];
    ptsTo(_imopVarPre39) := [now];
    ptsTo(_imopVarPre40) := [nullCell];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    return;
}
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(connected) := [heapCell#1];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd) := [ohd.f];
ptsTo(connected) := [heapCell#1];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
/*OUT: [ptsTo(__stdoutp) := [nullCell];
ptsTo(ohd) := [ohd.f];
ptsTo(mind) := [heapCell#2];
ptsTo(connected) := [heapCell#1];
ptsTo(ohd.f) := [nullCell];
ptsTo(heapCell#1) := [nullCell];
ptsTo(heapCell#2) := [ohd.f];
]*/
void update_mind(int s, int e , int mv , int connected[6] , int ohd[6][6] , int mind[6]) {
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(mind) := [heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int i;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(mind) := [heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    int i4_huge = 2147483647;
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(mind) := [heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(mind) := [heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(mind) := [heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    for (i = s; i <= e; i++) {
        /*OUT: [ptsTo(__stdoutp) := [nullCell];
        ptsTo(ohd) := [ohd.f];
        ptsTo(mind) := [heapCell#2];
        ptsTo(connected) := [heapCell#1];
        ptsTo(ohd.f) := [nullCell];
        ptsTo(heapCell#1) := [nullCell];
        ptsTo(heapCell#2) := [ohd.f];
        ]*/
        if (!connected[i]) {
            /*OUT: [ptsTo(__stdoutp) := [nullCell];
            ptsTo(ohd) := [ohd.f];
            ptsTo(mind) := [heapCell#2];
            ptsTo(connected) := [heapCell#1];
            ptsTo(ohd.f) := [nullCell];
            ptsTo(heapCell#1) := [nullCell];
            ptsTo(heapCell#2) := [ohd.f];
            ]*/
            if (ohd[mv][i] < i4_huge) {
                /*OUT: [ptsTo(__stdoutp) := [nullCell];
                ptsTo(ohd) := [ohd.f];
                ptsTo(mind) := [heapCell#2];
                ptsTo(connected) := [heapCell#1];
                ptsTo(ohd.f) := [nullCell];
                ptsTo(heapCell#1) := [nullCell];
                ptsTo(heapCell#2) := [ohd.f];
                ]*/
                if (mind[mv] + ohd[mv][i] < mind[i]) {
                    /*OUT: [ptsTo(__stdoutp) := [nullCell];
                    ptsTo(ohd) := [ohd.f];
                    ptsTo(mind) := [heapCell#2];
                    ptsTo(connected) := [heapCell#1];
                    ptsTo(ohd.f) := [nullCell];
                    ptsTo(heapCell#1) := [nullCell];
                    ptsTo(heapCell#2) := [ohd.f];
                    ]*/
                    mind[i] = mind[mv] + ohd[mv][i];
                }
            }
        }
    }
    /*OUT: [ptsTo(__stdoutp) := [nullCell];
    ptsTo(ohd) := [ohd.f];
    ptsTo(mind) := [heapCell#2];
    ptsTo(connected) := [heapCell#1];
    ptsTo(ohd.f) := [nullCell];
    ptsTo(heapCell#1) := [nullCell];
    ptsTo(heapCell#2) := [ohd.f];
    ]*/
    return;
}
