
/*READ_S: []
WRITE_S: []*/
typedef long long __int64_t;
/*READ_S: []
WRITE_S: []*/
typedef long unsigned int __darwin_size_t;
/*READ_S: []
WRITE_S: []*/
typedef long __darwin_ssize_t;
/*READ_S: []
WRITE_S: []*/
typedef __int64_t __darwin_off_t;
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
WRITE_S: [fclose]*/
int fclose(FILE *);
/*READ_S: []
WRITE_S: [fgets]*/
char *fgets(char *restrict , int  , FILE *);
/*READ_S: []
WRITE_S: [fopen]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*READ_S: []
WRITE_S: [fprintf]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [rewind]*/
void rewind(FILE *);
/*READ_S: []
WRITE_S: []*/
typedef __darwin_ssize_t ssize_t;
/*READ_S: []
WRITE_S: [atof]*/
double atof(const char *);
/*READ_S: []
WRITE_S: [atoi]*/
int atoi(const char *);
/*READ_S: []
WRITE_S: [calloc]*/
void *calloc(size_t __count, size_t __size);
/*READ_S: []
WRITE_S: [exit]*/
void exit(int );
/*READ_S: []
WRITE_S: [free]*/
void free(void *);
/*READ_S: []
WRITE_S: [malloc]*/
void *malloc(size_t __size);
/*READ_S: []
WRITE_S: [random]*/
long random(void );
/*READ_S: []
WRITE_S: [srandom]*/
void srandom(unsigned );
/*READ_S: []
WRITE_S: [strerror]*/
char *strerror(int __errnum);
/*READ_S: []
WRITE_S: [strtok]*/
char *strtok(char *__str, const char *__sep);
/*READ_S: []
WRITE_S: [__error]*/
extern int *__error(void );
/*READ_S: []
WRITE_S: [pow]*/
extern double pow(double , double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: [close]*/
int close(int );
/*READ_S: []
WRITE_S: [read]*/
ssize_t read(int , void * , size_t );
/*READ_S: []
WRITE_S: [getopt]*/
int getopt(int , char *const [] , const char *);
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
WRITE_S: []*/
#pragma pack(4)
/*READ_S: []
WRITE_S: []*/
#pragma pack()
/*READ_S: []
WRITE_S: []*/
struct _filesec ;
/*READ_S: []
WRITE_S: [open]*/
int open(const char *, int , ...);
/*READ_S: []
WRITE_S: [omp_set_num_threads]*/
extern void omp_set_num_threads(int );
/*READ_S: []
WRITE_S: [omp_get_max_threads]*/
extern int omp_get_max_threads(void );
/*READ_S: []
WRITE_S: [omp_get_thread_num]*/
extern int omp_get_thread_num(void );
/*READ_S: []
WRITE_S: [omp_get_wtime]*/
extern double omp_get_wtime(void );
/*READ_S: []
WRITE_S: [multid_feuclid_dist]*/
float multid_feuclid_dist(float *, float * , int );
/*READ_S: []
WRITE_S: [euclid_dist_2]*/
float euclid_dist_2(float *, float * , int );
/*READ_S: []
WRITE_S: [find_nearest_point]*/
int find_nearest_point(float *, int  , float ** , int );
/*READ_S: []
WRITE_S: [sum_fuzzy_members]*/
void sum_fuzzy_members(float **, int  , float ** , int  , int  , float  , float *);
/*READ_S: []
WRITE_S: [fuzzy_kmeans_cluster]*/
float **fuzzy_kmeans_cluster(int , float ** , int  , int  , int  , float  , float );
/*READ_S: []
WRITE_S: [fuzzy_validity]*/
float fuzzy_validity(float **, int  , int  , float ** , int  , float );
/*READ_S: []
WRITE_S: [extract_moments]*/
float *extract_moments(float *, int  , int );
/*READ_S: []
WRITE_S: [zscore_transform]*/
void zscore_transform(float **, int  , int );
/*READ_S: []
WRITE_S: [cluster]*/
int cluster(int , int  , int  , int  , int  , int  , float ** , int  , int  , int  , float  , float  , int * , float *** , int * , float * , double * , double *);
/*READ_S: []
WRITE_S: [kmeans_clustering]*/
float **kmeans_clustering(int , float ** , int  , int  , int  , float  , int *);
/*READ_S: []
WRITE_S: [_debug]*/
int _debug;
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#28, heapCell#35, sqrt]
WRITE_S: []*/
__inline float multid_feuclid_dist(float *pt1, float *pt2 , int numdims) {
/*READ_S: [heapCell#28, heapCell#35, sqrt]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    float ans = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#28, heapCell#35]
    WRITE_S: []*/
    for (i = 0; i < numdims; i++) {
    /*READ_S: [heapCell#28, heapCell#35]
    WRITE_S: []*/
        /*READ_S: [heapCell#28, heapCell#35]
        WRITE_S: []*/
        ans += ((pt1[i] - pt2[i]) * (pt1[i] - pt2[i]));
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre143;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre143 = (double) ans;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre144 = sqrt(_imopVarPre143);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ans = _imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    return ans;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#34, euclid_dist_2, heapCell#16, heapCell#6, heapCell#17, heapCell#3, heapCell#35]
WRITE_S: []*/
__inline int find_nearest_point(float *pt, int nfeatures , float **pts , int npts) {
/*READ_S: [heapCell#34, heapCell#16, euclid_dist_2, heapCell#6, heapCell#17, heapCell#3, heapCell#35]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int index;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    float max_dist = 3.40282346638528859812e+38F;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#34, heapCell#16, euclid_dist_2, heapCell#6, heapCell#17, heapCell#3, heapCell#35]
    WRITE_S: []*/
    for (i = 0; i < npts; i++) {
    /*READ_S: [heapCell#34, heapCell#16, euclid_dist_2, heapCell#6, heapCell#17, heapCell#3, heapCell#35]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        float dist;
        /*READ_S: []
        WRITE_S: []*/
        float *_imopVarPre146;
        /*READ_S: []
        WRITE_S: []*/
        float _imopVarPre147;
        /*READ_S: [heapCell#34, heapCell#16]
        WRITE_S: []*/
        _imopVarPre146 = pts[i];
        /*READ_S: [euclid_dist_2]
        WRITE_S: []*/
        _imopVarPre147 = euclid_dist_2(pt, _imopVarPre146, nfeatures);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        dist = _imopVarPre147;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (dist < max_dist) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            max_dist = dist;
            /*READ_S: []
            WRITE_S: []*/
            index = i;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return index;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, i, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
WRITE_S: [heapCell#36, heapCell#38]*/
__inline void sum_fuzzy_members(float **feature, int npoints , float **cluster_centres , int nclusters , int nfeatures , float fuzzyq , float *sum_points) {
/*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, i, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
WRITE_S: [heapCell#36, heapCell#38]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    float distance;
    /*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, i, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
    WRITE_S: [heapCell#36, heapCell#38]*/
#pragma omp parallel shared(sum_points, feature, cluster_centres) firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, distance)
    {
    /*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, i, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
    WRITE_S: [heapCell#36, heapCell#38]*/
        /*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, i, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
        WRITE_S: [heapCell#36, heapCell#38]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < npoints; i++) {
        /*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
        WRITE_S: [heapCell#36, heapCell#38]*/
            /*READ_S: [sum_points]
            WRITE_S: [heapCell#36, heapCell#38]*/
            sum_points[i] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
            WRITE_S: [heapCell#36]*/
            for (j = 0; j < nclusters; j++) {
            /*READ_S: [sum_points, euclid_dist_2, heapCell#17, cluster_centres, heapCell#2, heapCell#3, heapCell#36, heapCell#5, heapCell#34, heapCell#16, heapCell#6, feature, pow, heapCell#35]
            WRITE_S: [heapCell#36]*/
                /*READ_S: []
                WRITE_S: []*/
                float *_imopVarPre150;
                /*READ_S: []
                WRITE_S: []*/
                float *_imopVarPre151;
                /*READ_S: []
                WRITE_S: []*/
                float _imopVarPre152;
                /*READ_S: [heapCell#34, heapCell#16, cluster_centres]
                WRITE_S: []*/
                _imopVarPre150 = cluster_centres[j];
                /*READ_S: [heapCell#5, feature, heapCell#2]
                WRITE_S: []*/
                _imopVarPre151 = feature[i];
                /*READ_S: [euclid_dist_2]
                WRITE_S: []*/
                _imopVarPre152 = euclid_dist_2(_imopVarPre151, _imopVarPre150, nfeatures);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                distance = _imopVarPre152;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre155;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre156;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre157;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre155 = 1.0 / (fuzzyq - 1);
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre156 = 1.0 / (distance + 0.00001);
                /*READ_S: [pow]
                WRITE_S: []*/
                _imopVarPre157 = pow(_imopVarPre156, _imopVarPre155);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [sum_points, heapCell#36]
                WRITE_S: [heapCell#36]*/
                sum_points[i] += _imopVarPre157;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [omp_get_wtime, i, omp_get_max_threads, heapCell#28, feature, partial_sum, heapCell#34, heapCell#33, multid_feuclid_dist, feature, sum_fuzzy_members, heapCell#27, j, membership, heapCell#17, heapCell#29, cluster_centres, heapCell#3, heapCell#2, free, heapCell#26, heapCell#36, printf, heapCell#6, _imopVarPre237, fuzzyq, euclid_dist_2, _debug, k, omp_get_thread_num, cluster_centres, calloc, random, sum_points, is_perform_atomic, malloc, sqd_dist, sqrt, heapCell#16, sum, pow, heapCell#35, sum_points, heapCell#32, heapCell#30, nfeatures, npoints, heapCell#31, i, heapCell#5, new_centre, partial_new_centre, nclusters]
WRITE_S: [k, heapCell#32, i, membership, heapCell#28, heapCell#29, heapCell#30, heapCell#26, sqd_dist, heapCell#38, heapCell#36, heapCell#31, heapCell#34, heapCell#33, heapCell#27, heapCell#35]*/
float **fuzzy_kmeans_cluster(int is_perform_atomic, float **feature , int nfeatures , int npoints , int nclusters , float fuzzyq , float delta_centres_threshold) {
/*READ_S: [omp_get_wtime, i, omp_get_max_threads, heapCell#28, feature, partial_sum, heapCell#34, heapCell#33, multid_feuclid_dist, feature, sum_fuzzy_members, heapCell#27, j, membership, heapCell#17, heapCell#29, cluster_centres, heapCell#3, heapCell#2, free, heapCell#26, heapCell#36, printf, heapCell#6, _imopVarPre237, fuzzyq, euclid_dist_2, _debug, k, omp_get_thread_num, cluster_centres, calloc, random, sum_points, is_perform_atomic, malloc, sqd_dist, sqrt, heapCell#16, sum, pow, heapCell#35, sum_points, heapCell#32, heapCell#30, nfeatures, npoints, heapCell#31, i, heapCell#5, new_centre, partial_new_centre, nclusters]
WRITE_S: [k, heapCell#32, i, membership, heapCell#28, heapCell#29, heapCell#30, heapCell#26, sqd_dist, heapCell#38, heapCell#36, heapCell#31, heapCell#34, heapCell#33, heapCell#27, heapCell#35]*/
    /*READ_S: []
    WRITE_S: []*/
    float **cluster_centres;
    /*READ_S: []
    WRITE_S: []*/
    float max_delta_centres = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    float *sum_points;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int loop = 0;
    /*READ_S: []
    WRITE_S: []*/
    double timing;
    /*READ_S: []
    WRITE_S: []*/
    float sqd_dist;
    /*READ_S: []
    WRITE_S: []*/
    float membership;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads;
    /*READ_S: []
    WRITE_S: []*/
    float **new_centre;
    /*READ_S: []
    WRITE_S: []*/
    float *sum;
    /*READ_S: []
    WRITE_S: []*/
    float **partial_sum;
    /*READ_S: []
    WRITE_S: []*/
    float ***partial_new_centre;
    /*READ_S: [omp_get_max_threads]
    WRITE_S: []*/
    nthreads = omp_get_max_threads();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre160;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre161;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre160 = sizeof(float);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre161 = calloc(nclusters, _imopVarPre160);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    sum = (float *) _imopVarPre161;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre164;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre165;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre164 = nclusters * sizeof(float *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre165 = malloc(_imopVarPre164);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    new_centre = (float **) _imopVarPre165;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre169;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre170;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre171;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre169 = sizeof(float);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre170 = nclusters * nfeatures;
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre171 = calloc(_imopVarPre170, _imopVarPre169);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#27]*/
    new_centre[0] = (float *) _imopVarPre171;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#27]
    WRITE_S: [heapCell#27]*/
    for (i = 1; i < nclusters; i++) {
    /*READ_S: [heapCell#27]
    WRITE_S: [heapCell#27]*/
        /*READ_S: [heapCell#27]
        WRITE_S: [heapCell#27]*/
        new_centre[i] = new_centre[i - 1] + nfeatures;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#31, heapCell#29, calloc, malloc]
    WRITE_S: [heapCell#31, heapCell#32, heapCell#29]*/
    if (!is_perform_atomic) {
    /*READ_S: [heapCell#31, heapCell#29, calloc, malloc]
    WRITE_S: [heapCell#31, heapCell#32, heapCell#29]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre174;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre175;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre174 = nthreads * sizeof(float *);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre175 = malloc(_imopVarPre174);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        partial_sum = (float **) _imopVarPre175;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre179;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre180;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre181;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre179 = sizeof(float);
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre180 = nthreads * nclusters;
        /*READ_S: [calloc]
        WRITE_S: []*/
        _imopVarPre181 = calloc(_imopVarPre180, _imopVarPre179);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#29]*/
        partial_sum[0] = (float *) _imopVarPre181;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#29]
        WRITE_S: [heapCell#29]*/
        for (i = 1; i < nthreads; i++) {
        /*READ_S: [heapCell#29]
        WRITE_S: [heapCell#29]*/
            /*READ_S: [heapCell#29]
            WRITE_S: [heapCell#29]*/
            partial_sum[i] = partial_sum[i - 1] + nclusters;
        }
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre184;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre185;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre184 = nthreads * sizeof(float **);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre185 = malloc(_imopVarPre184);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        partial_new_centre = (float ***) _imopVarPre185;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre188;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre189;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre188 = nthreads * nclusters * sizeof(float *);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre189 = malloc(_imopVarPre188);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#31]*/
        partial_new_centre[0] = (float **) _imopVarPre189;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#31]
        WRITE_S: [heapCell#31]*/
        for (i = 1; i < nthreads; i++) {
        /*READ_S: [heapCell#31]
        WRITE_S: [heapCell#31]*/
            /*READ_S: [heapCell#31]
            WRITE_S: [heapCell#31]*/
            partial_new_centre[i] = partial_new_centre[i - 1] + nclusters;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#31, calloc]
        WRITE_S: [heapCell#32]*/
        for (i = 0; i < nthreads; i++) {
        /*READ_S: [heapCell#31, calloc]
        WRITE_S: [heapCell#32]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#31, calloc]
            WRITE_S: [heapCell#32]*/
            for (j = 0; j < nclusters; j++) {
            /*READ_S: [heapCell#31, calloc]
            WRITE_S: [heapCell#32]*/
                /*READ_S: []
                WRITE_S: []*/
                unsigned long int _imopVarPre192;
                /*READ_S: []
                WRITE_S: []*/
                void *_imopVarPre193;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre192 = sizeof(float);
                /*READ_S: [calloc]
                WRITE_S: []*/
                _imopVarPre193 = calloc(nfeatures, _imopVarPre192);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#31]
                WRITE_S: [heapCell#32]*/
                partial_new_centre[i][j] = (float *) _imopVarPre193;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre196;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre197;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre196 = nclusters * sizeof(float *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre197 = malloc(_imopVarPre196);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    cluster_centres = (float **) _imopVarPre197;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre200;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre201;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre200 = nclusters * nfeatures * sizeof(float);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre201 = malloc(_imopVarPre200);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#34]*/
    cluster_centres[0] = (float *) _imopVarPre201;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#34]
    WRITE_S: [heapCell#34]*/
    for (i = 1; i < nclusters; i++) {
    /*READ_S: [heapCell#34]
    WRITE_S: [heapCell#34]*/
        /*READ_S: [heapCell#34]
        WRITE_S: [heapCell#34]*/
        cluster_centres[i] = cluster_centres[i - 1] + nfeatures;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#34, heapCell#5, heapCell#6, random, heapCell#2, heapCell#3]
    WRITE_S: [heapCell#35]*/
    for (i = 0; i < nclusters; i++) {
    /*READ_S: [heapCell#34, heapCell#5, heapCell#6, random, heapCell#2, heapCell#3]
    WRITE_S: [heapCell#35]*/
        /*READ_S: []
        WRITE_S: []*/
        signed long int _imopVarPre203;
        /*READ_S: [random]
        WRITE_S: []*/
        _imopVarPre203 = random();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int n = (int) _imopVarPre203 % npoints;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#34, heapCell#5, heapCell#6, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#35]*/
        for (j = 0; j < nfeatures; j++) {
        /*READ_S: [heapCell#34, heapCell#5, heapCell#6, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#35]*/
            /*READ_S: [heapCell#34, heapCell#5, heapCell#6, heapCell#2, heapCell#3]
            WRITE_S: [heapCell#35]*/
            cluster_centres[i][j] = feature[n][j];
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre206;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre207;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre206 = npoints * sizeof(float);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre207 = malloc(_imopVarPre206);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    sum_points = (float *) _imopVarPre207;
    /*READ_S: [_debug]
    WRITE_S: []*/
    /*READ_S: [_debug, omp_get_wtime]
    WRITE_S: []*/
    if (_debug) {
    /*READ_S: [omp_get_wtime]
    WRITE_S: []*/
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        timing = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre237;
    /*READ_S: [_imopVarPre237]
    WRITE_S: []*/
    /*READ_S: [euclid_dist_2, k, i, omp_get_thread_num, heapCell#28, cluster_centres, sum_points, feature, is_perform_atomic, partial_sum, sqrt, sqd_dist, heapCell#34, heapCell#16, heapCell#33, sum, sum_fuzzy_members, multid_feuclid_dist, feature, pow, heapCell#27, heapCell#35, sum_points, heapCell#32, j, membership, heapCell#17, heapCell#29, cluster_centres, heapCell#2, heapCell#3, heapCell#30, nfeatures, heapCell#26, npoints, i, heapCell#36, heapCell#31, heapCell#5, heapCell#6, _imopVarPre237, fuzzyq, new_centre, nclusters, partial_new_centre]
    WRITE_S: [heapCell#36, k, heapCell#33, i, membership, heapCell#28, heapCell#30, heapCell#26, heapCell#35, sqd_dist, heapCell#38]*/
    do {
    /*READ_S: [euclid_dist_2, k, i, omp_get_thread_num, heapCell#28, cluster_centres, sum_points, feature, is_perform_atomic, partial_sum, sqrt, sqd_dist, heapCell#34, heapCell#16, heapCell#33, sum, sum_fuzzy_members, multid_feuclid_dist, feature, pow, heapCell#27, heapCell#35, sum_points, heapCell#32, j, membership, heapCell#17, heapCell#29, cluster_centres, heapCell#2, heapCell#3, heapCell#30, nfeatures, heapCell#26, npoints, i, heapCell#36, heapCell#31, heapCell#5, heapCell#6, _imopVarPre237, fuzzyq, new_centre, nclusters, partial_new_centre]
    WRITE_S: [heapCell#36, k, heapCell#33, i, membership, heapCell#28, heapCell#30, heapCell#26, heapCell#35, sqd_dist, heapCell#38]*/
        /*READ_S: []
        WRITE_S: []*/
        max_delta_centres = 0.0;
        /*READ_S: [sum_fuzzy_members]
        WRITE_S: []*/
        sum_fuzzy_members(feature, npoints, cluster_centres, nclusters, nfeatures, fuzzyq, sum_points);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [is_perform_atomic]
        WRITE_S: []*/
        /*READ_S: [euclid_dist_2, k, i, omp_get_thread_num, heapCell#28, cluster_centres, sum_points, feature, is_perform_atomic, partial_sum, sqd_dist, heapCell#34, heapCell#33, sum, pow, heapCell#27, heapCell#35, heapCell#32, j, membership, heapCell#29, heapCell#17, heapCell#30, heapCell#2, heapCell#3, heapCell#26, nfeatures, npoints, heapCell#36, heapCell#31, heapCell#5, heapCell#6, fuzzyq, new_centre, nclusters, partial_new_centre]
        WRITE_S: [k, heapCell#33, membership, i, heapCell#28, heapCell#30, heapCell#26, sqd_dist]*/
        if (is_perform_atomic) {
        /*READ_S: [euclid_dist_2, j, heapCell#17, cluster_centres, heapCell#28, heapCell#3, heapCell#2, sum_points, feature, heapCell#26, heapCell#36, heapCell#34, heapCell#5, heapCell#6, sum, new_centre, pow, heapCell#27, heapCell#35]
        WRITE_S: [heapCell#28, heapCell#26]*/
            /*READ_S: [euclid_dist_2, j, heapCell#17, cluster_centres, heapCell#28, heapCell#3, heapCell#2, sum_points, feature, heapCell#26, heapCell#36, heapCell#34, heapCell#5, heapCell#6, sum, new_centre, pow, heapCell#27, heapCell#35]
            WRITE_S: [heapCell#28, heapCell#26]*/
#pragma omp parallel firstprivate(npoints, nclusters, nfeatures, fuzzyq) shared(feature, cluster_centres, sum, new_centre) private(i, j, k, sqd_dist, membership)
            {
            /*READ_S: [euclid_dist_2, j, heapCell#17, cluster_centres, heapCell#28, heapCell#3, heapCell#2, sum_points, feature, heapCell#26, heapCell#36, heapCell#34, heapCell#5, heapCell#6, sum, new_centre, pow, heapCell#27, heapCell#35]
            WRITE_S: [heapCell#28, heapCell#26]*/
                /*READ_S: [euclid_dist_2, j, heapCell#17, cluster_centres, heapCell#28, heapCell#3, heapCell#2, sum_points, feature, heapCell#26, heapCell#36, heapCell#34, heapCell#5, heapCell#6, sum, new_centre, pow, heapCell#27, heapCell#35]
                WRITE_S: [heapCell#28, heapCell#26]*/
#pragma omp for schedule(static) nowait
                /*READ_S: [j]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (j = 0; j < npoints; j++) {
                /*READ_S: [euclid_dist_2, heapCell#17, cluster_centres, heapCell#28, heapCell#3, heapCell#2, sum_points, feature, heapCell#26, heapCell#36, heapCell#34, heapCell#5, heapCell#6, sum, new_centre, pow, heapCell#27, heapCell#35]
                WRITE_S: [heapCell#28, heapCell#26]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [euclid_dist_2, heapCell#17, cluster_centres, heapCell#28, heapCell#3, heapCell#2, sum_points, feature, heapCell#26, heapCell#36, heapCell#34, heapCell#5, heapCell#6, sum, new_centre, pow, heapCell#27, heapCell#35]
                    WRITE_S: [heapCell#28, heapCell#26]*/
                    for (i = 0; i < nclusters; i++) {
                    /*READ_S: [euclid_dist_2, heapCell#17, cluster_centres, heapCell#28, heapCell#3, heapCell#2, sum_points, feature, heapCell#26, heapCell#36, heapCell#34, heapCell#5, heapCell#6, sum, new_centre, pow, heapCell#27, heapCell#35]
                    WRITE_S: [heapCell#28, heapCell#26]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        float *_imopVarPre210;
                        /*READ_S: []
                        WRITE_S: []*/
                        float *_imopVarPre211;
                        /*READ_S: []
                        WRITE_S: []*/
                        float _imopVarPre212;
                        /*READ_S: [heapCell#34, cluster_centres]
                        WRITE_S: []*/
                        _imopVarPre210 = cluster_centres[i];
                        /*READ_S: [heapCell#5, heapCell#2, feature]
                        WRITE_S: []*/
                        _imopVarPre211 = feature[j];
                        /*READ_S: [euclid_dist_2]
                        WRITE_S: []*/
                        _imopVarPre212 = euclid_dist_2(_imopVarPre211, _imopVarPre210, nfeatures);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        sqd_dist = _imopVarPre212;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre216;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre217;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre218;
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre216 = 1.0 / (fuzzyq - 1);
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre217 = 1.0 / (sqd_dist + 0.00001);
                        /*READ_S: [pow]
                        WRITE_S: []*/
                        _imopVarPre218 = pow(_imopVarPre217, _imopVarPre216);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [heapCell#36, sum_points]
                        WRITE_S: []*/
                        membership = _imopVarPre218 / (sum_points[j] + 0.00001);
                        /*READ_S: [pow]
                        WRITE_S: []*/
                        membership = pow(membership, fuzzyq);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        // #pragma omp dummyFlush ATOMIC_START
                        /*READ_S: [sum, heapCell#26]
                        WRITE_S: [heapCell#26]*/
#pragma omp atomic
                        /*READ_S: [sum, heapCell#26]
                        WRITE_S: [heapCell#26]*/
                        sum[i] += membership;
                        /*READ_S: []
                        WRITE_S: []*/
                        // #pragma omp dummyFlush ATOMIC_END
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [heapCell#5, heapCell#6, heapCell#28, new_centre, heapCell#2, heapCell#3, heapCell#27, feature]
                        WRITE_S: [heapCell#28]*/
                        for (k = 0; k < nfeatures; k++) {
                        /*READ_S: [heapCell#5, heapCell#6, heapCell#28, new_centre, heapCell#2, heapCell#3, heapCell#27, feature]
                        WRITE_S: [heapCell#28]*/
                            /*READ_S: []
                            WRITE_S: []*/
                            // #pragma omp dummyFlush ATOMIC_START
                            /*READ_S: [heapCell#5, heapCell#6, heapCell#28, new_centre, heapCell#2, heapCell#3, heapCell#27, feature]
                            WRITE_S: [heapCell#28]*/
#pragma omp atomic
                            /*READ_S: [heapCell#5, heapCell#6, heapCell#28, new_centre, heapCell#2, heapCell#3, heapCell#27, feature]
                            WRITE_S: [heapCell#28]*/
                            new_centre[i][k] += membership * feature[j][k];
                            /*READ_S: []
                            WRITE_S: []*/
                            // #pragma omp dummyFlush ATOMIC_END
                        }
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
        } else {
        /*READ_S: [euclid_dist_2, k, i, omp_get_thread_num, cluster_centres, heapCell#28, sum_points, feature, partial_sum, sqd_dist, heapCell#34, heapCell#33, pow, heapCell#27, heapCell#35, heapCell#32, j, membership, heapCell#29, heapCell#17, heapCell#30, heapCell#3, heapCell#2, heapCell#26, nfeatures, npoints, heapCell#36, heapCell#31, heapCell#5, heapCell#6, fuzzyq, nclusters, partial_new_centre]
        WRITE_S: [k, heapCell#33, membership, i, heapCell#28, heapCell#30, heapCell#26, sqd_dist]*/
            /*READ_S: [k, euclid_dist_2, i, omp_get_thread_num, cluster_centres, sum_points, feature, partial_sum, sqd_dist, heapCell#34, heapCell#33, pow, heapCell#35, heapCell#32, j, membership, heapCell#17, heapCell#29, heapCell#3, heapCell#2, heapCell#30, npoints, nfeatures, heapCell#31, heapCell#36, heapCell#5, heapCell#6, fuzzyq, nclusters, partial_new_centre]
            WRITE_S: [k, heapCell#33, membership, i, heapCell#30, sqd_dist]*/
#pragma omp parallel shared(feature, cluster_centres, partial_sum, new_centre)
            {
            /*READ_S: [k, euclid_dist_2, i, omp_get_thread_num, cluster_centres, sum_points, feature, partial_sum, sqd_dist, heapCell#34, heapCell#33, pow, heapCell#35, heapCell#32, j, membership, heapCell#17, heapCell#29, heapCell#3, heapCell#2, heapCell#30, npoints, nfeatures, heapCell#31, heapCell#36, heapCell#5, heapCell#6, fuzzyq, nclusters, partial_new_centre]
            WRITE_S: [k, heapCell#33, membership, i, heapCell#30, sqd_dist]*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre219;
                /*READ_S: [omp_get_thread_num]
                WRITE_S: []*/
                _imopVarPre219 = omp_get_thread_num();
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int tid = _imopVarPre219;
                /*READ_S: [k, euclid_dist_2, i, cluster_centres, sum_points, feature, partial_sum, sqd_dist, heapCell#34, heapCell#33, pow, heapCell#35, heapCell#32, j, membership, heapCell#17, heapCell#29, heapCell#3, heapCell#2, heapCell#30, npoints, nfeatures, heapCell#31, heapCell#36, heapCell#5, heapCell#6, fuzzyq, nclusters, partial_new_centre]
                WRITE_S: [k, heapCell#33, membership, i, heapCell#30, sqd_dist]*/
#pragma omp for firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, k, sqd_dist, membership) schedule(static) nowait
                /*READ_S: [j]
                WRITE_S: []*/
                /*READ_S: [npoints]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (j = 0; j < npoints; j++) {
                /*READ_S: [k, euclid_dist_2, i, cluster_centres, sum_points, feature, partial_sum, sqd_dist, heapCell#34, heapCell#33, pow, heapCell#35, heapCell#32, membership, heapCell#17, heapCell#29, heapCell#3, heapCell#2, heapCell#30, nfeatures, heapCell#31, heapCell#36, heapCell#5, heapCell#6, fuzzyq, nclusters, partial_new_centre]
                WRITE_S: [k, heapCell#33, membership, i, heapCell#30, sqd_dist]*/
                    /*READ_S: []
                    WRITE_S: [i]*/
                    /*READ_S: [i, nclusters]
                    WRITE_S: []*/
                    /*READ_S: [i]
                    WRITE_S: [i]*/
                    /*READ_S: [k, euclid_dist_2, i, cluster_centres, sum_points, feature, partial_sum, sqd_dist, heapCell#34, heapCell#33, pow, heapCell#35, heapCell#32, membership, heapCell#17, heapCell#29, heapCell#3, heapCell#2, heapCell#30, nfeatures, heapCell#31, heapCell#36, heapCell#5, heapCell#6, fuzzyq, nclusters, partial_new_centre]
                    WRITE_S: [k, heapCell#33, membership, i, heapCell#30, sqd_dist]*/
                    for (i = 0; i < nclusters; i++) {
                    /*READ_S: [k, euclid_dist_2, i, cluster_centres, sum_points, feature, partial_sum, sqd_dist, heapCell#34, heapCell#33, pow, heapCell#35, heapCell#32, membership, heapCell#17, heapCell#29, heapCell#3, heapCell#2, heapCell#30, nfeatures, heapCell#31, heapCell#36, heapCell#5, heapCell#6, fuzzyq, partial_new_centre]
                    WRITE_S: [k, heapCell#33, membership, heapCell#30, sqd_dist]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        float *_imopVarPre222;
                        /*READ_S: []
                        WRITE_S: []*/
                        float *_imopVarPre223;
                        /*READ_S: []
                        WRITE_S: []*/
                        float _imopVarPre224;
                        /*READ_S: [heapCell#34, i, cluster_centres]
                        WRITE_S: []*/
                        _imopVarPre222 = cluster_centres[i];
                        /*READ_S: [heapCell#5, heapCell#2, feature]
                        WRITE_S: []*/
                        _imopVarPre223 = feature[j];
                        /*READ_S: [euclid_dist_2, nfeatures]
                        WRITE_S: []*/
                        _imopVarPre224 = euclid_dist_2(_imopVarPre223, _imopVarPre222, nfeatures);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: [sqd_dist]*/
                        sqd_dist = _imopVarPre224;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre228;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre229;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre230;
                        /*READ_S: [fuzzyq]
                        WRITE_S: []*/
                        _imopVarPre228 = 1.0 / (fuzzyq - 1);
                        /*READ_S: [sqd_dist]
                        WRITE_S: []*/
                        _imopVarPre229 = 1.0 / (sqd_dist + 0.00001);
                        /*READ_S: [pow]
                        WRITE_S: []*/
                        _imopVarPre230 = pow(_imopVarPre229, _imopVarPre228);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [heapCell#36, sum_points]
                        WRITE_S: [membership]*/
                        membership = _imopVarPre230 / (sum_points[j] + 0.00001);
                        /*READ_S: [membership, fuzzyq, pow]
                        WRITE_S: []*/
                        membership = pow(membership, fuzzyq);
                        /*READ_S: []
                        WRITE_S: [membership]*/
                        /*READ_S: [i, membership, heapCell#29, heapCell#30, partial_sum]
                        WRITE_S: [heapCell#30]*/
                        partial_sum[tid][i] += membership;
                        /*READ_S: []
                        WRITE_S: [k]*/
                        /*READ_S: [k, nfeatures]
                        WRITE_S: []*/
                        /*READ_S: [k]
                        WRITE_S: [k]*/
                        /*READ_S: [k, heapCell#32, i, membership, heapCell#2, heapCell#3, feature, nfeatures, heapCell#31, heapCell#5, heapCell#33, heapCell#6, partial_new_centre]
                        WRITE_S: [k, heapCell#33]*/
                        for (k = 0; k < nfeatures; k++) {
                        /*READ_S: [heapCell#31, heapCell#5, heapCell#32, k, heapCell#33, heapCell#6, i, membership, heapCell#2, heapCell#3, feature, partial_new_centre]
                        WRITE_S: [heapCell#33]*/
                            /*READ_S: [heapCell#31, heapCell#5, heapCell#32, k, heapCell#33, heapCell#6, i, membership, heapCell#2, heapCell#3, feature, partial_new_centre]
                            WRITE_S: [heapCell#33]*/
                            partial_new_centre[tid][i][k] += membership * feature[j][k];
                        }
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#31, heapCell#32, heapCell#33, heapCell#29, heapCell#28, heapCell#30, heapCell#27, heapCell#26]
            WRITE_S: [heapCell#33, heapCell#28, heapCell#30, heapCell#26]*/
            for (i = 0; i < nclusters; i++) {
            /*READ_S: [heapCell#31, heapCell#32, heapCell#33, heapCell#29, heapCell#28, heapCell#30, heapCell#27, heapCell#26]
            WRITE_S: [heapCell#33, heapCell#28, heapCell#30, heapCell#26]*/
                /*READ_S: []
                WRITE_S: [heapCell#26]*/
                sum[i] = 0.0;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#27]
                WRITE_S: [heapCell#28]*/
                for (k = 0; k < nfeatures; k++) {
                /*READ_S: [heapCell#27]
                WRITE_S: [heapCell#28]*/
                    /*READ_S: [heapCell#27]
                    WRITE_S: [heapCell#28]*/
                    new_centre[i][k] = 0.0;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#31, heapCell#32, heapCell#33, heapCell#28, heapCell#29, heapCell#30, heapCell#27, heapCell#26]
                WRITE_S: [heapCell#33, heapCell#28, heapCell#30, heapCell#26]*/
                for (j = 0; j < nthreads; j++) {
                /*READ_S: [heapCell#31, heapCell#32, heapCell#33, heapCell#28, heapCell#29, heapCell#30, heapCell#27, heapCell#26]
                WRITE_S: [heapCell#33, heapCell#28, heapCell#30, heapCell#26]*/
                    /*READ_S: [heapCell#29, heapCell#30, heapCell#26]
                    WRITE_S: [heapCell#26]*/
                    sum[i] += partial_sum[j][i];
                    /*READ_S: [heapCell#29]
                    WRITE_S: [heapCell#30]*/
                    partial_sum[j][i] = 0.0;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#31, heapCell#32, heapCell#33, heapCell#28, heapCell#27]
                    WRITE_S: [heapCell#33, heapCell#28]*/
                    for (k = 0; k < nfeatures; k++) {
                    /*READ_S: [heapCell#31, heapCell#32, heapCell#33, heapCell#28, heapCell#27]
                    WRITE_S: [heapCell#33, heapCell#28]*/
                        /*READ_S: [heapCell#31, heapCell#32, heapCell#33, heapCell#28, heapCell#27]
                        WRITE_S: [heapCell#28]*/
                        new_centre[i][k] += partial_new_centre[j][i][k];
                        /*READ_S: [heapCell#31, heapCell#32]
                        WRITE_S: [heapCell#33]*/
                        partial_new_centre[j][i][k] = 0.0;
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#34, multid_feuclid_dist, heapCell#28, heapCell#27, heapCell#26, heapCell#35, sqrt]
        WRITE_S: [heapCell#28, heapCell#26, heapCell#35]*/
        for (i = 0; i < nclusters; i++) {
        /*READ_S: [heapCell#34, multid_feuclid_dist, heapCell#28, heapCell#27, heapCell#26, heapCell#35, sqrt]
        WRITE_S: [heapCell#28, heapCell#26, heapCell#35]*/
            /*READ_S: []
            WRITE_S: []*/
            float delta_centre;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#28, heapCell#27, heapCell#26]
            WRITE_S: [heapCell#28]*/
            for (k = 0; k < nfeatures; k++) {
            /*READ_S: [heapCell#28, heapCell#27, heapCell#26]
            WRITE_S: [heapCell#28]*/
                /*READ_S: [heapCell#28, heapCell#27, heapCell#26]
                WRITE_S: [heapCell#28]*/
                new_centre[i][k] /= sum[i];
            }
            /*READ_S: []
            WRITE_S: [heapCell#26]*/
            sum[i] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            float *_imopVarPre233;
            /*READ_S: []
            WRITE_S: []*/
            float *_imopVarPre234;
            /*READ_S: []
            WRITE_S: []*/
            float _imopVarPre235;
            /*READ_S: [heapCell#27]
            WRITE_S: []*/
            _imopVarPre233 = new_centre[i];
            /*READ_S: [heapCell#34]
            WRITE_S: []*/
            _imopVarPre234 = cluster_centres[i];
            /*READ_S: [multid_feuclid_dist]
            WRITE_S: []*/
            _imopVarPre235 = multid_feuclid_dist(_imopVarPre234, _imopVarPre233, nfeatures);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            delta_centre = _imopVarPre235;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#34, heapCell#28, heapCell#27]
            WRITE_S: [heapCell#28, heapCell#35]*/
            for (j = 0; j < nfeatures; j++) {
            /*READ_S: [heapCell#34, heapCell#28, heapCell#27]
            WRITE_S: [heapCell#28, heapCell#35]*/
                /*READ_S: [heapCell#34, heapCell#28, heapCell#27]
                WRITE_S: [heapCell#35]*/
                cluster_centres[i][j] = new_centre[i][j];
                /*READ_S: [heapCell#27]
                WRITE_S: [heapCell#28]*/
                new_centre[i][j] = 0.0;
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (delta_centre > max_delta_centres) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                max_delta_centres = delta_centre;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre237 = max_delta_centres > delta_centres_threshold;
        /*READ_S: [_imopVarPre237]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre237]
        WRITE_S: []*/
        if (_imopVarPre237) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre237 = loop++ < 500;
        }
    } while (_imopVarPre237);
    /*READ_S: [_debug]
    WRITE_S: []*/
    /*READ_S: [_debug, omp_get_wtime, printf]
    WRITE_S: []*/
    if (_debug) {
    /*READ_S: [omp_get_wtime, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre239;
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        _imopVarPre239 = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        timing = _imopVarPre239 - timing;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("nloops = %2d (T = %7.4f)", loop, timing);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [free, heapCell#26]
    WRITE_S: [heapCell#26]*/
    free(sum);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    float *_imopVarPre241;
    /*READ_S: [heapCell#27]
    WRITE_S: []*/
    _imopVarPre241 = new_centre[0];
    /*READ_S: [heapCell#28, free]
    WRITE_S: [heapCell#28]*/
    free(_imopVarPre241);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#28, free, heapCell#27]
    WRITE_S: [heapCell#28, heapCell#27]*/
    free(new_centre);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#36, free]
    WRITE_S: [heapCell#36]*/
    free(sum_points);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return cluster_centres;
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
/*READ_S: [euclid_dist_2, feature, find_nearest_point, j, heapCell#28, calloc, malloc, sqrt, heapCell#34, heapCell#16, multid_feuclid_dist, sum_fuzzy_members, feature, cluster_centres, pow, valid_sum, heapCell#35, sum_points, heapCell#17, i, cluster_centres, heapCell#3, sum_points, heapCell#2, heapCell#37, free, heapCell#38, penalty, i, heapCell#36, heapCell#5, heapCell#6, numpoints_in_clusters]
WRITE_S: [heapCell#36, heapCell#37, valid_sum, penalty, heapCell#38]*/
float fuzzy_validity(float **feature, int nfeatures , int npoints , float **cluster_centres , int nclusters , float fuzzyq) {
/*READ_S: [euclid_dist_2, feature, find_nearest_point, j, heapCell#28, calloc, malloc, sqrt, heapCell#34, heapCell#16, multid_feuclid_dist, sum_fuzzy_members, feature, cluster_centres, pow, valid_sum, heapCell#35, sum_points, heapCell#17, i, cluster_centres, heapCell#3, sum_points, heapCell#2, heapCell#37, free, heapCell#38, penalty, i, heapCell#36, heapCell#5, heapCell#6, numpoints_in_clusters]
WRITE_S: [heapCell#36, heapCell#37, valid_sum, penalty, heapCell#38]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int nearest_cluster;
    /*READ_S: []
    WRITE_S: []*/
    int *numpoints_in_clusters;
    /*READ_S: []
    WRITE_S: []*/
    float *sum_points;
    /*READ_S: []
    WRITE_S: []*/
    float valid_sum = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    float min_dist = 3.40282346638528859812e+38F;
    /*READ_S: []
    WRITE_S: []*/
    float ret;
    /*READ_S: []
    WRITE_S: []*/
    float penalty;
    /*READ_S: []
    WRITE_S: []*/
    float sqd_dist;
    /*READ_S: []
    WRITE_S: []*/
    float memb_fuzzyq;
    /*READ_S: []
    WRITE_S: []*/
    float membership;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (nclusters < 2) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return 3.40282346638528859812e+38F;
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre244;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre245;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre244 = sizeof(int);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre245 = calloc(nclusters, _imopVarPre244);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    numpoints_in_clusters = (int *) _imopVarPre245;
    /*READ_S: [feature, euclid_dist_2, find_nearest_point, heapCell#17, i, heapCell#3, heapCell#2, heapCell#37, heapCell#5, heapCell#34, heapCell#16, heapCell#6, cluster_centres, numpoints_in_clusters, heapCell#35]
    WRITE_S: [heapCell#37]*/
#pragma omp parallel shared(feature, cluster_centres, numpoints_in_clusters) firstprivate(npoints, nfeatures, nclusters) private(i, nearest_cluster)
    {
    /*READ_S: [feature, euclid_dist_2, find_nearest_point, heapCell#17, i, heapCell#3, heapCell#2, heapCell#37, heapCell#5, heapCell#34, heapCell#16, heapCell#6, cluster_centres, numpoints_in_clusters, heapCell#35]
    WRITE_S: [heapCell#37]*/
        /*READ_S: [feature, euclid_dist_2, find_nearest_point, heapCell#17, i, heapCell#3, heapCell#2, heapCell#37, heapCell#5, heapCell#34, heapCell#16, heapCell#6, cluster_centres, numpoints_in_clusters, heapCell#35]
        WRITE_S: [heapCell#37]*/
#pragma omp for schedule(static) nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < npoints; i++) {
        /*READ_S: [feature, euclid_dist_2, find_nearest_point, heapCell#17, heapCell#3, heapCell#2, heapCell#37, heapCell#5, heapCell#34, heapCell#16, heapCell#6, cluster_centres, numpoints_in_clusters, heapCell#35]
        WRITE_S: [heapCell#37]*/
            /*READ_S: []
            WRITE_S: []*/
            float *_imopVarPre247;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre248;
            /*READ_S: [heapCell#5, feature, heapCell#2]
            WRITE_S: []*/
            _imopVarPre247 = feature[i];
            /*READ_S: [find_nearest_point, cluster_centres]
            WRITE_S: []*/
            _imopVarPre248 = find_nearest_point(_imopVarPre247, nfeatures, cluster_centres, nclusters);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            nearest_cluster = _imopVarPre248;
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush ATOMIC_START
            /*READ_S: [numpoints_in_clusters, heapCell#37]
            WRITE_S: [heapCell#37]*/
#pragma omp atomic
            /*READ_S: [numpoints_in_clusters, heapCell#37]
            WRITE_S: [heapCell#37]*/
            numpoints_in_clusters[nearest_cluster]++;
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush ATOMIC_END
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    penalty = 0.0;
    /*READ_S: [i, numpoints_in_clusters, heapCell#37, penalty]
    WRITE_S: [penalty]*/
#pragma omp parallel shared(numpoints_in_clusters) firstprivate(nclusters) private(i)
    {
    /*READ_S: [i, numpoints_in_clusters, heapCell#37, penalty]
    WRITE_S: [penalty]*/
        /*READ_S: [i, numpoints_in_clusters, heapCell#37, penalty]
        WRITE_S: [penalty]*/
#pragma omp for schedule(static) reduction(+:penalty) nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nclusters; i++) {
        /*READ_S: [numpoints_in_clusters, heapCell#37, penalty]
        WRITE_S: [penalty]*/
            /*READ_S: [numpoints_in_clusters, heapCell#37, penalty]
            WRITE_S: [penalty]*/
            penalty += 1.0 / (1.0 + ((float) numpoints_in_clusters[i]));
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    penalty /= (float) nclusters;
    /*READ_S: [free, heapCell#37]
    WRITE_S: [heapCell#37]*/
    free(numpoints_in_clusters);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre251;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre252;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre251 = npoints * sizeof(float);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre252 = malloc(_imopVarPre251);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    sum_points = (float *) _imopVarPre252;
    /*READ_S: [sum_fuzzy_members]
    WRITE_S: []*/
    sum_fuzzy_members(feature, npoints, cluster_centres, nclusters, nfeatures, fuzzyq, sum_points);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [feature, euclid_dist_2, j, heapCell#17, heapCell#2, heapCell#3, sum_points, heapCell#38, heapCell#5, heapCell#6, cluster_centres, pow, valid_sum, heapCell#35]
    WRITE_S: [valid_sum]*/
#pragma omp parallel shared(feature, cluster_centres) firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i, j, sqd_dist, memb_fuzzyq, membership)
    {
    /*READ_S: [feature, euclid_dist_2, j, heapCell#17, heapCell#2, heapCell#3, sum_points, heapCell#38, heapCell#5, heapCell#6, cluster_centres, pow, valid_sum, heapCell#35]
    WRITE_S: [valid_sum]*/
        /*READ_S: [feature, euclid_dist_2, j, heapCell#17, heapCell#2, heapCell#3, sum_points, heapCell#38, heapCell#5, heapCell#6, cluster_centres, pow, valid_sum, heapCell#35]
        WRITE_S: [valid_sum]*/
#pragma omp for schedule(static) reduction(+:valid_sum) nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < npoints; j++) {
        /*READ_S: [feature, euclid_dist_2, heapCell#17, heapCell#2, heapCell#3, sum_points, heapCell#38, heapCell#5, heapCell#6, cluster_centres, pow, valid_sum, heapCell#35]
        WRITE_S: [valid_sum]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [feature, euclid_dist_2, heapCell#17, heapCell#2, heapCell#3, sum_points, heapCell#38, heapCell#5, heapCell#6, cluster_centres, pow, valid_sum, heapCell#35]
            WRITE_S: [valid_sum]*/
            for (i = 0; i < nclusters; i++) {
            /*READ_S: [euclid_dist_2, feature, heapCell#17, heapCell#2, heapCell#3, sum_points, heapCell#38, heapCell#5, heapCell#6, cluster_centres, pow, valid_sum, heapCell#35]
            WRITE_S: [valid_sum]*/
                /*READ_S: []
                WRITE_S: []*/
                float *_imopVarPre255;
                /*READ_S: []
                WRITE_S: []*/
                float *_imopVarPre256;
                /*READ_S: []
                WRITE_S: []*/
                float _imopVarPre257;
                /*READ_S: [cluster_centres]
                WRITE_S: []*/
                _imopVarPre255 = cluster_centres[i];
                /*READ_S: [heapCell#5, feature, heapCell#2]
                WRITE_S: []*/
                _imopVarPre256 = feature[j];
                /*READ_S: [euclid_dist_2]
                WRITE_S: []*/
                _imopVarPre257 = euclid_dist_2(_imopVarPre256, _imopVarPre255, nfeatures);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                sqd_dist = _imopVarPre257;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre261;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre262;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre263;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre261 = 1.0 / (fuzzyq - 1);
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre262 = 1.0 / (sqd_dist + 0.00001);
                /*READ_S: [pow]
                WRITE_S: []*/
                _imopVarPre263 = pow(_imopVarPre262, _imopVarPre261);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [sum_points, heapCell#38]
                WRITE_S: []*/
                membership = _imopVarPre263 / (sum_points[j] + 0.00001);
                /*READ_S: [pow]
                WRITE_S: []*/
                memb_fuzzyq = pow(membership, fuzzyq);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [valid_sum]
                WRITE_S: [valid_sum]*/
                valid_sum += sqd_dist * memb_fuzzyq;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [free, heapCell#38]
    WRITE_S: [heapCell#38]*/
    free(sum_points);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    min_dist = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [multid_feuclid_dist, heapCell#28, heapCell#35, sqrt]
    WRITE_S: []*/
    for (i = 0; i < nclusters - 1; i++) {
    /*READ_S: [multid_feuclid_dist, heapCell#28, heapCell#35, sqrt]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        float this_cluster_min_dist = 3.40282346638528859812e+38F;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [multid_feuclid_dist, heapCell#28, heapCell#35, sqrt]
        WRITE_S: []*/
        for (j = i + 1; j < nclusters; j++) {
        /*READ_S: [multid_feuclid_dist, heapCell#28, heapCell#35, sqrt]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            float tmp_dist;
            /*READ_S: []
            WRITE_S: []*/
            float *_imopVarPre266;
            /*READ_S: []
            WRITE_S: []*/
            float *_imopVarPre267;
            /*READ_S: []
            WRITE_S: []*/
            float _imopVarPre268;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre266 = cluster_centres[j];
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre267 = cluster_centres[i];
            /*READ_S: [multid_feuclid_dist]
            WRITE_S: []*/
            _imopVarPre268 = multid_feuclid_dist(_imopVarPre267, _imopVarPre266, nfeatures);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            tmp_dist = _imopVarPre268;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (tmp_dist < this_cluster_min_dist) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                this_cluster_min_dist = tmp_dist;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        min_dist += this_cluster_min_dist;
    }
    /*READ_S: []
    WRITE_S: []*/
    min_dist = (((min_dist / (float) (nclusters - 1))) * ((min_dist / (float) (nclusters - 1))));
    /*READ_S: []
    WRITE_S: []*/
    ret = (float) (valid_sum / (npoints * min_dist) + penalty);
    /*READ_S: []
    WRITE_S: []*/
    return ret;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#6, heapCell#17, heapCell#3, heapCell#35]
WRITE_S: []*/
__inline float euclid_dist_2(float *pt1, float *pt2 , int numdims) {
/*READ_S: [heapCell#6, heapCell#17, heapCell#3, heapCell#35]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    float ans = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#6, heapCell#17, heapCell#3, heapCell#35]
    WRITE_S: []*/
    for (i = 0; i < numdims; i++) {
    /*READ_S: [heapCell#6, heapCell#17, heapCell#3, heapCell#35]
    WRITE_S: []*/
        /*READ_S: [heapCell#6, heapCell#17, heapCell#3, heapCell#35]
        WRITE_S: []*/
        ans += (pt1[i] - pt2[i]) * (pt1[i] - pt2[i]);
    }
    /*READ_S: []
    WRITE_S: []*/
    return ans;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#23, partial_new_centers_len, omp_get_wtime, _debug, euclid_dist_2, find_nearest_point, j, omp_get_max_threads, omp_get_thread_num, calloc, random, heapCell#18, heapCell#25, malloc, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, _imopVarPre323, feature, i, new_centers_len, heapCell#17, new_centers, heapCell#2, heapCell#3, heapCell#22, nclusters, free, membership, clusters, partial_new_centers, heapCell#5, delta, printf, heapCell#6, heapCell#20, is_perform_atomic, heapCell#24, heapCell#19, npoints, nfeatures]
WRITE_S: [heapCell#23, j, heapCell#17, heapCell#22, heapCell#18, heapCell#25, heapCell#13, delta, heapCell#16, heapCell#20, index, heapCell#21, heapCell#24, heapCell#19]*/
float **kmeans_clustering(int is_perform_atomic, float **feature , int nfeatures , int npoints , int nclusters , float threshold , int *membership) {
/*READ_S: [heapCell#23, partial_new_centers_len, omp_get_wtime, _debug, euclid_dist_2, find_nearest_point, j, omp_get_max_threads, omp_get_thread_num, calloc, random, heapCell#18, heapCell#25, malloc, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, _imopVarPre323, feature, i, new_centers_len, heapCell#17, new_centers, heapCell#2, heapCell#3, heapCell#22, nclusters, free, membership, clusters, partial_new_centers, heapCell#5, delta, printf, heapCell#6, heapCell#20, is_perform_atomic, heapCell#24, heapCell#19, npoints, nfeatures]
WRITE_S: [heapCell#23, j, heapCell#17, heapCell#22, heapCell#18, heapCell#25, heapCell#13, delta, heapCell#16, heapCell#20, index, heapCell#21, heapCell#24, heapCell#19]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int index;
    /*READ_S: []
    WRITE_S: []*/
    int loop = 0;
    /*READ_S: []
    WRITE_S: []*/
    int *new_centers_len;
    /*READ_S: []
    WRITE_S: []*/
    float delta;
    /*READ_S: []
    WRITE_S: []*/
    float **clusters;
    /*READ_S: []
    WRITE_S: []*/
    float **new_centers;
    /*READ_S: []
    WRITE_S: []*/
    double timing;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads;
    /*READ_S: []
    WRITE_S: []*/
    int **partial_new_centers_len;
    /*READ_S: []
    WRITE_S: []*/
    float ***partial_new_centers;
    /*READ_S: [omp_get_max_threads]
    WRITE_S: []*/
    nthreads = omp_get_max_threads();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre271;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre272;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre271 = nclusters * sizeof(float *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre272 = malloc(_imopVarPre271);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    clusters = (float **) _imopVarPre272;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre275;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre276;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre275 = nclusters * nfeatures * sizeof(float);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre276 = malloc(_imopVarPre275);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#16]*/
    clusters[0] = (float *) _imopVarPre276;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#16]
    WRITE_S: [heapCell#16]*/
    for (i = 1; i < nclusters; i++) {
    /*READ_S: [heapCell#16]
    WRITE_S: [heapCell#16]*/
        /*READ_S: [heapCell#16]
        WRITE_S: [heapCell#16]*/
        clusters[i] = clusters[i - 1] + nfeatures;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#5, heapCell#16, heapCell#6, heapCell#2, heapCell#3, random]
    WRITE_S: [heapCell#17]*/
    for (i = 0; i < nclusters; i++) {
    /*READ_S: [heapCell#5, heapCell#16, heapCell#6, heapCell#2, heapCell#3, random]
    WRITE_S: [heapCell#17]*/
        /*READ_S: []
        WRITE_S: []*/
        signed long int _imopVarPre278;
        /*READ_S: [random]
        WRITE_S: []*/
        _imopVarPre278 = random();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int n = (int) _imopVarPre278 % npoints;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#5, heapCell#16, heapCell#6, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#17]*/
        for (j = 0; j < nfeatures; j++) {
        /*READ_S: [heapCell#5, heapCell#16, heapCell#6, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#17]*/
            /*READ_S: [heapCell#5, heapCell#16, heapCell#6, heapCell#2, heapCell#3]
            WRITE_S: [heapCell#17]*/
            clusters[i][j] = feature[n][j];
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#13]*/
    for (i = 0; i < npoints; i++) {
    /*READ_S: []
    WRITE_S: [heapCell#13]*/
        /*READ_S: []
        WRITE_S: [heapCell#13]*/
        membership[i] = -1;
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre281;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre282;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre281 = sizeof(int);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre282 = calloc(nclusters, _imopVarPre281);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    new_centers_len = (int *) _imopVarPre282;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre285;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre286;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre285 = nclusters * sizeof(float *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre286 = malloc(_imopVarPre285);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    new_centers = (float **) _imopVarPre286;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre290;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre291;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre292;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre290 = sizeof(float);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre291 = nclusters * nfeatures;
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre292 = calloc(_imopVarPre291, _imopVarPre290);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#19]*/
    new_centers[0] = (float *) _imopVarPre292;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#19]
    WRITE_S: [heapCell#19]*/
    for (i = 1; i < nclusters; i++) {
    /*READ_S: [heapCell#19]
    WRITE_S: [heapCell#19]*/
        /*READ_S: [heapCell#19]
        WRITE_S: [heapCell#19]*/
        new_centers[i] = new_centers[i - 1] + nfeatures;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#23, calloc, heapCell#21, malloc]
    WRITE_S: [heapCell#23, heapCell#21, heapCell#24]*/
    if (!is_perform_atomic) {
    /*READ_S: [heapCell#23, calloc, heapCell#21, malloc]
    WRITE_S: [heapCell#23, heapCell#21, heapCell#24]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre295;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre296;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre295 = nthreads * sizeof(int *);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre296 = malloc(_imopVarPre295);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        partial_new_centers_len = (int **) _imopVarPre296;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre300;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre301;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre302;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre300 = sizeof(int);
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre301 = nthreads * nclusters;
        /*READ_S: [calloc]
        WRITE_S: []*/
        _imopVarPre302 = calloc(_imopVarPre301, _imopVarPre300);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#21]*/
        partial_new_centers_len[0] = (int *) _imopVarPre302;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#21]
        WRITE_S: [heapCell#21]*/
        for (i = 1; i < nthreads; i++) {
        /*READ_S: [heapCell#21]
        WRITE_S: [heapCell#21]*/
            /*READ_S: [heapCell#21]
            WRITE_S: [heapCell#21]*/
            partial_new_centers_len[i] = partial_new_centers_len[i - 1] + nclusters;
        }
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre305;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre306;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre305 = nthreads * sizeof(float **);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre306 = malloc(_imopVarPre305);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        partial_new_centers = (float ***) _imopVarPre306;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre309;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre310;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre309 = nthreads * nclusters * sizeof(float *);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre310 = malloc(_imopVarPre309);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#23]*/
        partial_new_centers[0] = (float **) _imopVarPre310;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#23]
        WRITE_S: [heapCell#23]*/
        for (i = 1; i < nthreads; i++) {
        /*READ_S: [heapCell#23]
        WRITE_S: [heapCell#23]*/
            /*READ_S: [heapCell#23]
            WRITE_S: [heapCell#23]*/
            partial_new_centers[i] = partial_new_centers[i - 1] + nclusters;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#23, calloc]
        WRITE_S: [heapCell#24]*/
        for (i = 0; i < nthreads; i++) {
        /*READ_S: [heapCell#23, calloc]
        WRITE_S: [heapCell#24]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#23, calloc]
            WRITE_S: [heapCell#24]*/
            for (j = 0; j < nclusters; j++) {
            /*READ_S: [heapCell#23, calloc]
            WRITE_S: [heapCell#24]*/
                /*READ_S: []
                WRITE_S: []*/
                unsigned long int _imopVarPre313;
                /*READ_S: []
                WRITE_S: []*/
                void *_imopVarPre314;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre313 = sizeof(float);
                /*READ_S: [calloc]
                WRITE_S: []*/
                _imopVarPre314 = calloc(nfeatures, _imopVarPre313);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#23]
                WRITE_S: [heapCell#24]*/
                partial_new_centers[i][j] = (float *) _imopVarPre314;
            }
        }
    }
    /*READ_S: [_debug]
    WRITE_S: []*/
    /*READ_S: [_debug, omp_get_wtime]
    WRITE_S: []*/
    if (_debug) {
    /*READ_S: [omp_get_wtime]
    WRITE_S: []*/
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        timing = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre323;
    /*READ_S: [_imopVarPre323]
    WRITE_S: []*/
    /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, omp_get_thread_num, heapCell#18, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, _imopVarPre323, feature, i, new_centers_len, heapCell#17, new_centers, heapCell#2, heapCell#3, heapCell#22, nclusters, membership, clusters, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#20, is_perform_atomic, heapCell#24, heapCell#19, npoints, nfeatures]
    WRITE_S: [heapCell#13, delta, heapCell#20, j, index, heapCell#17, heapCell#22, heapCell#18, heapCell#25]*/
    do {
    /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, omp_get_thread_num, heapCell#18, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, _imopVarPre323, feature, i, new_centers_len, heapCell#17, new_centers, heapCell#2, heapCell#3, heapCell#22, nclusters, membership, clusters, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#20, is_perform_atomic, heapCell#24, heapCell#19, npoints, nfeatures]
    WRITE_S: [heapCell#13, delta, heapCell#20, j, index, heapCell#17, heapCell#22, heapCell#18, heapCell#25]*/
        /*READ_S: []
        WRITE_S: []*/
        delta = 0.0;
        /*READ_S: [is_perform_atomic]
        WRITE_S: []*/
        /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, omp_get_thread_num, heapCell#18, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, feature, i, new_centers_len, heapCell#17, new_centers, heapCell#2, heapCell#3, heapCell#22, nclusters, membership, clusters, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#20, is_perform_atomic, heapCell#24, heapCell#19, npoints, nfeatures]
        WRITE_S: [heapCell#13, delta, j, heapCell#20, index, heapCell#22, heapCell#18, heapCell#25]*/
        if (is_perform_atomic) {
        /*READ_S: [euclid_dist_2, find_nearest_point, i, feature, new_centers_len, heapCell#17, new_centers, heapCell#2, heapCell#3, heapCell#18, membership, clusters, heapCell#13, heapCell#5, delta, heapCell#34, heapCell#16, heapCell#6, heapCell#20, heapCell#19, heapCell#35]
        WRITE_S: [heapCell#13, delta, heapCell#20, heapCell#18]*/
            /*READ_S: [euclid_dist_2, find_nearest_point, i, feature, new_centers_len, heapCell#17, new_centers, heapCell#3, heapCell#2, heapCell#18, membership, clusters, heapCell#13, delta, heapCell#34, heapCell#5, heapCell#16, heapCell#6, heapCell#20, heapCell#19, heapCell#35]
            WRITE_S: [heapCell#13, delta, heapCell#20, heapCell#18]*/
#pragma omp parallel private(i, j, index) firstprivate(npoints, nclusters, nfeatures) shared(feature, clusters, membership, new_centers, new_centers_len)
            {
            /*READ_S: [euclid_dist_2, find_nearest_point, i, feature, new_centers_len, heapCell#17, new_centers, heapCell#3, heapCell#2, heapCell#18, membership, clusters, heapCell#13, delta, heapCell#34, heapCell#5, heapCell#16, heapCell#6, heapCell#20, heapCell#19, heapCell#35]
            WRITE_S: [heapCell#13, delta, heapCell#20, heapCell#18]*/
                /*READ_S: [euclid_dist_2, find_nearest_point, i, feature, new_centers_len, heapCell#17, new_centers, heapCell#3, heapCell#2, heapCell#18, membership, clusters, heapCell#13, delta, heapCell#34, heapCell#5, heapCell#16, heapCell#6, heapCell#20, heapCell#19, heapCell#35]
                WRITE_S: [heapCell#13, delta, heapCell#20, heapCell#18]*/
#pragma omp for schedule(static) reduction(+:delta) nowait
                /*READ_S: [i]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (i = 0; i < npoints; i++) {
                /*READ_S: [euclid_dist_2, find_nearest_point, feature, new_centers_len, heapCell#17, new_centers, heapCell#3, heapCell#2, heapCell#18, membership, clusters, heapCell#13, delta, heapCell#34, heapCell#5, heapCell#16, heapCell#6, heapCell#20, heapCell#19, heapCell#35]
                WRITE_S: [heapCell#13, delta, heapCell#20, heapCell#18]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    float *_imopVarPre316;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre317;
                    /*READ_S: [heapCell#5, feature, heapCell#2]
                    WRITE_S: []*/
                    _imopVarPre316 = feature[i];
                    /*READ_S: [find_nearest_point, clusters]
                    WRITE_S: []*/
                    _imopVarPre317 = find_nearest_point(_imopVarPre316, nfeatures, clusters, nclusters);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    index = _imopVarPre317;
                    /*READ_S: [heapCell#13, membership]
                    WRITE_S: []*/
                    /*READ_S: [heapCell#13, delta, membership]
                    WRITE_S: [delta]*/
                    if (membership[i] != index) {
                    /*READ_S: [delta]
                    WRITE_S: [delta]*/
                        /*READ_S: [delta]
                        WRITE_S: [delta]*/
                        delta += 1.0;
                    }
                    /*READ_S: [membership]
                    WRITE_S: [heapCell#13]*/
                    membership[i] = index;
                    /*READ_S: []
                    WRITE_S: []*/
                    // #pragma omp dummyFlush ATOMIC_START
                    /*READ_S: [new_centers_len, heapCell#18]
                    WRITE_S: [heapCell#18]*/
#pragma omp atomic
                    /*READ_S: [new_centers_len, heapCell#18]
                    WRITE_S: [heapCell#18]*/
                    new_centers_len[index]++;
                    /*READ_S: []
                    WRITE_S: []*/
                    // #pragma omp dummyFlush ATOMIC_END
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#5, heapCell#6, heapCell#20, feature, new_centers, heapCell#2, heapCell#3, heapCell#19]
                    WRITE_S: [heapCell#20]*/
                    for (j = 0; j < nfeatures; j++) {
                    /*READ_S: [heapCell#5, heapCell#6, heapCell#20, feature, new_centers, heapCell#2, heapCell#3, heapCell#19]
                    WRITE_S: [heapCell#20]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        // #pragma omp dummyFlush ATOMIC_START
                        /*READ_S: [heapCell#5, heapCell#6, heapCell#20, feature, new_centers, heapCell#2, heapCell#3, heapCell#19]
                        WRITE_S: [heapCell#20]*/
#pragma omp atomic
                        /*READ_S: [heapCell#5, heapCell#6, heapCell#20, feature, new_centers, heapCell#2, heapCell#3, heapCell#19]
                        WRITE_S: [heapCell#20]*/
                        new_centers[index][j] += feature[i][j];
                        /*READ_S: []
                        WRITE_S: []*/
                        // #pragma omp dummyFlush ATOMIC_END
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
        } else {
        /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, omp_get_thread_num, heapCell#18, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, feature, i, heapCell#17, heapCell#2, heapCell#3, heapCell#22, nclusters, clusters, membership, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#20, heapCell#24, heapCell#19, npoints, nfeatures]
        WRITE_S: [heapCell#13, delta, j, heapCell#20, index, heapCell#22, heapCell#18, heapCell#25]*/
            /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, omp_get_thread_num, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, feature, i, heapCell#17, heapCell#3, heapCell#2, heapCell#22, nclusters, clusters, membership, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#24, nfeatures, npoints]
            WRITE_S: [heapCell#13, delta, j, index, heapCell#22, heapCell#25]*/
#pragma omp parallel shared(feature, clusters, membership, partial_new_centers, partial_new_centers_len)
            {
            /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, omp_get_thread_num, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, feature, i, heapCell#17, heapCell#3, heapCell#2, heapCell#22, nclusters, clusters, membership, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#24, nfeatures, npoints]
            WRITE_S: [heapCell#13, delta, j, index, heapCell#22, heapCell#25]*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre318;
                /*READ_S: [omp_get_thread_num]
                WRITE_S: []*/
                _imopVarPre318 = omp_get_thread_num();
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int tid = _imopVarPre318;
                /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, feature, i, heapCell#17, heapCell#3, heapCell#2, heapCell#22, nclusters, clusters, membership, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#24, nfeatures, npoints]
                WRITE_S: [heapCell#13, delta, j, index, heapCell#22, heapCell#25]*/
#pragma omp for private(i, j, index) firstprivate(npoints, nclusters, nfeatures) schedule(static) reduction(+:delta) nowait
                /*READ_S: [i]
                WRITE_S: []*/
                /*READ_S: [npoints]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (i = 0; i < npoints; i++) {
                /*READ_S: [heapCell#23, partial_new_centers_len, euclid_dist_2, find_nearest_point, j, heapCell#25, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, feature, heapCell#17, heapCell#3, heapCell#2, heapCell#22, nclusters, clusters, membership, partial_new_centers, delta, heapCell#5, heapCell#6, heapCell#24, nfeatures]
                WRITE_S: [heapCell#13, delta, j, index, heapCell#22, heapCell#25]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    float *_imopVarPre320;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre321;
                    /*READ_S: [heapCell#5, feature, heapCell#2]
                    WRITE_S: []*/
                    _imopVarPre320 = feature[i];
                    /*READ_S: [find_nearest_point, nclusters, clusters, nfeatures]
                    WRITE_S: []*/
                    _imopVarPre321 = find_nearest_point(_imopVarPre320, nfeatures, clusters, nclusters);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: [index]*/
                    index = _imopVarPre321;
                    /*READ_S: [heapCell#13, index, membership]
                    WRITE_S: []*/
                    /*READ_S: [heapCell#13, delta, index, membership]
                    WRITE_S: [delta]*/
                    if (membership[i] != index) {
                    /*READ_S: [delta]
                    WRITE_S: [delta]*/
                        /*READ_S: [delta]
                        WRITE_S: [delta]*/
                        delta += 1.0;
                    }
                    /*READ_S: [index, membership]
                    WRITE_S: [heapCell#13]*/
                    membership[i] = index;
                    /*READ_S: [partial_new_centers_len, index, heapCell#21, heapCell#22]
                    WRITE_S: [heapCell#22]*/
                    partial_new_centers_len[tid][index]++;
                    /*READ_S: []
                    WRITE_S: [j]*/
                    /*READ_S: [j, nfeatures]
                    WRITE_S: []*/
                    /*READ_S: [j]
                    WRITE_S: [j]*/
                    /*READ_S: [partial_new_centers, heapCell#23, heapCell#5, heapCell#6, j, feature, index, heapCell#24, heapCell#2, heapCell#3, heapCell#25, nfeatures]
                    WRITE_S: [j, heapCell#25]*/
                    for (j = 0; j < nfeatures; j++) {
                    /*READ_S: [partial_new_centers, heapCell#23, heapCell#5, heapCell#6, j, feature, index, heapCell#24, heapCell#2, heapCell#3, heapCell#25]
                    WRITE_S: [heapCell#25]*/
                        /*READ_S: [partial_new_centers, heapCell#23, heapCell#5, heapCell#6, j, feature, index, heapCell#24, heapCell#2, heapCell#3, heapCell#25]
                        WRITE_S: [heapCell#25]*/
                        partial_new_centers[tid][index][j] += feature[i][j];
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#23, heapCell#20, heapCell#21, heapCell#24, heapCell#22, heapCell#18, heapCell#25, heapCell#19]
            WRITE_S: [heapCell#20, heapCell#22, heapCell#18, heapCell#25]*/
            for (i = 0; i < nclusters; i++) {
            /*READ_S: [heapCell#23, heapCell#20, heapCell#21, heapCell#24, heapCell#22, heapCell#18, heapCell#25, heapCell#19]
            WRITE_S: [heapCell#20, heapCell#22, heapCell#18, heapCell#25]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#23, heapCell#20, heapCell#21, heapCell#24, heapCell#22, heapCell#18, heapCell#25, heapCell#19]
                WRITE_S: [heapCell#20, heapCell#22, heapCell#18, heapCell#25]*/
                for (j = 0; j < nthreads; j++) {
                /*READ_S: [heapCell#23, heapCell#20, heapCell#21, heapCell#24, heapCell#22, heapCell#18, heapCell#25, heapCell#19]
                WRITE_S: [heapCell#20, heapCell#22, heapCell#18, heapCell#25]*/
                    /*READ_S: [heapCell#21, heapCell#22, heapCell#18]
                    WRITE_S: [heapCell#18]*/
                    new_centers_len[i] += partial_new_centers_len[j][i];
                    /*READ_S: [heapCell#21]
                    WRITE_S: [heapCell#22]*/
                    partial_new_centers_len[j][i] = 0.0;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#23, heapCell#20, heapCell#24, heapCell#25, heapCell#19]
                    WRITE_S: [heapCell#20, heapCell#25]*/
                    for (k = 0; k < nfeatures; k++) {
                    /*READ_S: [heapCell#23, heapCell#20, heapCell#24, heapCell#25, heapCell#19]
                    WRITE_S: [heapCell#20, heapCell#25]*/
                        /*READ_S: [heapCell#23, heapCell#20, heapCell#24, heapCell#25, heapCell#19]
                        WRITE_S: [heapCell#20]*/
                        new_centers[i][k] += partial_new_centers[j][i][k];
                        /*READ_S: [heapCell#23, heapCell#24]
                        WRITE_S: [heapCell#25]*/
                        partial_new_centers[j][i][k] = 0.0;
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#16, heapCell#20, heapCell#18, heapCell#19]
        WRITE_S: [heapCell#20, heapCell#17, heapCell#18]*/
        for (i = 0; i < nclusters; i++) {
        /*READ_S: [heapCell#16, heapCell#20, heapCell#18, heapCell#19]
        WRITE_S: [heapCell#20, heapCell#17, heapCell#18]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#16, heapCell#20, heapCell#18, heapCell#19]
            WRITE_S: [heapCell#20, heapCell#17]*/
            for (j = 0; j < nfeatures; j++) {
            /*READ_S: [heapCell#16, heapCell#20, heapCell#18, heapCell#19]
            WRITE_S: [heapCell#20, heapCell#17]*/
                /*READ_S: [heapCell#18]
                WRITE_S: []*/
                /*READ_S: [heapCell#16, heapCell#20, heapCell#18, heapCell#19]
                WRITE_S: [heapCell#17]*/
                if (new_centers_len[i] > 0) {
                /*READ_S: [heapCell#16, heapCell#20, heapCell#18, heapCell#19]
                WRITE_S: [heapCell#17]*/
                    /*READ_S: [heapCell#16, heapCell#20, heapCell#18, heapCell#19]
                    WRITE_S: [heapCell#17]*/
                    clusters[i][j] = new_centers[i][j] / new_centers_len[i];
                }
                /*READ_S: [heapCell#19]
                WRITE_S: [heapCell#20]*/
                new_centers[i][j] = 0.0;
            }
            /*READ_S: []
            WRITE_S: [heapCell#18]*/
            new_centers_len[i] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        delta /= npoints;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre323 = delta > threshold;
        /*READ_S: [_imopVarPre323]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre323]
        WRITE_S: []*/
        if (_imopVarPre323) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre323 = loop++ < 500;
        }
    } while (_imopVarPre323);
    /*READ_S: [_debug]
    WRITE_S: []*/
    /*READ_S: [_debug, printf, omp_get_wtime]
    WRITE_S: []*/
    if (_debug) {
    /*READ_S: [printf, omp_get_wtime]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre325;
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        _imopVarPre325 = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        timing = _imopVarPre325 - timing;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("nloops = %2d (T = %7.4f)", loop, timing);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    float *_imopVarPre327;
    /*READ_S: [heapCell#19]
    WRITE_S: []*/
    _imopVarPre327 = new_centers[0];
    /*READ_S: [heapCell#20, free]
    WRITE_S: [heapCell#20]*/
    free(_imopVarPre327);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#20, free, heapCell#19]
    WRITE_S: [heapCell#20, heapCell#19]*/
    free(new_centers);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#18, free]
    WRITE_S: [heapCell#18]*/
    free(new_centers_len);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return clusters;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#15, heapCell#14, calloc, pow]
WRITE_S: [heapCell#15]*/
float *extract_moments(float *data, int num_elts , int num_moments) {
/*READ_S: [heapCell#15, heapCell#14, calloc, pow]
WRITE_S: [heapCell#15]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    float *moments;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre330;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre331;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre330 = sizeof(float);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre331 = calloc(num_moments, _imopVarPre330);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    moments = (float *) _imopVarPre331;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#15, heapCell#14]
    WRITE_S: [heapCell#15]*/
    for (i = 0; i < num_elts; i++) {
    /*READ_S: [heapCell#15, heapCell#14]
    WRITE_S: [heapCell#15]*/
        /*READ_S: [heapCell#15, heapCell#14]
        WRITE_S: [heapCell#15]*/
        moments[0] += data[i];
    }
    /*READ_S: [heapCell#15]
    WRITE_S: [heapCell#15]*/
    moments[0] = moments[0] / num_elts;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#15, heapCell#14, pow]
    WRITE_S: [heapCell#15]*/
    for (j = 1; j < num_moments; j++) {
    /*READ_S: [heapCell#15, heapCell#14, pow]
    WRITE_S: [heapCell#15]*/
        /*READ_S: []
        WRITE_S: [heapCell#15]*/
        moments[j] = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#15, heapCell#14, pow]
        WRITE_S: [heapCell#15]*/
        for (i = 0; i < num_elts; i++) {
        /*READ_S: [heapCell#15, heapCell#14, pow]
        WRITE_S: [heapCell#15]*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre334;
            /*READ_S: []
            WRITE_S: []*/
            float _imopVarPre335;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre336;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre334 = j + 1;
            /*READ_S: [heapCell#14, heapCell#15]
            WRITE_S: []*/
            _imopVarPre335 = (data[i] - moments[0]);
            /*READ_S: [pow]
            WRITE_S: []*/
            _imopVarPre336 = pow(_imopVarPre335, _imopVarPre334);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#15]
            WRITE_S: [heapCell#15]*/
            moments[j] += _imopVarPre336;
        }
        /*READ_S: [heapCell#15]
        WRITE_S: [heapCell#15]*/
        moments[j] = moments[j] / num_elts;
    }
    /*READ_S: []
    WRITE_S: []*/
    return moments;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#5, heapCell#6, extract_moments, heapCell#15, heapCell#14, calloc, pow, heapCell#2, heapCell#3, free, sqrt]
WRITE_S: [heapCell#6, heapCell#15, heapCell#14, heapCell#3]*/
void zscore_transform(float **data, int numObjects , int numAttributes) {
/*READ_S: [heapCell#5, heapCell#6, extract_moments, heapCell#15, heapCell#14, calloc, pow, heapCell#2, heapCell#3, free, sqrt]
WRITE_S: [heapCell#6, heapCell#15, heapCell#14, heapCell#3]*/
    /*READ_S: []
    WRITE_S: []*/
    float *single_variable;
    /*READ_S: []
    WRITE_S: []*/
    float *moments;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre339;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre340;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre339 = sizeof(float);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre340 = calloc(numObjects, _imopVarPre339);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    single_variable = (float *) _imopVarPre340;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#5, heapCell#6, extract_moments, heapCell#15, heapCell#14, calloc, pow, heapCell#2, heapCell#3, free, sqrt]
    WRITE_S: [heapCell#6, heapCell#15, heapCell#14, heapCell#3]*/
    for (i = 0; i < numAttributes; i++) {
    /*READ_S: [heapCell#5, heapCell#6, extract_moments, heapCell#15, heapCell#14, calloc, pow, heapCell#2, heapCell#3, free, sqrt]
    WRITE_S: [heapCell#6, heapCell#15, heapCell#14, heapCell#3]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#5, heapCell#6, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#14]*/
        for (j = 0; j < numObjects; j++) {
        /*READ_S: [heapCell#5, heapCell#6, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#14]*/
            /*READ_S: [heapCell#5, heapCell#6, heapCell#2, heapCell#3]
            WRITE_S: [heapCell#14]*/
            single_variable[j] = data[j][i];
        }
        /*READ_S: [extract_moments]
        WRITE_S: []*/
        moments = extract_moments(single_variable, numObjects, 2);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre343;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre344;
        /*READ_S: [heapCell#15]
        WRITE_S: []*/
        _imopVarPre343 = (double) moments[1];
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre344 = sqrt(_imopVarPre343);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#15]*/
        moments[1] = (float) _imopVarPre344;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#5, heapCell#6, heapCell#15, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#6, heapCell#3]*/
        for (j = 0; j < numObjects; j++) {
        /*READ_S: [heapCell#5, heapCell#6, heapCell#15, heapCell#2, heapCell#3]
        WRITE_S: [heapCell#6, heapCell#3]*/
            /*READ_S: [heapCell#5, heapCell#6, heapCell#15, heapCell#2, heapCell#3]
            WRITE_S: [heapCell#6, heapCell#3]*/
            data[j][i] = (data[j][i] - moments[0]) / moments[1];
        }
        /*READ_S: [heapCell#15, free]
        WRITE_S: [heapCell#15]*/
        free(moments);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [heapCell#14, free]
    WRITE_S: [heapCell#14]*/
    free(single_variable);
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [omp_get_wtime, feature, j, i, omp_get_max_threads, heapCell#28, partial_sum, heapCell#13, heapCell#34, heapCell#33, feature, best_nclusters, valid_sum, j, feature, heapCell#29, heapCell#17, heapCell#2, heapCell#3, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, heapCell#24, __builtin_object_size, attributes, heapCell#19, euclid_dist_2, find_nearest_point, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, cluster_centres, is_perform_assign, i, cluster_assign, index, heapCell#21, pow, heapCell#35, i, heapCell#30, nclusters, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, feature, heapCell#25, perform_fuzzy_kmeans, sum_fuzzy_members, multid_feuclid_dist, use_zscore_transform, heapCell#27, is_perform_valid, best_nclusters, membership, heapCell#14, heapCell#15, new_centers, i, cluster_centres, sum_points, free, heapCell#37, heapCell#26, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, _debug, k, j, calloc, heapCell#18, sqrt, sqd_dist, heapCell#16, extract_moments, fuzzy_kmeans_cluster, sum, cluster_centres, cluster_centres, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, new_centre, partial_new_centre, nclusters, zscore_transform, npoints, nfeatures, srandom]
WRITE_S: [heapCell#23, k, i, j, heapCell#28, heapCell#18, heapCell#25, sqd_dist, heapCell#13, heapCell#34, heapCell#16, heapCell#33, index, heapCell#21, heapCell#27, valid_sum, heapCell#35, heapCell#32, membership, heapCell#15, heapCell#14, heapCell#29, heapCell#17, heapCell#30, heapCell#3, heapCell#22, heapCell#37, heapCell#26, heapCell#38, penalty, heapCell#31, heapCell#36, delta, heapCell#6, heapCell#8, heapCell#20, heapCell#10, heapCell#7, heapCell#24, heapCell#9, heapCell#19]*/
int cluster(int perform_fuzzy_kmeans, int is_perform_valid , int is_perform_atomic , int is_perform_assign , int numObjects , int numAttributes , float **attributes , int use_zscore_transform , int min_nclusters , int max_nclusters , float fuzzyq , float threshold , int *best_nclusters , float ***cluster_centres , int *cluster_assign , float *validity , double *cluster_timing , double *valid_timing) {
/*READ_S: [omp_get_wtime, feature, j, i, omp_get_max_threads, heapCell#28, partial_sum, heapCell#13, heapCell#34, heapCell#33, feature, best_nclusters, valid_sum, j, feature, heapCell#29, heapCell#17, heapCell#2, heapCell#3, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, heapCell#24, __builtin_object_size, attributes, heapCell#19, euclid_dist_2, find_nearest_point, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, cluster_centres, is_perform_assign, i, cluster_assign, index, heapCell#21, pow, heapCell#35, i, heapCell#30, nclusters, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, feature, heapCell#25, perform_fuzzy_kmeans, sum_fuzzy_members, multid_feuclid_dist, use_zscore_transform, heapCell#27, is_perform_valid, best_nclusters, membership, heapCell#14, heapCell#15, new_centers, i, cluster_centres, sum_points, free, heapCell#37, heapCell#26, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, _debug, k, j, calloc, heapCell#18, sqrt, sqd_dist, heapCell#16, extract_moments, fuzzy_kmeans_cluster, sum, cluster_centres, cluster_centres, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, new_centre, partial_new_centre, nclusters, zscore_transform, npoints, nfeatures, srandom]
WRITE_S: [heapCell#23, k, i, j, heapCell#28, heapCell#18, heapCell#25, sqd_dist, heapCell#13, heapCell#34, heapCell#16, heapCell#33, index, heapCell#21, heapCell#27, valid_sum, heapCell#35, heapCell#32, membership, heapCell#15, heapCell#14, heapCell#29, heapCell#17, heapCell#30, heapCell#3, heapCell#22, heapCell#37, heapCell#26, heapCell#38, penalty, heapCell#31, heapCell#36, delta, heapCell#6, heapCell#8, heapCell#20, heapCell#10, heapCell#7, heapCell#24, heapCell#9, heapCell#19]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int itime;
    /*READ_S: []
    WRITE_S: []*/
    int nclusters;
    /*READ_S: []
    WRITE_S: []*/
    int *membership;
    /*READ_S: []
    WRITE_S: []*/
    float **tmp_cluster_centres;
    /*READ_S: []
    WRITE_S: []*/
    float min_valid = 3.40282346638528859812e+38F;
    /*READ_S: []
    WRITE_S: []*/
    double assign_timing;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [malloc]
    WRITE_S: []*/
    if (!perform_fuzzy_kmeans) {
    /*READ_S: [malloc]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre347;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre348;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre347 = numObjects * sizeof(int);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre348 = malloc(_imopVarPre347);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        membership = (int *) _imopVarPre348;
    }
    /*READ_S: [use_zscore_transform]
    WRITE_S: []*/
    /*READ_S: [heapCell#15, heapCell#14, calloc, heapCell#2, heapCell#3, free, sqrt, heapCell#5, heapCell#6, extract_moments, pow, use_zscore_transform, zscore_transform]
    WRITE_S: [heapCell#6, heapCell#15, heapCell#14, heapCell#3]*/
    if (use_zscore_transform) {
    /*READ_S: [heapCell#5, heapCell#6, extract_moments, heapCell#15, heapCell#14, calloc, pow, heapCell#2, heapCell#3, free, zscore_transform, sqrt]
    WRITE_S: [heapCell#6, heapCell#15, heapCell#14, heapCell#3]*/
        /*READ_S: [zscore_transform]
        WRITE_S: []*/
        zscore_transform(attributes, numObjects, numAttributes);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [_debug]
    WRITE_S: []*/
    /*READ_S: [_debug, printf]
    WRITE_S: []*/
    if (_debug) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Initial min_nclusters = %d max_nclusters = %d\n", min_nclusters, max_nclusters);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    itime = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [omp_get_wtime, feature, j, i, omp_get_max_threads, heapCell#28, partial_sum, heapCell#13, heapCell#34, heapCell#33, feature, valid_sum, j, feature, heapCell#17, heapCell#29, heapCell#3, heapCell#2, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, heapCell#24, __builtin_object_size, heapCell#19, euclid_dist_2, find_nearest_point, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, cluster_centres, index, heapCell#21, pow, heapCell#35, i, heapCell#30, nclusters, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, feature, heapCell#25, perform_fuzzy_kmeans, multid_feuclid_dist, sum_fuzzy_members, heapCell#27, is_perform_valid, membership, new_centers, i, cluster_centres, sum_points, free, heapCell#37, heapCell#26, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, _debug, k, j, calloc, heapCell#18, sqrt, sqd_dist, heapCell#16, fuzzy_kmeans_cluster, sum, cluster_centres, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, new_centre, partial_new_centre, nclusters, npoints, nfeatures, srandom]
    WRITE_S: [heapCell#23, k, i, j, heapCell#28, heapCell#18, heapCell#25, sqd_dist, heapCell#13, heapCell#34, heapCell#16, heapCell#33, index, heapCell#21, heapCell#27, valid_sum, heapCell#35, heapCell#32, membership, heapCell#29, heapCell#17, heapCell#30, heapCell#22, heapCell#37, heapCell#26, heapCell#38, penalty, heapCell#36, heapCell#31, delta, heapCell#8, heapCell#20, heapCell#10, heapCell#7, heapCell#24, heapCell#9, heapCell#19]*/
    for (nclusters = min_nclusters; nclusters <= max_nclusters; nclusters++) {
    /*READ_S: [omp_get_wtime, feature, j, i, omp_get_max_threads, heapCell#28, partial_sum, heapCell#13, heapCell#34, heapCell#33, feature, valid_sum, j, feature, heapCell#17, heapCell#29, heapCell#3, heapCell#2, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, heapCell#24, __builtin_object_size, heapCell#19, euclid_dist_2, find_nearest_point, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, cluster_centres, index, heapCell#21, pow, heapCell#35, i, heapCell#30, nclusters, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, feature, heapCell#25, perform_fuzzy_kmeans, multid_feuclid_dist, sum_fuzzy_members, heapCell#27, is_perform_valid, membership, new_centers, i, cluster_centres, sum_points, free, heapCell#37, heapCell#26, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, _debug, k, j, calloc, heapCell#18, sqrt, sqd_dist, heapCell#16, fuzzy_kmeans_cluster, sum, cluster_centres, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, new_centre, partial_new_centre, nclusters, npoints, nfeatures, srandom]
    WRITE_S: [heapCell#23, k, i, j, heapCell#28, heapCell#18, heapCell#25, sqd_dist, heapCell#13, heapCell#34, heapCell#16, heapCell#33, index, heapCell#21, heapCell#27, valid_sum, heapCell#35, heapCell#32, membership, heapCell#29, heapCell#17, heapCell#30, heapCell#22, heapCell#37, heapCell#26, heapCell#38, penalty, heapCell#36, heapCell#31, delta, heapCell#8, heapCell#20, heapCell#10, heapCell#7, heapCell#24, heapCell#9, heapCell#19]*/
        /*READ_S: [srandom]
        WRITE_S: []*/
        srandom(7);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre349;
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        _imopVarPre349 = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#9]*/
        cluster_timing[itime] = _imopVarPre349;
        /*READ_S: [perform_fuzzy_kmeans]
        WRITE_S: []*/
        /*READ_S: [heapCell#23, partial_new_centers_len, omp_get_wtime, j, i, omp_get_max_threads, heapCell#28, feature, heapCell#25, partial_sum, heapCell#13, heapCell#34, heapCell#33, perform_fuzzy_kmeans, multid_feuclid_dist, sum_fuzzy_members, feature, heapCell#27, j, membership, feature, heapCell#17, heapCell#29, new_centers, cluster_centres, heapCell#3, heapCell#2, free, clusters, membership, heapCell#26, heapCell#36, kmeans_clustering, partial_new_centers, printf, heapCell#6, _imopVarPre237, fuzzyq, heapCell#24, heapCell#19, euclid_dist_2, _debug, k, find_nearest_point, omp_get_thread_num, cluster_centres, calloc, random, heapCell#18, sum_points, is_perform_atomic, malloc, sqrt, sqd_dist, heapCell#16, fuzzy_kmeans_cluster, sum, index, heapCell#21, pow, heapCell#35, _imopVarPre323, sum_points, heapCell#32, new_centers_len, i, heapCell#30, heapCell#22, nclusters, nfeatures, npoints, heapCell#31, i, heapCell#5, delta, heapCell#20, is_perform_atomic, new_centre, partial_new_centre, nclusters, npoints, nfeatures]
        WRITE_S: [heapCell#23, k, i, j, heapCell#28, heapCell#18, heapCell#25, sqd_dist, heapCell#13, heapCell#34, heapCell#16, heapCell#33, index, heapCell#21, heapCell#27, heapCell#35, heapCell#32, membership, heapCell#29, heapCell#17, heapCell#30, heapCell#22, heapCell#26, heapCell#38, heapCell#36, heapCell#31, delta, heapCell#20, heapCell#24, heapCell#19]*/
        if (perform_fuzzy_kmeans) {
        /*READ_S: [omp_get_wtime, i, omp_get_max_threads, heapCell#28, feature, partial_sum, heapCell#34, heapCell#33, multid_feuclid_dist, feature, sum_fuzzy_members, heapCell#27, j, membership, heapCell#17, heapCell#29, cluster_centres, heapCell#3, heapCell#2, free, heapCell#26, heapCell#36, printf, heapCell#6, _imopVarPre237, fuzzyq, euclid_dist_2, _debug, k, omp_get_thread_num, cluster_centres, calloc, random, sum_points, is_perform_atomic, malloc, sqd_dist, sqrt, heapCell#16, fuzzy_kmeans_cluster, sum, pow, heapCell#35, sum_points, heapCell#32, heapCell#30, nfeatures, npoints, heapCell#31, i, heapCell#5, new_centre, partial_new_centre, nclusters]
        WRITE_S: [k, heapCell#32, i, membership, heapCell#28, heapCell#29, heapCell#30, heapCell#26, sqd_dist, heapCell#38, heapCell#36, heapCell#31, heapCell#34, heapCell#33, heapCell#27, heapCell#35]*/
            /*READ_S: [fuzzy_kmeans_cluster]
            WRITE_S: []*/
            tmp_cluster_centres = fuzzy_kmeans_cluster(is_perform_atomic, attributes, numAttributes, numObjects, nclusters, fuzzyq, threshold);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [heapCell#23, partial_new_centers_len, omp_get_wtime, _debug, euclid_dist_2, find_nearest_point, j, omp_get_max_threads, omp_get_thread_num, calloc, random, heapCell#18, heapCell#25, malloc, heapCell#13, heapCell#34, heapCell#16, index, heapCell#21, heapCell#35, _imopVarPre323, feature, i, new_centers_len, heapCell#17, new_centers, heapCell#2, heapCell#3, heapCell#22, nclusters, free, membership, clusters, kmeans_clustering, partial_new_centers, heapCell#5, delta, printf, heapCell#6, heapCell#20, is_perform_atomic, heapCell#24, heapCell#19, npoints, nfeatures]
        WRITE_S: [heapCell#23, j, heapCell#17, heapCell#22, heapCell#18, heapCell#25, heapCell#13, delta, heapCell#16, heapCell#20, index, heapCell#21, heapCell#24, heapCell#19]*/
            /*READ_S: [kmeans_clustering]
            WRITE_S: []*/
            tmp_cluster_centres = kmeans_clustering(is_perform_atomic, attributes, numAttributes, numObjects, nclusters, threshold, membership);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre351;
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        _imopVarPre351 = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#9]
        WRITE_S: [heapCell#9]*/
        cluster_timing[itime] = _imopVarPre351 - cluster_timing[itime];
        /*READ_S: [is_perform_valid]
        WRITE_S: []*/
        /*READ_S: [_debug, feature, omp_get_wtime, euclid_dist_2, find_nearest_point, j, heapCell#28, calloc, __builtin___memcpy_chk, malloc, sqrt, cluster_centres, heapCell#13, heapCell#34, heapCell#16, sum_fuzzy_members, feature, multid_feuclid_dist, cluster_centres, pow, valid_sum, is_perform_valid, heapCell#35, sum_points, fuzzy_validity, heapCell#17, cluster_centres, i, heapCell#3, heapCell#2, sum_points, free, heapCell#37, penalty, heapCell#38, heapCell#36, i, heapCell#5, printf, heapCell#8, heapCell#6, heapCell#10, heapCell#7, __builtin_object_size, numpoints_in_clusters]
        WRITE_S: [heapCell#36, heapCell#13, heapCell#8, heapCell#10, heapCell#7, heapCell#37, valid_sum, penalty, heapCell#38]*/
        if (is_perform_valid) {
        /*READ_S: [_debug, feature, omp_get_wtime, euclid_dist_2, find_nearest_point, j, heapCell#28, calloc, __builtin___memcpy_chk, malloc, sqrt, cluster_centres, heapCell#13, heapCell#34, heapCell#16, sum_fuzzy_members, feature, multid_feuclid_dist, cluster_centres, pow, valid_sum, heapCell#35, sum_points, fuzzy_validity, heapCell#17, cluster_centres, i, heapCell#3, heapCell#2, sum_points, free, heapCell#37, penalty, heapCell#38, heapCell#36, i, heapCell#5, printf, heapCell#8, heapCell#6, heapCell#10, heapCell#7, __builtin_object_size, numpoints_in_clusters]
        WRITE_S: [heapCell#36, heapCell#13, heapCell#8, heapCell#10, heapCell#7, heapCell#37, valid_sum, penalty, heapCell#38]*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre352;
            /*READ_S: [omp_get_wtime]
            WRITE_S: []*/
            _imopVarPre352 = omp_get_wtime();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: [heapCell#10]*/
            valid_timing[itime] = _imopVarPre352;
            /*READ_S: []
            WRITE_S: []*/
            float _imopVarPre353;
            /*READ_S: [fuzzy_validity]
            WRITE_S: []*/
            _imopVarPre353 = fuzzy_validity(attributes, numAttributes, numObjects, tmp_cluster_centres, nclusters, fuzzyq);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: [heapCell#8]*/
            validity[itime] = _imopVarPre353;
            /*READ_S: [_debug]
            WRITE_S: []*/
            /*READ_S: [_debug, printf, heapCell#8]
            WRITE_S: []*/
            if (_debug) {
            /*READ_S: [printf, heapCell#8]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                float _imopVarPre355;
                /*READ_S: [heapCell#8]
                WRITE_S: []*/
                _imopVarPre355 = validity[itime];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("K = %2d  validity = %6.4f\n", nclusters, _imopVarPre355);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [heapCell#8]
            WRITE_S: []*/
            /*READ_S: [cluster_centres, heapCell#13, heapCell#8, heapCell#7, __builtin_object_size, free, __builtin___memcpy_chk]
            WRITE_S: [heapCell#13, heapCell#7]*/
            if (validity[itime] < min_valid) {
            /*READ_S: [cluster_centres, heapCell#13, heapCell#8, heapCell#7, __builtin_object_size, free, __builtin___memcpy_chk]
            WRITE_S: [heapCell#13, heapCell#7]*/
                /*READ_S: [cluster_centres]
                WRITE_S: []*/
                /*READ_S: [cluster_centres, free]
                WRITE_S: []*/
                if (*cluster_centres) {
                /*READ_S: [free]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    float *_imopVarPre357;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre357 = (*cluster_centres)[0];
                    /*READ_S: [free]
                    WRITE_S: []*/
                    free(_imopVarPre357);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    float **_imopVarPre359;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre359 = *cluster_centres;
                    /*READ_S: [free]
                    WRITE_S: []*/
                    free(_imopVarPre359);
                    /*READ_S: []
                    WRITE_S: []*/
                }
                /*READ_S: []
                WRITE_S: []*/
                *cluster_centres = tmp_cluster_centres;
                /*READ_S: [heapCell#8]
                WRITE_S: []*/
                min_valid = validity[itime];
                /*READ_S: []
                WRITE_S: []*/
                *best_nclusters = nclusters;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#13, heapCell#7, __builtin_object_size, __builtin___memcpy_chk]
                WRITE_S: [heapCell#13, heapCell#7]*/
                if (!perform_fuzzy_kmeans) {
                /*READ_S: [heapCell#13, heapCell#7, __builtin_object_size, __builtin___memcpy_chk]
                WRITE_S: [heapCell#13, heapCell#7]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    unsigned int _imopVarPre362;
                    /*READ_S: []
                    WRITE_S: []*/
                    unsigned long int _imopVarPre363;
                    /*READ_S: [heapCell#7, __builtin_object_size]
                    WRITE_S: [heapCell#7]*/
                    _imopVarPre362 = __builtin_object_size(cluster_assign, 0);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre363 = numObjects * sizeof(int);
                    /*READ_S: [heapCell#13, heapCell#7, __builtin___memcpy_chk]
                    WRITE_S: [heapCell#13, heapCell#7]*/
                    __builtin___memcpy_chk(cluster_assign, membership, _imopVarPre363, _imopVarPre362);
                    /*READ_S: []
                    WRITE_S: []*/
                }
            } else {
            /*READ_S: [free]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                float *_imopVarPre365;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre365 = tmp_cluster_centres[0];
                /*READ_S: [free]
                WRITE_S: []*/
                free(_imopVarPre365);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [free]
                WRITE_S: []*/
                free(tmp_cluster_centres);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre367;
            /*READ_S: [omp_get_wtime]
            WRITE_S: []*/
            _imopVarPre367 = omp_get_wtime();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#10]
            WRITE_S: [heapCell#10]*/
            valid_timing[itime] = _imopVarPre367 - valid_timing[itime];
        } else {
        /*READ_S: [cluster_centres, free]
        WRITE_S: []*/
            /*READ_S: [cluster_centres]
            WRITE_S: []*/
            /*READ_S: [cluster_centres, free]
            WRITE_S: []*/
            if (*cluster_centres) {
            /*READ_S: [free]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                float *_imopVarPre369;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre369 = (*cluster_centres)[0];
                /*READ_S: [free]
                WRITE_S: []*/
                free(_imopVarPre369);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                float **_imopVarPre371;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre371 = *cluster_centres;
                /*READ_S: [free]
                WRITE_S: []*/
                free(_imopVarPre371);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: []
            WRITE_S: []*/
            *cluster_centres = tmp_cluster_centres;
            /*READ_S: []
            WRITE_S: []*/
            *best_nclusters = nclusters;
        }
        /*READ_S: [_debug]
        WRITE_S: []*/
        /*READ_S: [_debug, printf, heapCell#10, heapCell#9, is_perform_valid]
        WRITE_S: []*/
        if (_debug) {
        /*READ_S: [printf, heapCell#10, heapCell#9, is_perform_valid]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre373;
            /*READ_S: [heapCell#9]
            WRITE_S: []*/
            _imopVarPre373 = cluster_timing[itime];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("K = %2d T_cluster = %7.4f", nclusters, _imopVarPre373);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [is_perform_valid]
            WRITE_S: []*/
            /*READ_S: [printf, heapCell#10, is_perform_valid]
            WRITE_S: []*/
            if (is_perform_valid) {
            /*READ_S: [printf, heapCell#10]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre375;
                /*READ_S: [heapCell#10]
                WRITE_S: []*/
                _imopVarPre375 = valid_timing[itime];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" T_valid = %7.4f", _imopVarPre375);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("\n");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        itime++;
    }
    /*READ_S: [perform_fuzzy_kmeans]
    WRITE_S: []*/
    /*READ_S: [_debug, omp_get_wtime, euclid_dist_2, find_nearest_point, heapCell#17, heapCell#2, heapCell#3, cluster_centres, heapCell#5, heapCell#34, printf, heapCell#16, heapCell#6, is_perform_assign, i, perform_fuzzy_kmeans, best_nclusters, cluster_assign, attributes, cluster_centres, best_nclusters, heapCell#35]
    WRITE_S: [heapCell#7]*/
    if (perform_fuzzy_kmeans) {
    /*READ_S: [_debug, omp_get_wtime, euclid_dist_2, find_nearest_point, heapCell#17, heapCell#2, heapCell#3, cluster_centres, heapCell#5, heapCell#34, printf, heapCell#16, heapCell#6, is_perform_assign, i, best_nclusters, cluster_assign, attributes, cluster_centres, best_nclusters, heapCell#35]
    WRITE_S: [heapCell#7]*/
        /*READ_S: [is_perform_assign]
        WRITE_S: []*/
        /*READ_S: [_debug, omp_get_wtime, euclid_dist_2, find_nearest_point, heapCell#17, heapCell#2, heapCell#3, cluster_centres, heapCell#5, heapCell#34, printf, heapCell#16, heapCell#6, is_perform_assign, i, best_nclusters, cluster_assign, attributes, cluster_centres, best_nclusters, heapCell#35]
        WRITE_S: [heapCell#7]*/
        if (is_perform_assign) {
        /*READ_S: [_debug, omp_get_wtime, euclid_dist_2, find_nearest_point, heapCell#17, heapCell#2, heapCell#3, cluster_centres, heapCell#5, heapCell#34, printf, heapCell#16, heapCell#6, i, best_nclusters, cluster_assign, attributes, cluster_centres, best_nclusters, heapCell#35]
        WRITE_S: [heapCell#7]*/
            /*READ_S: [_debug]
            WRITE_S: []*/
            /*READ_S: [omp_get_wtime, _debug]
            WRITE_S: []*/
            if (_debug) {
            /*READ_S: [omp_get_wtime]
            WRITE_S: []*/
                /*READ_S: [omp_get_wtime]
                WRITE_S: []*/
                assign_timing = omp_get_wtime();
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [euclid_dist_2, find_nearest_point, heapCell#17, heapCell#3, heapCell#2, cluster_centres, heapCell#5, heapCell#34, heapCell#16, heapCell#6, i, cluster_assign, best_nclusters, attributes, cluster_centres, heapCell#35, best_nclusters]
            WRITE_S: [heapCell#7]*/
#pragma omp parallel shared(cluster_assign, attributes, cluster_centres, best_nclusters) firstprivate(numObjects, numAttributes) private(i)
            {
            /*READ_S: [euclid_dist_2, find_nearest_point, heapCell#17, heapCell#3, heapCell#2, cluster_centres, heapCell#5, heapCell#34, heapCell#16, heapCell#6, i, cluster_assign, best_nclusters, attributes, cluster_centres, heapCell#35, best_nclusters]
            WRITE_S: [heapCell#7]*/
                /*READ_S: [euclid_dist_2, find_nearest_point, heapCell#17, heapCell#3, heapCell#2, cluster_centres, heapCell#5, heapCell#34, heapCell#16, heapCell#6, i, cluster_assign, best_nclusters, attributes, cluster_centres, heapCell#35, best_nclusters]
                WRITE_S: [heapCell#7]*/
#pragma omp for schedule(static) nowait
                /*READ_S: [i]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (i = 0; i < numObjects; i++) {
                /*READ_S: [euclid_dist_2, find_nearest_point, heapCell#17, heapCell#3, heapCell#2, cluster_centres, heapCell#5, heapCell#34, heapCell#16, heapCell#6, cluster_assign, best_nclusters, attributes, cluster_centres, heapCell#35, best_nclusters]
                WRITE_S: [heapCell#7]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre379;
                    /*READ_S: []
                    WRITE_S: []*/
                    float **_imopVarPre380;
                    /*READ_S: []
                    WRITE_S: []*/
                    float *_imopVarPre381;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre382;
                    /*READ_S: [best_nclusters, best_nclusters]
                    WRITE_S: []*/
                    _imopVarPre379 = *best_nclusters;
                    /*READ_S: [cluster_centres, cluster_centres]
                    WRITE_S: []*/
                    _imopVarPre380 = *cluster_centres;
                    /*READ_S: [heapCell#5, attributes, heapCell#2]
                    WRITE_S: []*/
                    _imopVarPre381 = attributes[i];
                    /*READ_S: [find_nearest_point]
                    WRITE_S: []*/
                    _imopVarPre382 = find_nearest_point(_imopVarPre381, numAttributes, _imopVarPre380, _imopVarPre379);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [cluster_assign]
                    WRITE_S: [heapCell#7]*/
                    cluster_assign[i] = _imopVarPre382;
                }
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
            /*READ_S: [_debug]
            WRITE_S: []*/
            /*READ_S: [omp_get_wtime, printf, _debug]
            WRITE_S: []*/
            if (_debug) {
            /*READ_S: [printf, omp_get_wtime]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre384;
                /*READ_S: [omp_get_wtime]
                WRITE_S: []*/
                _imopVarPre384 = omp_get_wtime();
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                assign_timing = _imopVarPre384 - assign_timing;
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("cluster assign timing = %8.4f sec\n", assign_timing);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#13, free]
    WRITE_S: [heapCell#13]*/
    if (!perform_fuzzy_kmeans) {
    /*READ_S: [heapCell#13, free]
    WRITE_S: [heapCell#13]*/
        /*READ_S: [heapCell#13, free]
        WRITE_S: [heapCell#13]*/
        free(membership);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fprintf, __stderrp, exit]
WRITE_S: []*/
void usage(char *argv0) {
/*READ_S: [fprintf, __stderrp, exit]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    char *help = "Usage: %s [switches] -i filename\n" "       -i filename:     file containing data to be clustered\n" "       -b               input file is in binary format\n" "       -q fuzziness:    fuzziness factor for fuzzy clustering\n" "                        1.0 is non-fuzzy up to infinity\n" "       -f               to perform fuzzy kmeans clustering\n" "                        default is regular kmeans clustering\n" "       -m max_clusters: maximum number of clusters allowed\n" "       -n min_clusters: minimum number of clusters allowed\n" "       -z             : don't zscore transform data\n" "       -t threshold   : threshold value\n" "       -p nproc       : number of threads\n" "       -v             : calculate the validity \n" "       -a             : perform atomic OpenMP pragma\n" "       -s             : perform object assignment if fuzzy performs\n" "       -o             : output timing results, default 0\n" "       -d             : enable debug mode\n";
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, help, argv0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre386;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre386 = -1;
    /*READ_S: [exit]
    WRITE_S: []*/
    exit(_imopVarPre386);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [omp_get_wtime, feature, is_perform_output, j, i, omp_get_max_threads, heapCell#28, heapCell#12, heapCell#11, open, partial_sum, perform_fuzzy_kmeans, fprintf, heapCell#13, heapCell#34, heapCell#33, feature, best_nclusters, is_perform_assign, read, valid_sum, j, feature, heapCell#17, heapCell#29, heapCell#2, heapCell#3, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, atof, heapCell#24, __builtin_object_size, attributes, heapCell#19, euclid_dist_2, find_nearest_point, cluster, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, usage, cluster_centres, is_perform_assign, i, cluster_assign, index, heapCell#1, atoi, heapCell#21, pow, getopt, __stderrp, heapCell#35, i, opt, heapCell#30, nclusters, fopen, __error, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, fclose, feature, heapCell#25, perform_fuzzy_kmeans, sum_fuzzy_members, multid_feuclid_dist, use_zscore_transform, heapCell#27, is_perform_valid, best_nclusters, heapCell#4, membership, heapCell#14, heapCell#15, new_centers, i, cluster_centres, fgets, sum_points, free, heapCell#37, heapCell#26, strerror, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, heapCell#0, _timing_tables, _debug, k, j, calloc, heapCell#18, sqrt, exit, sqd_dist, is_perform_atomic, heapCell#16, extract_moments, fuzzy_kmeans_cluster, sum, cluster_centres, cluster_centres, close, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, rewind, isBinaryFile, new_centre, omp_set_num_threads, strtok, partial_new_centre, nclusters, zscore_transform, npoints, nfeatures, srandom]
WRITE_S: [heapCell#23, i, j, heapCell#28, heapCell#11, heapCell#12, heapCell#25, heapCell#13, heapCell#34, heapCell#33, heapCell#27, valid_sum, heapCell#4, membership, heapCell#15, heapCell#14, heapCell#17, heapCell#29, heapCell#2, heapCell#3, heapCell#37, heapCell#26, penalty, heapCell#36, heapCell#6, heapCell#8, heapCell#10, heapCell#7, heapCell#0, heapCell#24, heapCell#19, _debug, k, heapCell#18, sqd_dist, heapCell#16, heapCell#1, index, heapCell#21, heapCell#35, heapCell#32, heapCell#30, heapCell#22, heapCell#38, heapCell#31, heapCell#5, delta, heapCell#20, heapCell#9]*/
int main(int argc, char **argv) {
/*READ_S: [omp_get_wtime, feature, is_perform_output, j, i, omp_get_max_threads, heapCell#28, heapCell#12, heapCell#11, open, partial_sum, perform_fuzzy_kmeans, fprintf, heapCell#13, heapCell#34, heapCell#33, feature, best_nclusters, is_perform_assign, read, valid_sum, j, feature, heapCell#17, heapCell#29, heapCell#2, heapCell#3, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, atof, heapCell#24, __builtin_object_size, attributes, heapCell#19, euclid_dist_2, find_nearest_point, cluster, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, usage, cluster_centres, is_perform_assign, i, cluster_assign, index, heapCell#1, atoi, heapCell#21, pow, getopt, __stderrp, heapCell#35, i, opt, heapCell#30, nclusters, fopen, __error, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, fclose, feature, heapCell#25, perform_fuzzy_kmeans, sum_fuzzy_members, multid_feuclid_dist, use_zscore_transform, heapCell#27, is_perform_valid, best_nclusters, heapCell#4, membership, heapCell#14, heapCell#15, new_centers, i, cluster_centres, fgets, sum_points, free, heapCell#37, heapCell#26, strerror, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, heapCell#0, _timing_tables, _debug, k, j, calloc, heapCell#18, sqrt, exit, sqd_dist, is_perform_atomic, heapCell#16, extract_moments, fuzzy_kmeans_cluster, sum, cluster_centres, cluster_centres, close, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, rewind, isBinaryFile, new_centre, omp_set_num_threads, strtok, partial_new_centre, nclusters, zscore_transform, npoints, nfeatures, srandom]
WRITE_S: [heapCell#23, i, j, heapCell#28, heapCell#11, heapCell#12, heapCell#25, heapCell#13, heapCell#34, heapCell#33, heapCell#27, valid_sum, heapCell#4, membership, heapCell#15, heapCell#14, heapCell#17, heapCell#29, heapCell#2, heapCell#3, heapCell#37, heapCell#26, penalty, heapCell#36, heapCell#6, heapCell#8, heapCell#10, heapCell#7, heapCell#0, heapCell#24, heapCell#19, _debug, k, heapCell#18, sqd_dist, heapCell#16, heapCell#1, index, heapCell#21, heapCell#35, heapCell#32, heapCell#30, heapCell#22, heapCell#38, heapCell#31, heapCell#5, delta, heapCell#20, heapCell#9]*/
    /*READ_S: []
    WRITE_S: []*/
    int opt;
    /*READ_S: []
    WRITE_S: []*/
    extern char *optarg;
    /*READ_S: []
    WRITE_S: []*/
    float fuzzyq = 1.5;
    /*READ_S: []
    WRITE_S: []*/
    int max_nclusters = 13;
    /*READ_S: []
    WRITE_S: []*/
    int min_nclusters = 4;
    /*READ_S: []
    WRITE_S: []*/
    char *filename = 0;
    /*READ_S: []
    WRITE_S: []*/
    float *buf;
    /*READ_S: []
    WRITE_S: []*/
    float **attributes;
    /*READ_S: []
    WRITE_S: []*/
    float **cluster_centres = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int best_nclusters;
    /*READ_S: []
    WRITE_S: []*/
    int *cluster_assign;
    /*READ_S: []
    WRITE_S: []*/
    int numAttributes;
    /*READ_S: []
    WRITE_S: []*/
    int numObjects;
    /*READ_S: []
    WRITE_S: []*/
    int use_zscore_transform = 1;
    /*READ_S: []
    WRITE_S: []*/
    char line[1024];
    /*READ_S: []
    WRITE_S: []*/
    int isBinaryFile = 0;
    /*READ_S: []
    WRITE_S: []*/
    int nloops;
    /*READ_S: []
    WRITE_S: []*/
    int len;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads;
    /*READ_S: []
    WRITE_S: []*/
    int perform_fuzzy_kmeans = 0;
    /*READ_S: []
    WRITE_S: []*/
    int is_perform_valid = 0;
    /*READ_S: []
    WRITE_S: []*/
    int is_perform_atomic = 0;
    /*READ_S: []
    WRITE_S: []*/
    int is_perform_assign = 0;
    /*READ_S: []
    WRITE_S: []*/
    int is_perform_output = 0;
    /*READ_S: []
    WRITE_S: []*/
    int _timing_tables;
    /*READ_S: []
    WRITE_S: []*/
    float *validity;
    /*READ_S: []
    WRITE_S: []*/
    float threshold = 0.001;
    /*READ_S: []
    WRITE_S: []*/
    double sum;
    /*READ_S: []
    WRITE_S: []*/
    double timing;
    /*READ_S: []
    WRITE_S: []*/
    double min_timing = 3.40282346638528859812e+38F;
    /*READ_S: []
    WRITE_S: []*/
    double io_timing;
    /*READ_S: []
    WRITE_S: []*/
    double *clustering_timing;
    /*READ_S: []
    WRITE_S: []*/
    double *valid_timing;
    /*READ_S: []
    WRITE_S: []*/
    double *min_cluster_timing;
    /*READ_S: []
    WRITE_S: []*/
    double *min_valid_timing;
    /*READ_S: []
    WRITE_S: [_debug]*/
    _debug = 0;
    /*READ_S: []
    WRITE_S: []*/
    nthreads = 0;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre388;
    /*READ_S: [heapCell#0, getopt]
    WRITE_S: [heapCell#0]*/
    _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, atof, atoi, opt, heapCell#0, getopt, __stderrp, usage, exit]
    WRITE_S: [_debug, heapCell#0]*/
    while ((opt = _imopVarPre388) != (-1)) {
    /*READ_S: [fprintf, atof, atoi, opt, heapCell#0, getopt, __stderrp, usage, exit]
    WRITE_S: [_debug, heapCell#0]*/
        /*READ_S: [opt]
        WRITE_S: []*/
        /*READ_S: [fprintf, atof, atoi, opt, heapCell#0, __stderrp, usage, exit]
        WRITE_S: [_debug]*/
        switch (opt) {
        /*READ_S: [fprintf, atof, atoi, heapCell#0, __stderrp, usage, exit]
        WRITE_S: [_debug]*/
            /*READ_S: []
            WRITE_S: []*/
            case 'i': filename = optarg;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            case 'b': isBinaryFile = 1;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [atof]
            WRITE_S: []*/
            case 'q': fuzzyq = atof(optarg);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            case 'f': perform_fuzzy_kmeans = 1;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [atof]
            WRITE_S: []*/
            case 't': threshold = atof(optarg);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [atoi]
            WRITE_S: []*/
            case 'm': max_nclusters = atoi(optarg);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [atoi]
            WRITE_S: []*/
            case 'n': min_nclusters = atoi(optarg);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            case 'z': use_zscore_transform = 0;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [atoi]
            WRITE_S: []*/
            case 'p': nthreads = atoi(optarg);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            case 'v': is_perform_valid = 1;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            case 'a': is_perform_atomic = 1;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            case 's': is_perform_assign = 1;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            case 'o': is_perform_output = 1;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: [_debug]*/
            case 'd': _debug = 1;
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre390;
            /*READ_S: [heapCell#0]
            WRITE_S: []*/
            case '?': _imopVarPre390 = argv[0];
            /*READ_S: [usage]
            WRITE_S: []*/
            usage(_imopVarPre390);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre392;
            /*READ_S: [heapCell#0]
            WRITE_S: []*/
            default: _imopVarPre392 = argv[0];
            /*READ_S: [usage]
            WRITE_S: []*/
            usage(_imopVarPre392);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
        }
        /*READ_S: [heapCell#0, getopt]
        WRITE_S: [heapCell#0]*/
        _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, heapCell#0, __stderrp, usage, exit]
    WRITE_S: []*/
    if (filename == 0) {
    /*READ_S: [fprintf, heapCell#0, __stderrp, usage, exit]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre394;
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        _imopVarPre394 = argv[0];
        /*READ_S: [usage]
        WRITE_S: []*/
        usage(_imopVarPre394);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [omp_set_num_threads]
    WRITE_S: []*/
    if (nthreads > 0) {
    /*READ_S: [omp_set_num_threads]
    WRITE_S: []*/
        /*READ_S: [omp_set_num_threads]
        WRITE_S: []*/
        omp_set_num_threads(nthreads);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    numAttributes = numObjects = 0;
    /*READ_S: [omp_get_wtime]
    WRITE_S: []*/
    io_timing = omp_get_wtime();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [isBinaryFile]
    WRITE_S: []*/
    /*READ_S: [heapCell#4, fclose, _debug, heapCell#2, fgets, fopen, open, __error, strerror, malloc, exit, fprintf, heapCell#5, printf, rewind, atof, isBinaryFile, read, strtok, close, __stderrp]
    WRITE_S: [heapCell#4, heapCell#5, heapCell#1, heapCell#2]*/
    if (isBinaryFile) {
    /*READ_S: [heapCell#4, _debug, open, __error, strerror, malloc, exit, fprintf, heapCell#5, printf, read, close, __stderrp]
    WRITE_S: [heapCell#4, heapCell#5]*/
        /*READ_S: []
        WRITE_S: []*/
        int infile;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre396;
        /*READ_S: [open]
        WRITE_S: []*/
        _imopVarPre396 = open(filename, 0x0000, "0600");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __error, strerror, __stderrp, exit]
        WRITE_S: []*/
        if ((infile = _imopVarPre396) == -1) {
        /*READ_S: [fprintf, __error, strerror, __stderrp, exit]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int *_imopVarPre416;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre417;
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre418;
            /*READ_S: [__error]
            WRITE_S: []*/
            _imopVarPre416 = __error();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre417 = (*_imopVarPre416);
            /*READ_S: [strerror]
            WRITE_S: []*/
            _imopVarPre418 = strerror(_imopVarPre417);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre418);
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
        unsigned long int _imopVarPre421;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre422;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre421 = sizeof(int);
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre422 = &numObjects;
        /*READ_S: [read]
        WRITE_S: []*/
        read(infile, _imopVarPre422, _imopVarPre421);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre425;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre426;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre425 = sizeof(int);
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre426 = &numAttributes;
        /*READ_S: [read]
        WRITE_S: []*/
        read(infile, _imopVarPre426, _imopVarPre425);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [_debug]
        WRITE_S: []*/
        /*READ_S: [printf, _debug]
        WRITE_S: []*/
        if (_debug) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre429;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre430;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre429 = numObjects * numAttributes * sizeof(float);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre430 = malloc(_imopVarPre429);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        buf = (float *) _imopVarPre430;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre433;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre434;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre433 = numObjects * sizeof(float *);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre434 = malloc(_imopVarPre433);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        attributes = (float **) _imopVarPre434;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre437;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre438;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre437 = numObjects * numAttributes * sizeof(float);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre438 = malloc(_imopVarPre437);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#5]*/
        attributes[0] = (float *) _imopVarPre438;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#5]
        WRITE_S: [heapCell#5]*/
        for (i = 1; i < numObjects; i++) {
        /*READ_S: [heapCell#5]
        WRITE_S: [heapCell#5]*/
            /*READ_S: [heapCell#5]
            WRITE_S: [heapCell#5]*/
            attributes[i] = attributes[i - 1] + numAttributes;
        }
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre440;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre440 = numObjects * numAttributes * sizeof(float);
        /*READ_S: [heapCell#4, read]
        WRITE_S: [heapCell#4]*/
        read(infile, buf, _imopVarPre440);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [close]
        WRITE_S: []*/
        close(infile);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [fclose, _debug, heapCell#2, fgets, fopen, __error, strerror, malloc, exit, fprintf, printf, rewind, atof, strtok, __stderrp]
    WRITE_S: [heapCell#1, heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        FILE *infile;
        /*READ_S: []
        WRITE_S: []*/
        struct __sFILE *_imopVarPre442;
        /*READ_S: [fopen]
        WRITE_S: []*/
        _imopVarPre442 = fopen(filename, "r");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __error, __stderrp, strerror, exit]
        WRITE_S: []*/
        if ((infile = _imopVarPre442) == ((void *) 0)) {
        /*READ_S: [fprintf, __error, __stderrp, strerror, exit]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int *_imopVarPre462;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre463;
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre464;
            /*READ_S: [__error]
            WRITE_S: []*/
            _imopVarPre462 = __error();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre463 = (*_imopVarPre462);
            /*READ_S: [strerror]
            WRITE_S: []*/
            _imopVarPre464 = strerror(_imopVarPre463);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre464);
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
        char *_imopVarPre466;
        /*READ_S: [fgets]
        WRITE_S: []*/
        _imopVarPre466 = fgets(line, 1024, infile);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fgets, strtok]
        WRITE_S: []*/
        while (_imopVarPre466 != ((void *) 0)) {
        /*READ_S: [fgets, strtok]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre468;
            /*READ_S: [strtok]
            WRITE_S: []*/
            _imopVarPre468 = strtok(line, " \t\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (_imopVarPre468 != 0) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                numObjects++;
            }
            /*READ_S: [fgets]
            WRITE_S: []*/
            _imopVarPre466 = fgets(line, 1024, infile);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [rewind]
        WRITE_S: []*/
        rewind(infile);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre470;
        /*READ_S: [fgets]
        WRITE_S: []*/
        _imopVarPre470 = fgets(line, 1024, infile);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fgets, strtok]
        WRITE_S: []*/
        while (_imopVarPre470 != ((void *) 0)) {
        /*READ_S: [fgets, strtok]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre472;
            /*READ_S: [strtok]
            WRITE_S: []*/
            _imopVarPre472 = strtok(line, " \t\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [strtok]
            WRITE_S: []*/
            if (_imopVarPre472 != 0) {
            /*READ_S: [strtok]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                void *_imopVarPre475;
                /*READ_S: []
                WRITE_S: []*/
                char *_imopVarPre476;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre475 = ((void *) 0);
                /*READ_S: [strtok]
                WRITE_S: []*/
                _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [strtok]
                WRITE_S: []*/
                while (_imopVarPre476 != ((void *) 0)) {
                /*READ_S: [strtok]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    numAttributes++;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre475 = ((void *) 0);
                    /*READ_S: [strtok]
                    WRITE_S: []*/
                    _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                    /*READ_S: []
                    WRITE_S: []*/
                }
                /*READ_S: []
                WRITE_S: []*/
                break;
            }
            /*READ_S: [fgets]
            WRITE_S: []*/
            _imopVarPre470 = fgets(line, 1024, infile);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [_debug]
        WRITE_S: []*/
        /*READ_S: [_debug, printf]
        WRITE_S: []*/
        if (_debug) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre479;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre480;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre479 = numObjects * numAttributes * sizeof(float);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre480 = malloc(_imopVarPre479);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        buf = (float *) _imopVarPre480;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre483;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre484;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre483 = numObjects * sizeof(float *);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre484 = malloc(_imopVarPre483);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        attributes = (float **) _imopVarPre484;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre487;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre488;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre487 = numObjects * numAttributes * sizeof(float);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre488 = malloc(_imopVarPre487);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#2]*/
        attributes[0] = (float *) _imopVarPre488;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#2]*/
        for (i = 1; i < numObjects; i++) {
        /*READ_S: [heapCell#2]
        WRITE_S: [heapCell#2]*/
            /*READ_S: [heapCell#2]
            WRITE_S: [heapCell#2]*/
            attributes[i] = attributes[i - 1] + numAttributes;
        }
        /*READ_S: [rewind]
        WRITE_S: []*/
        rewind(infile);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        i = 0;
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre490;
        /*READ_S: [fgets]
        WRITE_S: []*/
        _imopVarPre490 = fgets(line, 1024, infile);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [atof, fgets, strtok]
        WRITE_S: [heapCell#1]*/
        while (_imopVarPre490 != ((void *) 0)) {
        /*READ_S: [atof, fgets, strtok]
        WRITE_S: [heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre492;
            /*READ_S: [strtok]
            WRITE_S: []*/
            _imopVarPre492 = strtok(line, " \t\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (_imopVarPre492 == ((void *) 0)) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                continue;
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [atof, strtok]
            WRITE_S: [heapCell#1]*/
            for (j = 0; j < numAttributes; j++) {
            /*READ_S: [atof, strtok]
            WRITE_S: [heapCell#1]*/
                /*READ_S: []
                WRITE_S: []*/
                void *_imopVarPre497;
                /*READ_S: []
                WRITE_S: []*/
                char *_imopVarPre498;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre499;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre497 = ((void *) 0);
                /*READ_S: [strtok]
                WRITE_S: []*/
                _imopVarPre498 = strtok(_imopVarPre497, " ,\t\n");
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [atof]
                WRITE_S: []*/
                _imopVarPre499 = atof(_imopVarPre498);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: [heapCell#1]*/
                buf[i] = _imopVarPre499;
                /*READ_S: []
                WRITE_S: []*/
                i++;
            }
            /*READ_S: [fgets]
            WRITE_S: []*/
            _imopVarPre490 = fgets(line, 1024, infile);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [fclose]
        WRITE_S: []*/
        fclose(infile);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre501;
    /*READ_S: [omp_get_wtime]
    WRITE_S: []*/
    _imopVarPre501 = omp_get_wtime();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    io_timing = _imopVarPre501 - io_timing;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre504;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre505;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre504 = numObjects * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre505 = malloc(_imopVarPre504);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    cluster_assign = (int *) _imopVarPre505;
    /*READ_S: []
    WRITE_S: []*/
    nloops = 8;
    /*READ_S: []
    WRITE_S: []*/
    len = max_nclusters - min_nclusters + 1;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre508;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre509;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre508 = sizeof(float);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre509 = calloc(len, _imopVarPre508);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    validity = (float *) _imopVarPre509;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre512;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre513;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre512 = sizeof(double);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre513 = calloc(len, _imopVarPre512);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    clustering_timing = (double *) _imopVarPre513;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre516;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre517;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre516 = sizeof(double);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre517 = calloc(len, _imopVarPre516);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    valid_timing = (double *) _imopVarPre517;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre520;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre521;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre520 = sizeof(double);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre521 = calloc(len, _imopVarPre520);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    min_cluster_timing = (double *) _imopVarPre521;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre524;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre525;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre524 = sizeof(double);
    /*READ_S: [calloc]
    WRITE_S: []*/
    _imopVarPre525 = calloc(len, _imopVarPre524);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    min_valid_timing = (double *) _imopVarPre525;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [omp_get_wtime, feature, j, i, omp_get_max_threads, heapCell#28, partial_sum, heapCell#13, heapCell#34, heapCell#33, feature, best_nclusters, valid_sum, j, feature, heapCell#29, heapCell#17, heapCell#2, heapCell#3, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, heapCell#24, __builtin_object_size, attributes, heapCell#19, euclid_dist_2, find_nearest_point, cluster, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, cluster_centres, is_perform_assign, i, cluster_assign, index, heapCell#1, heapCell#21, pow, heapCell#35, i, heapCell#30, nclusters, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, feature, heapCell#25, perform_fuzzy_kmeans, sum_fuzzy_members, multid_feuclid_dist, use_zscore_transform, heapCell#27, is_perform_valid, best_nclusters, heapCell#4, membership, heapCell#14, heapCell#15, new_centers, i, cluster_centres, sum_points, free, heapCell#37, heapCell#26, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, _debug, k, j, calloc, heapCell#18, sqrt, sqd_dist, heapCell#16, extract_moments, fuzzy_kmeans_cluster, sum, cluster_centres, cluster_centres, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, new_centre, partial_new_centre, nclusters, zscore_transform, npoints, nfeatures, srandom]
    WRITE_S: [heapCell#23, k, i, j, heapCell#28, heapCell#11, heapCell#12, heapCell#18, heapCell#25, sqd_dist, heapCell#13, heapCell#34, heapCell#16, heapCell#33, index, heapCell#1, heapCell#21, heapCell#27, valid_sum, heapCell#35, heapCell#4, heapCell#32, membership, heapCell#15, heapCell#14, heapCell#29, heapCell#17, heapCell#30, heapCell#3, heapCell#22, heapCell#37, heapCell#26, heapCell#38, penalty, heapCell#31, heapCell#36, delta, heapCell#6, heapCell#8, heapCell#20, heapCell#10, heapCell#7, heapCell#24, heapCell#9, heapCell#19]*/
    for (i = 0; i < nloops; i++) {
    /*READ_S: [omp_get_wtime, feature, j, i, omp_get_max_threads, heapCell#28, partial_sum, heapCell#13, heapCell#34, heapCell#33, feature, best_nclusters, valid_sum, j, feature, heapCell#29, heapCell#17, heapCell#2, heapCell#3, clusters, membership, penalty, kmeans_clustering, partial_new_centers, printf, heapCell#6, heapCell#24, __builtin_object_size, attributes, heapCell#19, euclid_dist_2, find_nearest_point, cluster, omp_get_thread_num, cluster_centres, random, sum_points, __builtin___memcpy_chk, is_perform_atomic, malloc, cluster_centres, is_perform_assign, i, cluster_assign, index, heapCell#1, heapCell#21, pow, heapCell#35, i, heapCell#30, nclusters, nfeatures, npoints, heapCell#31, delta, heapCell#20, numpoints_in_clusters, heapCell#9, heapCell#23, partial_new_centers_len, feature, heapCell#25, perform_fuzzy_kmeans, sum_fuzzy_members, multid_feuclid_dist, use_zscore_transform, heapCell#27, is_perform_valid, best_nclusters, heapCell#4, membership, heapCell#14, heapCell#15, new_centers, i, cluster_centres, sum_points, free, heapCell#37, heapCell#26, heapCell#36, heapCell#8, _imopVarPre237, fuzzyq, heapCell#10, heapCell#7, _debug, k, j, calloc, heapCell#18, sqrt, sqd_dist, heapCell#16, extract_moments, fuzzy_kmeans_cluster, sum, cluster_centres, cluster_centres, _imopVarPre323, sum_points, heapCell#32, new_centers_len, fuzzy_validity, heapCell#22, heapCell#38, i, heapCell#5, is_perform_atomic, new_centre, partial_new_centre, nclusters, zscore_transform, npoints, nfeatures, srandom]
    WRITE_S: [heapCell#23, k, i, j, heapCell#28, heapCell#11, heapCell#12, heapCell#18, heapCell#25, sqd_dist, heapCell#13, heapCell#34, heapCell#16, heapCell#33, index, heapCell#1, heapCell#21, heapCell#27, valid_sum, heapCell#35, heapCell#4, heapCell#32, membership, heapCell#15, heapCell#14, heapCell#29, heapCell#17, heapCell#30, heapCell#3, heapCell#22, heapCell#37, heapCell#26, heapCell#38, penalty, heapCell#31, heapCell#36, delta, heapCell#6, heapCell#8, heapCell#20, heapCell#10, heapCell#7, heapCell#24, heapCell#9, heapCell#19]*/
        /*READ_S: []
        WRITE_S: []*/
        float *_imopVarPre532;
        /*READ_S: []
        WRITE_S: []*/
        unsigned int _imopVarPre533;
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre534;
        /*READ_S: []
        WRITE_S: []*/
        float *_imopVarPre535;
        /*READ_S: [heapCell#5, heapCell#2]
        WRITE_S: []*/
        _imopVarPre532 = attributes[0];
        /*READ_S: [heapCell#6, __builtin_object_size, heapCell#3]
        WRITE_S: [heapCell#6, heapCell#3]*/
        _imopVarPre533 = __builtin_object_size(_imopVarPre532, 0);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre534 = numObjects * numAttributes * sizeof(float);
        /*READ_S: [heapCell#5, heapCell#2]
        WRITE_S: []*/
        _imopVarPre535 = attributes[0];
        /*READ_S: [heapCell#4, heapCell#6, heapCell#1, heapCell#3, __builtin___memcpy_chk]
        WRITE_S: [heapCell#4, heapCell#6, heapCell#1, heapCell#3]*/
        __builtin___memcpy_chk(_imopVarPre535, buf, _imopVarPre534, _imopVarPre533);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        timing = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        cluster_centres = ((void *) 0);
        /*READ_S: []
        WRITE_S: []*/
        float ***_imopVarPre538;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre539;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre538 = &cluster_centres;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre539 = &best_nclusters;
        /*READ_S: [cluster]
        WRITE_S: []*/
        cluster(perform_fuzzy_kmeans, is_perform_valid, is_perform_atomic, is_perform_assign, numObjects, numAttributes, attributes, use_zscore_transform, min_nclusters, max_nclusters, fuzzyq, threshold, _imopVarPre539, _imopVarPre538, cluster_assign, validity, clustering_timing, valid_timing);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre541;
        /*READ_S: [omp_get_wtime]
        WRITE_S: []*/
        _imopVarPre541 = omp_get_wtime();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        timing = _imopVarPre541 - timing;
        /*READ_S: [_debug]
        WRITE_S: []*/
        /*READ_S: [printf, _debug]
        WRITE_S: []*/
        if (_debug) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("nloop = %d cluster() time = %.4f\n", i, timing);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#10, heapCell#9]
        WRITE_S: [heapCell#12, heapCell#11]*/
        if (timing < min_timing) {
        /*READ_S: [heapCell#10, heapCell#9]
        WRITE_S: [heapCell#12, heapCell#11]*/
            /*READ_S: []
            WRITE_S: []*/
            min_timing = timing;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#10, heapCell#9]
            WRITE_S: [heapCell#12, heapCell#11]*/
            for (j = 0; j < len; j++) {
            /*READ_S: [heapCell#10, heapCell#9]
            WRITE_S: [heapCell#12, heapCell#11]*/
                /*READ_S: [heapCell#9]
                WRITE_S: [heapCell#11]*/
                min_cluster_timing[j] = clustering_timing[j];
                /*READ_S: [heapCell#10]
                WRITE_S: [heapCell#12]*/
                min_valid_timing[j] = valid_timing[j];
            }
        }
    }
    /*READ_S: [is_perform_output]
    WRITE_S: []*/
    /*READ_S: [printf, is_perform_atomic, heapCell#8, is_perform_output, omp_get_max_threads, is_perform_assign, heapCell#11, heapCell#12, _timing_tables, perform_fuzzy_kmeans]
    WRITE_S: []*/
    if (is_perform_output) {
    /*READ_S: [printf, is_perform_atomic, heapCell#8, omp_get_max_threads, is_perform_assign, heapCell#11, heapCell#12, _timing_tables, perform_fuzzy_kmeans]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre543;
        /*READ_S: [omp_get_max_threads]
        WRITE_S: []*/
        _imopVarPre543 = omp_get_max_threads();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Number of threads = %d\n", _imopVarPre543);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("File %s contains  numObjects = %d, each of size %d\n", filename, numObjects, numAttributes);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [perform_fuzzy_kmeans]
        WRITE_S: []*/
        /*READ_S: [printf, is_perform_assign, perform_fuzzy_kmeans]
        WRITE_S: []*/
        if (perform_fuzzy_kmeans) {
        /*READ_S: [printf, is_perform_assign]
        WRITE_S: []*/
            /*READ_S: [is_perform_assign]
            WRITE_S: []*/
            /*READ_S: [printf, is_perform_assign]
            WRITE_S: []*/
            if (is_perform_assign) {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("**** Fuzzy Kmeans (Loop N first) with assign ****");
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("**** Fuzzy Kmeans (Loop N first) without assign ****");
                /*READ_S: []
                WRITE_S: []*/
            }
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("Performing **** Regular Kmeans (Loop N first) ****");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [is_perform_atomic]
        WRITE_S: []*/
        /*READ_S: [printf, is_perform_atomic]
        WRITE_S: []*/
        if (is_perform_atomic) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" use atomic pragma ******\n");
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" use array reduction ******\n");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        _timing_tables = 1;
        /*READ_S: [_timing_tables]
        WRITE_S: []*/
        /*READ_S: [printf, _timing_tables]
        WRITE_S: []*/
        if (_timing_tables) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" K, Tcluster,   Tvalid,   Tsum\n");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf, heapCell#8, heapCell#12, heapCell#11, _timing_tables]
        WRITE_S: []*/
        for (i = 0; i < len; i++) {
        /*READ_S: [printf, heapCell#8, heapCell#12, heapCell#11, _timing_tables]
        WRITE_S: []*/
            /*READ_S: [_timing_tables]
            WRITE_S: []*/
            /*READ_S: [printf, heapCell#8, heapCell#12, heapCell#11, _timing_tables]
            WRITE_S: []*/
            if (_timing_tables) {
            /*READ_S: [printf, heapCell#11, heapCell#12]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre548;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre549;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre550;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre551;
                /*READ_S: [heapCell#11, heapCell#12]
                WRITE_S: []*/
                _imopVarPre548 = min_cluster_timing[i] + min_valid_timing[i];
                /*READ_S: [heapCell#12]
                WRITE_S: []*/
                _imopVarPre549 = min_valid_timing[i];
                /*READ_S: [heapCell#11]
                WRITE_S: []*/
                _imopVarPre550 = min_cluster_timing[i];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre551 = min_nclusters + i;
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("%2d, %8.4f, %8.4f, %8.4f\n", _imopVarPre551, _imopVarPre550, _imopVarPre549, _imopVarPre548);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [printf, heapCell#8, heapCell#12, heapCell#11]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre553;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre553 = min_nclusters + i;
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("for %2d clusters: ", _imopVarPre553);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                float _imopVarPre555;
                /*READ_S: [heapCell#8]
                WRITE_S: []*/
                _imopVarPre555 = validity[i];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("validity = %6.4f", _imopVarPre555);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre557;
                /*READ_S: [heapCell#11]
                WRITE_S: []*/
                _imopVarPre557 = min_cluster_timing[i];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" T_cluster = %8.4f", _imopVarPre557);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre559;
                /*READ_S: [heapCell#12]
                WRITE_S: []*/
                _imopVarPre559 = min_valid_timing[i];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" T_valid = %8.4f", _imopVarPre559);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre561;
                /*READ_S: [heapCell#11, heapCell#12]
                WRITE_S: []*/
                _imopVarPre561 = min_cluster_timing[i] + min_valid_timing[i];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" T_sum = %8.4f\n", _imopVarPre561);
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
        /*READ_S: [printf]
        WRITE_S: []*/
        for (i = 0; i < 79; i++) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("-");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        sum = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#11]
        WRITE_S: []*/
        for (i = 0; i < len; i++) {
        /*READ_S: [heapCell#11]
        WRITE_S: []*/
            /*READ_S: [heapCell#11]
            WRITE_S: []*/
            sum += min_cluster_timing[i];
        }
        /*READ_S: [_timing_tables]
        WRITE_S: []*/
        /*READ_S: [printf, _timing_tables]
        WRITE_S: []*/
        if (_timing_tables) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("  , %8.4f,", sum);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("sum                                              %.4f", sum);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        sum = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#12]
        WRITE_S: []*/
        for (i = 0; i < len; i++) {
        /*READ_S: [heapCell#12]
        WRITE_S: []*/
            /*READ_S: [heapCell#12]
            WRITE_S: []*/
            sum += min_valid_timing[i];
        }
        /*READ_S: [_timing_tables]
        WRITE_S: []*/
        /*READ_S: [printf, _timing_tables]
        WRITE_S: []*/
        if (_timing_tables) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" %8.4f,", sum);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("           %8.4f", sum);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#11]
        WRITE_S: []*/
        for (i = 0; i < len; i++) {
        /*READ_S: [heapCell#11]
        WRITE_S: []*/
            /*READ_S: [heapCell#11]
            WRITE_S: []*/
            sum += min_cluster_timing[i];
        }
        /*READ_S: [_timing_tables]
        WRITE_S: []*/
        /*READ_S: [printf, _timing_tables]
        WRITE_S: []*/
        if (_timing_tables) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" %8.4f\n", sum);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("           %.4f\n", sum);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("I/O time = %8.4f\n", io_timing);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (!_timing_tables) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("Conclude : best no. of clusters found = %d\n", best_nclusters);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("Total timing = %10.4f sec\n", min_timing);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        for (i = 0; i < 79; i++) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("-");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [heapCell#12, free]
    WRITE_S: [heapCell#12]*/
    free(min_valid_timing);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#11, free]
    WRITE_S: [heapCell#11]*/
    free(min_cluster_timing);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#10, free]
    WRITE_S: [heapCell#10]*/
    free(valid_timing);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [free, heapCell#9]
    WRITE_S: [heapCell#9]*/
    free(clustering_timing);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#8, free]
    WRITE_S: [heapCell#8]*/
    free(validity);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#7, free]
    WRITE_S: [heapCell#7]*/
    free(cluster_assign);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#5, heapCell#6, heapCell#2, heapCell#3, free]
    WRITE_S: [heapCell#5, heapCell#6, heapCell#2, heapCell#3]*/
    free(attributes);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    float *_imopVarPre563;
    /*READ_S: [heapCell#34, heapCell#16]
    WRITE_S: []*/
    _imopVarPre563 = cluster_centres[0];
    /*READ_S: [heapCell#17, free, heapCell#35]
    WRITE_S: [heapCell#17, heapCell#35]*/
    free(_imopVarPre563);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#34, heapCell#16, heapCell#17, free, heapCell#35]
    WRITE_S: [heapCell#34, heapCell#16, heapCell#17, heapCell#35]*/
    free(cluster_centres);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#4, heapCell#1, free]
    WRITE_S: [heapCell#4, heapCell#1]*/
    free(buf);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
