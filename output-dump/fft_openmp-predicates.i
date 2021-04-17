typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __darwin_size_t size_t;
void free(void *);
void *malloc(size_t __size);
struct __sFILEX ;
int printf(const char *, ...);
extern double cos(double );
extern double sin(double );
extern double log(double );
extern double pow(double , double );
extern double sqrt(double );
extern double fmod(double , double );
typedef __darwin_time_t time_t;
struct tm *localtime(const time_t *);
size_t strftime(char *, size_t  , const char * , const struct tm *);
time_t time(time_t *);
extern int omp_get_max_threads(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(void );
void ccopy(int n, double x[] , double y[]);
void cfft2(int n, double x[] , double y[] , double w[] , double sgn);
void cffti(int n, double w[]);
double ggl(double *ds);
void step(int n, int mj , double a[] , double b[] , double c[] , double d[] , double w[] , double sgn);
void timestamp(void );
int main() {
    /*OUT: {
    Reverse<--,>}*/
    double error;
    /*OUT: {
    Reverse<--,>}*/
    int first;
    /*OUT: {
    Reverse<--,>}*/
    double flops;
    /*OUT: {
    Reverse<--,>}*/
    double fnm1;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int icase;
    /*OUT: {
    Reverse<--,>}*/
    int it;
    /*OUT: {
    Reverse<--,>}*/
    int ln2;
    /*OUT: {
    Reverse<--,>}*/
    int ln2_max = 25;
    /*OUT: {
    Reverse<--,>}*/
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    int nits = 10000;
    /*OUT: {
    Reverse<--,>}*/
    static double seed;
    /*OUT: {
    Reverse<--,>}*/
    double sgn;
    /*OUT: {
    Reverse<--,>}*/
    double *w;
    /*OUT: {
    Reverse<--,>}*/
    double wtime;
    /*OUT: {
    Reverse<--,>}*/
    double *x;
    /*OUT: {
    Reverse<--,>}*/
    double *y;
    /*OUT: {
    Reverse<--,>}*/
    double *z;
    /*OUT: {
    Reverse<--,>}*/
    double z0;
    /*OUT: {
    Reverse<--,>}*/
    double z1;
    /*OUT: {
    Reverse<--,>}*/
    timestamp();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("FFT_OPENMP\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  C/OpenMP version\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Demonstrate an implementation of the Fast Fourier Transform\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  of a complex data vector, using OpenMP for parallel execution.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre143;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre143 = omp_get_num_procs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of processors available = %d\n", _imopVarPre143);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre145 = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of threads =              %d\n", _imopVarPre145);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Accuracy check:\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("    FFT ( FFT ( X(1:N) ) ) == N * X(1:N)\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("             N      NITS    Error         Time          Time/Call     MFLOPS\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    seed = 331.0;
    /*OUT: {
    Reverse<--,>}*/
    n = 1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 248_1; 193_0;>}*/
    for (ln2 = 1; ln2 <= ln2_max; ln2++) {
        /*OUT: {
        Reverse<--, 193_0;>}*/
        n = 2 * n;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        unsigned long int _imopVarPre148;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        void *_imopVarPre149;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre148 = n * sizeof(double);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre149 = malloc(_imopVarPre148);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        /*OUT: {
        Reverse<--, 193_0;>}*/
        w = (double *) _imopVarPre149;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        unsigned long int _imopVarPre152;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        void *_imopVarPre153;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre152 = 2 * n * sizeof(double);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre153 = malloc(_imopVarPre152);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        /*OUT: {
        Reverse<--, 193_0;>}*/
        x = (double *) _imopVarPre153;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        unsigned long int _imopVarPre156;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        void *_imopVarPre157;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre156 = 2 * n * sizeof(double);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre157 = malloc(_imopVarPre156);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        /*OUT: {
        Reverse<--, 193_0;>}*/
        y = (double *) _imopVarPre157;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        unsigned long int _imopVarPre160;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        void *_imopVarPre161;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre160 = 2 * n * sizeof(double);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        _imopVarPre161 = malloc(_imopVarPre160);
        /*OUT: {
        Reverse<--, 193_0;>}*/
        /*OUT: {
        Reverse<--, 193_0;>}*/
        z = (double *) _imopVarPre161;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        first = 1;
        /*OUT: {
        Reverse<--, 193_0;>}*/
        /*OUT: {
        Reverse<--, 193_0;>}*/
        /*OUT: {
        Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
        Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
        Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>
        Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
        for (icase = 0; icase < 2; icase++) {
            /*OUT: {
            Reverse<--, 248_0; 193_0;>}*/
            if (first) {
                /*OUT: {
                Reverse<--, 250_0; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 250_0; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                for (i = 0; i < 2 * n; i = i + 2) {
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    double *_imopVarPre163;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    double _imopVarPre164;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    _imopVarPre163 = &seed;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    _imopVarPre164 = ggl(_imopVarPre163);
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    z0 = _imopVarPre164;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    double *_imopVarPre166;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    double _imopVarPre167;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    _imopVarPre166 = &seed;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    _imopVarPre167 = ggl(_imopVarPre166);
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    z1 = _imopVarPre167;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    x[i] = z0;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    z[i] = z0;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    x[i + 1] = z1;
                    /*OUT: {
                    Reverse<--, 252_0; 250_0; 248_0; 193_0;>}*/
                    z[i + 1] = z1;
                }
            } else {
#pragma omp parallel shared(n, x, z) private(i, z0, z1)
                {
#pragma omp for nowait
                    /*OUT: {
                    Reverse<869,>}*/
                    /*OUT: {
                    Reverse<869,>}*/
                    /*OUT: {
                    Reverse<869,>}*/
                    for (i = 0; i < 2 * n; i = i + 2) {
                        /*OUT: {
                        Reverse<869,>}*/
                        z0 = 0.0;
                        /*OUT: {
                        Reverse<869,>}*/
                        z1 = 0.0;
                        /*OUT: {
                        Reverse<869,>}*/
                        x[i] = z0;
                        /*OUT: {
                        Reverse<869,>}*/
                        z[i] = z0;
                        /*OUT: {
                        Reverse<869,>}*/
                        x[i + 1] = z1;
                        /*OUT: {
                        Reverse<869,>}*/
                        z[i + 1] = z1;
                    }
                }
            }
            /*OUT: {
            Reverse<--, 252_1; 250_0; 248_0; 193_0;>
            Reverse<--, 250_1; 248_0; 193_0;>}*/
            cffti(n, w);
            /*OUT: {
            Reverse<--, 252_1; 250_0; 248_0; 193_0;>
            Reverse<--, 250_1; 248_0; 193_0;>}*/
            /*OUT: {
            Reverse<--, 252_1; 250_0; 248_0; 193_0;>
            Reverse<--, 250_1; 248_0; 193_0;>}*/
            if (first) {
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                sgn = +1.0;
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                cfft2(n, x, y, w, sgn);
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                sgn = -1.0;
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                cfft2(n, y, x, w, sgn);
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                fnm1 = 1.0 / (double) n;
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                error = 0.0;
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 316_0; 250_1; 248_0; 193_0;>
                Reverse<--, 316_0; 252_1; 250_0; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                for (i = 0; i < 2 * n; i = i + 2) {
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    double _imopVarPre172;
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    double _imopVarPre173;
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    double _imopVarPre174;
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    double _imopVarPre175;
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    _imopVarPre172 = z[i] - fnm1 * x[i];
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    _imopVarPre173 = pow(_imopVarPre172, 2);
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    _imopVarPre174 = z[i + 1] - fnm1 * x[i + 1];
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    _imopVarPre175 = pow(_imopVarPre174, 2);
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    /*OUT: {
                    Reverse<--, 336_0; 316_0; 252_1; 250_0; 248_0; 193_0;>
                    Reverse<--, 336_0; 316_0; 250_1; 248_0; 193_0;>}*/
                    error = error + _imopVarPre173 + _imopVarPre175;
                }
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                double _imopVarPre177;
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                double _imopVarPre178;
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                _imopVarPre177 = fnm1 * error;
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                _imopVarPre178 = sqrt(_imopVarPre177);
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                error = _imopVarPre178;
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                printf("  %12d  %8d  %12e", n, nits, error);
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 336_1; 316_0; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 336_1; 316_0; 250_1; 248_0; 193_0;>}*/
                first = 0;
            } else {
                /*OUT: {
                Reverse<--, 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 316_1; 250_1; 248_0; 193_0;>}*/
                wtime = omp_get_wtime();
                /*OUT: {
                Reverse<--, 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 316_1; 250_1; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 316_1; 250_1; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 316_1; 250_1; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 390_0; 316_1; 250_1; 248_0; 193_0;>
                Reverse<--, 390_0; 316_1; 252_1; 250_0; 248_0; 193_0;>}*/
                for (it = 0; it < nits; it++) {
                    /*OUT: {
                    Reverse<--, 390_0; 316_1; 250_1; 248_0; 193_0;>
                    Reverse<--, 390_0; 316_1; 252_1; 250_0; 248_0; 193_0;>}*/
                    sgn = +1.0;
                    /*OUT: {
                    Reverse<--, 390_0; 316_1; 250_1; 248_0; 193_0;>
                    Reverse<--, 390_0; 316_1; 252_1; 250_0; 248_0; 193_0;>}*/
                    cfft2(n, x, y, w, sgn);
                    /*OUT: {
                    Reverse<--, 390_0; 316_1; 250_1; 248_0; 193_0;>
                    Reverse<--, 390_0; 316_1; 252_1; 250_0; 248_0; 193_0;>}*/
                    /*OUT: {
                    Reverse<--, 390_0; 316_1; 250_1; 248_0; 193_0;>
                    Reverse<--, 390_0; 316_1; 252_1; 250_0; 248_0; 193_0;>}*/
                    sgn = -1.0;
                    /*OUT: {
                    Reverse<--, 390_0; 316_1; 250_1; 248_0; 193_0;>
                    Reverse<--, 390_0; 316_1; 252_1; 250_0; 248_0; 193_0;>}*/
                    cfft2(n, y, x, w, sgn);
                    /*OUT: {
                    Reverse<--, 390_0; 316_1; 250_1; 248_0; 193_0;>
                    Reverse<--, 390_0; 316_1; 252_1; 250_0; 248_0; 193_0;>}*/
                }
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                double _imopVarPre180;
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                _imopVarPre180 = omp_get_wtime();
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                wtime = _imopVarPre180 - wtime;
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                flops = 2.0 * (double) nits * (5.0 * (double) n * (double) ln2);
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                mflops = flops / 1.0E+06 / wtime;
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                double _imopVarPre182;
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                _imopVarPre182 = wtime / (double) (2 * nits);
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
                printf("  %12e  %12e  %12f\n", wtime, _imopVarPre182, mflops);
                /*OUT: {
                Reverse<--, 390_1; 316_1; 252_1; 250_0; 248_0; 193_0;>
                Reverse<--, 390_1; 316_1; 250_1; 248_0; 193_0;>}*/
            }
        }
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        if ((ln2 % 4) == 0) {
            /*OUT: {
            Reverse<--, 430_0; 248_1; 193_0;>}*/
            nits = nits / 10;
        }
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        if (nits < 1) {
            /*OUT: {
            Reverse<--, 433_0; 248_1; 193_0;>}*/
            nits = 1;
        }
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        free(w);
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        free(x);
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        free(y);
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
        free(z);
        /*OUT: {
        Reverse<--, 248_1; 193_0;>}*/
    }
    /*OUT: {
    Reverse<--, 193_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 193_1;>}*/
    /*OUT: {
    Reverse<--, 193_1;>}*/
    printf("FFT_OPENMP:\n");
    /*OUT: {
    Reverse<--, 193_1;>}*/
    /*OUT: {
    Reverse<--, 193_1;>}*/
    printf("  Normal end of execution.\n");
    /*OUT: {
    Reverse<--, 193_1;>}*/
    /*OUT: {
    Reverse<--, 193_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 193_1;>}*/
    /*OUT: {
    Reverse<--, 193_1;>}*/
    timestamp();
    /*OUT: {
    Reverse<--, 193_1;>}*/
    /*OUT: {
    Reverse<--, 193_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void ccopy(int n, double x[] , double y[]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 488_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 488_0;>}*/
        y[i * 2 + 0] = x[i * 2 + 0];
        /*OUT: {
        Reverse<--, 488_0;>}*/
        y[i * 2 + 1] = x[i * 2 + 1];
    }
    /*OUT: {
    Reverse<--, 488_1;>}*/
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
void cfft2(int n, double x[] , double y[] , double w[] , double sgn) {
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    int mj;
    /*OUT: {
    Reverse<--,>}*/
    int tgle;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre192;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre193;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre194;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre192 = (double) n;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre193 = log(_imopVarPre192);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre194 = log(1.99);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    m = (int) (_imopVarPre193 / _imopVarPre194);
    /*OUT: {
    Reverse<--,>}*/
    mj = 1;
    /*OUT: {
    Reverse<--,>}*/
    tgle = 1;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre199;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre201;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre202;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre199 = &y[mj * 2 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre200 = &y[0 * 2 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre201 = &x[(n / 2) * 2 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre202 = &x[0 * 2 + 0];
    /*OUT: {
    Reverse<--,>}*/
    step(n, mj, _imopVarPre202, _imopVarPre201, _imopVarPre200, _imopVarPre199, w, sgn);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (n == 2) {
        /*OUT: {
        Reverse<--, 554_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 554_1;>}*/
    /*OUT: {
    Reverse<--, 554_1;>}*/
    /*OUT: {
    Reverse<--, 557_0; 554_1;>}*/
    for (j = 0; j < m - 2; j++) {
        /*OUT: {
        Reverse<--, 557_0; 554_1;>}*/
        mj = mj * 2;
        /*OUT: {
        Reverse<--, 557_0; 554_1;>}*/
        if (tgle) {
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            double *_imopVarPre207;
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            double *_imopVarPre208;
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            double *_imopVarPre209;
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            double *_imopVarPre210;
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            _imopVarPre207 = &x[mj * 2 + 0];
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            _imopVarPre208 = &x[0 * 2 + 0];
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            _imopVarPre209 = &y[(n / 2) * 2 + 0];
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            _imopVarPre210 = &y[0 * 2 + 0];
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            step(n, mj, _imopVarPre210, _imopVarPre209, _imopVarPre208, _imopVarPre207, w, sgn);
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            /*OUT: {
            Reverse<--, 561_0; 557_0; 554_1;>}*/
            tgle = 0;
        } else {
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            double *_imopVarPre215;
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            double *_imopVarPre216;
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            double *_imopVarPre217;
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            double *_imopVarPre218;
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            _imopVarPre215 = &y[mj * 2 + 0];
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            _imopVarPre216 = &y[0 * 2 + 0];
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            _imopVarPre217 = &x[(n / 2) * 2 + 0];
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            _imopVarPre218 = &x[0 * 2 + 0];
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            step(n, mj, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215, w, sgn);
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            /*OUT: {
            Reverse<--, 561_1; 557_0; 554_1;>}*/
            tgle = 1;
        }
    }
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    if (tgle) {
        /*OUT: {
        Reverse<--, 610_0; 557_1; 554_1;>}*/
        ccopy(n, y, x);
        /*OUT: {
        Reverse<--, 610_0; 557_1; 554_1;>}*/
    }
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    mj = n / 2;
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    double *_imopVarPre223;
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    double *_imopVarPre224;
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    double *_imopVarPre225;
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    double *_imopVarPre226;
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    _imopVarPre223 = &y[mj * 2 + 0];
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    _imopVarPre224 = &y[0 * 2 + 0];
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    _imopVarPre225 = &x[(n / 2) * 2 + 0];
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    _imopVarPre226 = &x[0 * 2 + 0];
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    step(n, mj, _imopVarPre226, _imopVarPre225, _imopVarPre224, _imopVarPre223, w, sgn);
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    /*OUT: {
    Reverse<--, 557_1; 554_1;>}*/
    return;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void cffti(int n, double w[]) {
    /*OUT: {
    Reverse<--,>}*/
    double arg;
    /*OUT: {
    Reverse<--,>}*/
    double aw;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int n2;
    /*OUT: {
    Reverse<--,>}*/
    const double pi = 3.141592653589793;
    /*OUT: {
    Reverse<--,>}*/
    n2 = n / 2;
    /*OUT: {
    Reverse<--,>}*/
    aw = 2.0 * pi / ((double) n);
#pragma omp parallel shared(aw, n, w) private(arg, i)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<963,>}*/
        /*OUT: {
        Reverse<963,>}*/
        /*OUT: {
        Reverse<963,>}*/
        for (i = 0; i < n2; i++) {
            /*OUT: {
            Reverse<963,>}*/
            arg = aw * ((double) i);
            /*OUT: {
            Reverse<963,>}*/
            double _imopVarPre227;
            /*OUT: {
            Reverse<963,>}*/
            _imopVarPre227 = cos(arg);
            /*OUT: {
            Reverse<963,>}*/
            /*OUT: {
            Reverse<963,>}*/
            w[i * 2 + 0] = _imopVarPre227;
            /*OUT: {
            Reverse<963,>}*/
            double _imopVarPre228;
            /*OUT: {
            Reverse<963,>}*/
            _imopVarPre228 = sin(arg);
            /*OUT: {
            Reverse<963,>}*/
            /*OUT: {
            Reverse<963,>}*/
            w[i * 2 + 1] = _imopVarPre228;
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    return;
}
/*OUT: {
Reverse<--,>}*/
double ggl(double *seed) {
    /*OUT: {
    Reverse<--,>}*/
    double d2 = 0.2147483647e10;
    /*OUT: {
    Reverse<--,>}*/
    double t;
    /*OUT: {
    Reverse<--,>}*/
    double value;
    /*OUT: {
    Reverse<--,>}*/
    t = (double) *seed;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre230;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre231;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre230 = 16807.0 * t;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre231 = fmod(_imopVarPre230, d2);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    t = _imopVarPre231;
    /*OUT: {
    Reverse<--,>}*/
    *seed = (double) t;
    /*OUT: {
    Reverse<--,>}*/
    value = (double) ((t - 1.0) / (d2 - 1.0));
    /*OUT: {
    Reverse<--,>}*/
    return value;
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
void step(int n, int mj , double a[] , double b[] , double c[] , double d[] , double w[] , double sgn) {
    /*OUT: {
    Reverse<--,>}*/
    double ambr;
    /*OUT: {
    Reverse<--,>}*/
    double ambu;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int ja;
    /*OUT: {
    Reverse<--,>}*/
    int jb;
    /*OUT: {
    Reverse<--,>}*/
    int jc;
    /*OUT: {
    Reverse<--,>}*/
    int jd;
    /*OUT: {
    Reverse<--,>}*/
    int jw;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int lj;
    /*OUT: {
    Reverse<--,>}*/
    int mj2;
    /*OUT: {
    Reverse<--,>}*/
    double wjw[2];
    /*OUT: {
    Reverse<--,>}*/
    mj2 = 2 * mj;
    /*OUT: {
    Reverse<--,>}*/
    lj = n / mj2;
#pragma omp parallel shared(a, b, c, d, lj, mj, mj2, sgn, w) private(ambr, ambu, j, ja, jb, jc, jd, jw, k, wjw)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<981,>}*/
        /*OUT: {
        Reverse<981,>}*/
        /*OUT: {
        Reverse<981, 762_1;>}*/
        for (j = 0; j < lj; j++) {
            /*OUT: {
            Reverse<981,>}*/
            jw = j * mj;
            /*OUT: {
            Reverse<981,>}*/
            ja = jw;
            /*OUT: {
            Reverse<981,>}*/
            jb = ja;
            /*OUT: {
            Reverse<981,>}*/
            jc = j * mj2;
            /*OUT: {
            Reverse<981,>}*/
            jd = jc;
            /*OUT: {
            Reverse<981,>}*/
            wjw[0] = w[jw * 2 + 0];
            /*OUT: {
            Reverse<981,>}*/
            wjw[1] = w[jw * 2 + 1];
            /*OUT: {
            Reverse<981,>}*/
            if (sgn < 0.0) {
                /*OUT: {
                Reverse<981, 756_0;>}*/
                wjw[1] = -wjw[1];
            }
            /*OUT: {
            Reverse<981,>}*/
            /*OUT: {
            Reverse<981,>}*/
            /*OUT: {
            Reverse<981, 762_0;>}*/
            for (k = 0; k < mj; k++) {
                /*OUT: {
                Reverse<981, 762_0;>}*/
                c[(jc + k) * 2 + 0] = a[(ja + k) * 2 + 0] + b[(jb + k) * 2 + 0];
                /*OUT: {
                Reverse<981, 762_0;>}*/
                c[(jc + k) * 2 + 1] = a[(ja + k) * 2 + 1] + b[(jb + k) * 2 + 1];
                /*OUT: {
                Reverse<981, 762_0;>}*/
                ambr = a[(ja + k) * 2 + 0] - b[(jb + k) * 2 + 0];
                /*OUT: {
                Reverse<981, 762_0;>}*/
                ambu = a[(ja + k) * 2 + 1] - b[(jb + k) * 2 + 1];
                /*OUT: {
                Reverse<981, 762_0;>}*/
                d[(jd + k) * 2 + 0] = wjw[0] * ambr - wjw[1] * ambu;
                /*OUT: {
                Reverse<981, 762_0;>}*/
                d[(jd + k) * 2 + 1] = wjw[1] * ambr + wjw[0] * ambu;
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
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
    void *_imopVarPre233;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre234;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre233 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre234 = time(_imopVarPre233);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    now = _imopVarPre234;
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre236;
    /*OUT: {
    Reverse<--,>}*/
    struct tm *_imopVarPre237;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre236 = &now;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre237 = localtime(_imopVarPre236);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    tm = _imopVarPre237;
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
