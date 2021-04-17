
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef long __darwin_ssize_t;
/*[]*/
typedef __int64_t __darwin_off_t;
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
char *fgets(char *restrict , int  , FILE *);
/*[]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*[]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
void rewind(FILE *);
/*[]*/
typedef __darwin_ssize_t ssize_t;
/*[]*/
double atof(const char *);
/*[]*/
int atoi(const char *);
/*[]*/
void *calloc(size_t __count, size_t __size);
/*[]*/
void exit(int );
/*[]*/
void free(void *);
/*[]*/
void *malloc(size_t __size);
/*[]*/
long random(void );
/*[]*/
void srandom(unsigned );
/*[]*/
char *strerror(int __errnum);
/*[]*/
char *strtok(char *__str, const char *__sep);
/*[]*/
extern int *__error(void );
/*[]*/
extern double pow(double , double );
/*[]*/
extern double sqrt(double );
/*[]*/
int close(int );
/*[]*/
ssize_t read(int , void * , size_t );
/*[]*/
int getopt(int , char *const [] , const char *);
/*[]*/
struct fssearchblock ;
/*[]*/
struct searchstate ;
/*[]*/
#pragma pack(4)
/*[]*/
#pragma pack()
/*[]*/
struct _filesec ;
/*[]*/
int open(const char *, int , ...);
/*[]*/
extern void omp_set_num_threads(int );
/*[]*/
extern int omp_get_max_threads(void );
/*[]*/
extern int omp_get_thread_num(void );
/*[]*/
extern double omp_get_wtime(void );
/*[]*/
float multid_feuclid_dist(float *, float * , int );
/*[]*/
float euclid_dist_2(float *, float * , int );
/*[]*/
int find_nearest_point(float *, int  , float ** , int );
/*[]*/
void sum_fuzzy_members(float **, int  , float ** , int  , int  , float  , float *);
/*[]*/
float *extract_moments(float *, int  , int );
/*[]*/
void zscore_transform(float **, int  , int );
/*[]*/
int _debug;
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
__inline float multid_feuclid_dist(float *pt1, float *pt2 , int numdims) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    float ans = 0.0;
    /*[1, 2, 3]*/
    int i;
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    for (i = 0; i < numdims; i++) {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        ans += ((pt1[i] - pt2[i]) * (pt1[i] - pt2[i]));
    }
    /*[1, 2, 3]*/
    double _imopVarPre143;
    /*[1, 2, 3]*/
    double _imopVarPre144;
    /*[1, 2, 3]*/
    _imopVarPre143 = (double) ans;
    /*[1, 2, 3]*/
    _imopVarPre144 = sqrt(_imopVarPre143);
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    ans = _imopVarPre144;
    /*[1, 2, 3]*/
    return ans;
}
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
__inline int find_nearest_point(float *pt, int nfeatures , float **pts , int npts) {
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    int index;
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    int i;
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    float max_dist = 3.40282346638528859812e+38F;
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    for (i = 0; i < npts; i++) {
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        float dist;
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        float *_imopVarPre146;
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        float _imopVarPre147;
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        _imopVarPre146 = pts[i];
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        _imopVarPre147 = euclid_dist_2(pt, _imopVarPre146, nfeatures);
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        dist = _imopVarPre147;
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
        if (dist < max_dist) {
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            max_dist = dist;
            /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
            index = i;
        }
    }
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]*/
    return index;
}
/*[15, 16, 17, 18, 19, 20]*/
/*[15, 16, 17, 18, 19, 20]*/
/*[15, 16, 17, 18, 19, 20]*/
/*[15, 16, 17, 18, 19, 20]*/
/*[15, 16, 17, 18, 19, 20]*/
/*[15, 16, 17, 18, 19, 20]*/
/*[15, 16, 17, 18, 19, 20]*/
/*[15, 16, 17, 18, 19, 20]*/
__inline void sum_fuzzy_members(float **feature, int npoints , float **cluster_centres , int nclusters , int nfeatures , float fuzzyq , float *sum_points) {
/*[15, 16, 17, 18, 19, 20]*/
    /*[15, 16, 17, 18, 19, 20]*/
    int i;
    /*[15, 16, 17, 18, 19, 20]*/
    int j;
    /*[15, 16, 17, 18, 19, 20]*/
    float distance;
    /*[15, 16, 17, 18, 19, 20]*/
#pragma omp for schedule(static) nowait
    /*[15, 16, 17, 18, 19, 20]*/
    /*[15, 16, 17, 18, 19, 20]*/
    /*[15, 16, 17, 18, 19, 20]*/
    for (i = 0; i < npoints; i++) {
    /*[15, 16, 17, 18, 19, 20]*/
        /*[15, 16, 17, 18, 19, 20]*/
        sum_points[i] = 0.0;
        /*[15, 16, 17, 18, 19, 20]*/
        /*[15, 16, 17, 18, 19, 20]*/
        /*[15, 16, 17, 18, 19, 20]*/
        /*[15, 16, 17, 18, 19, 20]*/
        for (j = 0; j < nclusters; j++) {
        /*[15, 16, 17, 18, 19, 20]*/
            /*[15, 16, 17, 18, 19, 20]*/
            float *_imopVarPre150;
            /*[15, 16, 17, 18, 19, 20]*/
            float *_imopVarPre151;
            /*[15, 16, 17, 18, 19, 20]*/
            float _imopVarPre152;
            /*[15, 16, 17, 18, 19, 20]*/
            _imopVarPre150 = cluster_centres[j];
            /*[15, 16, 17, 18, 19, 20]*/
            _imopVarPre151 = feature[i];
            /*[15, 16, 17, 18, 19, 20]*/
            _imopVarPre152 = euclid_dist_2(_imopVarPre151, _imopVarPre150, nfeatures);
            /*[15, 16, 17, 18, 19, 20]*/
            /*[15, 16, 17, 18, 19, 20]*/
            distance = _imopVarPre152;
            /*[15, 16, 17, 18, 19, 20]*/
            double _imopVarPre155;
            /*[15, 16, 17, 18, 19, 20]*/
            double _imopVarPre156;
            /*[15, 16, 17, 18, 19, 20]*/
            double _imopVarPre157;
            /*[15, 16, 17, 18, 19, 20]*/
            _imopVarPre155 = 1.0 / (fuzzyq - 1);
            /*[15, 16, 17, 18, 19, 20]*/
            _imopVarPre156 = 1.0 / (distance + 0.00001);
            /*[15, 16, 17, 18, 19, 20]*/
            _imopVarPre157 = pow(_imopVarPre156, _imopVarPre155);
            /*[15, 16, 17, 18, 19, 20]*/
            /*[15, 16, 17, 18, 19, 20]*/
            sum_points[i] += _imopVarPre157;
        }
    }
}
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
__inline float euclid_dist_2(float *pt1, float *pt2 , int numdims) {
/*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    int i;
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    float ans = 0.0;
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    for (i = 0; i < numdims; i++) {
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
        /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
        ans += (pt1[i] - pt2[i]) * (pt1[i] - pt2[i]);
    }
    /*[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]*/
    return ans;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
float *extract_moments(float *data, int num_elts , int num_moments) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    float *moments;
    /*[]*/
    unsigned long int _imopVarPre330;
    /*[]*/
    void *_imopVarPre331;
    /*[]*/
    _imopVarPre330 = sizeof(float);
    /*[]*/
    _imopVarPre331 = calloc(num_moments, _imopVarPre330);
    /*[]*/
    /*[]*/
    moments = (float *) _imopVarPre331;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < num_elts; i++) {
    /*[]*/
        /*[]*/
        moments[0] += data[i];
    }
    /*[]*/
    moments[0] = moments[0] / num_elts;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 1; j < num_moments; j++) {
    /*[]*/
        /*[]*/
        moments[j] = 0;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < num_elts; i++) {
        /*[]*/
            /*[]*/
            int _imopVarPre334;
            /*[]*/
            float _imopVarPre335;
            /*[]*/
            double _imopVarPre336;
            /*[]*/
            _imopVarPre334 = j + 1;
            /*[]*/
            _imopVarPre335 = (data[i] - moments[0]);
            /*[]*/
            _imopVarPre336 = pow(_imopVarPre335, _imopVarPre334);
            /*[]*/
            /*[]*/
            moments[j] += _imopVarPre336;
        }
        /*[]*/
        moments[j] = moments[j] / num_elts;
    }
    /*[]*/
    return moments;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void zscore_transform(float **data, int numObjects , int numAttributes) {
/*[]*/
    /*[]*/
    float *single_variable;
    /*[]*/
    float *moments;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    unsigned long int _imopVarPre339;
    /*[]*/
    void *_imopVarPre340;
    /*[]*/
    _imopVarPre339 = sizeof(float);
    /*[]*/
    _imopVarPre340 = calloc(numObjects, _imopVarPre339);
    /*[]*/
    /*[]*/
    single_variable = (float *) _imopVarPre340;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < numAttributes; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < numObjects; j++) {
        /*[]*/
            /*[]*/
            single_variable[j] = data[j][i];
        }
        /*[]*/
        moments = extract_moments(single_variable, numObjects, 2);
        /*[]*/
        /*[]*/
        double _imopVarPre343;
        /*[]*/
        double _imopVarPre344;
        /*[]*/
        _imopVarPre343 = (double) moments[1];
        /*[]*/
        _imopVarPre344 = sqrt(_imopVarPre343);
        /*[]*/
        /*[]*/
        moments[1] = (float) _imopVarPre344;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < numObjects; j++) {
        /*[]*/
            /*[]*/
            data[j][i] = (data[j][i] - moments[0]) / moments[1];
        }
        /*[]*/
        free(moments);
        /*[]*/
    }
    /*[]*/
    free(single_variable);
    /*[]*/
}
/*[]*/
/*[]*/
void usage(char *argv0) {
/*[]*/
    /*[]*/
    char *help = "Usage: %s [switches] -i filename\n" "       -i filename:     file containing data to be clustered\n" "       -b               input file is in binary format\n" "       -q fuzziness:    fuzziness factor for fuzzy clustering\n" "                        1.0 is non-fuzzy up to infinity\n" "       -f               to perform fuzzy kmeans clustering\n" "                        default is regular kmeans clustering\n" "       -m max_clusters: maximum number of clusters allowed\n" "       -n min_clusters: minimum number of clusters allowed\n" "       -z             : don't zscore transform data\n" "       -t threshold   : threshold value\n" "       -p nproc       : number of threads\n" "       -v             : calculate the validity \n" "       -a             : perform atomic OpenMP pragma\n" "       -s             : perform object assignment if fuzzy performs\n" "       -o             : output timing results, default 0\n" "       -d             : enable debug mode\n";
    /*[]*/
    fprintf(__stderrp, help, argv0);
    /*[]*/
    /*[]*/
    int _imopVarPre386;
    /*[]*/
    _imopVarPre386 = -1;
    /*[]*/
    exit(_imopVarPre386);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    int opt;
    /*[]*/
    extern char *optarg;
    /*[]*/
    float fuzzyq = 1.5;
    /*[]*/
    int max_nclusters = 13;
    /*[]*/
    int min_nclusters = 4;
    /*[]*/
    char *filename = 0;
    /*[]*/
    float *buf;
    /*[]*/
    float **attributes;
    /*[]*/
    float **cluster_centres = ((void *) 0);
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int best_nclusters;
    /*[]*/
    int *cluster_assign;
    /*[]*/
    int numAttributes;
    /*[]*/
    int numObjects;
    /*[]*/
    int use_zscore_transform = 1;
    /*[]*/
    char line[1024];
    /*[]*/
    int isBinaryFile = 0;
    /*[]*/
    int nloops;
    /*[]*/
    int len;
    /*[]*/
    int nthreads;
    /*[]*/
    int perform_fuzzy_kmeans = 0;
    /*[]*/
    int is_perform_valid = 0;
    /*[]*/
    int is_perform_atomic = 0;
    /*[]*/
    int is_perform_assign = 0;
    /*[]*/
    int is_perform_output = 0;
    /*[]*/
    int _timing_tables;
    /*[]*/
    float *validity;
    /*[]*/
    float threshold = 0.001;
    /*[]*/
    double sum;
    /*[]*/
    double timing;
    /*[]*/
    double min_timing = 3.40282346638528859812e+38F;
    /*[]*/
    double io_timing;
    /*[]*/
    double *clustering_timing;
    /*[]*/
    double *valid_timing;
    /*[]*/
    double *min_cluster_timing;
    /*[]*/
    double *min_valid_timing;
    /*[]*/
    _debug = 0;
    /*[]*/
    nthreads = 0;
    /*[]*/
    int _imopVarPre388;
    /*[]*/
    _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
    /*[]*/
    /*[]*/
    /*[]*/
    while ((opt = _imopVarPre388) != (-1)) {
    /*[]*/
        /*[]*/
        /*[]*/
        switch (opt) {
        /*[]*/
            /*[]*/
            case 'i': filename = optarg;
            /*[]*/
            break;
            /*[]*/
            case 'b': isBinaryFile = 1;
            /*[]*/
            break;
            /*[]*/
            case 'q': fuzzyq = atof(optarg);
            /*[]*/
            /*[]*/
            break;
            /*[]*/
            case 'f': perform_fuzzy_kmeans = 1;
            /*[]*/
            break;
            /*[]*/
            case 't': threshold = atof(optarg);
            /*[]*/
            /*[]*/
            break;
            /*[]*/
            case 'm': max_nclusters = atoi(optarg);
            /*[]*/
            /*[]*/
            break;
            /*[]*/
            case 'n': min_nclusters = atoi(optarg);
            /*[]*/
            /*[]*/
            break;
            /*[]*/
            case 'z': use_zscore_transform = 0;
            /*[]*/
            break;
            /*[]*/
            case 'p': nthreads = atoi(optarg);
            /*[]*/
            /*[]*/
            break;
            /*[]*/
            case 'v': is_perform_valid = 1;
            /*[]*/
            break;
            /*[]*/
            case 'a': is_perform_atomic = 1;
            /*[]*/
            break;
            /*[]*/
            case 's': is_perform_assign = 1;
            /*[]*/
            break;
            /*[]*/
            case 'o': is_perform_output = 1;
            /*[]*/
            break;
            /*[]*/
            case 'd': _debug = 1;
            /*[]*/
            break;
            /*[]*/
            char *_imopVarPre390;
            /*[]*/
            case '?': _imopVarPre390 = argv[0];
            /*[]*/
            usage(_imopVarPre390);
            /*[]*/
            /*[]*/
            break;
            /*[]*/
            char *_imopVarPre392;
            /*[]*/
            default: _imopVarPre392 = argv[0];
            /*[]*/
            usage(_imopVarPre392);
            /*[]*/
            /*[]*/
            break;
        }
        /*[]*/
        _imopVarPre388 = getopt(argc, argv, "p:i:q:m:n:t:avbzdfso");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (filename == 0) {
    /*[]*/
        /*[]*/
        char *_imopVarPre394;
        /*[]*/
        _imopVarPre394 = argv[0];
        /*[]*/
        usage(_imopVarPre394);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (nthreads > 0) {
    /*[]*/
        /*[]*/
        omp_set_num_threads(nthreads);
        /*[]*/
    }
    /*[]*/
    numAttributes = numObjects = 0;
    /*[]*/
    io_timing = omp_get_wtime();
    /*[]*/
    /*[]*/
    /*[]*/
    if (isBinaryFile) {
    /*[]*/
        /*[]*/
        int infile;
        /*[]*/
        int _imopVarPre396;
        /*[]*/
        _imopVarPre396 = open(filename, 0x0000, "0600");
        /*[]*/
        /*[]*/
        /*[]*/
        if ((infile = _imopVarPre396) == -1) {
        /*[]*/
            /*[]*/
            int *_imopVarPre416;
            /*[]*/
            int _imopVarPre417;
            /*[]*/
            char *_imopVarPre418;
            /*[]*/
            _imopVarPre416 = __error();
            /*[]*/
            /*[]*/
            _imopVarPre417 = (*_imopVarPre416);
            /*[]*/
            _imopVarPre418 = strerror(_imopVarPre417);
            /*[]*/
            /*[]*/
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre418);
            /*[]*/
            /*[]*/
            exit(1);
            /*[]*/
        }
        /*[]*/
        unsigned long int _imopVarPre421;
        /*[]*/
        int *_imopVarPre422;
        /*[]*/
        _imopVarPre421 = sizeof(int);
        /*[]*/
        _imopVarPre422 = &numObjects;
        /*[]*/
        read(infile, _imopVarPre422, _imopVarPre421);
        /*[]*/
        /*[]*/
        unsigned long int _imopVarPre425;
        /*[]*/
        int *_imopVarPre426;
        /*[]*/
        _imopVarPre425 = sizeof(int);
        /*[]*/
        _imopVarPre426 = &numAttributes;
        /*[]*/
        read(infile, _imopVarPre426, _imopVarPre425);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_debug) {
        /*[]*/
            /*[]*/
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            /*[]*/
            /*[]*/
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
            /*[]*/
        }
        /*[]*/
        unsigned long int _imopVarPre429;
        /*[]*/
        void *_imopVarPre430;
        /*[]*/
        _imopVarPre429 = numObjects * numAttributes * sizeof(float);
        /*[]*/
        _imopVarPre430 = malloc(_imopVarPre429);
        /*[]*/
        /*[]*/
        buf = (float *) _imopVarPre430;
        /*[]*/
        unsigned long int _imopVarPre433;
        /*[]*/
        void *_imopVarPre434;
        /*[]*/
        _imopVarPre433 = numObjects * sizeof(float *);
        /*[]*/
        _imopVarPre434 = malloc(_imopVarPre433);
        /*[]*/
        /*[]*/
        attributes = (float **) _imopVarPre434;
        /*[]*/
        unsigned long int _imopVarPre437;
        /*[]*/
        void *_imopVarPre438;
        /*[]*/
        _imopVarPre437 = numObjects * numAttributes * sizeof(float);
        /*[]*/
        _imopVarPre438 = malloc(_imopVarPre437);
        /*[]*/
        /*[]*/
        attributes[0] = (float *) _imopVarPre438;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i < numObjects; i++) {
        /*[]*/
            /*[]*/
            attributes[i] = attributes[i - 1] + numAttributes;
        }
        /*[]*/
        unsigned long int _imopVarPre440;
        /*[]*/
        _imopVarPre440 = numObjects * numAttributes * sizeof(float);
        /*[]*/
        read(infile, buf, _imopVarPre440);
        /*[]*/
        /*[]*/
        close(infile);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        FILE *infile;
        /*[]*/
        struct __sFILE *_imopVarPre442;
        /*[]*/
        _imopVarPre442 = fopen(filename, "r");
        /*[]*/
        /*[]*/
        /*[]*/
        if ((infile = _imopVarPre442) == ((void *) 0)) {
        /*[]*/
            /*[]*/
            int *_imopVarPre462;
            /*[]*/
            int _imopVarPre463;
            /*[]*/
            char *_imopVarPre464;
            /*[]*/
            _imopVarPre462 = __error();
            /*[]*/
            /*[]*/
            _imopVarPre463 = (*_imopVarPre462);
            /*[]*/
            _imopVarPre464 = strerror(_imopVarPre463);
            /*[]*/
            /*[]*/
            fprintf(__stderrp, "Error: file %s (%s)\n", filename, _imopVarPre464);
            /*[]*/
            /*[]*/
            exit(1);
            /*[]*/
        }
        /*[]*/
        char *_imopVarPre466;
        /*[]*/
        _imopVarPre466 = fgets(line, 1024, infile);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre466 != ((void *) 0)) {
        /*[]*/
            /*[]*/
            char *_imopVarPre468;
            /*[]*/
            _imopVarPre468 = strtok(line, " \t\n");
            /*[]*/
            /*[]*/
            /*[]*/
            if (_imopVarPre468 != 0) {
            /*[]*/
                /*[]*/
                numObjects++;
            }
            /*[]*/
            _imopVarPre466 = fgets(line, 1024, infile);
            /*[]*/
        }
        /*[]*/
        rewind(infile);
        /*[]*/
        /*[]*/
        char *_imopVarPre470;
        /*[]*/
        _imopVarPre470 = fgets(line, 1024, infile);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre470 != ((void *) 0)) {
        /*[]*/
            /*[]*/
            char *_imopVarPre472;
            /*[]*/
            _imopVarPre472 = strtok(line, " \t\n");
            /*[]*/
            /*[]*/
            /*[]*/
            if (_imopVarPre472 != 0) {
            /*[]*/
                /*[]*/
                void *_imopVarPre475;
                /*[]*/
                char *_imopVarPre476;
                /*[]*/
                _imopVarPre475 = ((void *) 0);
                /*[]*/
                _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                /*[]*/
                /*[]*/
                /*[]*/
                while (_imopVarPre476 != ((void *) 0)) {
                /*[]*/
                    /*[]*/
                    numAttributes++;
                    /*[]*/
                    _imopVarPre475 = ((void *) 0);
                    /*[]*/
                    _imopVarPre476 = strtok(_imopVarPre475, " ,\t\n");
                    /*[]*/
                }
                /*[]*/
                break;
            }
            /*[]*/
            _imopVarPre470 = fgets(line, 1024, infile);
            /*[]*/
        }
        /*[]*/
        /*[]*/
        if (_debug) {
        /*[]*/
            /*[]*/
            printf("File %s contains numObjects = %d\n", filename, numObjects);
            /*[]*/
            /*[]*/
            printf("File %s, number of attributes in each point = %d\n", filename, numAttributes);
            /*[]*/
        }
        /*[]*/
        unsigned long int _imopVarPre479;
        /*[]*/
        void *_imopVarPre480;
        /*[]*/
        _imopVarPre479 = numObjects * numAttributes * sizeof(float);
        /*[]*/
        _imopVarPre480 = malloc(_imopVarPre479);
        /*[]*/
        /*[]*/
        buf = (float *) _imopVarPre480;
        /*[]*/
        unsigned long int _imopVarPre483;
        /*[]*/
        void *_imopVarPre484;
        /*[]*/
        _imopVarPre483 = numObjects * sizeof(float *);
        /*[]*/
        _imopVarPre484 = malloc(_imopVarPre483);
        /*[]*/
        /*[]*/
        attributes = (float **) _imopVarPre484;
        /*[]*/
        unsigned long int _imopVarPre487;
        /*[]*/
        void *_imopVarPre488;
        /*[]*/
        _imopVarPre487 = numObjects * numAttributes * sizeof(float);
        /*[]*/
        _imopVarPre488 = malloc(_imopVarPre487);
        /*[]*/
        /*[]*/
        attributes[0] = (float *) _imopVarPre488;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i < numObjects; i++) {
        /*[]*/
            /*[]*/
            attributes[i] = attributes[i - 1] + numAttributes;
        }
        /*[]*/
        rewind(infile);
        /*[]*/
        /*[]*/
        i = 0;
        /*[]*/
        char *_imopVarPre490;
        /*[]*/
        _imopVarPre490 = fgets(line, 1024, infile);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre490 != ((void *) 0)) {
        /*[]*/
            /*[]*/
            char *_imopVarPre492;
            /*[]*/
            _imopVarPre492 = strtok(line, " \t\n");
            /*[]*/
            /*[]*/
            /*[]*/
            if (_imopVarPre492 == ((void *) 0)) {
            /*[]*/
                /*[]*/
                continue;
            }
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 0; j < numAttributes; j++) {
            /*[]*/
                /*[]*/
                void *_imopVarPre497;
                /*[]*/
                char *_imopVarPre498;
                /*[]*/
                double _imopVarPre499;
                /*[]*/
                _imopVarPre497 = ((void *) 0);
                /*[]*/
                _imopVarPre498 = strtok(_imopVarPre497, " ,\t\n");
                /*[]*/
                /*[]*/
                _imopVarPre499 = atof(_imopVarPre498);
                /*[]*/
                /*[]*/
                buf[i] = _imopVarPre499;
                /*[]*/
                i++;
            }
            /*[]*/
            _imopVarPre490 = fgets(line, 1024, infile);
            /*[]*/
        }
        /*[]*/
        fclose(infile);
        /*[]*/
    }
    /*[]*/
    double _imopVarPre501;
    /*[]*/
    _imopVarPre501 = omp_get_wtime();
    /*[]*/
    /*[]*/
    io_timing = _imopVarPre501 - io_timing;
    /*[]*/
    unsigned long int _imopVarPre504;
    /*[]*/
    void *_imopVarPre505;
    /*[]*/
    _imopVarPre504 = numObjects * sizeof(int);
    /*[]*/
    _imopVarPre505 = malloc(_imopVarPre504);
    /*[]*/
    /*[]*/
    cluster_assign = (int *) _imopVarPre505;
    /*[]*/
    nloops = 8;
    /*[]*/
    len = max_nclusters - min_nclusters + 1;
    /*[]*/
    unsigned long int _imopVarPre508;
    /*[]*/
    void *_imopVarPre509;
    /*[]*/
    _imopVarPre508 = sizeof(float);
    /*[]*/
    _imopVarPre509 = calloc(len, _imopVarPre508);
    /*[]*/
    /*[]*/
    validity = (float *) _imopVarPre509;
    /*[]*/
    unsigned long int _imopVarPre512;
    /*[]*/
    void *_imopVarPre513;
    /*[]*/
    _imopVarPre512 = sizeof(double);
    /*[]*/
    _imopVarPre513 = calloc(len, _imopVarPre512);
    /*[]*/
    /*[]*/
    clustering_timing = (double *) _imopVarPre513;
    /*[]*/
    unsigned long int _imopVarPre516;
    /*[]*/
    void *_imopVarPre517;
    /*[]*/
    _imopVarPre516 = sizeof(double);
    /*[]*/
    _imopVarPre517 = calloc(len, _imopVarPre516);
    /*[]*/
    /*[]*/
    valid_timing = (double *) _imopVarPre517;
    /*[]*/
    unsigned long int _imopVarPre520;
    /*[]*/
    void *_imopVarPre521;
    /*[]*/
    _imopVarPre520 = sizeof(double);
    /*[]*/
    _imopVarPre521 = calloc(len, _imopVarPre520);
    /*[]*/
    /*[]*/
    min_cluster_timing = (double *) _imopVarPre521;
    /*[]*/
    unsigned long int _imopVarPre524;
    /*[]*/
    void *_imopVarPre525;
    /*[]*/
    _imopVarPre524 = sizeof(double);
    /*[]*/
    _imopVarPre525 = calloc(len, _imopVarPre524);
    /*[]*/
    /*[]*/
    min_valid_timing = (double *) _imopVarPre525;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nloops; i++) {
    /*[]*/
        /*[]*/
        float *_imopVarPre532;
        /*[]*/
        unsigned int _imopVarPre533;
        /*[]*/
        unsigned long int _imopVarPre534;
        /*[]*/
        float *_imopVarPre535;
        /*[]*/
        _imopVarPre532 = attributes[0];
        /*[]*/
        _imopVarPre533 = __builtin_object_size(_imopVarPre532, 0);
        /*[]*/
        /*[]*/
        _imopVarPre534 = numObjects * numAttributes * sizeof(float);
        /*[]*/
        _imopVarPre535 = attributes[0];
        /*[]*/
        __builtin___memcpy_chk(_imopVarPre535, buf, _imopVarPre534, _imopVarPre533);
        /*[]*/
        /*[]*/
        timing = omp_get_wtime();
        /*[]*/
        /*[]*/
        cluster_centres = ((void *) 0);
        /*[]*/
        float ***_imopVarPre538;
        /*[]*/
        int *_imopVarPre539;
        /*[]*/
        _imopVarPre538 = &cluster_centres;
        /*[]*/
        _imopVarPre539 = &best_nclusters;
        /*[]*/
        int *best_nclusters_imopVar83;
        /*[]*/
        float ***cluster_centres_imopVar84;
        /*[]*/
        double *cluster_timing;
        /*[]*/
        best_nclusters_imopVar83 = _imopVarPre539;
        /*[]*/
        cluster_centres_imopVar84 = _imopVarPre538;
        /*[]*/
        cluster_timing = clustering_timing;
        /*[]*/
        int i_imopVar85;
        /*[]*/
        int itime;
        /*[]*/
        int nclusters;
        /*[]*/
        int *membership;
        /*[]*/
        float **tmp_cluster_centres;
        /*[]*/
        float min_valid = 3.40282346638528859812e+38F;
        /*[]*/
        double assign_timing;
        /*[]*/
        /*[]*/
        if (!perform_fuzzy_kmeans) {
        /*[]*/
            /*[]*/
            unsigned long int _imopVarPre347;
            /*[]*/
            void *_imopVarPre348;
            /*[]*/
            _imopVarPre347 = numObjects * sizeof(int);
            /*[]*/
            _imopVarPre348 = malloc(_imopVarPre347);
            /*[]*/
            /*[]*/
            membership = (int *) _imopVarPre348;
        }
        /*[]*/
        /*[]*/
        if (use_zscore_transform) {
        /*[]*/
            /*[]*/
            zscore_transform(attributes, numObjects, numAttributes);
            /*[]*/
        }
        /*[]*/
        /*[]*/
        if (_debug) {
        /*[]*/
            /*[]*/
            printf("Initial min_nclusters = %d max_nclusters = %d\n", min_nclusters, max_nclusters);
            /*[]*/
        }
        /*[]*/
        itime = 0;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (nclusters = min_nclusters; nclusters <= max_nclusters; nclusters++) {
        /*[]*/
            /*[]*/
            srandom(7);
            /*[]*/
            /*[]*/
            double _imopVarPre349;
            /*[]*/
            _imopVarPre349 = omp_get_wtime();
            /*[]*/
            /*[]*/
            cluster_timing[itime] = _imopVarPre349;
            /*[]*/
            /*[]*/
            if (perform_fuzzy_kmeans) {
            /*[]*/
                /*[]*/
                float **feature;
                /*[]*/
                int nfeatures;
                /*[]*/
                int npoints;
                /*[]*/
                float delta_centres_threshold;
                /*[]*/
                feature = attributes;
                /*[]*/
                nfeatures = numAttributes;
                /*[]*/
                npoints = numObjects;
                /*[]*/
                delta_centres_threshold = threshold;
                /*[]*/
                float **cluster_centres_imopVar80;
                /*[]*/
                float max_delta_centres = 0.0;
                /*[]*/
                float *sum_points;
                /*[]*/
                int i_imopVar81;
                /*[]*/
                int j;
                /*[]*/
                int k;
                /*[]*/
                int loop = 0;
                /*[]*/
                double timing;
                /*[]*/
                float sqd_dist;
                /*[]*/
                float membership_imopVar82;
                /*[]*/
                int nthreads;
                /*[]*/
                float **new_centre;
                /*[]*/
                float *sum;
                /*[]*/
                float **partial_sum;
                /*[]*/
                float ***partial_new_centre;
                /*[]*/
                nthreads = omp_get_max_threads();
                /*[]*/
                /*[]*/
                unsigned long int _imopVarPre160;
                /*[]*/
                void *_imopVarPre161;
                /*[]*/
                _imopVarPre160 = sizeof(float);
                /*[]*/
                _imopVarPre161 = calloc(nclusters, _imopVarPre160);
                /*[]*/
                /*[]*/
                sum = (float *) _imopVarPre161;
                /*[]*/
                unsigned long int _imopVarPre164;
                /*[]*/
                void *_imopVarPre165;
                /*[]*/
                _imopVarPre164 = nclusters * sizeof(float *);
                /*[]*/
                _imopVarPre165 = malloc(_imopVarPre164);
                /*[]*/
                /*[]*/
                new_centre = (float **) _imopVarPre165;
                /*[]*/
                unsigned long int _imopVarPre169;
                /*[]*/
                int _imopVarPre170;
                /*[]*/
                void *_imopVarPre171;
                /*[]*/
                _imopVarPre169 = sizeof(float);
                /*[]*/
                _imopVarPre170 = nclusters * nfeatures;
                /*[]*/
                _imopVarPre171 = calloc(_imopVarPre170, _imopVarPre169);
                /*[]*/
                /*[]*/
                new_centre[0] = (float *) _imopVarPre171;
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i_imopVar81 = 1; i_imopVar81 < nclusters; i_imopVar81++) {
                /*[]*/
                    /*[]*/
                    new_centre[i_imopVar81] = new_centre[i_imopVar81 - 1] + nfeatures;
                }
                /*[]*/
                /*[]*/
                if (!is_perform_atomic) {
                /*[]*/
                    /*[]*/
                    unsigned long int _imopVarPre174;
                    /*[]*/
                    void *_imopVarPre175;
                    /*[]*/
                    _imopVarPre174 = nthreads * sizeof(float *);
                    /*[]*/
                    _imopVarPre175 = malloc(_imopVarPre174);
                    /*[]*/
                    /*[]*/
                    partial_sum = (float **) _imopVarPre175;
                    /*[]*/
                    unsigned long int _imopVarPre179;
                    /*[]*/
                    int _imopVarPre180;
                    /*[]*/
                    void *_imopVarPre181;
                    /*[]*/
                    _imopVarPre179 = sizeof(float);
                    /*[]*/
                    _imopVarPre180 = nthreads * nclusters;
                    /*[]*/
                    _imopVarPre181 = calloc(_imopVarPre180, _imopVarPre179);
                    /*[]*/
                    /*[]*/
                    partial_sum[0] = (float *) _imopVarPre181;
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar81 = 1; i_imopVar81 < nthreads; i_imopVar81++) {
                    /*[]*/
                        /*[]*/
                        partial_sum[i_imopVar81] = partial_sum[i_imopVar81 - 1] + nclusters;
                    }
                    /*[]*/
                    unsigned long int _imopVarPre184;
                    /*[]*/
                    void *_imopVarPre185;
                    /*[]*/
                    _imopVarPre184 = nthreads * sizeof(float **);
                    /*[]*/
                    _imopVarPre185 = malloc(_imopVarPre184);
                    /*[]*/
                    /*[]*/
                    partial_new_centre = (float ***) _imopVarPre185;
                    /*[]*/
                    unsigned long int _imopVarPre188;
                    /*[]*/
                    void *_imopVarPre189;
                    /*[]*/
                    _imopVarPre188 = nthreads * nclusters * sizeof(float *);
                    /*[]*/
                    _imopVarPre189 = malloc(_imopVarPre188);
                    /*[]*/
                    /*[]*/
                    partial_new_centre[0] = (float **) _imopVarPre189;
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar81 = 1; i_imopVar81 < nthreads; i_imopVar81++) {
                    /*[]*/
                        /*[]*/
                        partial_new_centre[i_imopVar81] = partial_new_centre[i_imopVar81 - 1] + nclusters;
                    }
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar81 = 0; i_imopVar81 < nthreads; i_imopVar81++) {
                    /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        for (j = 0; j < nclusters; j++) {
                        /*[]*/
                            /*[]*/
                            unsigned long int _imopVarPre192;
                            /*[]*/
                            void *_imopVarPre193;
                            /*[]*/
                            _imopVarPre192 = sizeof(float);
                            /*[]*/
                            _imopVarPre193 = calloc(nfeatures, _imopVarPre192);
                            /*[]*/
                            /*[]*/
                            partial_new_centre[i_imopVar81][j] = (float *) _imopVarPre193;
                        }
                    }
                }
                /*[]*/
                unsigned long int _imopVarPre196;
                /*[]*/
                void *_imopVarPre197;
                /*[]*/
                _imopVarPre196 = nclusters * sizeof(float *);
                /*[]*/
                _imopVarPre197 = malloc(_imopVarPre196);
                /*[]*/
                /*[]*/
                cluster_centres_imopVar80 = (float **) _imopVarPre197;
                /*[]*/
                unsigned long int _imopVarPre200;
                /*[]*/
                void *_imopVarPre201;
                /*[]*/
                _imopVarPre200 = nclusters * nfeatures * sizeof(float);
                /*[]*/
                _imopVarPre201 = malloc(_imopVarPre200);
                /*[]*/
                /*[]*/
                cluster_centres_imopVar80[0] = (float *) _imopVarPre201;
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i_imopVar81 = 1; i_imopVar81 < nclusters; i_imopVar81++) {
                /*[]*/
                    /*[]*/
                    cluster_centres_imopVar80[i_imopVar81] = cluster_centres_imopVar80[i_imopVar81 - 1] + nfeatures;
                }
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i_imopVar81 = 0; i_imopVar81 < nclusters; i_imopVar81++) {
                /*[]*/
                    /*[]*/
                    signed long int _imopVarPre203;
                    /*[]*/
                    _imopVarPre203 = random();
                    /*[]*/
                    /*[]*/
                    int n = (int) _imopVarPre203 % npoints;
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (j = 0; j < nfeatures; j++) {
                    /*[]*/
                        /*[]*/
                        cluster_centres_imopVar80[i_imopVar81][j] = feature[n][j];
                    }
                }
                /*[]*/
                unsigned long int _imopVarPre206;
                /*[]*/
                void *_imopVarPre207;
                /*[]*/
                _imopVarPre206 = npoints * sizeof(float);
                /*[]*/
                _imopVarPre207 = malloc(_imopVarPre206);
                /*[]*/
                /*[]*/
                sum_points = (float *) _imopVarPre207;
                /*[]*/
                /*[]*/
                if (_debug) {
                /*[]*/
                    /*[]*/
                    timing = omp_get_wtime();
                    /*[]*/
                }
                /*[]*/
                int _imopVarPre237;
                /*[]*/
                /*[]*/
                do {
                /*[]*/
                    /*[20]*/
#pragma omp parallel firstprivate(npoints, nclusters, nfeatures, fuzzyq)
                    {
                    /*[20]*/
                        /*[20]*/
#pragma omp master
                        {
                        /*[20]*/
                            /*[20]*/
                            max_delta_centres = 0.0;
                        }
                        /*[20]*/
                        sum_fuzzy_members(feature, npoints, cluster_centres_imopVar80, nclusters, nfeatures, fuzzyq, sum_points);
                        /*[20]*/
                    }
                    /*[]*/
                    /*[]*/
                    if (is_perform_atomic) {
                    /*[]*/
                        /*[27]*/
#pragma omp parallel firstprivate(npoints, nclusters, nfeatures, fuzzyq) shared(feature, cluster_centres_imopVar80, sum, new_centre) private(i_imopVar81, j, k, sqd_dist, membership_imopVar82)
                        {
                        /*[27]*/
                            /*[27]*/
#pragma omp for schedule(static) nowait
                            /*[27]*/
                            /*[27]*/
                            /*[27]*/
                            for (j = 0; j < npoints; j++) {
                            /*[27]*/
                                /*[27]*/
                                /*[27]*/
                                /*[27]*/
                                /*[27]*/
                                for (i_imopVar81 = 0; i_imopVar81 < nclusters; i_imopVar81++) {
                                /*[27]*/
                                    /*[27]*/
                                    float *_imopVarPre210;
                                    /*[27]*/
                                    float *_imopVarPre211;
                                    /*[27]*/
                                    float _imopVarPre212;
                                    /*[27]*/
                                    _imopVarPre210 = cluster_centres_imopVar80[i_imopVar81];
                                    /*[27]*/
                                    _imopVarPre211 = feature[j];
                                    /*[27]*/
                                    _imopVarPre212 = euclid_dist_2(_imopVarPre211, _imopVarPre210, nfeatures);
                                    /*[27]*/
                                    /*[27]*/
                                    sqd_dist = _imopVarPre212;
                                    /*[27]*/
                                    double _imopVarPre216;
                                    /*[27]*/
                                    double _imopVarPre217;
                                    /*[27]*/
                                    double _imopVarPre218;
                                    /*[27]*/
                                    _imopVarPre216 = 1.0 / (fuzzyq - 1);
                                    /*[27]*/
                                    _imopVarPre217 = 1.0 / (sqd_dist + 0.00001);
                                    /*[27]*/
                                    _imopVarPre218 = pow(_imopVarPre217, _imopVarPre216);
                                    /*[27]*/
                                    /*[27]*/
                                    membership_imopVar82 = _imopVarPre218 / (sum_points[j] + 0.00001);
                                    /*[27]*/
                                    membership_imopVar82 = pow(membership_imopVar82, fuzzyq);
                                    /*[27]*/
                                    /*[27]*/
                                    // #pragma omp dummyFlush ATOMIC_START
                                    /*[27]*/
#pragma omp atomic
                                    /*[27]*/
                                    sum[i_imopVar81] += membership_imopVar82;
                                    /*[27]*/
                                    // #pragma omp dummyFlush ATOMIC_END
                                    /*[27]*/
                                    /*[27]*/
                                    /*[27]*/
                                    /*[27]*/
                                    for (k = 0; k < nfeatures; k++) {
                                    /*[27]*/
                                        /*[27]*/
                                        // #pragma omp dummyFlush ATOMIC_START
                                        /*[27]*/
#pragma omp atomic
                                        /*[27]*/
                                        new_centre[i_imopVar81][k] += membership_imopVar82 * feature[j][k];
                                        /*[27]*/
                                        // #pragma omp dummyFlush ATOMIC_END
                                    }
                                }
                            }
                        }
                    } else {
                    /*[]*/
                        /*[28]*/
#pragma omp parallel shared(feature, cluster_centres_imopVar80, partial_sum, new_centre)
                        {
                        /*[28]*/
                            /*[28]*/
                            int _imopVarPre219;
                            /*[28]*/
                            _imopVarPre219 = omp_get_thread_num();
                            /*[28]*/
                            /*[28]*/
                            int tid = _imopVarPre219;
                            /*[28]*/
#pragma omp for firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i_imopVar81, j, k, sqd_dist, membership_imopVar82) schedule(static) nowait
                            /*[28]*/
                            /*[28]*/
                            /*[28]*/
                            for (j = 0; j < npoints; j++) {
                            /*[28]*/
                                /*[28]*/
                                /*[28]*/
                                /*[28]*/
                                /*[28]*/
                                for (i_imopVar81 = 0; i_imopVar81 < nclusters; i_imopVar81++) {
                                /*[28]*/
                                    /*[28]*/
                                    float *_imopVarPre222;
                                    /*[28]*/
                                    float *_imopVarPre223;
                                    /*[28]*/
                                    float _imopVarPre224;
                                    /*[28]*/
                                    _imopVarPre222 = cluster_centres_imopVar80[i_imopVar81];
                                    /*[28]*/
                                    _imopVarPre223 = feature[j];
                                    /*[28]*/
                                    _imopVarPre224 = euclid_dist_2(_imopVarPre223, _imopVarPre222, nfeatures);
                                    /*[28]*/
                                    /*[28]*/
                                    sqd_dist = _imopVarPre224;
                                    /*[28]*/
                                    double _imopVarPre228;
                                    /*[28]*/
                                    double _imopVarPre229;
                                    /*[28]*/
                                    double _imopVarPre230;
                                    /*[28]*/
                                    _imopVarPre228 = 1.0 / (fuzzyq - 1);
                                    /*[28]*/
                                    _imopVarPre229 = 1.0 / (sqd_dist + 0.00001);
                                    /*[28]*/
                                    _imopVarPre230 = pow(_imopVarPre229, _imopVarPre228);
                                    /*[28]*/
                                    /*[28]*/
                                    membership_imopVar82 = _imopVarPre230 / (sum_points[j] + 0.00001);
                                    /*[28]*/
                                    membership_imopVar82 = pow(membership_imopVar82, fuzzyq);
                                    /*[28]*/
                                    /*[28]*/
                                    partial_sum[tid][i_imopVar81] += membership_imopVar82;
                                    /*[28]*/
                                    /*[28]*/
                                    /*[28]*/
                                    /*[28]*/
                                    for (k = 0; k < nfeatures; k++) {
                                    /*[28]*/
                                        /*[28]*/
                                        partial_new_centre[tid][i_imopVar81][k] += membership_imopVar82 * feature[j][k];
                                    }
                                }
                            }
                            /*[28]*/
                            // #pragma omp dummyFlush BARRIER_START
                            /*[28]*/
#pragma omp barrier
                            /*[30]*/
#pragma omp master
                            {
                            /*[30]*/
                                /*[30]*/
                                /*[30]*/
                                /*[30]*/
                                /*[30]*/
                                for (i_imopVar81 = 0; i_imopVar81 < nclusters; i_imopVar81++) {
                                /*[30]*/
                                    /*[30]*/
                                    sum[i_imopVar81] = 0.0;
                                    /*[30]*/
                                    /*[30]*/
                                    /*[30]*/
                                    /*[30]*/
                                    for (k = 0; k < nfeatures; k++) {
                                    /*[30]*/
                                        /*[30]*/
                                        new_centre[i_imopVar81][k] = 0.0;
                                    }
                                    /*[30]*/
                                    /*[30]*/
                                    /*[30]*/
                                    /*[30]*/
                                    for (j = 0; j < nthreads; j++) {
                                    /*[30]*/
                                        /*[30]*/
                                        sum[i_imopVar81] += partial_sum[j][i_imopVar81];
                                        /*[30]*/
                                        partial_sum[j][i_imopVar81] = 0.0;
                                        /*[30]*/
                                        /*[30]*/
                                        /*[30]*/
                                        /*[30]*/
                                        for (k = 0; k < nfeatures; k++) {
                                        /*[30]*/
                                            /*[30]*/
                                            new_centre[i_imopVar81][k] += partial_new_centre[j][i_imopVar81][k];
                                            /*[30]*/
                                            partial_new_centre[j][i_imopVar81][k] = 0.0;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar81 = 0; i_imopVar81 < nclusters; i_imopVar81++) {
                    /*[]*/
                        /*[]*/
                        float delta_centre;
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        for (k = 0; k < nfeatures; k++) {
                        /*[]*/
                            /*[]*/
                            new_centre[i_imopVar81][k] /= sum[i_imopVar81];
                        }
                        /*[]*/
                        sum[i_imopVar81] = 0.0;
                        /*[]*/
                        float *_imopVarPre233;
                        /*[]*/
                        float *_imopVarPre234;
                        /*[]*/
                        float _imopVarPre235;
                        /*[]*/
                        _imopVarPre233 = new_centre[i_imopVar81];
                        /*[]*/
                        _imopVarPre234 = cluster_centres_imopVar80[i_imopVar81];
                        /*[]*/
                        _imopVarPre235 = multid_feuclid_dist(_imopVarPre234, _imopVarPre233, nfeatures);
                        /*[]*/
                        /*[]*/
                        delta_centre = _imopVarPre235;
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        for (j = 0; j < nfeatures; j++) {
                        /*[]*/
                            /*[]*/
                            cluster_centres_imopVar80[i_imopVar81][j] = new_centre[i_imopVar81][j];
                            /*[]*/
                            new_centre[i_imopVar81][j] = 0.0;
                        }
                        /*[]*/
                        /*[]*/
                        if (delta_centre > max_delta_centres) {
                        /*[]*/
                            /*[]*/
                            max_delta_centres = delta_centre;
                        }
                    }
                    /*[]*/
                    _imopVarPre237 = max_delta_centres > delta_centres_threshold;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre237) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre237 = loop++ < 500;
                    }
                } while (_imopVarPre237);
                /*[]*/
                /*[]*/
                if (_debug) {
                /*[]*/
                    /*[]*/
                    double _imopVarPre239;
                    /*[]*/
                    _imopVarPre239 = omp_get_wtime();
                    /*[]*/
                    /*[]*/
                    timing = _imopVarPre239 - timing;
                    /*[]*/
                    printf("nloops = %2d (T = %7.4f)", loop, timing);
                    /*[]*/
                }
                /*[]*/
                free(sum);
                /*[]*/
                /*[]*/
                float *_imopVarPre241;
                /*[]*/
                _imopVarPre241 = new_centre[0];
                /*[]*/
                free(_imopVarPre241);
                /*[]*/
                /*[]*/
                free(new_centre);
                /*[]*/
                /*[]*/
                free(sum_points);
                /*[]*/
                /*[]*/
                tmp_cluster_centres = cluster_centres_imopVar80;
            } else {
            /*[]*/
                /*[]*/
                float **feature;
                /*[]*/
                int nfeatures;
                /*[]*/
                int npoints;
                /*[]*/
                feature = attributes;
                /*[]*/
                nfeatures = numAttributes;
                /*[]*/
                npoints = numObjects;
                /*[]*/
                int i_imopVar75;
                /*[]*/
                int j;
                /*[]*/
                int k;
                /*[]*/
                int index;
                /*[]*/
                int loop = 0;
                /*[]*/
                int *new_centers_len;
                /*[]*/
                float delta;
                /*[]*/
                float **clusters;
                /*[]*/
                float **new_centers;
                /*[]*/
                double timing;
                /*[]*/
                int nthreads;
                /*[]*/
                int **partial_new_centers_len;
                /*[]*/
                float ***partial_new_centers;
                /*[]*/
                nthreads = omp_get_max_threads();
                /*[]*/
                /*[]*/
                unsigned long int _imopVarPre271;
                /*[]*/
                void *_imopVarPre272;
                /*[]*/
                _imopVarPre271 = nclusters * sizeof(float *);
                /*[]*/
                _imopVarPre272 = malloc(_imopVarPre271);
                /*[]*/
                /*[]*/
                clusters = (float **) _imopVarPre272;
                /*[]*/
                unsigned long int _imopVarPre275;
                /*[]*/
                void *_imopVarPre276;
                /*[]*/
                _imopVarPre275 = nclusters * nfeatures * sizeof(float);
                /*[]*/
                _imopVarPre276 = malloc(_imopVarPre275);
                /*[]*/
                /*[]*/
                clusters[0] = (float *) _imopVarPre276;
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i_imopVar75 = 1; i_imopVar75 < nclusters; i_imopVar75++) {
                /*[]*/
                    /*[]*/
                    clusters[i_imopVar75] = clusters[i_imopVar75 - 1] + nfeatures;
                }
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i_imopVar75 = 0; i_imopVar75 < nclusters; i_imopVar75++) {
                /*[]*/
                    /*[]*/
                    signed long int _imopVarPre278;
                    /*[]*/
                    _imopVarPre278 = random();
                    /*[]*/
                    /*[]*/
                    int n = (int) _imopVarPre278 % npoints;
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (j = 0; j < nfeatures; j++) {
                    /*[]*/
                        /*[]*/
                        clusters[i_imopVar75][j] = feature[n][j];
                    }
                }
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i_imopVar75 = 0; i_imopVar75 < npoints; i_imopVar75++) {
                /*[]*/
                    /*[]*/
                    membership[i_imopVar75] = -1;
                }
                /*[]*/
                unsigned long int _imopVarPre281;
                /*[]*/
                void *_imopVarPre282;
                /*[]*/
                _imopVarPre281 = sizeof(int);
                /*[]*/
                _imopVarPre282 = calloc(nclusters, _imopVarPre281);
                /*[]*/
                /*[]*/
                new_centers_len = (int *) _imopVarPre282;
                /*[]*/
                unsigned long int _imopVarPre285;
                /*[]*/
                void *_imopVarPre286;
                /*[]*/
                _imopVarPre285 = nclusters * sizeof(float *);
                /*[]*/
                _imopVarPre286 = malloc(_imopVarPre285);
                /*[]*/
                /*[]*/
                new_centers = (float **) _imopVarPre286;
                /*[]*/
                unsigned long int _imopVarPre290;
                /*[]*/
                int _imopVarPre291;
                /*[]*/
                void *_imopVarPre292;
                /*[]*/
                _imopVarPre290 = sizeof(float);
                /*[]*/
                _imopVarPre291 = nclusters * nfeatures;
                /*[]*/
                _imopVarPre292 = calloc(_imopVarPre291, _imopVarPre290);
                /*[]*/
                /*[]*/
                new_centers[0] = (float *) _imopVarPre292;
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (i_imopVar75 = 1; i_imopVar75 < nclusters; i_imopVar75++) {
                /*[]*/
                    /*[]*/
                    new_centers[i_imopVar75] = new_centers[i_imopVar75 - 1] + nfeatures;
                }
                /*[]*/
                /*[]*/
                if (!is_perform_atomic) {
                /*[]*/
                    /*[]*/
                    unsigned long int _imopVarPre295;
                    /*[]*/
                    void *_imopVarPre296;
                    /*[]*/
                    _imopVarPre295 = nthreads * sizeof(int *);
                    /*[]*/
                    _imopVarPre296 = malloc(_imopVarPre295);
                    /*[]*/
                    /*[]*/
                    partial_new_centers_len = (int **) _imopVarPre296;
                    /*[]*/
                    unsigned long int _imopVarPre300;
                    /*[]*/
                    int _imopVarPre301;
                    /*[]*/
                    void *_imopVarPre302;
                    /*[]*/
                    _imopVarPre300 = sizeof(int);
                    /*[]*/
                    _imopVarPre301 = nthreads * nclusters;
                    /*[]*/
                    _imopVarPre302 = calloc(_imopVarPre301, _imopVarPre300);
                    /*[]*/
                    /*[]*/
                    partial_new_centers_len[0] = (int *) _imopVarPre302;
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar75 = 1; i_imopVar75 < nthreads; i_imopVar75++) {
                    /*[]*/
                        /*[]*/
                        partial_new_centers_len[i_imopVar75] = partial_new_centers_len[i_imopVar75 - 1] + nclusters;
                    }
                    /*[]*/
                    unsigned long int _imopVarPre305;
                    /*[]*/
                    void *_imopVarPre306;
                    /*[]*/
                    _imopVarPre305 = nthreads * sizeof(float **);
                    /*[]*/
                    _imopVarPre306 = malloc(_imopVarPre305);
                    /*[]*/
                    /*[]*/
                    partial_new_centers = (float ***) _imopVarPre306;
                    /*[]*/
                    unsigned long int _imopVarPre309;
                    /*[]*/
                    void *_imopVarPre310;
                    /*[]*/
                    _imopVarPre309 = nthreads * nclusters * sizeof(float *);
                    /*[]*/
                    _imopVarPre310 = malloc(_imopVarPre309);
                    /*[]*/
                    /*[]*/
                    partial_new_centers[0] = (float **) _imopVarPre310;
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar75 = 1; i_imopVar75 < nthreads; i_imopVar75++) {
                    /*[]*/
                        /*[]*/
                        partial_new_centers[i_imopVar75] = partial_new_centers[i_imopVar75 - 1] + nclusters;
                    }
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar75 = 0; i_imopVar75 < nthreads; i_imopVar75++) {
                    /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        for (j = 0; j < nclusters; j++) {
                        /*[]*/
                            /*[]*/
                            unsigned long int _imopVarPre313;
                            /*[]*/
                            void *_imopVarPre314;
                            /*[]*/
                            _imopVarPre313 = sizeof(float);
                            /*[]*/
                            _imopVarPre314 = calloc(nfeatures, _imopVarPre313);
                            /*[]*/
                            /*[]*/
                            partial_new_centers[i_imopVar75][j] = (float *) _imopVarPre314;
                        }
                    }
                }
                /*[]*/
                /*[]*/
                if (_debug) {
                /*[]*/
                    /*[]*/
                    timing = omp_get_wtime();
                    /*[]*/
                }
                /*[]*/
                int _imopVarPre323;
                /*[]*/
                /*[]*/
                do {
                /*[]*/
                    /*[]*/
                    delta = 0.0;
                    /*[]*/
                    /*[]*/
                    if (is_perform_atomic) {
                    /*[]*/
                        /*[14]*/
#pragma omp parallel private(i_imopVar75, j, index) firstprivate(npoints, nclusters, nfeatures) shared(feature, clusters, membership, new_centers, new_centers_len)
                        {
                        /*[14]*/
                            /*[14]*/
#pragma omp for schedule(static) reduction(+:delta) nowait
                            /*[14]*/
                            /*[14]*/
                            /*[14]*/
                            for (i_imopVar75 = 0; i_imopVar75 < npoints; i_imopVar75++) {
                            /*[14]*/
                                /*[14]*/
                                float *_imopVarPre316;
                                /*[14]*/
                                int _imopVarPre317;
                                /*[14]*/
                                _imopVarPre316 = feature[i_imopVar75];
                                /*[14]*/
                                _imopVarPre317 = find_nearest_point(_imopVarPre316, nfeatures, clusters, nclusters);
                                /*[14]*/
                                /*[14]*/
                                index = _imopVarPre317;
                                /*[14]*/
                                /*[14]*/
                                if (membership[i_imopVar75] != index) {
                                /*[14]*/
                                    /*[14]*/
                                    delta += 1.0;
                                }
                                /*[14]*/
                                membership[i_imopVar75] = index;
                                /*[14]*/
                                // #pragma omp dummyFlush ATOMIC_START
                                /*[14]*/
#pragma omp atomic
                                /*[14]*/
                                new_centers_len[index]++;
                                /*[14]*/
                                // #pragma omp dummyFlush ATOMIC_END
                                /*[14]*/
                                /*[14]*/
                                /*[14]*/
                                /*[14]*/
                                for (j = 0; j < nfeatures; j++) {
                                /*[14]*/
                                    /*[14]*/
                                    // #pragma omp dummyFlush ATOMIC_START
                                    /*[14]*/
#pragma omp atomic
                                    /*[14]*/
                                    new_centers[index][j] += feature[i_imopVar75][j];
                                    /*[14]*/
                                    // #pragma omp dummyFlush ATOMIC_END
                                }
                            }
                        }
                    } else {
                    /*[]*/
                        /*[4]*/
#pragma omp parallel shared(feature, clusters, membership, partial_new_centers, partial_new_centers_len)
                        {
                        /*[4]*/
                            /*[4]*/
                            int _imopVarPre318;
                            /*[4]*/
                            _imopVarPre318 = omp_get_thread_num();
                            /*[4]*/
                            /*[4]*/
                            int tid = _imopVarPre318;
                            /*[4]*/
#pragma omp for private(i_imopVar75, j, index) firstprivate(npoints, nclusters, nfeatures) schedule(static) reduction(+:delta) nowait
                            /*[4]*/
                            /*[4]*/
                            /*[4]*/
                            for (i_imopVar75 = 0; i_imopVar75 < npoints; i_imopVar75++) {
                            /*[4]*/
                                /*[4]*/
                                float *_imopVarPre320;
                                /*[4]*/
                                int _imopVarPre321;
                                /*[4]*/
                                _imopVarPre320 = feature[i_imopVar75];
                                /*[4]*/
                                _imopVarPre321 = find_nearest_point(_imopVarPre320, nfeatures, clusters, nclusters);
                                /*[4]*/
                                /*[4]*/
                                index = _imopVarPre321;
                                /*[4]*/
                                /*[4]*/
                                if (membership[i_imopVar75] != index) {
                                /*[4]*/
                                    /*[4]*/
                                    delta += 1.0;
                                }
                                /*[4]*/
                                membership[i_imopVar75] = index;
                                /*[4]*/
                                partial_new_centers_len[tid][index]++;
                                /*[4]*/
                                /*[4]*/
                                /*[4]*/
                                /*[4]*/
                                for (j = 0; j < nfeatures; j++) {
                                /*[4]*/
                                    /*[4]*/
                                    partial_new_centers[tid][index][j] += feature[i_imopVar75][j];
                                }
                            }
                            /*[4]*/
                            // #pragma omp dummyFlush BARRIER_START
                            /*[4]*/
#pragma omp barrier
                            /*[31]*/
#pragma omp master
                            {
                            /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                /*[31]*/
                                for (i_imopVar75 = 0; i_imopVar75 < nclusters; i_imopVar75++) {
                                /*[31]*/
                                    /*[31]*/
                                    /*[31]*/
                                    /*[31]*/
                                    /*[31]*/
                                    for (j = 0; j < nthreads; j++) {
                                    /*[31]*/
                                        /*[31]*/
                                        new_centers_len[i_imopVar75] += partial_new_centers_len[j][i_imopVar75];
                                        /*[31]*/
                                        partial_new_centers_len[j][i_imopVar75] = 0.0;
                                        /*[31]*/
                                        /*[31]*/
                                        /*[31]*/
                                        /*[31]*/
                                        for (k = 0; k < nfeatures; k++) {
                                        /*[31]*/
                                            /*[31]*/
                                            new_centers[i_imopVar75][k] += partial_new_centers[j][i_imopVar75][k];
                                            /*[31]*/
                                            partial_new_centers[j][i_imopVar75][k] = 0.0;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar75 = 0; i_imopVar75 < nclusters; i_imopVar75++) {
                    /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        /*[]*/
                        for (j = 0; j < nfeatures; j++) {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (new_centers_len[i_imopVar75] > 0) {
                            /*[]*/
                                /*[]*/
                                clusters[i_imopVar75][j] = new_centers[i_imopVar75][j] / new_centers_len[i_imopVar75];
                            }
                            /*[]*/
                            new_centers[i_imopVar75][j] = 0.0;
                        }
                        /*[]*/
                        new_centers_len[i_imopVar75] = 0;
                    }
                    /*[]*/
                    delta /= npoints;
                    /*[]*/
                    _imopVarPre323 = delta > threshold;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre323) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre323 = loop++ < 500;
                    }
                } while (_imopVarPre323);
                /*[]*/
                /*[]*/
                if (_debug) {
                /*[]*/
                    /*[]*/
                    double _imopVarPre325;
                    /*[]*/
                    _imopVarPre325 = omp_get_wtime();
                    /*[]*/
                    /*[]*/
                    timing = _imopVarPre325 - timing;
                    /*[]*/
                    printf("nloops = %2d (T = %7.4f)", loop, timing);
                    /*[]*/
                }
                /*[]*/
                float *_imopVarPre327;
                /*[]*/
                _imopVarPre327 = new_centers[0];
                /*[]*/
                free(_imopVarPre327);
                /*[]*/
                /*[]*/
                free(new_centers);
                /*[]*/
                /*[]*/
                free(new_centers_len);
                /*[]*/
                /*[]*/
                tmp_cluster_centres = clusters;
            }
            /*[]*/
            double _imopVarPre351;
            /*[]*/
            _imopVarPre351 = omp_get_wtime();
            /*[]*/
            /*[]*/
            cluster_timing[itime] = _imopVarPre351 - cluster_timing[itime];
            /*[]*/
            /*[]*/
            if (is_perform_valid) {
            /*[]*/
                /*[]*/
                double _imopVarPre352;
                /*[]*/
                _imopVarPre352 = omp_get_wtime();
                /*[]*/
                /*[]*/
                valid_timing[itime] = _imopVarPre352;
                /*[]*/
                float _imopVarPre353;
                /*[]*/
                float **feature;
                /*[]*/
                int nfeatures;
                /*[]*/
                int npoints;
                /*[]*/
                float **cluster_centres_imopVar76;
                /*[]*/
                feature = attributes;
                /*[]*/
                nfeatures = numAttributes;
                /*[]*/
                npoints = numObjects;
                /*[]*/
                cluster_centres_imopVar76 = tmp_cluster_centres;
                /*[]*/
                int i_imopVar78;
                /*[]*/
                int j;
                /*[]*/
                int nearest_cluster;
                /*[]*/
                int *numpoints_in_clusters;
                /*[]*/
                float *sum_points;
                /*[]*/
                float valid_sum = 0.0;
                /*[]*/
                float min_dist = 3.40282346638528859812e+38F;
                /*[]*/
                float ret;
                /*[]*/
                float penalty;
                /*[]*/
                float sqd_dist;
                /*[]*/
                float memb_fuzzyq;
                /*[]*/
                float membership_imopVar79;
                /*[]*/
                /*[]*/
                if (nclusters < 2) {
                /*[]*/
                    /*[]*/
                    _imopVarPre353 = 3.40282346638528859812e+38F;
                    /*[]*/
                    goto fuzzy_validity_imopVar77;
                }
                /*[32]*/
#pragma omp parallel shared(feature, cluster_centres_imopVar76, numpoints_in_clusters) firstprivate(npoints, nfeatures, nclusters) private(i_imopVar78, nearest_cluster)
                {
                /*[32]*/
                    /*[32]*/
                    unsigned long int _imopVarPre244;
                    /*[32]*/
                    void *_imopVarPre245;
                    /*[32]*/
#pragma omp master
                    {
                    /*[32]*/
                        /*[32]*/
                        _imopVarPre244 = sizeof(int);
                        /*[32]*/
                        _imopVarPre245 = calloc(nclusters, _imopVarPre244);
                        /*[32]*/
                        /*[32]*/
                        numpoints_in_clusters = (int *) _imopVarPre245;
                    }
                    /*[32]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[32]*/
#pragma omp barrier
                    /*[6]*/
#pragma omp for schedule(static) nowait
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    for (i_imopVar78 = 0; i_imopVar78 < npoints; i_imopVar78++) {
                    /*[6]*/
                        /*[6]*/
                        float *_imopVarPre247;
                        /*[6]*/
                        int _imopVarPre248;
                        /*[6]*/
                        _imopVarPre247 = feature[i_imopVar78];
                        /*[6]*/
                        _imopVarPre248 = find_nearest_point(_imopVarPre247, nfeatures, cluster_centres_imopVar76, nclusters);
                        /*[6]*/
                        /*[6]*/
                        nearest_cluster = _imopVarPre248;
                        /*[6]*/
                        // #pragma omp dummyFlush ATOMIC_START
                        /*[6]*/
#pragma omp atomic
                        /*[6]*/
                        numpoints_in_clusters[nearest_cluster]++;
                        /*[6]*/
                        // #pragma omp dummyFlush ATOMIC_END
                    }
                    /*[6]*/
#pragma omp master
                    {
                    /*[6]*/
                        /*[6]*/
                        penalty = 0.0;
                    }
                }
                /*[33]*/
#pragma omp parallel shared(numpoints_in_clusters) firstprivate(nclusters) private(i_imopVar78)
                {
                /*[33]*/
                    /*[33]*/
                    unsigned long int _imopVarPre251;
                    /*[33]*/
                    void *_imopVarPre252;
                    /*[33]*/
#pragma omp for schedule(static) reduction(+:penalty) nowait
                    /*[33]*/
                    /*[33]*/
                    /*[33]*/
                    for (i_imopVar78 = 0; i_imopVar78 < nclusters; i_imopVar78++) {
                    /*[33]*/
                        /*[33]*/
                        penalty += 1.0 / (1.0 + ((float) numpoints_in_clusters[i_imopVar78]));
                    }
                    /*[33]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[33]*/
#pragma omp barrier
                    /*[34]*/
#pragma omp master
                    {
                    /*[34]*/
                        /*[34]*/
                        penalty /= (float) nclusters;
                        /*[34]*/
                        free(numpoints_in_clusters);
                        /*[34]*/
                        /*[34]*/
                        _imopVarPre251 = npoints * sizeof(float);
                        /*[34]*/
                        _imopVarPre252 = malloc(_imopVarPre251);
                        /*[34]*/
                        /*[34]*/
                        sum_points = (float *) _imopVarPre252;
                    }
                }
                /*[18]*/
#pragma omp parallel firstprivate(npoints, nclusters, nfeatures, fuzzyq)
                {
                /*[18]*/
                    /*[18]*/
                    sum_fuzzy_members(feature, npoints, cluster_centres_imopVar76, nclusters, nfeatures, fuzzyq, sum_points);
                    /*[18]*/
                }
                /*[29]*/
#pragma omp parallel shared(feature, cluster_centres_imopVar76) firstprivate(npoints, nclusters, nfeatures, fuzzyq) private(i_imopVar78, j, sqd_dist, memb_fuzzyq, membership_imopVar79)
                {
                /*[29]*/
                    /*[29]*/
#pragma omp for schedule(static) reduction(+:valid_sum) nowait
                    /*[29]*/
                    /*[29]*/
                    /*[29]*/
                    for (j = 0; j < npoints; j++) {
                    /*[29]*/
                        /*[29]*/
                        /*[29]*/
                        /*[29]*/
                        /*[29]*/
                        for (i_imopVar78 = 0; i_imopVar78 < nclusters; i_imopVar78++) {
                        /*[29]*/
                            /*[29]*/
                            float *_imopVarPre255;
                            /*[29]*/
                            float *_imopVarPre256;
                            /*[29]*/
                            float _imopVarPre257;
                            /*[29]*/
                            _imopVarPre255 = cluster_centres_imopVar76[i_imopVar78];
                            /*[29]*/
                            _imopVarPre256 = feature[j];
                            /*[29]*/
                            _imopVarPre257 = euclid_dist_2(_imopVarPre256, _imopVarPre255, nfeatures);
                            /*[29]*/
                            /*[29]*/
                            sqd_dist = _imopVarPre257;
                            /*[29]*/
                            double _imopVarPre261;
                            /*[29]*/
                            double _imopVarPre262;
                            /*[29]*/
                            double _imopVarPre263;
                            /*[29]*/
                            _imopVarPre261 = 1.0 / (fuzzyq - 1);
                            /*[29]*/
                            _imopVarPre262 = 1.0 / (sqd_dist + 0.00001);
                            /*[29]*/
                            _imopVarPre263 = pow(_imopVarPre262, _imopVarPre261);
                            /*[29]*/
                            /*[29]*/
                            membership_imopVar79 = _imopVarPre263 / (sum_points[j] + 0.00001);
                            /*[29]*/
                            memb_fuzzyq = pow(membership_imopVar79, fuzzyq);
                            /*[29]*/
                            /*[29]*/
                            valid_sum += sqd_dist * memb_fuzzyq;
                        }
                    }
                    /*[29]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*[29]*/
#pragma omp barrier
                    /*[3]*/
#pragma omp master
                    {
                    /*[3]*/
                        /*[3]*/
                        free(sum_points);
                        /*[3]*/
                        /*[3]*/
                        min_dist = 0.0;
                        /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        /*[3]*/
                        for (i_imopVar78 = 0; i_imopVar78 < nclusters - 1; i_imopVar78++) {
                        /*[3]*/
                            /*[3]*/
                            float this_cluster_min_dist = 3.40282346638528859812e+38F;
                            /*[3]*/
                            /*[3]*/
                            /*[3]*/
                            /*[3]*/
                            for (j = i_imopVar78 + 1; j < nclusters; j++) {
                            /*[3]*/
                                /*[3]*/
                                float tmp_dist;
                                /*[3]*/
                                float *_imopVarPre266;
                                /*[3]*/
                                float *_imopVarPre267;
                                /*[3]*/
                                float _imopVarPre268;
                                /*[3]*/
                                _imopVarPre266 = cluster_centres_imopVar76[j];
                                /*[3]*/
                                _imopVarPre267 = cluster_centres_imopVar76[i_imopVar78];
                                /*[3]*/
                                _imopVarPre268 = multid_feuclid_dist(_imopVarPre267, _imopVarPre266, nfeatures);
                                /*[3]*/
                                /*[3]*/
                                tmp_dist = _imopVarPre268;
                                /*[3]*/
                                /*[3]*/
                                if (tmp_dist < this_cluster_min_dist) {
                                /*[3]*/
                                    /*[3]*/
                                    this_cluster_min_dist = tmp_dist;
                                }
                            }
                            /*[3]*/
                            min_dist += this_cluster_min_dist;
                        }
                        /*[3]*/
                        min_dist = (((min_dist / (float) (nclusters - 1))) * ((min_dist / (float) (nclusters - 1))));
                        /*[3]*/
                        ret = (float) (valid_sum / (npoints * min_dist) + penalty);
                        /*[3]*/
                        _imopVarPre353 = ret;
                    }
                }
                /*[]*/
                goto fuzzy_validity_imopVar77;
                /*[]*/
                fuzzy_validity_imopVar77: ;
                /*[]*/
                validity[itime] = _imopVarPre353;
                /*[]*/
                /*[]*/
                if (_debug) {
                /*[]*/
                    /*[]*/
                    float _imopVarPre355;
                    /*[]*/
                    _imopVarPre355 = validity[itime];
                    /*[]*/
                    printf("K = %2d  validity = %6.4f\n", nclusters, _imopVarPre355);
                    /*[]*/
                }
                /*[]*/
                /*[]*/
                if (validity[itime] < min_valid) {
                /*[]*/
                    /*[]*/
                    /*[]*/
                    if (*cluster_centres_imopVar84) {
                    /*[]*/
                        /*[]*/
                        float *_imopVarPre357;
                        /*[]*/
                        _imopVarPre357 = (*cluster_centres_imopVar84)[0];
                        /*[]*/
                        free(_imopVarPre357);
                        /*[]*/
                        /*[]*/
                        float **_imopVarPre359;
                        /*[]*/
                        _imopVarPre359 = *cluster_centres_imopVar84;
                        /*[]*/
                        free(_imopVarPre359);
                        /*[]*/
                    }
                    /*[]*/
                    *cluster_centres_imopVar84 = tmp_cluster_centres;
                    /*[]*/
                    min_valid = validity[itime];
                    /*[]*/
                    *best_nclusters_imopVar83 = nclusters;
                    /*[]*/
                    /*[]*/
                    if (!perform_fuzzy_kmeans) {
                    /*[]*/
                        /*[]*/
                        unsigned int _imopVarPre362;
                        /*[]*/
                        unsigned long int _imopVarPre363;
                        /*[]*/
                        _imopVarPre362 = __builtin_object_size(cluster_assign, 0);
                        /*[]*/
                        /*[]*/
                        _imopVarPre363 = numObjects * sizeof(int);
                        /*[]*/
                        __builtin___memcpy_chk(cluster_assign, membership, _imopVarPre363, _imopVarPre362);
                        /*[]*/
                    }
                } else {
                /*[]*/
                    /*[]*/
                    float *_imopVarPre365;
                    /*[]*/
                    _imopVarPre365 = tmp_cluster_centres[0];
                    /*[]*/
                    free(_imopVarPre365);
                    /*[]*/
                    /*[]*/
                    free(tmp_cluster_centres);
                    /*[]*/
                }
                /*[]*/
                double _imopVarPre367;
                /*[]*/
                _imopVarPre367 = omp_get_wtime();
                /*[]*/
                /*[]*/
                valid_timing[itime] = _imopVarPre367 - valid_timing[itime];
            } else {
            /*[]*/
                /*[]*/
                /*[]*/
                if (*cluster_centres_imopVar84) {
                /*[]*/
                    /*[]*/
                    float *_imopVarPre369;
                    /*[]*/
                    _imopVarPre369 = (*cluster_centres_imopVar84)[0];
                    /*[]*/
                    free(_imopVarPre369);
                    /*[]*/
                    /*[]*/
                    float **_imopVarPre371;
                    /*[]*/
                    _imopVarPre371 = *cluster_centres_imopVar84;
                    /*[]*/
                    free(_imopVarPre371);
                    /*[]*/
                }
                /*[]*/
                *cluster_centres_imopVar84 = tmp_cluster_centres;
                /*[]*/
                *best_nclusters_imopVar83 = nclusters;
            }
            /*[]*/
            /*[]*/
            if (_debug) {
            /*[]*/
                /*[]*/
                double _imopVarPre373;
                /*[]*/
                _imopVarPre373 = cluster_timing[itime];
                /*[]*/
                printf("K = %2d T_cluster = %7.4f", nclusters, _imopVarPre373);
                /*[]*/
                /*[]*/
                /*[]*/
                if (is_perform_valid) {
                /*[]*/
                    /*[]*/
                    double _imopVarPre375;
                    /*[]*/
                    _imopVarPre375 = valid_timing[itime];
                    /*[]*/
                    printf(" T_valid = %7.4f", _imopVarPre375);
                    /*[]*/
                }
                /*[]*/
                printf("\n");
                /*[]*/
            }
            /*[]*/
            itime++;
        }
        /*[10]*/
#pragma omp parallel shared(cluster_assign, attributes, cluster_centres_imopVar84, best_nclusters_imopVar83) firstprivate(numObjects, numAttributes) private(i_imopVar85)
        {
        /*[10]*/
            /*[10]*/
            double _imopVarPre541;
            /*[10]*/
            /*[10]*/
            if (perform_fuzzy_kmeans) {
            /*[10]*/
                /*[10]*/
                /*[10]*/
                if (is_perform_assign) {
                /*[10]*/
                    /*[10]*/
#pragma omp master
                    {
                    /*[10]*/
                        /*[10]*/
                        /*[10]*/
                        if (_debug) {
                        /*[10]*/
                            /*[10]*/
                            assign_timing = omp_get_wtime();
                            /*[10]*/
                        }
                    }
                    /*[10]*/
#pragma omp for schedule(static) nowait
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (i_imopVar85 = 0; i_imopVar85 < numObjects; i_imopVar85++) {
                    /*[10]*/
                        /*[10]*/
                        int _imopVarPre379;
                        /*[10]*/
                        float **_imopVarPre380;
                        /*[10]*/
                        float *_imopVarPre381;
                        /*[10]*/
                        int _imopVarPre382;
                        /*[10]*/
                        _imopVarPre379 = *best_nclusters_imopVar83;
                        /*[10]*/
                        _imopVarPre380 = *cluster_centres_imopVar84;
                        /*[10]*/
                        _imopVarPre381 = attributes[i_imopVar85];
                        /*[10]*/
                        _imopVarPre382 = find_nearest_point(_imopVarPre381, numAttributes, _imopVarPre380, _imopVarPre379);
                        /*[10]*/
                        /*[10]*/
                        cluster_assign[i_imopVar85] = _imopVarPre382;
                    }
                    /*[10]*/
#pragma omp master
                    {
                    /*[10]*/
                        /*[10]*/
                        /*[10]*/
                        if (_debug) {
                        /*[10]*/
                            /*[10]*/
                            double _imopVarPre384;
                            /*[10]*/
                            _imopVarPre384 = omp_get_wtime();
                            /*[10]*/
                            /*[10]*/
                            assign_timing = _imopVarPre384 - assign_timing;
                            /*[10]*/
                            printf("cluster assign timing = %8.4f sec\n", assign_timing);
                            /*[10]*/
                        }
                    }
                }
            }
            /*[10]*/
#pragma omp master
            {
            /*[10]*/
                /*[10]*/
                /*[10]*/
                if (!perform_fuzzy_kmeans) {
                /*[10]*/
                    /*[10]*/
                    free(membership);
                    /*[10]*/
                }
                /*[10]*/
                0;
                /*[10]*/
                _imopVarPre541 = omp_get_wtime();
                /*[10]*/
                /*[10]*/
                timing = _imopVarPre541 - timing;
                /*[10]*/
                /*[10]*/
                if (_debug) {
                /*[10]*/
                    /*[10]*/
                    printf("nloop = %d cluster() time = %.4f\n", i, timing);
                    /*[10]*/
                }
                /*[10]*/
                /*[10]*/
                if (timing < min_timing) {
                /*[10]*/
                    /*[10]*/
                    min_timing = timing;
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (j = 0; j < len; j++) {
                    /*[10]*/
                        /*[10]*/
                        min_cluster_timing[j] = clustering_timing[j];
                        /*[10]*/
                        min_valid_timing[j] = valid_timing[j];
                    }
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    if (is_perform_output) {
    /*[]*/
        /*[]*/
        int _imopVarPre543;
        /*[]*/
        _imopVarPre543 = omp_get_max_threads();
        /*[]*/
        /*[]*/
        printf("Number of threads = %d\n", _imopVarPre543);
        /*[]*/
        /*[]*/
        printf("File %s contains  numObjects = %d, each of size %d\n", filename, numObjects, numAttributes);
        /*[]*/
        /*[]*/
        /*[]*/
        if (perform_fuzzy_kmeans) {
        /*[]*/
            /*[]*/
            /*[]*/
            if (is_perform_assign) {
            /*[]*/
                /*[]*/
                printf("**** Fuzzy Kmeans (Loop N first) with assign ****");
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                printf("**** Fuzzy Kmeans (Loop N first) without assign ****");
                /*[]*/
            }
        } else {
        /*[]*/
            /*[]*/
            printf("Performing **** Regular Kmeans (Loop N first) ****");
            /*[]*/
        }
        /*[]*/
        /*[]*/
        if (is_perform_atomic) {
        /*[]*/
            /*[]*/
            printf(" use atomic pragma ******\n");
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf(" use array reduction ******\n");
            /*[]*/
        }
        /*[]*/
        _timing_tables = 1;
        /*[]*/
        /*[]*/
        if (_timing_tables) {
        /*[]*/
            /*[]*/
            printf(" K, Tcluster,   Tvalid,   Tsum\n");
            /*[]*/
        }
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < len; i++) {
        /*[]*/
            /*[]*/
            /*[]*/
            if (_timing_tables) {
            /*[]*/
                /*[]*/
                double _imopVarPre548;
                /*[]*/
                double _imopVarPre549;
                /*[]*/
                double _imopVarPre550;
                /*[]*/
                int _imopVarPre551;
                /*[]*/
                _imopVarPre548 = min_cluster_timing[i] + min_valid_timing[i];
                /*[]*/
                _imopVarPre549 = min_valid_timing[i];
                /*[]*/
                _imopVarPre550 = min_cluster_timing[i];
                /*[]*/
                _imopVarPre551 = min_nclusters + i;
                /*[]*/
                printf("%2d, %8.4f, %8.4f, %8.4f\n", _imopVarPre551, _imopVarPre550, _imopVarPre549, _imopVarPre548);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                int _imopVarPre553;
                /*[]*/
                _imopVarPre553 = min_nclusters + i;
                /*[]*/
                printf("for %2d clusters: ", _imopVarPre553);
                /*[]*/
                /*[]*/
                float _imopVarPre555;
                /*[]*/
                _imopVarPre555 = validity[i];
                /*[]*/
                printf("validity = %6.4f", _imopVarPre555);
                /*[]*/
                /*[]*/
                double _imopVarPre557;
                /*[]*/
                _imopVarPre557 = min_cluster_timing[i];
                /*[]*/
                printf(" T_cluster = %8.4f", _imopVarPre557);
                /*[]*/
                /*[]*/
                double _imopVarPre559;
                /*[]*/
                _imopVarPre559 = min_valid_timing[i];
                /*[]*/
                printf(" T_valid = %8.4f", _imopVarPre559);
                /*[]*/
                /*[]*/
                double _imopVarPre561;
                /*[]*/
                _imopVarPre561 = min_cluster_timing[i] + min_valid_timing[i];
                /*[]*/
                printf(" T_sum = %8.4f\n", _imopVarPre561);
                /*[]*/
            }
        }
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < 79; i++) {
        /*[]*/
            /*[]*/
            printf("-");
            /*[]*/
        }
        /*[]*/
        printf("\n");
        /*[]*/
        /*[]*/
        sum = 0.0;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < len; i++) {
        /*[]*/
            /*[]*/
            sum += min_cluster_timing[i];
        }
        /*[]*/
        /*[]*/
        if (_timing_tables) {
        /*[]*/
            /*[]*/
            printf("  , %8.4f,", sum);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf("sum                                              %.4f", sum);
            /*[]*/
        }
        /*[]*/
        sum = 0.0;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < len; i++) {
        /*[]*/
            /*[]*/
            sum += min_valid_timing[i];
        }
        /*[]*/
        /*[]*/
        if (_timing_tables) {
        /*[]*/
            /*[]*/
            printf(" %8.4f,", sum);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf("           %8.4f", sum);
            /*[]*/
        }
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < len; i++) {
        /*[]*/
            /*[]*/
            sum += min_cluster_timing[i];
        }
        /*[]*/
        /*[]*/
        if (_timing_tables) {
        /*[]*/
            /*[]*/
            printf(" %8.4f\n", sum);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf("           %.4f\n", sum);
            /*[]*/
        }
        /*[]*/
        printf("I/O time = %8.4f\n", io_timing);
        /*[]*/
        /*[]*/
        /*[]*/
        if (!_timing_tables) {
        /*[]*/
            /*[]*/
            printf("Conclude : best no. of clusters found = %d\n", best_nclusters);
            /*[]*/
            /*[]*/
            printf("Total timing = %10.4f sec\n", min_timing);
            /*[]*/
        }
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < 79; i++) {
        /*[]*/
            /*[]*/
            printf("-");
            /*[]*/
        }
        /*[]*/
        printf("\n");
        /*[]*/
    }
    /*[]*/
    free(min_valid_timing);
    /*[]*/
    /*[]*/
    free(min_cluster_timing);
    /*[]*/
    /*[]*/
    free(valid_timing);
    /*[]*/
    /*[]*/
    free(clustering_timing);
    /*[]*/
    /*[]*/
    free(validity);
    /*[]*/
    /*[]*/
    free(cluster_assign);
    /*[]*/
    /*[]*/
    free(attributes);
    /*[]*/
    /*[]*/
    float *_imopVarPre563;
    /*[]*/
    _imopVarPre563 = cluster_centres[0];
    /*[]*/
    free(_imopVarPre563);
    /*[]*/
    /*[]*/
    free(cluster_centres);
    /*[]*/
    /*[]*/
    free(buf);
    /*[]*/
    /*[]*/
    return 0;
}