
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
extern void timer_clear(int );
/*[]*/
extern void timer_start(int );
/*[]*/
extern void timer_stop(int );
/*[]*/
extern double timer_read(int );
/*[]*/
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
/*[]*/
typedef int INT_TYPE;
/*[]*/
INT_TYPE *key_buff_ptr_global;
/*[]*/
int passed_verification;
/*[]*/
INT_TYPE key_array[(1 << 16)];
/*[]*/
INT_TYPE key_buff1[(1 << 16)];
/*[]*/
INT_TYPE key_buff2[(1 << 16)];
/*[]*/
INT_TYPE partial_verify_vals[5];
/*[]*/
INT_TYPE test_index_array[5];
/*[]*/
INT_TYPE test_rank_array[5];
/*[]*/
INT_TYPE S_test_index_array[5] = {48427, 17148 , 23627 , 62548 , 4431};
/*[]*/
INT_TYPE S_test_rank_array[5] = {0, 18 , 346 , 64917 , 65463};
/*[]*/
INT_TYPE W_test_index_array[5] = {357773, 934767 , 875723 , 898999 , 404505};
/*[]*/
INT_TYPE W_test_rank_array[5] = {1249, 11698 , 1039987 , 1043896 , 1048018};
/*[]*/
INT_TYPE A_test_index_array[5] = {2112377, 662041 , 5336171 , 3642833 , 4250760};
/*[]*/
INT_TYPE A_test_rank_array[5] = {104, 17523 , 123928 , 8288932 , 8388264};
/*[]*/
INT_TYPE B_test_index_array[5] = {41869, 812306 , 5102857 , 18232239 , 26860214};
/*[]*/
INT_TYPE B_test_rank_array[5] = {33422937, 10244 , 59149 , 33135281 , 99};
/*[]*/
INT_TYPE C_test_index_array[5] = {44172927, 72999161 , 74326391 , 129606274 , 21736814};
/*[]*/
INT_TYPE C_test_rank_array[5] = {61147, 882988 , 266290 , 133997595 , 133525895};
/*[]*/
double randlc(double *X, double *A);
/*[]*/
void full_verify(void );
/*[]*/
/*[]*/
/*[]*/
double randlc(double *X, double *A) {
/*[]*/
    /*[]*/
    static int KS = 0;
    /*[]*/
    static double R23;
    /*[]*/
    static double R46;
    /*[]*/
    static double T23;
    /*[]*/
    static double T46;
    /*[]*/
    double T1;
    /*[]*/
    double T2;
    /*[]*/
    double T3;
    /*[]*/
    double T4;
    /*[]*/
    double A1;
    /*[]*/
    double A2;
    /*[]*/
    double X1;
    /*[]*/
    double X2;
    /*[]*/
    double Z;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    /*[]*/
    if (KS == 0) {
    /*[]*/
        /*[]*/
        R23 = 1.0;
        /*[]*/
        R46 = 1.0;
        /*[]*/
        T23 = 1.0;
        /*[]*/
        T46 = 1.0;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i <= 23; i++) {
        /*[]*/
            /*[]*/
            R23 = 0.50 * R23;
            /*[]*/
            T23 = 2.0 * T23;
        }
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i <= 46; i++) {
        /*[]*/
            /*[]*/
            R46 = 0.50 * R46;
            /*[]*/
            T46 = 2.0 * T46;
        }
        /*[]*/
        KS = 1;
    }
    /*[]*/
    T1 = R23 * *A;
    /*[]*/
    j = T1;
    /*[]*/
    A1 = j;
    /*[]*/
    A2 = *A - T23 * A1;
    /*[]*/
    T1 = R23 * *X;
    /*[]*/
    j = T1;
    /*[]*/
    X1 = j;
    /*[]*/
    X2 = *X - T23 * X1;
    /*[]*/
    T1 = A1 * X2 + A2 * X1;
    /*[]*/
    j = R23 * T1;
    /*[]*/
    T2 = j;
    /*[]*/
    Z = T1 - T23 * T2;
    /*[]*/
    T3 = T23 * Z + A2 * X2;
    /*[]*/
    j = R46 * T3;
    /*[]*/
    T4 = j;
    /*[]*/
    *X = T3 - T46 * T4;
    /*[]*/
    return (R46 * *X);
}
/*[]*/
/*[]*/
/*[]*/
void create_seq(double seed, double a) {
/*[]*/
    /*[]*/
    double x;
    /*[]*/
    int i;
    /*[]*/
    int k;
    /*[]*/
    k = (1 << 11) / 4;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < (1 << 16); i++) {
    /*[]*/
        /*[]*/
        double *_imopVarPre16;
        /*[]*/
        double *_imopVarPre17;
        /*[]*/
        double _imopVarPre18;
        /*[]*/
        _imopVarPre16 = &a;
        /*[]*/
        _imopVarPre17 = &seed;
        /*[]*/
        _imopVarPre18 = randlc(_imopVarPre17, _imopVarPre16);
        /*[]*/
        /*[]*/
        x = _imopVarPre18;
        /*[]*/
        double *_imopVarPre21;
        /*[]*/
        double *_imopVarPre22;
        /*[]*/
        double _imopVarPre23;
        /*[]*/
        _imopVarPre21 = &a;
        /*[]*/
        _imopVarPre22 = &seed;
        /*[]*/
        _imopVarPre23 = randlc(_imopVarPre22, _imopVarPre21);
        /*[]*/
        /*[]*/
        x += _imopVarPre23;
        /*[]*/
        double *_imopVarPre26;
        /*[]*/
        double *_imopVarPre27;
        /*[]*/
        double _imopVarPre28;
        /*[]*/
        _imopVarPre26 = &a;
        /*[]*/
        _imopVarPre27 = &seed;
        /*[]*/
        _imopVarPre28 = randlc(_imopVarPre27, _imopVarPre26);
        /*[]*/
        /*[]*/
        x += _imopVarPre28;
        /*[]*/
        double *_imopVarPre31;
        /*[]*/
        double *_imopVarPre32;
        /*[]*/
        double _imopVarPre33;
        /*[]*/
        _imopVarPre31 = &a;
        /*[]*/
        _imopVarPre32 = &seed;
        /*[]*/
        _imopVarPre33 = randlc(_imopVarPre32, _imopVarPre31);
        /*[]*/
        /*[]*/
        x += _imopVarPre33;
        /*[]*/
        key_array[i] = k * x;
    }
}
/*[]*/
void full_verify() {
/*[]*/
    /*[]*/
    INT_TYPE i;
    /*[]*/
    INT_TYPE j;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < (1 << 16); i++) {
    /*[]*/
        /*[]*/
        key_array[--key_buff_ptr_global[key_buff2[i]]] = key_buff2[i];
    }
    /*[]*/
    j = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 1; i < (1 << 16); i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (key_array[i - 1] > key_array[i]) {
        /*[]*/
            /*[]*/
            j++;
        }
    }
    /*[]*/
    /*[]*/
    if (j != 0) {
    /*[]*/
        /*[]*/
        printf("Full_verify: number of keys out of sort: %d\n", j);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        passed_verification++;
    }
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int iteration;
    /*[]*/
    int nthreads = 1;
    /*[]*/
    double timecounter;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 5; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        switch ('S') {
        /*[]*/
            /*[]*/
            case 'S': test_index_array[i] = S_test_index_array[i];
            /*[]*/
            test_rank_array[i] = S_test_rank_array[i];
            /*[]*/
            break;
            /*[]*/
            case 'A': test_index_array[i] = A_test_index_array[i];
            /*[]*/
            test_rank_array[i] = A_test_rank_array[i];
            /*[]*/
            break;
            /*[]*/
            case 'W': test_index_array[i] = W_test_index_array[i];
            /*[]*/
            test_rank_array[i] = W_test_rank_array[i];
            /*[]*/
            break;
            /*[]*/
            case 'B': test_index_array[i] = B_test_index_array[i];
            /*[]*/
            test_rank_array[i] = B_test_rank_array[i];
            /*[]*/
            break;
            /*[]*/
            case 'C': test_index_array[i] = C_test_index_array[i];
            /*[]*/
            test_rank_array[i] = C_test_rank_array[i];
            /*[]*/
            break;
        }
    }
    /*[]*/
    ;
    /*[]*/
    printf("\n\n NAS Parallel Benchmarks 2.3 OpenMP C version" " - IS Benchmark\n\n");
    /*[]*/
    /*[]*/
    int _imopVarPre39;
    /*[]*/
    _imopVarPre39 = (1 << 16);
    /*[]*/
    printf(" Size:  %d  (class %c)\n", _imopVarPre39, 'S');
    /*[]*/
    /*[]*/
    printf(" Iterations:   %d\n", 10);
    /*[]*/
    /*[]*/
    timer_clear(0);
    /*[]*/
    /*[]*/
    create_seq(314159265.00, 1220703125.00);
    /*[]*/
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
        /*[1]*/
        int iteration_imopVar76;
        /*[1]*/
        iteration_imopVar76 = 1;
        /*[1]*/
        INT_TYPE i_imopVar77;
        /*[1]*/
        INT_TYPE k;
        /*[1]*/
        11 - 9;
        /*[1]*/
        INT_TYPE prv_buff1[(1 << 11)];
        /*[1]*/
