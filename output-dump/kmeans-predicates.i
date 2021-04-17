typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_ssize_t;
typedef __int64_t __darwin_off_t;
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
char *fgets(char *restrict , int  , FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fprintf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
void rewind(FILE *);
typedef __darwin_ssize_t ssize_t;
double atof(const char *);
int atoi(const char *);
void *calloc(size_t __count, size_t __size);
void exit(int );
void free(void *);
void *malloc(size_t __size);
long random(void );
void srandom(unsigned );
char *strerror(int __errnum);
char *strtok(char *__str, const char *__sep);
extern int *__error(void );
extern double pow(double , double );
extern double sqrt(double );
int close(int );
ssize_t read(int , void * , size_t );
int getopt(int , char *const [] , const char *);
extern char *suboptarg;
struct fssearchblock ;
struct searchstate ;
#pragma pack(4)
#pragma pack()
struct _filesec ;
int open(const char *, int , ...);
extern void omp_set_num_threads(int );
extern int omp_get_max_threads(void );
extern int omp_get_thread_num(void );
extern double omp_get_wtime(void );
float multid_feuclid_dist(float *, float * , int );
float euclid_dist_2(float *, float * , int );
int find_nearest_point(float *, int  , float ** , int );
void sum_fuzzy_members(float **, int  , float ** , int  , int  , float  , float *);
float **fuzzy_kmeans_cluster(int , float ** , int  , int  , int  , float  , float );
float fuzzy_validity(float **, int  , int  , float ** , int  , float );
float *extract_moments(float *, int  , int );
void zscore_transform(float **, int  , int );
int cluster(int , int  , int  , int  , int  , int  , float ** , int  , int  , int  , float  , float  , int * , float *** , int * , float * , double * , double *);
float **kmeans_clustering(int , float ** , int  , int  , int  , float  , int *);
int _debug;
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
__inline float multid_feuclid_dist(float *pt1, float *pt2 , int numdims) {
    /*OUT: {
    Reverse<--,>}*/
    float ans = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 172_0;>}*/
    for (i = 0; i < numdims; i++) {
        /*OUT: {
        Reverse<--, 172_0;>}*/
        ans += ((pt1[i] - pt2[i]) * (pt1[i] - pt2[i]));
    }
    /*OUT: {
    Reverse<--, 172_1;>}*/
    double _imopVarPre143;
    /*OUT: {
    Reverse<--, 172_1;>}*/
    double _imopVarPre144;
    /*OUT: {
    Reverse<--, 172_1;>}*/
    _imopVarPre143 = (double) ans;
    /*OUT: {
    Reverse<--, 172_1;>}*/
    _imopVarPre144 = sqrt(_imopVarPre143);
    /*OUT: {
    Reverse<--, 172_1;>}*/
    /*OUT: {
    Reverse<--, 172_1;>}*/
    ans = _imopVarPre144;
    /*OUT: {
    Reverse<--, 172_1;>}*/
    return ans;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
__inline int find_nearest_point(float *pt, int nfeatures , float **pts , int npts) {
    /*OUT: {
    Reverse<--,>}*/
    int index;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    float max_dist = 3.40282346638528859812e+38F;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 205_0;>}*/
    for (i = 0; i < npts; i++) {
        /*OUT: {
        Reverse<--, 205_0;>}*/
        float dist;
        /*OUT: {
        Reverse<--, 205_0;>}*/
        float *_imopVarPre146;
        /*OUT: {
        Reverse<--, 205_0;>}*/
        float _imopVarPre147;
        /*OUT: {
        Reverse<--, 205_0;>}*/
        _imopVarPre146 = pts[i];
        /*OUT: {
        Reverse<--, 205_0;>}*/
        _imopVarPre147 = euclid_dist_2(pt, _imopVarPre146, nfeatures);
        /*OUT: {
        Reverse<--, 205_0;>}*/
        /*OUT: {
        Reverse<--, 205_0;>}*/
        dist = _imopVarPre147;
        /*OUT: {
        Reverse<--, 205_0;>}*/
        if (dist < max_dist) {
            /*OUT: {
            Reverse<--, 221_0; 205_0;>}*/
            max_dist = dist;
            /*OUT: {
            Reverse<--, 221_0; 205_0;>}*/
            index = i;
        }
    }
    /*OUT: {
    Reverse<--, 205_1;>}*/
    return index;
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
/*OUT: {
Reverse<--,>}*/
__inline void sum_fuzzy_members(float **feature, int npoints , float **cluster_centres , int nclusters , int nfeatures , float fuzzyq , float *sum_points) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    float distance;
#pragma omp parallel shared(sum_points, feature, cluster_centres) firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, distance)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<2873,>}*/
        /*OUT: {
        Reverse<2873,>}*/
        /*OUT: {
        Reverse<2873, 247_1;>}*/
        for (i = 0; i < npoints; i++) {
            /*OUT: {
            Reverse<2873,>}*/
            sum_points[i] = 0.0;
            /*OUT: {
            Reverse<2873,>}*/
            /*OUT: {
            Reverse<2873,>}*/
            /*OUT: {
            Reverse<2873, 247_0;>}*/
            for (j = 0; j < nclusters; j++) {
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                float *_imopVarPre150;
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                float *_imopVarPre151;
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                float _imopVarPre152;
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                _imopVarPre150 = cluster_centres[j];
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                _imopVarPre151 = feature[i];
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                _imopVarPre152 = euclid_dist_2(_imopVarPre151, _imopVarPre150, nfeatures);
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                distance = _imopVarPre152;
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                double _imopVarPre155;
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                double _imopVarPre156;
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                double _imopVarPre157;
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                _imopVarPre155 = 1.0 / (fuzzyq - 1);
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                _imopVarPre156 = 1.0 / (distance + 0.00001);
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                _imopVarPre157 = pow(_imopVarPre156, _imopVarPre155);
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                /*OUT: {
                Reverse<2873, 247_0;>}*/
                sum_points[i] += _imopVarPre157;
            }
        }
        /*OUT: {
        Reverse<2873,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<284,>}*/
#pragma omp barrier
    }
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
/*OUT: {
Reverse<--,>}*/
float **fuzzy_kmeans_cluster(int is_perform_atomic, float **feature , int nfeatures , int npoints , int nclusters , float fuzzyq , float delta_centres_threshold) {
    /*OUT: {
    Reverse<--,>}*/
    float **cluster_centres;
    /*OUT: {
    Reverse<--,>}*/
    float max_delta_centres = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    float *sum_points;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int loop = 0;
    /*OUT: {
    Reverse<--,>}*/
    double timing;
    /*OUT: {
    Reverse<--,>}*/
    float sqd_dist;
    /*OUT: {
    Reverse<--,>}*/
    float membership;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads;
    /*OUT: {
    Reverse<--,>}*/
    float **new_centre;
    /*OUT: {
    Reverse<--,>}*/
    float *sum;
    /*OUT: {
    Reverse<--,>}*/
    float **partial_sum;
    /*OUT: {
    Reverse<--,>}*/
    float ***partial_new_centre;
    /*OUT: {
    Reverse<--,>}*/
    nthreads = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre160;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre161;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre160 = sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre161 = calloc(nclusters, _imopVarPre160);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    sum = (float *) _imopVarPre161;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre164;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre164 = nclusters * sizeof(float *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre165 = malloc(_imopVarPre164);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    new_centre = (float **) _imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre170;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre171;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre169 = sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre170 = nclusters * nfeatures;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre171 = calloc(_imopVarPre170, _imopVarPre169);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    new_centre[0] = (float *) _imopVarPre171;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 354_0;>}*/
    for (i = 1; i < nclusters; i++) {
        /*OUT: {
        Reverse<--, 354_0;>}*/
        new_centre[i] = new_centre[i - 1] + nfeatures;
    }
    /*OUT: {
    Reverse<--, 354_1;>}*/
    if (!is_perform_atomic) {
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        unsigned long int _imopVarPre174;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        void *_imopVarPre175;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        _imopVarPre174 = nthreads * sizeof(float *);
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        _imopVarPre175 = malloc(_imopVarPre174);
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        partial_sum = (float **) _imopVarPre175;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        unsigned long int _imopVarPre179;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        int _imopVarPre180;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        void *_imopVarPre181;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        _imopVarPre179 = sizeof(float);
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        _imopVarPre180 = nthreads * nclusters;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        _imopVarPre181 = calloc(_imopVarPre180, _imopVarPre179);
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        partial_sum[0] = (float *) _imopVarPre181;
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 390_0; 360_0; 354_1;>}*/
        for (i = 1; i < nthreads; i++) {
            /*OUT: {
            Reverse<--, 390_0; 360_0; 354_1;>}*/
            partial_sum[i] = partial_sum[i - 1] + nclusters;
        }
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        unsigned long int _imopVarPre184;
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        void *_imopVarPre185;
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        _imopVarPre184 = nthreads * sizeof(float **);
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        _imopVarPre185 = malloc(_imopVarPre184);
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        partial_new_centre = (float ***) _imopVarPre185;
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        unsigned long int _imopVarPre188;
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        void *_imopVarPre189;
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        _imopVarPre188 = nthreads * nclusters * sizeof(float *);
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        _imopVarPre189 = malloc(_imopVarPre188);
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        partial_new_centre[0] = (float **) _imopVarPre189;
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 422_0; 390_1; 360_0; 354_1;>}*/
        for (i = 1; i < nthreads; i++) {
            /*OUT: {
            Reverse<--, 422_0; 390_1; 360_0; 354_1;>}*/
            partial_new_centre[i] = partial_new_centre[i - 1] + nclusters;
        }
        /*OUT: {
        Reverse<--, 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 432_1; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
        for (i = 0; i < nthreads; i++) {
            /*OUT: {
            Reverse<--, 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
            /*OUT: {
            Reverse<--, 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
            /*OUT: {
            Reverse<--, 432_0; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
            for (j = 0; j < nclusters; j++) {
                /*OUT: {
                Reverse<--, 432_0; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
                unsigned long int _imopVarPre192;
                /*OUT: {
                Reverse<--, 432_0; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
                void *_imopVarPre193;
                /*OUT: {
                Reverse<--, 432_0; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
                _imopVarPre192 = sizeof(float);
                /*OUT: {
                Reverse<--, 432_0; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
                _imopVarPre193 = calloc(nfeatures, _imopVarPre192);
                /*OUT: {
                Reverse<--, 432_0; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
                /*OUT: {
                Reverse<--, 432_0; 429_0; 422_1; 390_1; 360_0; 354_1;>}*/
                partial_new_centre[i][j] = (float *) _imopVarPre193;
            }
        }
    }
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    unsigned long int _imopVarPre196;
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    void *_imopVarPre197;
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    _imopVarPre196 = nclusters * sizeof(float *);
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    _imopVarPre197 = malloc(_imopVarPre196);
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    cluster_centres = (float **) _imopVarPre197;
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    unsigned long int _imopVarPre200;
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    void *_imopVarPre201;
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    _imopVarPre200 = nclusters * nfeatures * sizeof(float);
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    _imopVarPre201 = malloc(_imopVarPre200);
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    cluster_centres[0] = (float *) _imopVarPre201;
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 354_1;>
    Reverse<--, 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    /*OUT: {
    Reverse<--, 474_0; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 474_0; 360_1; 354_1;>}*/
    for (i = 1; i < nclusters; i++) {
        /*OUT: {
        Reverse<--, 474_0; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 474_0; 360_1; 354_1;>}*/
        cluster_centres[i] = cluster_centres[i - 1] + nfeatures;
    }
    /*OUT: {
    Reverse<--, 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 474_1; 360_1; 354_1;>}*/
    /*OUT: {
    Reverse<--, 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 474_1; 360_1; 354_1;>}*/
    /*OUT: {
    Reverse<--, 492_1; 481_0; 474_1; 360_1; 354_1;>
    Reverse<--, 492_1; 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    for (i = 0; i < nclusters; i++) {
        /*OUT: {
        Reverse<--, 481_0; 474_1; 360_1; 354_1;>
        Reverse<--, 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        signed long int _imopVarPre203;
        /*OUT: {
        Reverse<--, 481_0; 474_1; 360_1; 354_1;>
        Reverse<--, 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        _imopVarPre203 = random();
        /*OUT: {
        Reverse<--, 481_0; 474_1; 360_1; 354_1;>
        Reverse<--, 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 481_0; 474_1; 360_1; 354_1;>
        Reverse<--, 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        int n = (int) _imopVarPre203 % npoints;
        /*OUT: {
        Reverse<--, 481_0; 474_1; 360_1; 354_1;>
        Reverse<--, 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 481_0; 474_1; 360_1; 354_1;>
        Reverse<--, 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 492_0; 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 492_0; 481_0; 474_1; 360_1; 354_1;>}*/
        for (j = 0; j < nfeatures; j++) {
            /*OUT: {
            Reverse<--, 492_0; 481_0; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 492_0; 481_0; 474_1; 360_1; 354_1;>}*/
            cluster_centres[i][j] = feature[n][j];
        }
    }
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    unsigned long int _imopVarPre206;
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    void *_imopVarPre207;
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    _imopVarPre206 = npoints * sizeof(float);
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    _imopVarPre207 = malloc(_imopVarPre206);
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    sum_points = (float *) _imopVarPre207;
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    if (_debug) {
        /*OUT: {
        Reverse<--, 512_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 512_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        timing = omp_get_wtime();
        /*OUT: {
        Reverse<--, 512_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 512_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    }
    /*OUT: {
    Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
    int _imopVarPre237;
    /*OUT: {
    Reverse<--, 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    do {
        /*OUT: {
        Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
        max_delta_centres = 0.0;
        /*OUT: {
        Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
        sum_fuzzy_members(feature, npoints, cluster_centres, nclusters, nfeatures, fuzzyq, sum_points);
        /*OUT: {
        Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
        /*OUT: {
        Reverse<--, 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 481_1; 474_1; 360_1; 354_1;>}*/
        if (is_perform_atomic) {
#pragma omp parallel firstprivate(npoints, nclusters, nfeatures, fuzzyq) shared(feature, cluster_centres, sum, new_centre) private(i, j, k, sqd_dist, membership)
            {
#pragma omp for schedule(static) nowait
                /*OUT: {
                Reverse<2991,>}*/
                /*OUT: {
                Reverse<2991,>}*/
                /*OUT: {
                Reverse<2991, 534_1;>}*/
                for (j = 0; j < npoints; j++) {
                    /*OUT: {
                    Reverse<2991,>}*/
                    /*OUT: {
                    Reverse<2991,>}*/
                    /*OUT: {
                    Reverse<2991, 582_1; 534_0;>}*/
                    for (i = 0; i < nclusters; i++) {
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        float *_imopVarPre210;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        float *_imopVarPre211;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        float _imopVarPre212;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        _imopVarPre210 = cluster_centres[i];
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        _imopVarPre211 = feature[j];
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        _imopVarPre212 = euclid_dist_2(_imopVarPre211, _imopVarPre210, nfeatures);
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        sqd_dist = _imopVarPre212;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        double _imopVarPre216;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        double _imopVarPre217;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        double _imopVarPre218;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        _imopVarPre216 = 1.0 / (fuzzyq - 1);
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        _imopVarPre217 = 1.0 / (sqd_dist + 0.00001);
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        _imopVarPre218 = pow(_imopVarPre217, _imopVarPre216);
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        membership = _imopVarPre218 / (sum_points[j] + 0.00001);
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        membership = pow(membership, fuzzyq);
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        sum[i] += membership;
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        // #pragma omp dummyFlush ATOMIC_END
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        /*OUT: {
                        Reverse<2991, 534_0;>}*/
                        /*OUT: {
                        Reverse<2991, 582_0; 534_0;>}*/
                        for (k = 0; k < nfeatures; k++) {
                            /*OUT: {
                            Reverse<2991, 582_0; 534_0;>}*/
                            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
                            /*OUT: {
                            Reverse<2991, 582_0; 534_0;>}*/
                            new_centre[i][k] += membership * feature[j][k];
                            /*OUT: {
                            Reverse<2991, 582_0; 534_0;>}*/
                            // #pragma omp dummyFlush ATOMIC_END
                        }
                    }
                }
                /*OUT: {
                Reverse<2991,>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<590,>}*/
#pragma omp barrier
            }
        } else {
#pragma omp parallel shared(feature, cluster_centres, partial_sum, new_centre)
            {
                /*OUT: {
                Reverse<3013,>}*/
                int _imopVarPre219;
                /*OUT: {
                Reverse<3013,>}*/
                _imopVarPre219 = omp_get_thread_num();
                /*OUT: {
                Reverse<3013,>}*/
                /*OUT: {
                Reverse<3013,>}*/
                int tid = _imopVarPre219;
#pragma omp for firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, k, sqd_dist, membership) schedule(static) nowait
                /*OUT: {
                Reverse<3013,>}*/
                /*OUT: {
                Reverse<3013,>}*/
                /*OUT: {
                Reverse<3013, 605_1;>}*/
                for (j = 0; j < npoints; j++) {
                    /*OUT: {
                    Reverse<3013,>}*/
                    /*OUT: {
                    Reverse<3013,>}*/
                    /*OUT: {
                    Reverse<3013, 654_1; 605_0;>}*/
                    for (i = 0; i < nclusters; i++) {
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        float *_imopVarPre222;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        float *_imopVarPre223;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        float _imopVarPre224;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        _imopVarPre222 = cluster_centres[i];
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        _imopVarPre223 = feature[j];
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        _imopVarPre224 = euclid_dist_2(_imopVarPre223, _imopVarPre222, nfeatures);
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        sqd_dist = _imopVarPre224;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        double _imopVarPre228;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        double _imopVarPre229;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        double _imopVarPre230;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        _imopVarPre228 = 1.0 / (fuzzyq - 1);
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        _imopVarPre229 = 1.0 / (sqd_dist + 0.00001);
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        _imopVarPre230 = pow(_imopVarPre229, _imopVarPre228);
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        membership = _imopVarPre230 / (sum_points[j] + 0.00001);
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        membership = pow(membership, fuzzyq);
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        partial_sum[tid][i] += membership;
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        /*OUT: {
                        Reverse<3013, 605_0;>}*/
                        /*OUT: {
                        Reverse<3013, 654_0; 605_0;>}*/
                        for (k = 0; k < nfeatures; k++) {
                            /*OUT: {
                            Reverse<3013, 654_0; 605_0;>}*/
                            partial_new_centre[tid][i][k] += membership * feature[j][k];
                        }
                    }
                }
                /*OUT: {
                Reverse<3013,>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<663,>}*/
#pragma omp barrier
            }
            /*OUT: {
            Reverse<--, 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            /*OUT: {
            Reverse<--, 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            /*OUT: {
            Reverse<--, 678_1; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 678_1; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            for (i = 0; i < nclusters; i++) {
                /*OUT: {
                Reverse<--, 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
                sum[i] = 0.0;
                /*OUT: {
                Reverse<--, 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
                /*OUT: {
                Reverse<--, 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
                /*OUT: {
                Reverse<--, 671_0; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 671_0; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                for (k = 0; k < nfeatures; k++) {
                    /*OUT: {
                    Reverse<--, 671_0; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                    Reverse<--, 671_0; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                    new_centre[i][k] = 0.0;
                }
                /*OUT: {
                Reverse<--, 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                /*OUT: {
                Reverse<--, 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                /*OUT: {
                Reverse<--, 690_1; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 690_1; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                for (j = 0; j < nthreads; j++) {
                    /*OUT: {
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                    sum[i] += partial_sum[j][i];
                    /*OUT: {
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                    partial_sum[j][i] = 0.0;
                    /*OUT: {
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                    /*OUT: {
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                    Reverse<--, 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                    /*OUT: {
                    Reverse<--, 690_0; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                    Reverse<--, 690_0; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                    for (k = 0; k < nfeatures; k++) {
                        /*OUT: {
                        Reverse<--, 690_0; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                        Reverse<--, 690_0; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                        new_centre[i][k] += partial_new_centre[j][i][k];
                        /*OUT: {
                        Reverse<--, 690_0; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 360_1; 354_1;>
                        Reverse<--, 690_0; 678_0; 671_1; 665_0; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                        partial_new_centre[j][i][k] = 0.0;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<--, 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 737_1; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 737_1; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 737_1; 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 737_1; 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        for (i = 0; i < nclusters; i++) {
            /*OUT: {
            Reverse<--, 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            float delta_centre;
            /*OUT: {
            Reverse<--, 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            /*OUT: {
            Reverse<--, 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            /*OUT: {
            Reverse<--, 709_0; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_0; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_0; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_0; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            for (k = 0; k < nfeatures; k++) {
                /*OUT: {
                Reverse<--, 709_0; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 709_0; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 709_0; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 709_0; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                new_centre[i][k] /= sum[i];
            }
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            sum[i] = 0.0;
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            float *_imopVarPre233;
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            float *_imopVarPre234;
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            float _imopVarPre235;
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            _imopVarPre233 = new_centre[i];
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            _imopVarPre234 = cluster_centres[i];
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            _imopVarPre235 = multid_feuclid_dist(_imopVarPre234, _imopVarPre233, nfeatures);
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            delta_centre = _imopVarPre235;
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            /*OUT: {
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            /*OUT: {
            Reverse<--, 737_0; 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 737_0; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 737_0; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 737_0; 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            for (j = 0; j < nfeatures; j++) {
                /*OUT: {
                Reverse<--, 737_0; 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 737_0; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 737_0; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 737_0; 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
                cluster_centres[i][j] = new_centre[i][j];
                /*OUT: {
                Reverse<--, 737_0; 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 737_0; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 737_0; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 737_0; 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
                new_centre[i][j] = 0.0;
            }
            /*OUT: {
            Reverse<--, 737_1; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 737_1; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 737_1; 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 737_1; 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
            if (delta_centre > max_delta_centres) {
                /*OUT: {
                Reverse<--, 749_0; 737_1; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 749_0; 737_1; 709_1; 705_0; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
                Reverse<--, 749_0; 737_1; 709_1; 705_0; 527_0; 481_1; 474_1; 360_1; 354_1;>
                Reverse<--, 749_0; 737_1; 709_1; 705_0; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
                max_delta_centres = delta_centre;
            }
        }
        /*OUT: {
        Reverse<--, 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
        _imopVarPre237 = max_delta_centres > delta_centres_threshold;
        /*OUT: {
        Reverse<--, 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
        if (_imopVarPre237) {
            /*OUT: {
            Reverse<--, 754_0; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 754_0; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
            Reverse<--, 754_0; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
            Reverse<--, 754_0; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>}*/
            _imopVarPre237 = loop++ < 500;
        }
    } while (_imopVarPre237);
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    if (_debug) {
        /*OUT: {
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        double _imopVarPre239;
        /*OUT: {
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        _imopVarPre239 = omp_get_wtime();
        /*OUT: {
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        /*OUT: {
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        timing = _imopVarPre239 - timing;
        /*OUT: {
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
        printf("nloops = %2d (T = %7.4f)", loop, timing);
        /*OUT: {
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>
        Reverse<--, 758_0; 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>}*/
    }
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    free(sum);
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    float *_imopVarPre241;
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    _imopVarPre241 = new_centre[0];
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    free(_imopVarPre241);
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    free(new_centre);
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    free(sum_points);
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    /*OUT: {
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 360_1; 354_1;>
    Reverse<--, 757_1; 705_1; 527_0; 481_1; 474_1; 429_1; 422_1; 390_1; 360_0; 354_1;>
    Reverse<--, 757_1; 705_1; 665_1; 527_1; 481_1; 474_1; 360_1; 354_1;>}*/
    return cluster_centres;
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
float fuzzy_validity(float **feature, int nfeatures , int npoints , float **cluster_centres , int nclusters , float fuzzyq) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int nearest_cluster;
    /*OUT: {
    Reverse<--,>}*/
    int *numpoints_in_clusters;
    /*OUT: {
    Reverse<--,>}*/
    float *sum_points;
    /*OUT: {
    Reverse<--,>}*/
    float valid_sum = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    float min_dist = 3.40282346638528859812e+38F;
    /*OUT: {
    Reverse<--,>}*/
    float ret;
    /*OUT: {
    Reverse<--,>}*/
    float penalty;
    /*OUT: {
    Reverse<--,>}*/
    float sqd_dist;
    /*OUT: {
    Reverse<--,>}*/
    float memb_fuzzyq;
    /*OUT: {
    Reverse<--,>}*/
    float membership;
    /*OUT: {
    Reverse<--,>}*/
    if (nclusters < 2) {
        /*OUT: {
        Reverse<--, 817_0;>}*/
        return 3.40282346638528859812e+38F;
    }
    /*OUT: {
    Reverse<--, 817_1;>}*/
    unsigned long int _imopVarPre244;
    /*OUT: {
    Reverse<--, 817_1;>}*/
    void *_imopVarPre245;
    /*OUT: {
    Reverse<--, 817_1;>}*/
    _imopVarPre244 = sizeof(int);
    /*OUT: {
    Reverse<--, 817_1;>}*/
    _imopVarPre245 = calloc(nclusters, _imopVarPre244);
    /*OUT: {
    Reverse<--, 817_1;>}*/
    /*OUT: {
    Reverse<--, 817_1;>}*/
    numpoints_in_clusters = (int *) _imopVarPre245;
