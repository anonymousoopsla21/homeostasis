
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [timer_clear]*/
extern void timer_clear(int );
/*READ_S: []
WRITE_S: [timer_start]*/
extern void timer_start(int );
/*READ_S: []
WRITE_S: [timer_stop]*/
extern void timer_stop(int );
/*READ_S: []
WRITE_S: [timer_read]*/
extern double timer_read(int );
/*READ_S: []
WRITE_S: [c_print_results]*/
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
/*READ_S: []
WRITE_S: []*/
typedef int INT_TYPE;
/*READ_S: []
WRITE_S: [key_buff_ptr_global]*/
INT_TYPE *key_buff_ptr_global;
/*READ_S: []
WRITE_S: [passed_verification]*/
int passed_verification;
/*READ_S: []
WRITE_S: [key_array.f, key_array]*/
INT_TYPE key_array[(1 << 16)];
/*READ_S: []
WRITE_S: [key_buff1.f, key_buff1]*/
INT_TYPE key_buff1[(1 << 16)];
/*READ_S: []
WRITE_S: [key_buff2, key_buff2.f]*/
INT_TYPE key_buff2[(1 << 16)];
/*READ_S: []
WRITE_S: [partial_verify_vals, partial_verify_vals.f]*/
INT_TYPE partial_verify_vals[5];
/*READ_S: []
WRITE_S: [test_index_array, test_index_array.f]*/
INT_TYPE test_index_array[5];
/*READ_S: []
WRITE_S: [test_rank_array, test_rank_array.f]*/
INT_TYPE test_rank_array[5];
/*READ_S: []
WRITE_S: [S_test_index_array.f, S_test_index_array]*/
INT_TYPE S_test_index_array[5] = {48427, 17148 , 23627 , 62548 , 4431};
/*READ_S: []
WRITE_S: [S_test_rank_array.f, S_test_rank_array]*/
INT_TYPE S_test_rank_array[5] = {0, 18 , 346 , 64917 , 65463};
/*READ_S: []
WRITE_S: [W_test_index_array.f, W_test_index_array]*/
INT_TYPE W_test_index_array[5] = {357773, 934767 , 875723 , 898999 , 404505};
/*READ_S: []
WRITE_S: [W_test_rank_array.f, W_test_rank_array]*/
INT_TYPE W_test_rank_array[5] = {1249, 11698 , 1039987 , 1043896 , 1048018};
/*READ_S: []
WRITE_S: [A_test_index_array.f, A_test_index_array]*/
INT_TYPE A_test_index_array[5] = {2112377, 662041 , 5336171 , 3642833 , 4250760};
/*READ_S: []
WRITE_S: [A_test_rank_array.f, A_test_rank_array]*/
INT_TYPE A_test_rank_array[5] = {104, 17523 , 123928 , 8288932 , 8388264};
/*READ_S: []
WRITE_S: [B_test_index_array, B_test_index_array.f]*/
INT_TYPE B_test_index_array[5] = {41869, 812306 , 5102857 , 18232239 , 26860214};
/*READ_S: []
WRITE_S: [B_test_rank_array, B_test_rank_array.f]*/
INT_TYPE B_test_rank_array[5] = {33422937, 10244 , 59149 , 33135281 , 99};
/*READ_S: []
WRITE_S: [C_test_index_array.f, C_test_index_array]*/
INT_TYPE C_test_index_array[5] = {44172927, 72999161 , 74326391 , 129606274 , 21736814};
/*READ_S: []
WRITE_S: [C_test_rank_array, C_test_rank_array.f]*/
INT_TYPE C_test_rank_array[5] = {61147, 882988 , 266290 , 133997595 , 133525895};
/*READ_S: []
WRITE_S: [randlc]*/
double randlc(double *X, double *A);
/*READ_S: []
WRITE_S: [full_verify]*/
void full_verify(void );
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [R46, a, KS, T23, R23, seed, T46]
WRITE_S: [R46, KS, T23, R23, seed, T46]*/
double randlc(double *X, double *A) {
/*READ_S: [R46, a, KS, T23, R23, seed, T46]
WRITE_S: [R46, KS, T23, R23, seed, T46]*/
    /*READ_S: []
    WRITE_S: [KS]*/
    static int KS = 0;
    /*READ_S: []
    WRITE_S: [R23]*/
    static double R23;
    /*READ_S: []
    WRITE_S: [R46]*/
    static double R46;
    /*READ_S: []
    WRITE_S: [T23]*/
    static double T23;
    /*READ_S: []
    WRITE_S: [T46]*/
    static double T46;
    /*READ_S: []
    WRITE_S: []*/
    double T1;
    /*READ_S: []
    WRITE_S: []*/
    double T2;
    /*READ_S: []
    WRITE_S: []*/
    double T3;
    /*READ_S: []
    WRITE_S: []*/
    double T4;
    /*READ_S: []
    WRITE_S: []*/
    double A1;
    /*READ_S: []
    WRITE_S: []*/
    double A2;
    /*READ_S: []
    WRITE_S: []*/
    double X1;
    /*READ_S: []
    WRITE_S: []*/
    double X2;
    /*READ_S: []
    WRITE_S: []*/
    double Z;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: [KS]
    WRITE_S: []*/
    /*READ_S: [R46, KS, T23, R23, T46]
    WRITE_S: [R46, KS, T23, R23, T46]*/
    if (KS == 0) {
    /*READ_S: [R46, T23, R23, T46]
    WRITE_S: [R46, KS, T23, R23, T46]*/
        /*READ_S: []
        WRITE_S: [R23]*/
        R23 = 1.0;
        /*READ_S: []
        WRITE_S: [R46]*/
        R46 = 1.0;
        /*READ_S: []
        WRITE_S: [T23]*/
        T23 = 1.0;
        /*READ_S: []
        WRITE_S: [T46]*/
        T46 = 1.0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [T23, R23]
        WRITE_S: [T23, R23]*/
        for (i = 1; i <= 23; i++) {
        /*READ_S: [T23, R23]
        WRITE_S: [T23, R23]*/
            /*READ_S: [R23]
            WRITE_S: [R23]*/
            R23 = 0.50 * R23;
            /*READ_S: [T23]
            WRITE_S: [T23]*/
            T23 = 2.0 * T23;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [R46, T46]
        WRITE_S: [R46, T46]*/
        for (i = 1; i <= 46; i++) {
        /*READ_S: [R46, T46]
        WRITE_S: [R46, T46]*/
            /*READ_S: [R46]
            WRITE_S: [R46]*/
            R46 = 0.50 * R46;
            /*READ_S: [T46]
            WRITE_S: [T46]*/
            T46 = 2.0 * T46;
        }
        /*READ_S: []
        WRITE_S: [KS]*/
        KS = 1;
    }
    /*READ_S: [a, R23]
    WRITE_S: []*/
    T1 = R23 * *A;
    /*READ_S: []
    WRITE_S: []*/
    j = T1;
    /*READ_S: []
    WRITE_S: []*/
    A1 = j;
    /*READ_S: [a, T23]
    WRITE_S: []*/
    A2 = *A - T23 * A1;
    /*READ_S: [R23, seed]
    WRITE_S: []*/
    T1 = R23 * *X;
    /*READ_S: []
    WRITE_S: []*/
    j = T1;
    /*READ_S: []
    WRITE_S: []*/
    X1 = j;
    /*READ_S: [T23, seed]
    WRITE_S: []*/
    X2 = *X - T23 * X1;
    /*READ_S: []
    WRITE_S: []*/
    T1 = A1 * X2 + A2 * X1;
    /*READ_S: [R23]
    WRITE_S: []*/
    j = R23 * T1;
    /*READ_S: []
    WRITE_S: []*/
    T2 = j;
    /*READ_S: [T23]
    WRITE_S: []*/
    Z = T1 - T23 * T2;
    /*READ_S: [T23]
    WRITE_S: []*/
    T3 = T23 * Z + A2 * X2;
    /*READ_S: [R46]
    WRITE_S: []*/
    j = R46 * T3;
    /*READ_S: []
    WRITE_S: []*/
    T4 = j;
    /*READ_S: [T46]
    WRITE_S: [seed]*/
    *X = T3 - T46 * T4;
    /*READ_S: [R46, seed]
    WRITE_S: []*/
    return (R46 * *X);
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [R46, a, KS, T23, randlc, R23, seed, T46, key_array]
WRITE_S: [R46, KS, T23, R23, seed, T46, key_array.f]*/
void create_seq(double seed, double a) {
/*READ_S: [R46, a, KS, T23, randlc, R23, seed, T46, key_array]
WRITE_S: [R46, KS, T23, R23, seed, T46, key_array.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double x;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    k = (1 << 11) / 4;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [R46, a, KS, T23, randlc, R23, seed, T46, key_array]
    WRITE_S: [R46, KS, T23, R23, seed, T46, key_array.f]*/
    for (i = 0; i < (1 << 16); i++) {
    /*READ_S: [R46, a, KS, T23, randlc, R23, seed, T46, key_array]
    WRITE_S: [R46, KS, T23, R23, seed, T46, key_array.f]*/
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre16;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre17;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre18;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre16 = &a;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre17 = &seed;
        /*READ_S: [randlc]
        WRITE_S: []*/
        _imopVarPre18 = randlc(_imopVarPre17, _imopVarPre16);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        x = _imopVarPre18;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre21;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre22;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre23;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre21 = &a;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre22 = &seed;
        /*READ_S: [randlc]
        WRITE_S: []*/
        _imopVarPre23 = randlc(_imopVarPre22, _imopVarPre21);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        x += _imopVarPre23;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre26;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre27;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre28;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre26 = &a;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre27 = &seed;
        /*READ_S: [randlc]
        WRITE_S: []*/
        _imopVarPre28 = randlc(_imopVarPre27, _imopVarPre26);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        x += _imopVarPre28;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre31;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre32;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre33;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre31 = &a;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre32 = &seed;
        /*READ_S: [randlc]
        WRITE_S: []*/
        _imopVarPre33 = randlc(_imopVarPre32, _imopVarPre31);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        x += _imopVarPre33;
        /*READ_S: [key_array]
        WRITE_S: [key_array.f]*/
        key_array[i] = k * x;
    }
}
/*READ_S: [passed_verification, printf, key_array.f, key_buff2, key_buff1.f, key_array, key_buff2.f, key_buff_ptr_global]
WRITE_S: [passed_verification, key_array.f, key_buff1.f, key_buff2.f]*/
void full_verify() {
/*READ_S: [passed_verification, printf, key_array.f, key_buff2, key_buff1.f, key_array, key_buff2.f, key_buff_ptr_global]
WRITE_S: [passed_verification, key_array.f, key_buff1.f, key_buff2.f]*/
    /*READ_S: []
    WRITE_S: []*/
    INT_TYPE i;
    /*READ_S: []
    WRITE_S: []*/
    INT_TYPE j;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [key_buff2, key_buff1.f, key_array, key_buff2.f, key_buff_ptr_global]
    WRITE_S: [key_array.f, key_buff1.f, key_buff2.f]*/
    for (i = 0; i < (1 << 16); i++) {
    /*READ_S: [key_buff2, key_buff1.f, key_array, key_buff2.f, key_buff_ptr_global]
    WRITE_S: [key_array.f, key_buff1.f, key_buff2.f]*/
        /*READ_S: [key_buff2, key_buff1.f, key_array, key_buff2.f, key_buff_ptr_global]
        WRITE_S: [key_array.f, key_buff1.f, key_buff2.f]*/
        key_array[--key_buff_ptr_global[key_buff2[i]]] = key_buff2[i];
    }
    /*READ_S: []
    WRITE_S: []*/
    j = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [key_array.f, key_array]
    WRITE_S: []*/
    for (i = 1; i < (1 << 16); i++) {
    /*READ_S: [key_array.f, key_array]
    WRITE_S: []*/
        /*READ_S: [key_array.f, key_array]
        WRITE_S: []*/
        /*READ_S: [key_array.f, key_array]
        WRITE_S: []*/
        if (key_array[i - 1] > key_array[i]) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            j++;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [passed_verification, printf]
    WRITE_S: [passed_verification]*/
    if (j != 0) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Full_verify: number of keys out of sort: %d\n", j);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [passed_verification]
    WRITE_S: [passed_verification]*/
        /*READ_S: [passed_verification]
        WRITE_S: [passed_verification]*/
        passed_verification++;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, passed_verification, partial_verify_vals, partial_verify_vals.f, test_index_array, test_index_array.f, _imopVarPre36, i, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
void rank(int iteration) {
/*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, passed_verification, partial_verify_vals, partial_verify_vals.f, test_index_array, test_index_array.f, _imopVarPre36, i, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
    /*READ_S: []
    WRITE_S: []*/
    INT_TYPE i;
    /*READ_S: []
    WRITE_S: []*/
    INT_TYPE k;
    /*READ_S: []
    WRITE_S: []*/
    11 - 9;
    /*READ_S: []
    WRITE_S: []*/
    INT_TYPE prv_buff1[(1 << 11)];
    /*READ_S: [partial_verify_vals, test_index_array, test_index_array.f, key_array.f, key_array, key_buff1]
    WRITE_S: [partial_verify_vals.f, key_array.f, key_buff1.f]*/
#pragma omp master
    {
    /*READ_S: [partial_verify_vals, test_index_array, test_index_array.f, key_array.f, key_array, key_buff1]
    WRITE_S: [partial_verify_vals.f, key_array.f, key_buff1.f]*/
        /*READ_S: [key_array]
        WRITE_S: [key_array.f]*/
        key_array[iteration] = iteration;
        /*READ_S: [key_array]
        WRITE_S: [key_array.f]*/
        key_array[iteration + 10] = (1 << 11) - iteration;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [partial_verify_vals, test_index_array, test_index_array.f, key_array.f, key_array]
        WRITE_S: [partial_verify_vals.f]*/
        for (i = 0; i < 5; i++) {
        /*READ_S: [partial_verify_vals, test_index_array, test_index_array.f, key_array.f, key_array]
        WRITE_S: [partial_verify_vals.f]*/
            /*READ_S: [partial_verify_vals, test_index_array, test_index_array.f, key_array.f, key_array]
            WRITE_S: [partial_verify_vals.f]*/
            partial_verify_vals[i] = key_array[test_index_array[i]];
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [key_buff1]
        WRITE_S: [key_buff1.f]*/
        for (i = 0; i < (1 << 11); i++) {
        /*READ_S: [key_buff1]
        WRITE_S: [key_buff1.f]*/
            /*READ_S: [key_buff1]
            WRITE_S: [key_buff1.f]*/
            key_buff1[i] = 0;
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
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < (1 << 11); i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        prv_buff1[i] = 0;
    }
    /*READ_S: [i, key_array.f, key_buff2, key_array, key_buff2.f]
    WRITE_S: [key_buff2.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < (1 << 16); i++) {
    /*READ_S: [key_array.f, key_buff2, key_array, key_buff2.f]
    WRITE_S: [key_buff2.f]*/
        /*READ_S: [key_array.f, key_buff2, key_array]
        WRITE_S: [key_buff2.f]*/
        key_buff2[i] = key_array[i];
        /*READ_S: [key_buff2, key_buff2.f]
        WRITE_S: [key_buff2.f]*/
        prv_buff1[key_buff2[i]]++;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < (1 << 11) - 1; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        prv_buff1[i + 1] += prv_buff1[i];
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush CRITICAL_START
    /*READ_S: [key_buff1.f, key_buff1]
    WRITE_S: [key_buff1.f]*/
#pragma omp critical
    {
    /*READ_S: [key_buff1.f, key_buff1]
    WRITE_S: [key_buff1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [key_buff1.f, key_buff1]
        WRITE_S: [key_buff1.f]*/
        for (i = 0; i < (1 << 11); i++) {
        /*READ_S: [key_buff1.f, key_buff1]
        WRITE_S: [key_buff1.f]*/
            /*READ_S: [key_buff1.f, key_buff1]
            WRITE_S: [key_buff1.f]*/
            key_buff1[i] += prv_buff1[i];
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
    /*READ_S: [passed_verification, partial_verify_vals, partial_verify_vals.f, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f, _imopVarPre35]
    WRITE_S: [passed_verification, key_buff_ptr_global]*/
#pragma omp master
    {
    /*READ_S: [passed_verification, partial_verify_vals, partial_verify_vals.f, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f, _imopVarPre35]
    WRITE_S: [passed_verification, key_buff_ptr_global]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [passed_verification, partial_verify_vals, partial_verify_vals.f, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f, _imopVarPre35]
        WRITE_S: [passed_verification]*/
        for (i = 0; i < 5; i++) {
        /*READ_S: [passed_verification, partial_verify_vals, partial_verify_vals.f, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f, _imopVarPre35]
        WRITE_S: [passed_verification]*/
            /*READ_S: [partial_verify_vals, partial_verify_vals.f]
            WRITE_S: []*/
            k = partial_verify_vals[i];
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre35;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre35 = 0 <= k;
            /*READ_S: [_imopVarPre35]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre35]
            WRITE_S: []*/
            if (_imopVarPre35) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre35 = k <= (1 << 16) - 1;
            }
            /*READ_S: [_imopVarPre35]
            WRITE_S: []*/
            /*READ_S: [passed_verification, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f, _imopVarPre35]
            WRITE_S: [passed_verification]*/
            if (_imopVarPre35) {
            /*READ_S: [passed_verification, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
            WRITE_S: [passed_verification]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [passed_verification, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                WRITE_S: [passed_verification]*/
                switch ('S') {
                /*READ_S: [passed_verification, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                WRITE_S: [passed_verification]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                    case 'S': if (i <= 2) {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] + iteration) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    } else {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                    case 'W': if (i < 2) {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] + (iteration - 2)) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    } else {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                    case 'A': if (i <= 2) {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] + (iteration - 1)) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    } else {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] - (iteration - 1)) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                    /*READ_S: []
                    WRITE_S: []*/
                    case 'B': ;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre36;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre37;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre36 = i == 1;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    if (!_imopVarPre36) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre37 = i == 2;
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        if (!_imopVarPre37) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre37 = i == 4;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre36 = _imopVarPre37;
                    }
                    /*READ_S: [_imopVarPre36]
                    WRITE_S: []*/
                    /*READ_S: [passed_verification, _imopVarPre36, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                    if (_imopVarPre36) {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] + iteration) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    } else {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                    case 'C': if (i <= 2) {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] + iteration) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    } else {
                    /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                    WRITE_S: [passed_verification]*/
                        /*READ_S: [key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: []*/
                        /*READ_S: [passed_verification, printf, key_buff1.f, key_buff1, test_rank_array, test_rank_array.f]
                        WRITE_S: [passed_verification]*/
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                        /*READ_S: [printf]
                        WRITE_S: []*/
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*READ_S: []
                            WRITE_S: []*/
                        } else {
                        /*READ_S: [passed_verification]
                        WRITE_S: [passed_verification]*/
                            /*READ_S: [passed_verification]
                            WRITE_S: [passed_verification]*/
                            passed_verification++;
                        }
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [key_buff1]
        WRITE_S: [key_buff_ptr_global]*/
        if (iteration == 10) {
        /*READ_S: [key_buff1]
        WRITE_S: [key_buff_ptr_global]*/
            /*READ_S: [key_buff1]
            WRITE_S: [key_buff_ptr_global]*/
            key_buff_ptr_global = key_buff1;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [a, S_test_rank_array, W_test_index_array, test_rank_array.f, timer_read, partial_verify_vals.f, test_index_array.f, T46, A_test_rank_array, rank, key_buff1, A_test_index_array, S_test_rank_array.f, W_test_index_array.f, B_test_rank_array, B_test_index_array, C_test_index_array.f, key_array, test_rank_array, full_verify, A_test_rank_array.f, passed_verification, partial_verify_vals, T23, timer_stop, seed, timer_start, _imopVarPre35, S_test_index_array.f, KS, key_array.f, B_test_rank_array.f, B_test_index_array.f, timer_clear, C_test_index_array, R46, W_test_rank_array, i, C_test_rank_array.f, key_buff2.f, S_test_index_array, printf, create_seq, test_index_array, W_test_rank_array.f, randlc, R23, C_test_rank_array, c_print_results, key_buff1.f, key_buff2, A_test_index_array.f, key_buff_ptr_global]
WRITE_S: [KS, key_array.f, test_rank_array.f, passed_verification, R46, partial_verify_vals.f, test_index_array.f, T23, R23, seed, T46, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
int main(int argc, char **argv) {
/*READ_S: [a, S_test_rank_array, W_test_index_array, test_rank_array.f, timer_read, partial_verify_vals.f, test_index_array.f, T46, A_test_rank_array, rank, key_buff1, A_test_index_array, S_test_rank_array.f, W_test_index_array.f, B_test_rank_array, B_test_index_array, C_test_index_array.f, key_array, test_rank_array, full_verify, A_test_rank_array.f, passed_verification, partial_verify_vals, T23, timer_stop, seed, timer_start, _imopVarPre35, S_test_index_array.f, KS, key_array.f, B_test_rank_array.f, B_test_index_array.f, timer_clear, C_test_index_array, R46, W_test_rank_array, i, C_test_rank_array.f, key_buff2.f, S_test_index_array, printf, create_seq, test_index_array, W_test_rank_array.f, randlc, R23, C_test_rank_array, c_print_results, key_buff1.f, key_buff2, A_test_index_array.f, key_buff_ptr_global]
WRITE_S: [KS, key_array.f, test_rank_array.f, passed_verification, R46, partial_verify_vals.f, test_index_array.f, T23, R23, seed, T46, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int iteration;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    double timecounter;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [S_test_index_array.f, S_test_index_array, W_test_index_array.f, S_test_rank_array.f, B_test_index_array, B_test_rank_array, W_test_index_array, B_test_index_array.f, B_test_rank_array.f, S_test_rank_array, C_test_index_array.f, test_rank_array, C_test_index_array, A_test_rank_array.f, test_index_array, W_test_rank_array.f, W_test_rank_array, C_test_rank_array, C_test_rank_array.f, A_test_rank_array, A_test_index_array.f, A_test_index_array]
    WRITE_S: [test_index_array.f, test_rank_array.f]*/
    for (i = 0; i < 5; i++) {
    /*READ_S: [S_test_index_array.f, S_test_index_array, W_test_index_array.f, S_test_rank_array.f, B_test_index_array, B_test_rank_array, W_test_index_array, B_test_index_array.f, B_test_rank_array.f, S_test_rank_array, C_test_index_array.f, test_rank_array, C_test_index_array, A_test_rank_array.f, test_index_array, W_test_rank_array.f, W_test_rank_array, C_test_rank_array, C_test_rank_array.f, A_test_rank_array, A_test_index_array.f, A_test_index_array]
    WRITE_S: [test_index_array.f, test_rank_array.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [S_test_index_array.f, S_test_index_array, W_test_index_array.f, S_test_rank_array.f, B_test_index_array, B_test_rank_array, W_test_index_array, B_test_index_array.f, B_test_rank_array.f, S_test_rank_array, C_test_index_array.f, test_rank_array, C_test_index_array, A_test_rank_array.f, test_index_array, W_test_rank_array.f, W_test_rank_array, C_test_rank_array, C_test_rank_array.f, A_test_rank_array, A_test_index_array.f, A_test_index_array]
        WRITE_S: [test_index_array.f, test_rank_array.f]*/
        switch ('S') {
        /*READ_S: [S_test_index_array.f, S_test_index_array, W_test_index_array.f, S_test_rank_array.f, B_test_index_array, B_test_rank_array, W_test_index_array, B_test_index_array.f, B_test_rank_array.f, S_test_rank_array, C_test_index_array.f, test_rank_array, C_test_index_array, A_test_rank_array.f, test_index_array, W_test_rank_array.f, W_test_rank_array, C_test_rank_array, C_test_rank_array.f, A_test_rank_array, A_test_index_array.f, A_test_index_array]
        WRITE_S: [test_index_array.f, test_rank_array.f]*/
            /*READ_S: [test_index_array, S_test_index_array.f, S_test_index_array]
            WRITE_S: [test_index_array.f]*/
            case 'S': test_index_array[i] = S_test_index_array[i];
            /*READ_S: [S_test_rank_array.f, S_test_rank_array, test_rank_array]
            WRITE_S: [test_rank_array.f]*/
            test_rank_array[i] = S_test_rank_array[i];
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [test_index_array, A_test_index_array.f, A_test_index_array]
            WRITE_S: [test_index_array.f]*/
            case 'A': test_index_array[i] = A_test_index_array[i];
            /*READ_S: [A_test_rank_array.f, A_test_rank_array, test_rank_array]
            WRITE_S: [test_rank_array.f]*/
            test_rank_array[i] = A_test_rank_array[i];
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [test_index_array, W_test_index_array.f, W_test_index_array]
            WRITE_S: [test_index_array.f]*/
            case 'W': test_index_array[i] = W_test_index_array[i];
            /*READ_S: [W_test_rank_array.f, W_test_rank_array, test_rank_array]
            WRITE_S: [test_rank_array.f]*/
            test_rank_array[i] = W_test_rank_array[i];
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [test_index_array, B_test_index_array, B_test_index_array.f]
            WRITE_S: [test_index_array.f]*/
            case 'B': test_index_array[i] = B_test_index_array[i];
            /*READ_S: [B_test_rank_array, B_test_rank_array.f, test_rank_array]
            WRITE_S: [test_rank_array.f]*/
            test_rank_array[i] = B_test_rank_array[i];
            /*READ_S: []
            WRITE_S: []*/
            break;
            /*READ_S: [test_index_array, C_test_index_array.f, C_test_index_array]
            WRITE_S: [test_index_array.f]*/
            case 'C': test_index_array[i] = C_test_index_array[i];
            /*READ_S: [C_test_rank_array, C_test_rank_array.f, test_rank_array]
            WRITE_S: [test_rank_array.f]*/
            test_rank_array[i] = C_test_rank_array[i];
            /*READ_S: []
            WRITE_S: []*/
            break;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n\n NAS Parallel Benchmarks 2.3 OpenMP C version" " - IS Benchmark\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre39;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre39 = (1 << 16);
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Size:  %d  (class %c)\n", _imopVarPre39, 'S');
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Iterations:   %d\n", 10);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [create_seq]
    WRITE_S: []*/
    create_seq(314159265.00, 1220703125.00);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, partial_verify_vals, passed_verification, test_index_array, partial_verify_vals.f, test_index_array.f, i, rank, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
    WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
#pragma omp parallel
    {
    /*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, partial_verify_vals, passed_verification, test_index_array, partial_verify_vals.f, test_index_array.f, i, rank, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
    WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
        /*READ_S: [rank]
        WRITE_S: []*/
        rank(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: [passed_verification]*/
    passed_verification = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if ('S' != 'S') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("\n   iteration\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, partial_verify_vals, passed_verification, test_index_array, partial_verify_vals.f, test_index_array.f, i, rank, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
    WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
#pragma omp parallel private(iteration)
    {
    /*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, partial_verify_vals, passed_verification, test_index_array, partial_verify_vals.f, test_index_array.f, i, rank, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
    WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, partial_verify_vals, passed_verification, test_index_array, partial_verify_vals.f, test_index_array.f, i, rank, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
        WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
        for (iteration = 1; iteration <= 10; iteration++) {
        /*READ_S: [printf, key_array.f, key_array, test_rank_array, test_rank_array.f, partial_verify_vals, passed_verification, test_index_array, partial_verify_vals.f, test_index_array.f, i, rank, key_buff1.f, key_buff2, key_buff1, key_buff2.f, _imopVarPre35]
        WRITE_S: [passed_verification, partial_verify_vals.f, key_array.f, key_buff1.f, key_buff2.f, key_buff_ptr_global]*/
            /*READ_S: [printf]
            WRITE_S: []*/
#pragma omp master
            {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [printf]
                WRITE_S: []*/
                if ('S' != 'S') {
                /*READ_S: [printf]
                WRITE_S: []*/
                    /*READ_S: [printf]
                    WRITE_S: []*/
                    printf("        %d\n", iteration);
                    /*READ_S: []
                    WRITE_S: []*/
                }
            }
            /*READ_S: [rank]
            WRITE_S: []*/
            rank(iteration);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    timer_stop(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read]
    WRITE_S: []*/
    timecounter = timer_read(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [full_verify]
    WRITE_S: []*/
    full_verify();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [passed_verification]
    WRITE_S: []*/
    /*READ_S: [passed_verification]
    WRITE_S: [passed_verification]*/
    if (passed_verification != 5 * 10 + 1) {
    /*READ_S: []
    WRITE_S: [passed_verification]*/
        /*READ_S: []
        WRITE_S: [passed_verification]*/
        passed_verification = 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre42;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre43;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre42 = ((double) (10 * (1 << 16))) / timecounter / 1000000.;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre43 = (1 << 16);
    /*READ_S: [passed_verification, c_print_results]
    WRITE_S: []*/
    c_print_results("IS", 'S', _imopVarPre43, 0, 0, 10, nthreads, timecounter, _imopVarPre42, "keys ranked", passed_verification, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randlc");
    /*READ_S: []
    WRITE_S: []*/
}