#pragma omp master
        {
        /*[1]*/
            /*[1]*/
            key_array[iteration_imopVar76] = iteration_imopVar76;
            /*[1]*/
            key_array[iteration_imopVar76 + 10] = (1 << 11) - iteration_imopVar76;
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (i_imopVar77 = 0; i_imopVar77 < 5; i_imopVar77++) {
            /*[1]*/
                /*[1]*/
                partial_verify_vals[i_imopVar77] = key_array[test_index_array[i_imopVar77]];
            }
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (i_imopVar77 = 0; i_imopVar77 < (1 << 11); i_imopVar77++) {
            /*[1]*/
                /*[1]*/
                key_buff1[i_imopVar77] = 0;
            }
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
        /*[2]*/
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (i_imopVar77 = 0; i_imopVar77 < (1 << 11); i_imopVar77++) {
        /*[2]*/
            /*[2]*/
            prv_buff1[i_imopVar77] = 0;
        }
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (i_imopVar77 = 0; i_imopVar77 < (1 << 16); i_imopVar77++) {
        /*[2]*/
            /*[2]*/
            key_buff2[i_imopVar77] = key_array[i_imopVar77];
            /*[2]*/
            prv_buff1[key_buff2[i_imopVar77]]++;
        }
        /*[2]*/
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (i_imopVar77 = 0; i_imopVar77 < (1 << 11) - 1; i_imopVar77++) {
        /*[2]*/
            /*[2]*/
            prv_buff1[i_imopVar77 + 1] += prv_buff1[i_imopVar77];
        }
        /*[2]*/
        // #pragma omp dummyFlush CRITICAL_START
        /*[2]*/
#pragma omp critical
        {
        /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            for (i_imopVar77 = 0; i_imopVar77 < (1 << 11); i_imopVar77++) {
            /*[2]*/
                /*[2]*/
                key_buff1[i_imopVar77] += prv_buff1[i_imopVar77];
            }
        }
        /*[2]*/
        // #pragma omp dummyFlush CRITICAL_END
        /*[2]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2]*/
#pragma omp barrier
        /*[3]*/
#pragma omp master
        {
        /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (i_imopVar77 = 0; i_imopVar77 < 5; i_imopVar77++) {
            /*[3]*/
                /*[3]*/
                k = partial_verify_vals[i_imopVar77];
                /*[3]*/
                int _imopVarPre35;
                /*[3]*/
                _imopVarPre35 = 0 <= k;
                /*[3]*/
                /*[3]*/
                if (_imopVarPre35) {
                /*[3]*/
                    /*[3]*/
                    _imopVarPre35 = k <= (1 << 16) - 1;
                }
                /*[3]*/
                /*[3]*/
                if (_imopVarPre35) {
                /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    switch ('S') {
                    /*[]*/
                        /*[3]*/
                        /*[3]*/
                        case 'S': if (i_imopVar77 <= 2) {
                        /*[3]*/
                            /*[3]*/
                            /*[3]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] + iteration_imopVar76) {
                            /*[3]*/
                                /*[3]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[3]*/
                            } else {
                            /*[3]*/
                                /*[3]*/
                                passed_verification++;
                            }
                        } else {
                        /*[3]*/
                            /*[3]*/
                            /*[3]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] - iteration_imopVar76) {
                            /*[3]*/
                                /*[3]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[3]*/
                            } else {
                            /*[3]*/
                                /*[3]*/
                                passed_verification++;
                            }
                        }
                        /*[3]*/
                        break;
                        /*[]*/
                        /*[]*/
                        case 'W': if (i_imopVar77 < 2) {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] + (iteration_imopVar76 - 2)) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        } else {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] - iteration_imopVar76) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        }
                        /*[]*/
                        break;
                        /*[]*/
                        /*[]*/
                        case 'A': if (i_imopVar77 <= 2) {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] + (iteration_imopVar76 - 1)) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        } else {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] - (iteration_imopVar76 - 1)) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        }
                        /*[]*/
                        break;
                        /*[]*/
                        case 'B': ;
                        /*[]*/
                        int _imopVarPre36;
                        /*[]*/
                        int _imopVarPre37;
                        /*[]*/
                        _imopVarPre36 = i_imopVar77 == 1;
                        /*[]*/
                        /*[]*/
                        if (!_imopVarPre36) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre37 = i_imopVar77 == 2;
                            /*[]*/
                            /*[]*/
                            if (!_imopVarPre37) {
                            /*[]*/
                                /*[]*/
                                _imopVarPre37 = i_imopVar77 == 4;
                            }
                            /*[]*/
                            _imopVarPre36 = _imopVarPre37;
                        }
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre36) {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] + iteration_imopVar76) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        } else {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] - iteration_imopVar76) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        }
                        /*[]*/
                        break;
                        /*[]*/
                        /*[]*/
                        case 'C': if (i_imopVar77 <= 2) {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] + iteration_imopVar76) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        } else {
                        /*[]*/
                            /*[]*/
                            /*[]*/
                            if (key_buff1[k - 1] != test_rank_array[i_imopVar77] - iteration_imopVar76) {
                            /*[]*/
                                /*[]*/
                                printf("Failed partial verification: " "iteration %d, test key %d\n", iteration_imopVar76, i_imopVar77);
                                /*[]*/
                            } else {
                            /*[]*/
                                /*[]*/
                                passed_verification++;
                            }
                        }
                        /*[]*/
                        break;
                    }
                }
            }
            /*[3]*/
            /*[3]*/
            if (iteration_imopVar76 == 10) {
            /*[3]*/
                /*[3]*/
                key_buff_ptr_global = key_buff1;
            }
        }
    }
    /*[]*/
    passed_verification = 0;
    /*[]*/
    /*[]*/
    if ('S' != 'S') {
    /*[]*/
        /*[]*/
        printf("\n   iteration\n");
        /*[]*/
    }
    /*[]*/
    timer_start(0);
    /*[]*/
    /*[4]*/