#pragma omp parallel shared(feature, cluster_centres, numpoints_in_clusters) firstprivate(npoints, nfeatures, nclusters) private(i, nearest_cluster)
    {
#pragma omp for schedule(static) nowait
        /*OUT: {
        Reverse<3078,>}*/
        /*OUT: {
        Reverse<3078,>}*/
        /*OUT: {
        Reverse<3078,>}*/
        for (i = 0; i < npoints; i++) {
            /*OUT: {
            Reverse<3078,>}*/
            float *_imopVarPre247;
            /*OUT: {
            Reverse<3078,>}*/
            int _imopVarPre248;
            /*OUT: {
            Reverse<3078,>}*/
            _imopVarPre247 = feature[i];
            /*OUT: {
            Reverse<3078,>}*/
            _imopVarPre248 = find_nearest_point(_imopVarPre247, nfeatures, cluster_centres, nclusters);
            /*OUT: {
            Reverse<3078,>}*/
            /*OUT: {
            Reverse<3078,>}*/
            nearest_cluster = _imopVarPre248;
            /*OUT: {
            Reverse<3078,>}*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
            /*OUT: {
            Reverse<3078,>}*/
            numpoints_in_clusters[nearest_cluster]++;
            /*OUT: {
            Reverse<3078,>}*/
            // #pragma omp dummyFlush ATOMIC_END
        }
        /*OUT: {
        Reverse<3078,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<853,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 817_1;>}*/
    penalty = 0.0;
#pragma omp parallel shared(numpoints_in_clusters) firstprivate(nclusters) private(i)
    {
#pragma omp for schedule(static) reduction(+:penalty) nowait
        /*OUT: {
        Reverse<3088,>}*/
        /*OUT: {
        Reverse<3088,>}*/
        /*OUT: {
        Reverse<3088,>}*/
        for (i = 0; i < nclusters; i++) {
            /*OUT: {
            Reverse<3088,>}*/
            penalty += 1.0 / (1.0 + ((float) numpoints_in_clusters[i]));
        }
        /*OUT: {
        Reverse<3088,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<866,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 817_1;>}*/
    penalty /= (float) nclusters;
    /*OUT: {
    Reverse<--, 817_1;>}*/
    free(numpoints_in_clusters);
    /*OUT: {
    Reverse<--, 817_1;>}*/
    /*OUT: {
    Reverse<--, 817_1;>}*/
    unsigned long int _imopVarPre251;
    /*OUT: {
    Reverse<--, 817_1;>}*/
    void *_imopVarPre252;
    /*OUT: {
    Reverse<--, 817_1;>}*/
    _imopVarPre251 = npoints * sizeof(float);
    /*OUT: {
    Reverse<--, 817_1;>}*/
    _imopVarPre252 = malloc(_imopVarPre251);
    /*OUT: {
    Reverse<--, 817_1;>}*/
    /*OUT: {
    Reverse<--, 817_1;>}*/
    sum_points = (float *) _imopVarPre252;
    /*OUT: {
    Reverse<--, 817_1;>}*/
    sum_fuzzy_members(feature, npoints, cluster_centres, nclusters, nfeatures, fuzzyq, sum_points);
    /*OUT: {
    Reverse<--, 817_1;>}*/
#pragma omp parallel shared(feature, cluster_centres) firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, sqd_dist, memb_fuzzyq, membership)
    {
#pragma omp for schedule(static) reduction(+:valid_sum) nowait
        /*OUT: {
        Reverse<3096,>}*/
        /*OUT: {
        Reverse<3096,>}*/
        /*OUT: {
        Reverse<3096, 897_1;>}*/
        for (j = 0; j < npoints; j++) {
            /*OUT: {
            Reverse<3096,>}*/
            /*OUT: {
            Reverse<3096,>}*/
            /*OUT: {
            Reverse<3096, 897_0;>}*/
            for (i = 0; i < nclusters; i++) {
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                float *_imopVarPre255;
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                float *_imopVarPre256;
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                float _imopVarPre257;
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                _imopVarPre255 = cluster_centres[i];
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                _imopVarPre256 = feature[j];
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                _imopVarPre257 = euclid_dist_2(_imopVarPre256, _imopVarPre255, nfeatures);
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                sqd_dist = _imopVarPre257;
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                double _imopVarPre261;
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                double _imopVarPre262;
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                double _imopVarPre263;
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                _imopVarPre261 = 1.0 / (fuzzyq - 1);
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                _imopVarPre262 = 1.0 / (sqd_dist + 0.00001);
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                _imopVarPre263 = pow(_imopVarPre262, _imopVarPre261);
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                membership = _imopVarPre263 / (sum_points[j] + 0.00001);
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                memb_fuzzyq = pow(membership, fuzzyq);
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                /*OUT: {
                Reverse<3096, 897_0;>}*/
                valid_sum += sqd_dist * memb_fuzzyq;
            }
        }
        /*OUT: {
        Reverse<3096,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<943,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 817_1;>}*/
    free(sum_points);
    /*OUT: {
    Reverse<--, 817_1;>}*/
    /*OUT: {
    Reverse<--, 817_1;>}*/
    min_dist = 0.0;
    /*OUT: {
    Reverse<--, 817_1;>}*/
    /*OUT: {
    Reverse<--, 817_1;>}*/
    /*OUT: {
    Reverse<--, 956_1; 952_0; 817_1;>}*/
    for (i = 0; i < nclusters - 1; i++) {
        /*OUT: {
        Reverse<--, 952_0; 817_1;>}*/
        float this_cluster_min_dist = 3.40282346638528859812e+38F;
        /*OUT: {
        Reverse<--, 952_0; 817_1;>}*/
        /*OUT: {
        Reverse<--, 952_0; 817_1;>}*/
        /*OUT: {
        Reverse<--, 956_0; 952_0; 817_1;>}*/
        for (j = i + 1; j < nclusters; j++) {
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            float tmp_dist;
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            float *_imopVarPre266;
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            float *_imopVarPre267;
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            float _imopVarPre268;
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            _imopVarPre266 = cluster_centres[j];
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            _imopVarPre267 = cluster_centres[i];
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            _imopVarPre268 = multid_feuclid_dist(_imopVarPre267, _imopVarPre266, nfeatures);
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            tmp_dist = _imopVarPre268;
            /*OUT: {
            Reverse<--, 956_0; 952_0; 817_1;>}*/
            if (tmp_dist < this_cluster_min_dist) {
                /*OUT: {
                Reverse<--, 976_0; 956_0; 952_0; 817_1;>}*/
                this_cluster_min_dist = tmp_dist;
            }
        }
        /*OUT: {
        Reverse<--, 956_1; 952_0; 817_1;>}*/
        min_dist += this_cluster_min_dist;
    }
    /*OUT: {
    Reverse<--, 952_1; 817_1;>}*/
    min_dist = (((min_dist / (float) (nclusters - 1))) * ((min_dist / (float) (nclusters - 1))));
    /*OUT: {
    Reverse<--, 952_1; 817_1;>}*/
    ret = (float) (valid_sum / (npoints * min_dist) + penalty);
    /*OUT: {
    Reverse<--, 952_1; 817_1;>}*/
    return ret;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
__inline float euclid_dist_2(float *pt1, float *pt2 , int numdims) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    float ans = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1002_0;>}*/
    for (i = 0; i < numdims; i++) {
        /*OUT: {
        Reverse<--, 1002_0;>}*/
        ans += (pt1[i] - pt2[i]) * (pt1[i] - pt2[i]);
    }
    /*OUT: {
    Reverse<--, 1002_1;>}*/
    return ans;
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
/*OUT: {
Reverse<--,>}*/
float **kmeans_clustering(int is_perform_atomic, float **feature , int nfeatures , int npoints , int nclusters , float threshold , int *membership) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int index;
    /*OUT: {
    Reverse<--,>}*/
    int loop = 0;
    /*OUT: {
    Reverse<--,>}*/
    int *new_centers_len;
    /*OUT: {
    Reverse<--,>}*/
    float delta;
    /*OUT: {
    Reverse<--,>}*/
    float **clusters;
    /*OUT: {
    Reverse<--,>}*/
    float **new_centers;
    /*OUT: {
    Reverse<--,>}*/
    double timing;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads;
    /*OUT: {
    Reverse<--,>}*/
    int **partial_new_centers_len;
    /*OUT: {
    Reverse<--,>}*/
    float ***partial_new_centers;
    /*OUT: {
    Reverse<--,>}*/
    nthreads = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre271;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre272;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre271 = nclusters * sizeof(float *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre272 = malloc(_imopVarPre271);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    clusters = (float **) _imopVarPre272;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre275;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre276;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre275 = nclusters * nfeatures * sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre276 = malloc(_imopVarPre275);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    clusters[0] = (float *) _imopVarPre276;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1066_0;>}*/
    for (i = 1; i < nclusters; i++) {
        /*OUT: {
        Reverse<--, 1066_0;>}*/
        clusters[i] = clusters[i - 1] + nfeatures;
    }
    /*OUT: {
    Reverse<--, 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1084_1; 1073_0; 1066_1;>}*/
    for (i = 0; i < nclusters; i++) {
        /*OUT: {
        Reverse<--, 1073_0; 1066_1;>}*/
        signed long int _imopVarPre278;
        /*OUT: {
        Reverse<--, 1073_0; 1066_1;>}*/
        _imopVarPre278 = random();
        /*OUT: {
        Reverse<--, 1073_0; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1073_0; 1066_1;>}*/
        int n = (int) _imopVarPre278 % npoints;
        /*OUT: {
        Reverse<--, 1073_0; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1073_0; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1084_0; 1073_0; 1066_1;>}*/
        for (j = 0; j < nfeatures; j++) {
            /*OUT: {
            Reverse<--, 1084_0; 1073_0; 1066_1;>}*/
            clusters[i][j] = feature[n][j];
        }
    }
    /*OUT: {
    Reverse<--, 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1093_0; 1073_1; 1066_1;>}*/
    for (i = 0; i < npoints; i++) {
        /*OUT: {
        Reverse<--, 1093_0; 1073_1; 1066_1;>}*/
        membership[i] = -1;
    }
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    unsigned long int _imopVarPre281;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    void *_imopVarPre282;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre281 = sizeof(int);
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre282 = calloc(nclusters, _imopVarPre281);
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    new_centers_len = (int *) _imopVarPre282;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    unsigned long int _imopVarPre285;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    void *_imopVarPre286;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre285 = nclusters * sizeof(float *);
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre286 = malloc(_imopVarPre285);
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    new_centers = (float **) _imopVarPre286;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    unsigned long int _imopVarPre290;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    int _imopVarPre291;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    void *_imopVarPre292;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre290 = sizeof(float);
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre291 = nclusters * nfeatures;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre292 = calloc(_imopVarPre291, _imopVarPre290);
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    new_centers[0] = (float *) _imopVarPre292;
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1139_0; 1093_1; 1073_1; 1066_1;>}*/
    for (i = 1; i < nclusters; i++) {
        /*OUT: {
        Reverse<--, 1139_0; 1093_1; 1073_1; 1066_1;>}*/
        new_centers[i] = new_centers[i - 1] + nfeatures;
    }
    /*OUT: {
    Reverse<--, 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    if (!is_perform_atomic) {
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        unsigned long int _imopVarPre295;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        void *_imopVarPre296;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre295 = nthreads * sizeof(int *);
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre296 = malloc(_imopVarPre295);
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        partial_new_centers_len = (int **) _imopVarPre296;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        unsigned long int _imopVarPre300;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        int _imopVarPre301;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        void *_imopVarPre302;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre300 = sizeof(int);
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre301 = nthreads * nclusters;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre302 = calloc(_imopVarPre301, _imopVarPre300);
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        partial_new_centers_len[0] = (int *) _imopVarPre302;
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1175_0; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        for (i = 1; i < nthreads; i++) {
            /*OUT: {
            Reverse<--, 1175_0; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            partial_new_centers_len[i] = partial_new_centers_len[i - 1] + nclusters;
        }
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        unsigned long int _imopVarPre305;
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        void *_imopVarPre306;
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre305 = nthreads * sizeof(float **);
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre306 = malloc(_imopVarPre305);
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        partial_new_centers = (float ***) _imopVarPre306;
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        unsigned long int _imopVarPre309;
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        void *_imopVarPre310;
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre309 = nthreads * nclusters * sizeof(float *);
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre310 = malloc(_imopVarPre309);
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        partial_new_centers[0] = (float **) _imopVarPre310;
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1207_0; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        for (i = 1; i < nthreads; i++) {
            /*OUT: {
            Reverse<--, 1207_0; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            partial_new_centers[i] = partial_new_centers[i - 1] + nclusters;
        }
        /*OUT: {
        Reverse<--, 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1217_1; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        for (i = 0; i < nthreads; i++) {
            /*OUT: {
            Reverse<--, 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            /*OUT: {
            Reverse<--, 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            /*OUT: {
            Reverse<--, 1217_0; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            for (j = 0; j < nclusters; j++) {
                /*OUT: {
                Reverse<--, 1217_0; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                unsigned long int _imopVarPre313;
                /*OUT: {
                Reverse<--, 1217_0; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                void *_imopVarPre314;
                /*OUT: {
                Reverse<--, 1217_0; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                _imopVarPre313 = sizeof(float);
                /*OUT: {
                Reverse<--, 1217_0; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                _imopVarPre314 = calloc(nfeatures, _imopVarPre313);
                /*OUT: {
                Reverse<--, 1217_0; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                /*OUT: {
                Reverse<--, 1217_0; 1214_0; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                partial_new_centers[i][j] = (float *) _imopVarPre314;
            }
        }
    }
    /*OUT: {
    Reverse<--, 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    if (_debug) {
        /*OUT: {
        Reverse<--, 1233_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1233_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        timing = omp_get_wtime();
        /*OUT: {
        Reverse<--, 1233_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1233_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    int _imopVarPre323;
    /*OUT: {
    Reverse<--, 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    do {
        /*OUT: {
        Reverse<--, 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        delta = 0.0;
        /*OUT: {
        Reverse<--, 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        if (is_perform_atomic) {
#pragma omp parallel private(i, j, index) firstprivate(npoints, nclusters, nfeatures) shared(feature, clusters, membership, new_centers, new_centers_len)
            {
#pragma omp for schedule(static) reduction(+:delta) nowait
                /*OUT: {
                Reverse<3186,>}*/
                /*OUT: {
                Reverse<3186,>}*/
                /*OUT: {
                Reverse<3186, 1273_1;>}*/
                for (i = 0; i < npoints; i++) {
                    /*OUT: {
                    Reverse<3186,>}*/
                    float *_imopVarPre316;
                    /*OUT: {
                    Reverse<3186,>}*/
                    int _imopVarPre317;
                    /*OUT: {
                    Reverse<3186,>}*/
                    _imopVarPre316 = feature[i];
                    /*OUT: {
                    Reverse<3186,>}*/
                    _imopVarPre317 = find_nearest_point(_imopVarPre316, nfeatures, clusters, nclusters);
                    /*OUT: {
                    Reverse<3186,>}*/
                    /*OUT: {
                    Reverse<3186,>}*/
                    index = _imopVarPre317;
                    /*OUT: {
                    Reverse<3186,>}*/
                    if (membership[i] != index) {
                        /*OUT: {
                        Reverse<3186, 1263_0;>}*/
                        delta += 1.0;
                    }
                    /*OUT: {
                    Reverse<3186,>}*/
                    membership[i] = index;
                    /*OUT: {
                    Reverse<3186,>}*/
                    // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
                    /*OUT: {
                    Reverse<3186,>}*/
                    new_centers_len[index]++;
                    /*OUT: {
                    Reverse<3186,>}*/
                    // #pragma omp dummyFlush ATOMIC_END
                    /*OUT: {
                    Reverse<3186,>}*/
                    /*OUT: {
                    Reverse<3186,>}*/
                    /*OUT: {
                    Reverse<3186, 1273_0;>}*/
                    for (j = 0; j < nfeatures; j++) {
                        /*OUT: {
                        Reverse<3186, 1273_0;>}*/
                        // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
                        /*OUT: {
                        Reverse<3186, 1273_0;>}*/
                        new_centers[index][j] += feature[i][j];
                        /*OUT: {
                        Reverse<3186, 1273_0;>}*/
                        // #pragma omp dummyFlush ATOMIC_END
                    }
                }
                /*OUT: {
                Reverse<3186,>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<1281,>}*/
#pragma omp barrier
            }
        } else {
#pragma omp parallel shared(feature, clusters, membership, partial_new_centers, partial_new_centers_len)
            {
                /*OUT: {
                Reverse<3208,>}*/
                int _imopVarPre318;
                /*OUT: {
                Reverse<3208,>}*/
                _imopVarPre318 = omp_get_thread_num();
                /*OUT: {
                Reverse<3208,>}*/
                /*OUT: {
                Reverse<3208,>}*/
                int tid = _imopVarPre318;
#pragma omp for private(i, j, index) firstprivate(npoints, nclusters, nfeatures) schedule(static) reduction(+:delta) nowait
                /*OUT: {
                Reverse<3208,>}*/
                /*OUT: {
                Reverse<3208,>}*/
                /*OUT: {
                Reverse<3208, 1320_1;>}*/
                for (i = 0; i < npoints; i++) {
                    /*OUT: {
                    Reverse<3208,>}*/
                    float *_imopVarPre320;
                    /*OUT: {
                    Reverse<3208,>}*/
                    int _imopVarPre321;
                    /*OUT: {
                    Reverse<3208,>}*/
                    _imopVarPre320 = feature[i];
                    /*OUT: {
                    Reverse<3208,>}*/
                    _imopVarPre321 = find_nearest_point(_imopVarPre320, nfeatures, clusters, nclusters);
                    /*OUT: {
                    Reverse<3208,>}*/
                    /*OUT: {
                    Reverse<3208,>}*/
                    index = _imopVarPre321;
                    /*OUT: {
                    Reverse<3208,>}*/
                    if (membership[i] != index) {
                        /*OUT: {
                        Reverse<3208, 1309_0;>}*/
                        delta += 1.0;
                    }
                    /*OUT: {
                    Reverse<3208,>}*/
                    membership[i] = index;
                    /*OUT: {
                    Reverse<3208,>}*/
                    partial_new_centers_len[tid][index]++;
                    /*OUT: {
                    Reverse<3208,>}*/
                    /*OUT: {
                    Reverse<3208,>}*/
                    /*OUT: {
                    Reverse<3208, 1320_0;>}*/
                    for (j = 0; j < nfeatures; j++) {
                        /*OUT: {
                        Reverse<3208, 1320_0;>}*/
                        partial_new_centers[tid][index][j] += feature[i][j];
                    }
                }
                /*OUT: {
                Reverse<3208,>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<1329,>}*/
#pragma omp barrier
            }
            /*OUT: {
            Reverse<--, 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            /*OUT: {
            Reverse<--, 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            /*OUT: {
            Reverse<--, 1334_1; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1334_1; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            for (i = 0; i < nclusters; i++) {
                /*OUT: {
                Reverse<--, 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                /*OUT: {
                Reverse<--, 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                /*OUT: {
                Reverse<--, 1346_1; 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1346_1; 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                for (j = 0; j < nthreads; j++) {
                    /*OUT: {
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                    new_centers_len[i] += partial_new_centers_len[j][i];
                    /*OUT: {
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                    partial_new_centers_len[j][i] = 0.0;
                    /*OUT: {
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                    /*OUT: {
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                    /*OUT: {
                    Reverse<--, 1346_0; 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1346_0; 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                    for (k = 0; k < nfeatures; k++) {
                        /*OUT: {
                        Reverse<--, 1346_0; 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                        Reverse<--, 1346_0; 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                        new_centers[i][k] += partial_new_centers[j][i][k];
                        /*OUT: {
                        Reverse<--, 1346_0; 1334_0; 1331_0; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                        Reverse<--, 1346_0; 1334_0; 1331_0; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                        partial_new_centers[j][i][k] = 0.0;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<--, 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1364_1; 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1364_1; 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1364_1; 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1364_1; 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        for (i = 0; i < nclusters; i++) {
            /*OUT: {
            Reverse<--, 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            /*OUT: {
            Reverse<--, 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            /*OUT: {
            Reverse<--, 1364_0; 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1364_0; 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1364_0; 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1364_0; 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            for (j = 0; j < nfeatures; j++) {
                /*OUT: {
                Reverse<--, 1364_0; 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1364_0; 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1364_0; 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1364_0; 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                if (new_centers_len[i] > 0) {
                    /*OUT: {
                    Reverse<--, 1367_0; 1364_0; 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1367_0; 1364_0; 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1367_0; 1364_0; 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                    Reverse<--, 1367_0; 1364_0; 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                    clusters[i][j] = new_centers[i][j] / new_centers_len[i];
                }
                /*OUT: {
                Reverse<--, 1364_0; 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1364_0; 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1364_0; 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
                Reverse<--, 1364_0; 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
                new_centers[i][j] = 0.0;
            }
            /*OUT: {
            Reverse<--, 1364_1; 1361_0; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1364_1; 1361_0; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1364_1; 1361_0; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1364_1; 1361_0; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            new_centers_len[i] = 0;
        }
        /*OUT: {
        Reverse<--, 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        delta /= npoints;
        /*OUT: {
        Reverse<--, 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre323 = delta > threshold;
        /*OUT: {
        Reverse<--, 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        if (_imopVarPre323) {
            /*OUT: {
            Reverse<--, 1386_0; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1386_0; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1386_0; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
            Reverse<--, 1386_0; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
            _imopVarPre323 = loop++ < 500;
        }
    } while (_imopVarPre323);
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    if (_debug) {
        /*OUT: {
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        double _imopVarPre325;
        /*OUT: {
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        _imopVarPre325 = omp_get_wtime();
        /*OUT: {
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        /*OUT: {
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        timing = _imopVarPre325 - timing;
        /*OUT: {
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
        printf("nloops = %2d (T = %7.4f)", loop, timing);
        /*OUT: {
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
        Reverse<--, 1390_0; 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    float *_imopVarPre327;
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    _imopVarPre327 = new_centers[0];
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    free(_imopVarPre327);
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    free(new_centers);
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    free(new_centers_len);
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    /*OUT: {
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1331_1; 1243_1; 1214_1; 1207_1; 1175_1; 1145_0; 1139_1; 1093_1; 1073_1; 1066_1;>
    Reverse<--, 1389_1; 1361_1; 1243_0; 1145_1; 1139_1; 1093_1; 1073_1; 1066_1;>}*/
    return clusters;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
float *extract_moments(float *data, int num_elts , int num_moments) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    float *moments;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre330;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre331;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre330 = sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre331 = calloc(num_moments, _imopVarPre330);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    moments = (float *) _imopVarPre331;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1445_0;>}*/
    for (i = 0; i < num_elts; i++) {
        /*OUT: {
        Reverse<--, 1445_0;>}*/
        moments[0] += data[i];
    }
    /*OUT: {
    Reverse<--, 1445_1;>}*/
    moments[0] = moments[0] / num_elts;
    /*OUT: {
    Reverse<--, 1445_1;>}*/
    /*OUT: {
    Reverse<--, 1445_1;>}*/
    /*OUT: {
    Reverse<--, 1462_1; 1456_0; 1445_1;>}*/
    for (j = 1; j < num_moments; j++) {
        /*OUT: {
        Reverse<--, 1456_0; 1445_1;>}*/
        moments[j] = 0;
        /*OUT: {
        Reverse<--, 1456_0; 1445_1;>}*/
        /*OUT: {
        Reverse<--, 1456_0; 1445_1;>}*/
        /*OUT: {
        Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
        for (i = 0; i < num_elts; i++) {
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            int _imopVarPre334;
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            float _imopVarPre335;
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            double _imopVarPre336;
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            _imopVarPre334 = j + 1;
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            _imopVarPre335 = (data[i] - moments[0]);
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            _imopVarPre336 = pow(_imopVarPre335, _imopVarPre334);
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            /*OUT: {
            Reverse<--, 1462_0; 1456_0; 1445_1;>}*/
            moments[j] += _imopVarPre336;
        }
        /*OUT: {
        Reverse<--, 1462_1; 1456_0; 1445_1;>}*/
        moments[j] = moments[j] / num_elts;
    }
    /*OUT: {
    Reverse<--, 1456_1; 1445_1;>}*/
    return moments;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void zscore_transform(float **data, int numObjects , int numAttributes) {
    /*OUT: {
    Reverse<--,>}*/
    float *single_variable;
    /*OUT: {
    Reverse<--,>}*/
    float *moments;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre339;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre340;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre339 = sizeof(float);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre340 = calloc(numObjects, _imopVarPre339);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    single_variable = (float *) _imopVarPre340;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1540_1; 1512_1; 1509_0;>}*/
    for (i = 0; i < numAttributes; i++) {
        /*OUT: {
        Reverse<--, 1509_0;>}*/
        /*OUT: {
        Reverse<--, 1509_0;>}*/
        /*OUT: {
        Reverse<--, 1512_0; 1509_0;>}*/
        for (j = 0; j < numObjects; j++) {
            /*OUT: {
            Reverse<--, 1512_0; 1509_0;>}*/
            single_variable[j] = data[j][i];
        }
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        moments = extract_moments(single_variable, numObjects, 2);
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        double _imopVarPre343;
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        double _imopVarPre344;
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        _imopVarPre343 = (double) moments[1];
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        _imopVarPre344 = sqrt(_imopVarPre343);
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        moments[1] = (float) _imopVarPre344;
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        /*OUT: {
        Reverse<--, 1512_1; 1509_0;>}*/
        /*OUT: {
        Reverse<--, 1540_0; 1512_1; 1509_0;>}*/
        for (j = 0; j < numObjects; j++) {
            /*OUT: {
            Reverse<--, 1540_0; 1512_1; 1509_0;>}*/
            data[j][i] = (data[j][i] - moments[0]) / moments[1];
        }
        /*OUT: {
        Reverse<--, 1540_1; 1512_1; 1509_0;>}*/
        free(moments);
        /*OUT: {
        Reverse<--, 1540_1; 1512_1; 1509_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1509_1;>}*/
    free(single_variable);
    /*OUT: {
    Reverse<--, 1509_1;>}*/
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
int cluster(int perform_fuzzy_kmeans, int is_perform_valid , int is_perform_atomic , int is_perform_assign , int numObjects , int numAttributes , float **attributes , int use_zscore_transform , int min_nclusters , int max_nclusters , float fuzzyq , float threshold , int *best_nclusters , float ***cluster_centres , int *cluster_assign , float *validity , double *cluster_timing , double *valid_timing) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int itime;
    /*OUT: {
    Reverse<--,>}*/
    int nclusters;
    /*OUT: {
    Reverse<--,>}*/
    int *membership;
    /*OUT: {
    Reverse<--,>}*/
    float **tmp_cluster_centres;
    /*OUT: {
    Reverse<--,>}*/
    float min_valid = 3.40282346638528859812e+38F;
    /*OUT: {
    Reverse<--,>}*/
    double assign_timing;
    /*OUT: {
    Reverse<--,>}*/
    if (!perform_fuzzy_kmeans) {
        /*OUT: {
        Reverse<--, 1586_0;>}*/
        unsigned long int _imopVarPre347;
        /*OUT: {
        Reverse<--, 1586_0;>}*/
        void *_imopVarPre348;
        /*OUT: {
        Reverse<--, 1586_0;>}*/
        _imopVarPre347 = numObjects * sizeof(int);
        /*OUT: {
        Reverse<--, 1586_0;>}*/
        _imopVarPre348 = malloc(_imopVarPre347);
        /*OUT: {
        Reverse<--, 1586_0;>}*/
        /*OUT: {
        Reverse<--, 1586_0;>}*/
        membership = (int *) _imopVarPre348;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (use_zscore_transform) {
        /*OUT: {
        Reverse<--, 1599_0;>}*/
        zscore_transform(attributes, numObjects, numAttributes);
        /*OUT: {
        Reverse<--, 1599_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_debug) {
        /*OUT: {
        Reverse<--, 1605_0;>}*/
        printf("Initial min_nclusters = %d max_nclusters = %d\n", min_nclusters, max_nclusters);
        /*OUT: {
        Reverse<--, 1605_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    itime = 0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1614_0;>}*/
    for (nclusters = min_nclusters; nclusters <= max_nclusters; nclusters++) {
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        srandom(7);
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        double _imopVarPre349;
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        _imopVarPre349 = omp_get_wtime();
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        cluster_timing[itime] = _imopVarPre349;
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        if (perform_fuzzy_kmeans) {
            /*OUT: {
            Reverse<--, 1631_0; 1614_0;>}*/
            tmp_cluster_centres = fuzzy_kmeans_cluster(is_perform_atomic, attributes, numAttributes, numObjects, nclusters, fuzzyq, threshold);
            /*OUT: {
            Reverse<--, 1631_0; 1614_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 1631_1; 1614_0;>}*/
            tmp_cluster_centres = kmeans_clustering(is_perform_atomic, attributes, numAttributes, numObjects, nclusters, threshold, membership);
            /*OUT: {
            Reverse<--, 1631_1; 1614_0;>}*/
        }
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        double _imopVarPre351;
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        _imopVarPre351 = omp_get_wtime();
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        cluster_timing[itime] = _imopVarPre351 - cluster_timing[itime];
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        if (is_perform_valid) {
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            double _imopVarPre352;
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            _imopVarPre352 = omp_get_wtime();
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            valid_timing[itime] = _imopVarPre352;
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            float _imopVarPre353;
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            _imopVarPre353 = fuzzy_validity(attributes, numAttributes, numObjects, tmp_cluster_centres, nclusters, fuzzyq);
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            validity[itime] = _imopVarPre353;
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            if (_debug) {
                /*OUT: {
                Reverse<--, 1676_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1676_0; 1655_0; 1614_0;>}*/
                float _imopVarPre355;
                /*OUT: {
                Reverse<--, 1676_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1676_0; 1655_0; 1614_0;>}*/
                _imopVarPre355 = validity[itime];
                /*OUT: {
                Reverse<--, 1676_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1676_0; 1655_0; 1614_0;>}*/
                printf("K = %2d  validity = %6.4f\n", nclusters, _imopVarPre355);
                /*OUT: {
                Reverse<--, 1676_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1676_0; 1655_0; 1614_0;>}*/
            }
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            if (validity[itime] < min_valid) {
                /*OUT: {
                Reverse<--, 1687_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_0; 1655_0; 1614_0;>}*/
                if (*cluster_centres) {
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                    float *_imopVarPre357;
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                    _imopVarPre357 = (*cluster_centres)[0];
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                    free(_imopVarPre357);
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                    float **_imopVarPre359;
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                    _imopVarPre359 = *cluster_centres;
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                    free(_imopVarPre359);
                    /*OUT: {
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1631_0; 1614_0;>
                    Reverse<--, 1688_0; 1687_0; 1655_0; 1614_0;>}*/
                }
                /*OUT: {
                Reverse<--, 1687_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_0; 1655_0; 1614_0;>}*/
                *cluster_centres = tmp_cluster_centres;
                /*OUT: {
                Reverse<--, 1687_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_0; 1655_0; 1614_0;>}*/
                min_valid = validity[itime];
                /*OUT: {
                Reverse<--, 1687_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_0; 1655_0; 1614_0;>}*/
                *best_nclusters = nclusters;
                /*OUT: {
                Reverse<--, 1687_0; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_0; 1655_0; 1614_0;>}*/
                if (!perform_fuzzy_kmeans) {
                    /*OUT: {
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1614_0;>
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1631_0; 1614_0;>}*/
                    unsigned int _imopVarPre362;
                    /*OUT: {
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1614_0;>
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1631_0; 1614_0;>}*/
                    unsigned long int _imopVarPre363;
                    /*OUT: {
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1614_0;>
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1631_0; 1614_0;>}*/
                    _imopVarPre362 = __builtin_object_size(cluster_assign, 0);
                    /*OUT: {
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1614_0;>
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1631_0; 1614_0;>}*/
                    /*OUT: {
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1614_0;>
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1631_0; 1614_0;>}*/
                    _imopVarPre363 = numObjects * sizeof(int);
                    /*OUT: {
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1614_0;>
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1631_0; 1614_0;>}*/
                    __builtin___memcpy_chk(cluster_assign, membership, _imopVarPre363, _imopVarPre362);
                    /*OUT: {
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1614_0;>
                    Reverse<--, 1714_0; 1687_0; 1655_0; 1631_0; 1614_0;>}*/
                }
            } else {
                /*OUT: {
                Reverse<--, 1687_1; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_1; 1655_0; 1614_0;>}*/
                float *_imopVarPre365;
                /*OUT: {
                Reverse<--, 1687_1; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_1; 1655_0; 1614_0;>}*/
                _imopVarPre365 = tmp_cluster_centres[0];
                /*OUT: {
                Reverse<--, 1687_1; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_1; 1655_0; 1614_0;>}*/
                free(_imopVarPre365);
                /*OUT: {
                Reverse<--, 1687_1; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_1; 1655_0; 1614_0;>}*/
                /*OUT: {
                Reverse<--, 1687_1; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_1; 1655_0; 1614_0;>}*/
                free(tmp_cluster_centres);
                /*OUT: {
                Reverse<--, 1687_1; 1655_0; 1631_0; 1614_0;>
                Reverse<--, 1687_1; 1655_0; 1614_0;>}*/
            }
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            double _imopVarPre367;
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            _imopVarPre367 = omp_get_wtime();
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            /*OUT: {
            Reverse<--, 1655_0; 1631_0; 1614_0;>
            Reverse<--, 1655_0; 1614_0;>}*/
            valid_timing[itime] = _imopVarPre367 - valid_timing[itime];
        } else {
            /*OUT: {
            Reverse<--, 1655_1; 1614_0;>}*/
            if (*cluster_centres) {
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
                float *_imopVarPre369;
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
                _imopVarPre369 = (*cluster_centres)[0];
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
                free(_imopVarPre369);
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
                float **_imopVarPre371;
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
                _imopVarPre371 = *cluster_centres;
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
                free(_imopVarPre371);
                /*OUT: {
                Reverse<--, 1755_0; 1655_1; 1614_0;>}*/
            }
            /*OUT: {
            Reverse<--, 1655_1; 1614_0;>}*/
            *cluster_centres = tmp_cluster_centres;
            /*OUT: {
            Reverse<--, 1655_1; 1614_0;>}*/
            *best_nclusters = nclusters;
        }
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        if (_debug) {
            /*OUT: {
            Reverse<--, 1778_0; 1614_0;>}*/
            double _imopVarPre373;
            /*OUT: {
            Reverse<--, 1778_0; 1614_0;>}*/
            _imopVarPre373 = cluster_timing[itime];
            /*OUT: {
            Reverse<--, 1778_0; 1614_0;>}*/
            printf("K = %2d T_cluster = %7.4f", nclusters, _imopVarPre373);
            /*OUT: {
            Reverse<--, 1778_0; 1614_0;>}*/
            /*OUT: {
            Reverse<--, 1778_0; 1614_0;>}*/
            if (is_perform_valid) {
                /*OUT: {
                Reverse<--, 1788_0; 1778_0; 1614_0;>}*/
                double _imopVarPre375;
                /*OUT: {
                Reverse<--, 1788_0; 1778_0; 1614_0;>}*/
                _imopVarPre375 = valid_timing[itime];
                /*OUT: {
                Reverse<--, 1788_0; 1778_0; 1614_0;>}*/
                printf(" T_valid = %7.4f", _imopVarPre375);
                /*OUT: {
                Reverse<--, 1788_0; 1778_0; 1614_0;>}*/
            }
            /*OUT: {
            Reverse<--, 1778_0; 1614_0;>}*/
            printf("\n");
            /*OUT: {
            Reverse<--, 1778_0; 1614_0;>}*/
        }
        /*OUT: {
        Reverse<--, 1614_0;>}*/
        itime++;
    }
    /*OUT: {
    Reverse<--, 1614_1;>}*/
    if (perform_fuzzy_kmeans) {
        /*OUT: {
        Reverse<--, 1805_0; 1614_1;>}*/
        if (is_perform_assign) {
            /*OUT: {
            Reverse<--, 1806_0; 1805_0; 1614_1;>}*/
            if (_debug) {
                /*OUT: {
                Reverse<--, 1807_0; 1806_0; 1805_0; 1614_1;>}*/
                assign_timing = omp_get_wtime();
                /*OUT: {
                Reverse<--, 1807_0; 1806_0; 1805_0; 1614_1;>}*/
            }
#pragma omp parallel shared(cluster_assign, attributes, cluster_centres, best_nclusters) firstprivate(numObjects, numAttributes) private(i)
            {
#pragma omp for schedule(static) nowait
                /*OUT: {
                Reverse<3365,>}*/
                /*OUT: {
                Reverse<3365,>}*/
                /*OUT: {
                Reverse<3365,>}*/
                for (i = 0; i < numObjects; i++) {
                    /*OUT: {
                    Reverse<3365,>}*/
                    int _imopVarPre379;
                    /*OUT: {
                    Reverse<3365,>}*/
                    float **_imopVarPre380;
                    /*OUT: {
                    Reverse<3365,>}*/
                    float *_imopVarPre381;
                    /*OUT: {
                    Reverse<3365,>}*/
                    int _imopVarPre382;
                    /*OUT: {
                    Reverse<3365,>}*/
                    _imopVarPre379 = *best_nclusters;
                    /*OUT: {
                    Reverse<3365,>}*/
                    _imopVarPre380 = *cluster_centres;
                    /*OUT: {
                    Reverse<3365,>}*/
                    _imopVarPre381 = attributes[i];
                    /*OUT: {
                    Reverse<3365,>}*/
                    _imopVarPre382 = find_nearest_point(_imopVarPre381, numAttributes, _imopVarPre380, _imopVarPre379);
                    /*OUT: {
                    Reverse<3365,>}*/
                    /*OUT: {
                    Reverse<3365,>}*/
                    cluster_assign[i] = _imopVarPre382;
                }
                /*OUT: {
                Reverse<3365,>}*/
                // #pragma omp dummyFlush BARRIER_START
                /*OUT: {
                Reverse<1839,>}*/
#pragma omp barrier
            }
            /*OUT: {
            Reverse<--, 1806_0; 1805_0; 1614_1;>}*/
            if (_debug) {
                /*OUT: {
                Reverse<--, 1840_0; 1806_0; 1805_0; 1614_1;>}*/
                double _imopVarPre384;
                /*OUT: {
                Reverse<--, 1840_0; 1806_0; 1805_0; 1614_1;>}*/
                _imopVarPre384 = omp_get_wtime();
                /*OUT: {
                Reverse<--, 1840_0; 1806_0; 1805_0; 1614_1;>}*/
                /*OUT: {
                Reverse<--, 1840_0; 1806_0; 1805_0; 1614_1;>}*/
                assign_timing = _imopVarPre384 - assign_timing;
                /*OUT: {
                Reverse<--, 1840_0; 1806_0; 1805_0; 1614_1;>}*/
                printf("cluster assign timing = %8.4f sec\n", assign_timing);
                /*OUT: {
                Reverse<--, 1840_0; 1806_0; 1805_0; 1614_1;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 1614_1;>}*/
    if (!perform_fuzzy_kmeans) {
        /*OUT: {
        Reverse<--, 1855_0; 1806_1; 1805_0; 1614_1;>
        Reverse<--, 1855_0; 1614_1;>
        Reverse<--, 1855_0; 1805_1; 1614_1;>}*/
        free(membership);
        /*OUT: {
        Reverse<--, 1855_0; 1806_1; 1805_0; 1614_1;>
        Reverse<--, 1855_0; 1614_1;>
        Reverse<--, 1855_0; 1805_1; 1614_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1614_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
void usage(char *argv0) {
    /*OUT: {
    Reverse<--,>}*/
    char *help = "Usage: %s [switches] -i filename\n" "       -i filename:     file containing data to be clustered\n" "       -b               input file is in binary format\n" "       -q fuzziness:    fuzziness factor for fuzzy clustering\n" "                        1.0 is non-fuzzy up to infinity\n" "       -f               to perform fuzzy kmeans clustering\n" "                        default is regular kmeans clustering\n" "       -m max_clusters: maximum number of clusters allowed\n" "       -n min_clusters: minimum number of clusters allowed\n" "       -z             : don't zscore transform data\n" "       -t threshold   : threshold value\n" "       -p nproc       : number of threads\n" "       -v             : calculate the validity \n" "       -a             : perform atomic OpenMP pragma\n" "       -s             : perform object assignment if fuzzy performs\n" "       -o             : output timing results, default 0\n" "       -d             : enable debug mode\n";
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, help, argv0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre386;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre386 = -1;
    /*OUT: {
    Reverse<--,>}*/
    exit(_imopVarPre386);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    int opt;
    /*OUT: {
    Reverse<--,>}*/
    extern char *optarg;
    /*OUT: {
    Reverse<--,>}*/
    float fuzzyq = 1.5;
    /*OUT: {
    Reverse<--,>}*/
    int max_nclusters = 13;
    /*OUT: {
    Reverse<--,>}*/
    int min_nclusters = 4;
    /*OUT: {
    Reverse<--,>}*/
    char *filename = 0;
    /*OUT: {
    Reverse<--,>}*/
    float *buf;
    /*OUT: {
    Reverse<--,>}*/
    float **attributes;
    /*OUT: {
    Reverse<--,>}*/
    float **cluster_centres = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int best_nclusters;
    /*OUT: {
    Reverse<--,>}*/
    int *cluster_assign;
    /*OUT: {
    Reverse<--,>}*/
    int numAttributes;
    /*OUT: {
    Reverse<--,>}*/
    int numObjects;
    /*OUT: {
    Reverse<--,>}*/
    int use_zscore_transform = 1;
    /*OUT: {
    Reverse<--,>}*/
    char line[1024];
    /*OUT: {
    Reverse<--,>}*/
    int isBinaryFile = 0;
    /*OUT: {
    Reverse<--,>}*/
    int nloops;
    /*OUT: {
    Reverse<--,>}*/
    int len;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads;
    /*OUT: {
    Reverse<--,>}*/
    int perform_fuzzy_kmeans = 0;
    /*OUT: {
    Reverse<--,>}*/
    int is_perform_valid = 0;
    /*OUT: {
    Reverse<--,>}*/
    int is_perform_atomic = 0;
    /*OUT: {
    Reverse<--,>}*/
    int is_perform_assign = 0;
    /*OUT: {
    Reverse<--,>}*/
    int is_perform_output = 0;
    /*OUT: {
    Reverse<--,>}*/
    int _timing_tables;
    /*OUT: {
    Reverse<--,>}*/
    float *validity;
    /*OUT: {
    Reverse<--,>}*/
    float threshold = 0.001;
    /*OUT: {
    Reverse<--,>}*/
    double sum;
    /*OUT: {
    Reverse<--,>}*/
    double timing;
    /*OUT: {
    Reverse<--,>}*/
    double min_timing = 3.40282346638528859812e+38F;
    /*OUT: {
    Reverse<--,>}*/
    double io_timing;
    /*OUT: {
    Reverse<--,>}*/
    double *clustering_timing;
    /*OUT: {
    Reverse<--,>}*/
    double *valid_timing;
    /*OUT: {
    Reverse<--,>}*/
    double *min_cluster_timing;
    /*OUT: {
    Reverse<--,>}*/
    double *min_valid_timing;
    /*OUT: {
    Reverse<--,>}*/
    _debug = 0;
    /*OUT: {
    Reverse<--,>}*/
    nthreads = 0;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre388;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    while ((opt = _imopVarPre388) != (-1)) {
        /*OUT: {
        Reverse<--, 1931_0;>}*/
        switch (opt) {
            /*OUT: {
            Reverse<--, 1932_10; 1931_0;>}*/
            case 'i': filename = optarg;
            /*OUT: {
            Reverse<--, 1932_10; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_11; 1931_0;>}*/
            case 'b': isBinaryFile = 1;
            /*OUT: {
            Reverse<--, 1932_11; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_5; 1931_0;>}*/
            case 'q': fuzzyq = atof(optarg);
            /*OUT: {
            Reverse<--, 1932_5; 1931_0;>}*/
            /*OUT: {
            Reverse<--, 1932_5; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_4; 1931_0;>}*/
            case 'f': perform_fuzzy_kmeans = 1;
            /*OUT: {
            Reverse<--, 1932_4; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_6; 1931_0;>}*/
            case 't': threshold = atof(optarg);
            /*OUT: {
            Reverse<--, 1932_6; 1931_0;>}*/
            /*OUT: {
            Reverse<--, 1932_6; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_15; 1931_0;>}*/
            case 'm': max_nclusters = atoi(optarg);
            /*OUT: {
            Reverse<--, 1932_15; 1931_0;>}*/
            /*OUT: {
            Reverse<--, 1932_15; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_3; 1931_0;>}*/
            case 'n': min_nclusters = atoi(optarg);
            /*OUT: {
            Reverse<--, 1932_3; 1931_0;>}*/
            /*OUT: {
            Reverse<--, 1932_3; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_1; 1931_0;>}*/
            case 'z': use_zscore_transform = 0;
            /*OUT: {
            Reverse<--, 1932_1; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_0; 1931_0;>}*/
            case 'p': nthreads = atoi(optarg);
            /*OUT: {
            Reverse<--, 1932_0; 1931_0;>}*/
            /*OUT: {
            Reverse<--, 1932_0; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_13; 1931_0;>}*/
            case 'v': is_perform_valid = 1;
            /*OUT: {
            Reverse<--, 1932_13; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_14; 1931_0;>}*/
            case 'a': is_perform_atomic = 1;
            /*OUT: {
            Reverse<--, 1932_14; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_7; 1931_0;>}*/
            case 's': is_perform_assign = 1;
            /*OUT: {
            Reverse<--, 1932_7; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_12; 1931_0;>}*/
            case 'o': is_perform_output = 1;
            /*OUT: {
            Reverse<--, 1932_12; 1931_0;>}*/
            break;
            /*OUT: {
            Reverse<--, 1932_8; 1931_0;>}*/
            case 'd': _debug = 1;
            /*OUT: {
            Reverse<--, 1932_8; 1931_0;>}*/
            break;
            char *_imopVarPre390;
            /*OUT: {
            Reverse<--, 1932_9; 1931_0;>}*/
            case '?': _imopVarPre390 = argv[0];
            /*OUT: {
            Reverse<--, 1932_9; 1931_0;>}*/
            usage(_imopVarPre390);
            /*OUT: {
            Reverse<--, 1932_9; 1931_0;>}*/
            /*OUT: {
            Reverse<--, 1932_9; 1931_0;>}*/
            break;
            char *_imopVarPre392;
            /*OUT: {
            Reverse<--, 1932_2; 1931_0;>}*/
            default: _imopVarPre392 = argv[0];
            /*OUT: {
            Reverse<--, 1932_2; 1931_0;>}*/
            usage(_imopVarPre392);
            /*OUT: {
            Reverse<--, 1932_2; 1931_0;>}*/
            /*OUT: {
            Reverse<--, 1932_2; 1931_0;>}*/
            break;
        }
        /*OUT: {
        Reverse<--, 1931_0;>}*/
        _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
        /*OUT: {
        Reverse<--, 1931_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1931_1;>}*/
    if (filename == 0) {
        /*OUT: {
        Reverse<--, 2021_0; 1931_1;>}*/
        char *_imopVarPre394;
        /*OUT: {
        Reverse<--, 2021_0; 1931_1;>}*/
        _imopVarPre394 = argv[0];
        /*OUT: {
        Reverse<--, 2021_0; 1931_1;>}*/
        usage(_imopVarPre394);
        /*OUT: {
        Reverse<--, 2021_0; 1931_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1931_1;>}*/
    if (nthreads > 0) {
        /*OUT: {
        Reverse<--, 2031_0; 1931_1;>}*/
        omp_set_num_threads(nthreads);
        /*OUT: {
        Reverse<--, 2031_0; 1931_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1931_1;>}*/
    numAttributes = numObjects = 0;
    /*OUT: {
    Reverse<--, 1931_1;>}*/
    io_timing = omp_get_wtime();
    /*OUT: {
    Reverse<--, 1931_1;>}*/
    /*OUT: {
    Reverse<--, 1931_1;>}*/
    if (isBinaryFile) {
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        int infile;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        int _imopVarPre396;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre396 = open(filename, 0x0000, "0600");
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        if ((infile = _imopVarPre396) == -1) {
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            int *_imopVarPre416;
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            int _imopVarPre417;
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            char *_imopVarPre418;
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            _imopVarPre416 = __error();
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            _imopVarPre417 = (*_imopVarPre416);
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            _imopVarPre418 = strerror(_imopVarPre417);
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre418);
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
            exit(1);
            /*OUT: {
            Reverse<--, 2055_0; 2045_0; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        unsigned long int _imopVarPre421;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        int *_imopVarPre422;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre421 = sizeof(int);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre422 = &numObjects;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        read(infile, _imopVarPre422, _imopVarPre421);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        unsigned long int _imopVarPre425;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        int *_imopVarPre426;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre425 = sizeof(int);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre426 = &numAttributes;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        read(infile, _imopVarPre426, _imopVarPre425);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        if (_debug) {
            /*OUT: {
            Reverse<--, 2106_0; 2045_0; 1931_1;>}*/
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            /*OUT: {
            Reverse<--, 2106_0; 2045_0; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2106_0; 2045_0; 1931_1;>}*/
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
            /*OUT: {
            Reverse<--, 2106_0; 2045_0; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        unsigned long int _imopVarPre429;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        void *_imopVarPre430;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre429 = numObjects * numAttributes * sizeof(float);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre430 = malloc(_imopVarPre429);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        buf = (float *) _imopVarPre430;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        unsigned long int _imopVarPre433;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        void *_imopVarPre434;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre433 = numObjects * sizeof(float *);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre434 = malloc(_imopVarPre433);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        attributes = (float **) _imopVarPre434;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        unsigned long int _imopVarPre437;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        void *_imopVarPre438;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre437 = numObjects * numAttributes * sizeof(float);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        _imopVarPre438 = malloc(_imopVarPre437);
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        attributes[0] = (float *) _imopVarPre438;
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2155_0; 2045_0; 1931_1;>}*/
        for (i = 1; i < numObjects; i++) {
            /*OUT: {
            Reverse<--, 2155_0; 2045_0; 1931_1;>}*/
            attributes[i] = attributes[i - 1] + numAttributes;
        }
        /*OUT: {
        Reverse<--, 2155_1; 2045_0; 1931_1;>}*/
        unsigned long int _imopVarPre440;
        /*OUT: {
        Reverse<--, 2155_1; 2045_0; 1931_1;>}*/
        _imopVarPre440 = numObjects * numAttributes * sizeof(float);
        /*OUT: {
        Reverse<--, 2155_1; 2045_0; 1931_1;>}*/
        read(infile, buf, _imopVarPre440);
        /*OUT: {
        Reverse<--, 2155_1; 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2155_1; 2045_0; 1931_1;>}*/
        close(infile);
        /*OUT: {
        Reverse<--, 2155_1; 2045_0; 1931_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        FILE *infile;
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        struct __sFILE *_imopVarPre442;
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        _imopVarPre442 = fopen(filename, "r");
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        if ((infile = _imopVarPre442) == ((void *) 0)) {
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            int *_imopVarPre462;
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            int _imopVarPre463;
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            char *_imopVarPre464;
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            _imopVarPre462 = __error();
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            _imopVarPre463 = (*_imopVarPre462);
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            _imopVarPre464 = strerror(_imopVarPre463);
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre464);
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
            exit(1);
            /*OUT: {
            Reverse<--, 2184_0; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        char *_imopVarPre466;
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        _imopVarPre466 = fgets(line, 1024, infile);
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2045_1; 1931_1;>}*/
        while (_imopVarPre466 != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 2221_0; 2045_1; 1931_1;>}*/
            char *_imopVarPre468;
            /*OUT: {
            Reverse<--, 2221_0; 2045_1; 1931_1;>}*/
            _imopVarPre468 = strtok(line, " \t\n");
            /*OUT: {
            Reverse<--, 2221_0; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2221_0; 2045_1; 1931_1;>}*/
            if (_imopVarPre468 != 0) {
                /*OUT: {
                Reverse<--, 2229_0; 2221_0; 2045_1; 1931_1;>}*/
                numObjects++;
            }
            /*OUT: {
            Reverse<--, 2221_0; 2045_1; 1931_1;>}*/
            _imopVarPre466 = fgets(line, 1024, infile);
            /*OUT: {
            Reverse<--, 2221_0; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2221_1; 2045_1; 1931_1;>}*/
        rewind(infile);
        /*OUT: {
        Reverse<--, 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2221_1; 2045_1; 1931_1;>}*/
        char *_imopVarPre470;
        /*OUT: {
        Reverse<--, 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre470 = fgets(line, 1024, infile);
        /*OUT: {
        Reverse<--, 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2221_1; 2045_1; 1931_1;>}*/
        while (_imopVarPre470 != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            char *_imopVarPre472;
            /*OUT: {
            Reverse<--, 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            _imopVarPre472 = strtok(line, " \t\n");
            /*OUT: {
            Reverse<--, 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            if (_imopVarPre472 != 0) {
                /*OUT: {
                Reverse<--, 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                void *_imopVarPre475;
                /*OUT: {
                Reverse<--, 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                char *_imopVarPre476;
                /*OUT: {
                Reverse<--, 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                _imopVarPre475 = ((void *) 0);
                /*OUT: {
                Reverse<--, 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                /*OUT: {
                Reverse<--, 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                /*OUT: {
                Reverse<--, 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                while (_imopVarPre476 != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 2272_0; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                    numAttributes++;
                    /*OUT: {
                    Reverse<--, 2272_0; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                    _imopVarPre475 = ((void *) 0);
                    /*OUT: {
                    Reverse<--, 2272_0; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                    _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                    /*OUT: {
                    Reverse<--, 2272_0; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                }
                /*OUT: {
                Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
                break;
            }
            /*OUT: {
            Reverse<--, 2259_1; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            _imopVarPre470 = fgets(line, 1024, infile);
            /*OUT: {
            Reverse<--, 2259_1; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        if (_debug) {
            /*OUT: {
            Reverse<--, 2291_0; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2291_0; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            /*OUT: {
            Reverse<--, 2291_0; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2291_0; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2291_0; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2291_0; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
            /*OUT: {
            Reverse<--, 2291_0; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2291_0; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        unsigned long int _imopVarPre479;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        void *_imopVarPre480;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre479 = numObjects * numAttributes * sizeof(float);
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre480 = malloc(_imopVarPre479);
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        buf = (float *) _imopVarPre480;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        unsigned long int _imopVarPre483;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        void *_imopVarPre484;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre483 = numObjects * sizeof(float *);
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre484 = malloc(_imopVarPre483);
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        attributes = (float **) _imopVarPre484;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        unsigned long int _imopVarPre487;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        void *_imopVarPre488;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre487 = numObjects * numAttributes * sizeof(float);
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre488 = malloc(_imopVarPre487);
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        attributes[0] = (float *) _imopVarPre488;
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2340_0; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_0; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        for (i = 1; i < numObjects; i++) {
            /*OUT: {
            Reverse<--, 2340_0; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2340_0; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            attributes[i] = attributes[i - 1] + numAttributes;
        }
        /*OUT: {
        Reverse<--, 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        rewind(infile);
        /*OUT: {
        Reverse<--, 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        i = 0;
        /*OUT: {
        Reverse<--, 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        char *_imopVarPre490;
        /*OUT: {
        Reverse<--, 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre490 = fgets(line, 1024, infile);
        /*OUT: {
        Reverse<--, 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        while (_imopVarPre490 != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            char *_imopVarPre492;
            /*OUT: {
            Reverse<--, 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            _imopVarPre492 = strtok(line, " \t\n");
            /*OUT: {
            Reverse<--, 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            if (_imopVarPre492 == ((void *) 0)) {
                /*OUT: {
                Reverse<--, 2370_0; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2370_0; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                continue;
            }
            /*OUT: {
            Reverse<--, 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            for (j = 0; j < numAttributes; j++) {
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                void *_imopVarPre497;
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                char *_imopVarPre498;
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                double _imopVarPre499;
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                _imopVarPre497 = ((void *) 0);
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                _imopVarPre498 = strtok(_imopVarPre497, " ,\t\n");
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                _imopVarPre499 = atof(_imopVarPre498);
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                buf[i] = _imopVarPre499;
                /*OUT: {
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2373_0; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                i++;
            }
            /*OUT: {
            Reverse<--, 2373_1; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2373_1; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            _imopVarPre490 = fgets(line, 1024, infile);
            /*OUT: {
            Reverse<--, 2373_1; 2370_1; 2361_0; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2373_1; 2370_1; 2361_0; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        fclose(infile);
        /*OUT: {
        Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    double _imopVarPre501;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre501 = omp_get_wtime();
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    io_timing = _imopVarPre501 - io_timing;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    unsigned long int _imopVarPre504;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    void *_imopVarPre505;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre504 = numObjects * sizeof(int);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre505 = malloc(_imopVarPre504);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    cluster_assign = (int *) _imopVarPre505;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    nloops = 8;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    len = max_nclusters - min_nclusters + 1;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    unsigned long int _imopVarPre508;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    void *_imopVarPre509;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre508 = sizeof(float);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre509 = calloc(len, _imopVarPre508);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    validity = (float *) _imopVarPre509;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    unsigned long int _imopVarPre512;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    void *_imopVarPre513;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre512 = sizeof(double);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre513 = calloc(len, _imopVarPre512);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    clustering_timing = (double *) _imopVarPre513;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    unsigned long int _imopVarPre516;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    void *_imopVarPre517;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre516 = sizeof(double);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre517 = calloc(len, _imopVarPre516);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    valid_timing = (double *) _imopVarPre517;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    unsigned long int _imopVarPre520;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    void *_imopVarPre521;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre520 = sizeof(double);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre521 = calloc(len, _imopVarPre520);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    min_cluster_timing = (double *) _imopVarPre521;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    unsigned long int _imopVarPre524;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    void *_imopVarPre525;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre524 = sizeof(double);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    _imopVarPre525 = calloc(len, _imopVarPre524);
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    min_valid_timing = (double *) _imopVarPre525;
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2555_1; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2555_1; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2559_1; 2555_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2559_1; 2555_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2555_1; 2495_0; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2559_1; 2555_0; 2495_0; 2155_1; 2045_0; 1931_1;>}*/
    for (i = 0; i < nloops; i++) {
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        float *_imopVarPre532;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        unsigned int _imopVarPre533;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        unsigned long int _imopVarPre534;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        float *_imopVarPre535;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre532 = attributes[0];
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre533 = __builtin_object_size(_imopVarPre532, 0);
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre534 = numObjects * numAttributes * sizeof(float);
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre535 = attributes[0];
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        __builtin___memcpy_chk(_imopVarPre535, buf, _imopVarPre534, _imopVarPre533);
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        timing = omp_get_wtime();
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        cluster_centres = ((void *) 0);
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        float ***_imopVarPre538;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        int *_imopVarPre539;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre538 = &cluster_centres;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre539 = &best_nclusters;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        cluster(perform_fuzzy_kmeans, is_perform_valid, is_perform_atomic, is_perform_assign, numObjects, numAttributes, attributes, use_zscore_transform, min_nclusters, max_nclusters, fuzzyq, threshold, _imopVarPre539, _imopVarPre538, cluster_assign, validity, clustering_timing, valid_timing);
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        double _imopVarPre541;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre541 = omp_get_wtime();
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        timing = _imopVarPre541 - timing;
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        if (_debug) {
            /*OUT: {
            Reverse<--, 2549_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2549_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2549_0; 2495_0; 2155_1; 2045_0; 1931_1;>}*/
            printf("nloop = %d cluster() time = %.4f\n", i, timing);
            /*OUT: {
            Reverse<--, 2549_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2549_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2549_0; 2495_0; 2155_1; 2045_0; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2495_0; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        if (timing < min_timing) {
            /*OUT: {
            Reverse<--, 2555_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2555_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2555_0; 2495_0; 2155_1; 2045_0; 1931_1;>}*/
            min_timing = timing;
            /*OUT: {
            Reverse<--, 2555_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2555_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2555_0; 2495_0; 2155_1; 2045_0; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2555_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2555_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2555_0; 2495_0; 2155_1; 2045_0; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2559_0; 2555_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2559_0; 2555_0; 2495_0; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2559_0; 2555_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            for (j = 0; j < len; j++) {
                /*OUT: {
                Reverse<--, 2559_0; 2555_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2559_0; 2555_0; 2495_0; 2155_1; 2045_0; 1931_1;>
                Reverse<--, 2559_0; 2555_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                min_cluster_timing[j] = clustering_timing[j];
                /*OUT: {
                Reverse<--, 2559_0; 2555_0; 2495_0; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2559_0; 2555_0; 2495_0; 2155_1; 2045_0; 1931_1;>
                Reverse<--, 2559_0; 2555_0; 2495_0; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                min_valid_timing[j] = valid_timing[j];
            }
        }
    }
    /*OUT: {
    Reverse<--, 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    if (is_perform_output) {
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        int _imopVarPre543;
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _imopVarPre543 = omp_get_max_threads();
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        printf("Number of threads = %d\n", _imopVarPre543);
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        printf("File %s contains  numObjects = %d, each of size %d\n", filename, numObjects, numAttributes);
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        if (perform_fuzzy_kmeans) {
            /*OUT: {
            Reverse<--, 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2587_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            if (is_perform_assign) {
                /*OUT: {
                Reverse<--, 2588_0; 2587_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
                Reverse<--, 2588_0; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2588_0; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
                printf("**** Fuzzy Kmeans (Loop N first) with assign ****");
                /*OUT: {
                Reverse<--, 2588_0; 2587_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
                Reverse<--, 2588_0; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2588_0; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 2588_1; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2588_1; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2588_1; 2587_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                printf("**** Fuzzy Kmeans (Loop N first) without assign ****");
                /*OUT: {
                Reverse<--, 2588_1; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2588_1; 2587_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2588_1; 2587_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
            }
        } else {
            /*OUT: {
            Reverse<--, 2587_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2587_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2587_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            printf("Performing **** Regular Kmeans (Loop N first) ****");
            /*OUT: {
            Reverse<--, 2587_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2587_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2587_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        if (is_perform_atomic) {
            /*OUT: {
            Reverse<--, 2604_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2604_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2604_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf(" use atomic pragma ******\n");
            /*OUT: {
            Reverse<--, 2604_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2604_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2604_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 2604_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2604_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2604_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf(" use array reduction ******\n");
            /*OUT: {
            Reverse<--, 2604_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2604_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2604_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        _timing_tables = 1;
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        if (_timing_tables) {
            /*OUT: {
            Reverse<--, 2617_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2617_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2617_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            printf(" K, Tcluster,   Tvalid,   Tsum\n");
            /*OUT: {
            Reverse<--, 2617_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2617_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2617_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        for (i = 0; i < len; i++) {
            /*OUT: {
            Reverse<--, 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            if (_timing_tables) {
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                double _imopVarPre548;
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                double _imopVarPre549;
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                double _imopVarPre550;
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                int _imopVarPre551;
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre548 = min_cluster_timing[i] + min_valid_timing[i];
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre549 = min_valid_timing[i];
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre550 = min_cluster_timing[i];
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre551 = min_nclusters + i;
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                printf("%2d, %8.4f, %8.4f, %8.4f\n", _imopVarPre551, _imopVarPre550, _imopVarPre549, _imopVarPre548);
                /*OUT: {
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_0; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
            } else {
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                int _imopVarPre553;
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre553 = min_nclusters + i;
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                printf("for %2d clusters: ", _imopVarPre553);
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                float _imopVarPre555;
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre555 = validity[i];
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                printf("validity = %6.4f", _imopVarPre555);
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                double _imopVarPre557;
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre557 = min_cluster_timing[i];
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                printf(" T_cluster = %8.4f", _imopVarPre557);
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                double _imopVarPre559;
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre559 = min_valid_timing[i];
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                printf(" T_valid = %8.4f", _imopVarPre559);
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                double _imopVarPre561;
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                _imopVarPre561 = min_cluster_timing[i] + min_valid_timing[i];
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
                printf(" T_sum = %8.4f\n", _imopVarPre561);
                /*OUT: {
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
                Reverse<--, 2626_1; 2624_0; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
            }
        }
        /*OUT: {
        Reverse<--, 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        for (i = 0; i < 79; i++) {
            /*OUT: {
            Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            printf("-");
            /*OUT: {
            Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2694_0; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        printf("\n");
        /*OUT: {
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        sum = 0.0;
        /*OUT: {
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2709_0; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_0; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2709_0; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        for (i = 0; i < len; i++) {
            /*OUT: {
            Reverse<--, 2709_0; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2709_0; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2709_0; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            sum += min_cluster_timing[i];
        }
        /*OUT: {
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        if (_timing_tables) {
            /*OUT: {
            Reverse<--, 2714_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2714_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2714_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
            printf("  , %8.4f,", sum);
            /*OUT: {
            Reverse<--, 2714_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2714_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2714_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 2714_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2714_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2714_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
            printf("sum                                              %.4f", sum);
            /*OUT: {
            Reverse<--, 2714_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2714_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2714_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        sum = 0.0;
        /*OUT: {
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2728_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2728_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2728_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        for (i = 0; i < len; i++) {
            /*OUT: {
            Reverse<--, 2728_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2728_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2728_0; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            sum += min_valid_timing[i];
        }
        /*OUT: {
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        if (_timing_tables) {
            /*OUT: {
            Reverse<--, 2733_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2733_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2733_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf(" %8.4f,", sum);
            /*OUT: {
            Reverse<--, 2733_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2733_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2733_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 2733_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2733_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2733_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf("           %8.4f", sum);
            /*OUT: {
            Reverse<--, 2733_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2733_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2733_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2745_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2745_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2745_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        for (i = 0; i < len; i++) {
            /*OUT: {
            Reverse<--, 2745_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2745_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2745_0; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            sum += min_cluster_timing[i];
        }
        /*OUT: {
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        if (_timing_tables) {
            /*OUT: {
            Reverse<--, 2750_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2750_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2750_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf(" %8.4f\n", sum);
            /*OUT: {
            Reverse<--, 2750_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2750_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2750_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 2750_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2750_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2750_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf("           %.4f\n", sum);
            /*OUT: {
            Reverse<--, 2750_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2750_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2750_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        printf("I/O time = %8.4f\n", io_timing);
        /*OUT: {
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        if (!_timing_tables) {
            /*OUT: {
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf("Conclude : best no. of clusters found = %d\n", best_nclusters);
            /*OUT: {
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            /*OUT: {
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
            printf("Total timing = %10.4f sec\n", min_timing);
            /*OUT: {
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
            Reverse<--, 2766_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        /*OUT: {
        Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        for (i = 0; i < 79; i++) {
            /*OUT: {
            Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
            printf("-");
            /*OUT: {
            Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
            Reverse<--, 2778_0; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
        }
        /*OUT: {
        Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
        printf("\n");
        /*OUT: {
        Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
        Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
        Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(min_valid_timing);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(min_cluster_timing);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(valid_timing);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(clustering_timing);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(validity);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(cluster_assign);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(attributes);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    float *_imopVarPre563;
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    _imopVarPre563 = cluster_centres[0];
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(_imopVarPre563);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(cluster_centres);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    free(buf);
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    /*OUT: {
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2361_1; 2340_1; 2272_1; 2259_0; 2251_0; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2155_1; 2045_0; 1931_1;>
    Reverse<--, 2778_1; 2745_1; 2728_1; 2709_1; 2694_1; 2624_1; 2569_0; 2495_1; 2361_1; 2340_1; 2251_1; 2221_1; 2045_1; 1931_1;>
    Reverse<--, 2569_1; 2495_1; 2155_1; 2045_0; 1931_1;>}*/
    return 0;
}