#pragma omp parallel private(iteration)
    {
    /*[4]*/
        /*[4]*/
        /*[4, 5]*/
        /*[5]*/
        /*[4]*/
        for (iteration = 1; iteration <= 10; iteration++) {
        /*[4, 5]*/
            /*[4, 5]*/
#pragma omp master
            {
            /*[4, 5]*/
                /*[4, 5]*/
                /*[4, 5]*/
                if ('S' != 'S') {
                /*[4, 5]*/
                    /*[4, 5]*/
                    printf("        %d\n", iteration);
                    /*[4, 5]*/
                }
            }
            /*[4, 5]*/
            INT_TYPE i_imopVar0;
            /*[4, 5]*/
            INT_TYPE k;
            /*[4, 5]*/
            11 - 9;
            /*[4, 5]*/
            INT_TYPE prv_buff1[(1 << 11)];
            /*[4, 5]*/
#pragma omp master
            {
            /*[4, 5]*/
                /*[4, 5]*/
                key_array[iteration] = iteration;
                /*[4, 5]*/
                key_array[iteration + 10] = (1 << 11) - iteration;
                /*[4, 5]*/
                /*[4, 5]*/
                /*[4, 5]*/
                /*[4, 5]*/
                for (i_imopVar0 = 0; i_imopVar0 < 5; i_imopVar0++) {
                /*[4, 5]*/
                    /*[4, 5]*/
                    partial_verify_vals[i_imopVar0] = key_array[test_index_array[i_imopVar0]];
                }
                /*[4, 5]*/
                /*[4, 5]*/
                /*[4, 5]*/
                /*[4, 5]*/
                for (i_imopVar0 = 0; i_imopVar0 < (1 << 11); i_imopVar0++) {
                /*[4, 5]*/
                    /*[4, 5]*/
                    key_buff1[i_imopVar0] = 0;
                }
            }
            /*[4, 5]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4, 5]*/
#pragma omp barrier
            /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (i_imopVar0 = 0; i_imopVar0 < (1 << 11); i_imopVar0++) {
            /*[6]*/
                /*[6]*/
                prv_buff1[i_imopVar0] = 0;
            }
            /*[6]*/
#pragma omp for nowait
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (i_imopVar0 = 0; i_imopVar0 < (1 << 16); i_imopVar0++) {
            /*[6]*/
                /*[6]*/
                key_buff2[i_imopVar0] = key_array[i_imopVar0];
                /*[6]*/
                prv_buff1[key_buff2[i_imopVar0]]++;
            }
            /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (i_imopVar0 = 0; i_imopVar0 < (1 << 11) - 1; i_imopVar0++) {
            /*[6]*/
                /*[6]*/
                prv_buff1[i_imopVar0 + 1] += prv_buff1[i_imopVar0];
            }
            /*[6]*/
            // #pragma omp dummyFlush CRITICAL_START
            /*[6]*/
#pragma omp critical
            {
            /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                for (i_imopVar0 = 0; i_imopVar0 < (1 << 11); i_imopVar0++) {
                /*[6]*/
                    /*[6]*/
                    key_buff1[i_imopVar0] += prv_buff1[i_imopVar0];
                }
            }
            /*[6]*/
            // #pragma omp dummyFlush CRITICAL_END
            /*[6]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6]*/
#pragma omp barrier
            /*[5]*/
#pragma omp master
            {
            /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                /*[5]*/
                for (i_imopVar0 = 0; i_imopVar0 < 5; i_imopVar0++) {
                /*[5]*/
                    /*[5]*/
                    k = partial_verify_vals[i_imopVar0];
                    /*[5]*/
                    int _imopVarPre35;
                    /*[5]*/
                    _imopVarPre35 = 0 <= k;
                    /*[5]*/
                    /*[5]*/
                    if (_imopVarPre35) {
                    /*[5]*/
                        /*[5]*/
                        _imopVarPre35 = k <= (1 << 16) - 1;
                    }
                    /*[5]*/
                    /*[5]*/
                    if (_imopVarPre35) {
                    /*[5]*/
                        /*[5]*/
                        /*[5]*/
                        switch ('S') {
                        /*[]*/
                            /*[5]*/
                            /*[5]*/
                            case 'S': if (i_imopVar0 <= 2) {
                            /*[5]*/
                                /*[5]*/
                                /*[5]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] + iteration) {
                                /*[5]*/
                                    /*[5]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[5]*/
                                } else {
                                /*[5]*/
                                    /*[5]*/
                                    passed_verification++;
                                }
                            } else {
                            /*[5]*/
                                /*[5]*/
                                /*[5]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] - iteration) {
                                /*[5]*/
                                    /*[5]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[5]*/
                                } else {
                                /*[5]*/
                                    /*[5]*/
                                    passed_verification++;
                                }
                            }
                            /*[5]*/
                            break;
                            /*[]*/
                            /*[]*/
                            case 'W': if (i_imopVar0 < 2) {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] + (iteration - 2)) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            } else {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] - iteration) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            }
                            /*[]*/
                            break;
                            /*[]*/
                            /*[]*/
                            case 'A': if (i_imopVar0 <= 2) {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] + (iteration - 1)) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            } else {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] - (iteration - 1)) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            }
                            /*[]*/
                            break;
                            /*[]*/
                            case 'B': ;
                            /*[]*/
                            int _imopVarPre36;
                            /*[]*/
                            int _imopVarPre37;
                            /*[]*/
                            _imopVarPre36 = i_imopVar0 == 1;
                            /*[]*/
                            /*[]*/
                            if (!_imopVarPre36) {
                            /*[]*/
                                /*[]*/
                                _imopVarPre37 = i_imopVar0 == 2;
                                /*[]*/
                                /*[]*/
                                if (!_imopVarPre37) {
                                /*[]*/
                                    /*[]*/
                                    _imopVarPre37 = i_imopVar0 == 4;
                                }
                                /*[]*/
                                _imopVarPre36 = _imopVarPre37;
                            }
                            /*[]*/
                            /*[]*/
                            if (_imopVarPre36) {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] + iteration) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            } else {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] - iteration) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            }
                            /*[]*/
                            break;
                            /*[]*/
                            /*[]*/
                            case 'C': if (i_imopVar0 <= 2) {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] + iteration) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            } else {
                            /*[]*/
                                /*[]*/
                                /*[]*/
                                if (key_buff1[k - 1] != test_rank_array[i_imopVar0] - iteration) {
                                /*[]*/
                                    /*[]*/
                                    printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i_imopVar0);
                                    /*[]*/
                                } else {
                                /*[]*/
                                    /*[]*/
                                    passed_verification++;
                                }
                            }
                            /*[]*/
                            break;
                        }
                    }
                }
                /*[5]*/
                /*[5]*/
                if (iteration == 10) {
                /*[5]*/
                    /*[5]*/
                    key_buff_ptr_global = key_buff1;
                }
            }
        }
    }
    /*[]*/
    timer_stop(0);
    /*[]*/
    /*[]*/
    timecounter = timer_read(0);
    /*[]*/
    /*[]*/
    full_verify();
    /*[]*/
    /*[]*/
    /*[]*/
    if (passed_verification != 5 * 10 + 1) {
    /*[]*/
        /*[]*/
        passed_verification = 0;
    }
    /*[]*/
    double _imopVarPre42;
    /*[]*/
    int _imopVarPre43;
    /*[]*/
    _imopVarPre42 = ((double) (10 * (1 << 16))) / timecounter / 1000000.;
    /*[]*/
    _imopVarPre43 = (1 << 16);
    /*[]*/
    c_print_results("IS", 'S', _imopVarPre43, 0, 0, 10, nthreads, timecounter, _imopVarPre42, "keys ranked", passed_verification, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randlc");
    /*[]*/
}
