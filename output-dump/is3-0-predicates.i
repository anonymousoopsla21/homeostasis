struct __sFILEX ;
int printf(const char *restrict , ...);
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
typedef int INT_TYPE;
INT_TYPE *key_buff_ptr_global;
int passed_verification;
INT_TYPE key_array[(1 << 16)];
INT_TYPE key_buff1[(1 << 16)];
INT_TYPE key_buff2[(1 << 16)];
INT_TYPE partial_verify_vals[5];
INT_TYPE test_index_array[5];
INT_TYPE test_rank_array[5];
INT_TYPE S_test_index_array[5] = {48427, 17148 , 23627 , 62548 , 4431};
INT_TYPE S_test_rank_array[5] = {0, 18 , 346 , 64917 , 65463};
INT_TYPE W_test_index_array[5] = {357773, 934767 , 875723 , 898999 , 404505};
INT_TYPE W_test_rank_array[5] = {1249, 11698 , 1039987 , 1043896 , 1048018};
INT_TYPE A_test_index_array[5] = {2112377, 662041 , 5336171 , 3642833 , 4250760};
INT_TYPE A_test_rank_array[5] = {104, 17523 , 123928 , 8288932 , 8388264};
INT_TYPE B_test_index_array[5] = {41869, 812306 , 5102857 , 18232239 , 26860214};
INT_TYPE B_test_rank_array[5] = {33422937, 10244 , 59149 , 33135281 , 99};
INT_TYPE C_test_index_array[5] = {44172927, 72999161 , 74326391 , 129606274 , 21736814};
INT_TYPE C_test_rank_array[5] = {61147, 882988 , 266290 , 133997595 , 133525895};
double randlc(double *X, double *A);
void full_verify(void );
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double randlc(double *X, double *A) {
    /*OUT: {
    Reverse<--,>}*/
    static int KS = 0;
    /*OUT: {
    Reverse<--,>}*/
    static double R23;
    /*OUT: {
    Reverse<--,>}*/
    static double R46;
    /*OUT: {
    Reverse<--,>}*/
    static double T23;
    /*OUT: {
    Reverse<--,>}*/
    static double T46;
    /*OUT: {
    Reverse<--,>}*/
    double T1;
    /*OUT: {
    Reverse<--,>}*/
    double T2;
    /*OUT: {
    Reverse<--,>}*/
    double T3;
    /*OUT: {
    Reverse<--,>}*/
    double T4;
    /*OUT: {
    Reverse<--,>}*/
    double A1;
    /*OUT: {
    Reverse<--,>}*/
    double A2;
    /*OUT: {
    Reverse<--,>}*/
    double X1;
    /*OUT: {
    Reverse<--,>}*/
    double X2;
    /*OUT: {
    Reverse<--,>}*/
    double Z;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    if (KS == 0) {
        /*OUT: {
        Reverse<--, 77_0;>}*/
        R23 = 1.0;
        /*OUT: {
        Reverse<--, 77_0;>}*/
        R46 = 1.0;
        /*OUT: {
        Reverse<--, 77_0;>}*/
        T23 = 1.0;
        /*OUT: {
        Reverse<--, 77_0;>}*/
        T46 = 1.0;
        /*OUT: {
        Reverse<--, 77_0;>}*/
        /*OUT: {
        Reverse<--, 77_0;>}*/
        /*OUT: {
        Reverse<--, 87_0; 77_0;>}*/
        for (i = 1; i <= 23; i++) {
            /*OUT: {
            Reverse<--, 87_0; 77_0;>}*/
            R23 = 0.50 * R23;
            /*OUT: {
            Reverse<--, 87_0; 77_0;>}*/
            T23 = 2.0 * T23;
        }
        /*OUT: {
        Reverse<--, 87_1; 77_0;>}*/
        /*OUT: {
        Reverse<--, 87_1; 77_0;>}*/
        /*OUT: {
        Reverse<--, 94_0; 87_1; 77_0;>}*/
        for (i = 1; i <= 46; i++) {
            /*OUT: {
            Reverse<--, 94_0; 87_1; 77_0;>}*/
            R46 = 0.50 * R46;
            /*OUT: {
            Reverse<--, 94_0; 87_1; 77_0;>}*/
            T46 = 2.0 * T46;
        }
        /*OUT: {
        Reverse<--, 94_1; 87_1; 77_0;>}*/
        KS = 1;
    }
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    T1 = R23 * *A;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    j = T1;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    A1 = j;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    A2 = *A - T23 * A1;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    T1 = R23 * *X;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    j = T1;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    X1 = j;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    X2 = *X - T23 * X1;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    T1 = A1 * X2 + A2 * X1;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    j = R23 * T1;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    T2 = j;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    Z = T1 - T23 * T2;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    T3 = T23 * Z + A2 * X2;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    j = R46 * T3;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    T4 = j;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    *X = T3 - T46 * T4;
    /*OUT: {
    Reverse<--, 77_1;>
    Reverse<--, 94_1; 87_1; 77_0;>}*/
    return (R46 * *X);
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void create_seq(double seed, double a) {
    /*OUT: {
    Reverse<--,>}*/
    double x;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    k = (1 << 11) / 4;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 147_0;>}*/
    for (i = 0; i < (1 << 16); i++) {
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre16;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre17;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double _imopVarPre18;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre16 = &a;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre17 = &seed;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre18 = randlc(_imopVarPre17, _imopVarPre16);
        /*OUT: {
        Reverse<--, 147_0;>}*/
        /*OUT: {
        Reverse<--, 147_0;>}*/
        x = _imopVarPre18;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre21;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre22;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double _imopVarPre23;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre21 = &a;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre22 = &seed;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre23 = randlc(_imopVarPre22, _imopVarPre21);
        /*OUT: {
        Reverse<--, 147_0;>}*/
        /*OUT: {
        Reverse<--, 147_0;>}*/
        x += _imopVarPre23;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre26;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre27;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double _imopVarPre28;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre26 = &a;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre27 = &seed;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre28 = randlc(_imopVarPre27, _imopVarPre26);
        /*OUT: {
        Reverse<--, 147_0;>}*/
        /*OUT: {
        Reverse<--, 147_0;>}*/
        x += _imopVarPre28;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre31;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double *_imopVarPre32;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        double _imopVarPre33;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre31 = &a;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre32 = &seed;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        _imopVarPre33 = randlc(_imopVarPre32, _imopVarPre31);
        /*OUT: {
        Reverse<--, 147_0;>}*/
        /*OUT: {
        Reverse<--, 147_0;>}*/
        x += _imopVarPre33;
        /*OUT: {
        Reverse<--, 147_0;>}*/
        key_array[i] = k * x;
    }
}
void full_verify() {
    /*OUT: {
    Reverse<--,>}*/
    INT_TYPE i;
    /*OUT: {
    Reverse<--,>}*/
    INT_TYPE j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 216_0;>}*/
    for (i = 0; i < (1 << 16); i++) {
        /*OUT: {
        Reverse<--, 216_0;>}*/
        key_array[--key_buff_ptr_global[key_buff2[i]]] = key_buff2[i];
    }
    /*OUT: {
    Reverse<--, 216_1;>}*/
    j = 0;
    /*OUT: {
    Reverse<--, 216_1;>}*/
    /*OUT: {
    Reverse<--, 216_1;>}*/
    /*OUT: {
    Reverse<--, 228_0; 216_1;>}*/
    for (i = 1; i < (1 << 16); i++) {
        /*OUT: {
        Reverse<--, 228_0; 216_1;>}*/
        if (key_array[i - 1] > key_array[i]) {
            /*OUT: {
            Reverse<--, 232_0; 228_0; 216_1;>}*/
            j++;
        }
    }
    /*OUT: {
    Reverse<--, 228_1; 216_1;>}*/
    if (j != 0) {
        /*OUT: {
        Reverse<--, 235_0; 228_1; 216_1;>}*/
        printf("Full_verify: number of keys out of sort: %d\n", j);
        /*OUT: {
        Reverse<--, 235_0; 228_1; 216_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 235_1; 228_1; 216_1;>}*/
        passed_verification++;
    }
}
/*OUT: {
Reverse<--,>}*/
void rank(int iteration) {
    /*OUT: {
    Reverse<--,>}*/
    INT_TYPE i;
    /*OUT: {
    Reverse<--,>}*/
    INT_TYPE k;
    /*OUT: {
    Reverse<--,>}*/
    11 - 9;
    /*OUT: {
    Reverse<--,>}*/
    INT_TYPE prv_buff1[(1 << 11)];
#pragma omp master
    {
        /*OUT: {
        Reverse<--,>}*/
        key_array[iteration] = iteration;
        /*OUT: {
        Reverse<--,>}*/
        key_array[iteration + 10] = (1 << 11) - iteration;
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--, 258_0;>}*/
        for (i = 0; i < 5; i++) {
            /*OUT: {
            Reverse<--, 258_0;>}*/
            partial_verify_vals[i] = key_array[test_index_array[i]];
        }
        /*OUT: {
        Reverse<--, 258_1;>}*/
        /*OUT: {
        Reverse<--, 258_1;>}*/
        /*OUT: {
        Reverse<--, 267_0; 258_1;>}*/
        for (i = 0; i < (1 << 11); i++) {
            /*OUT: {
            Reverse<--, 267_0; 258_1;>}*/
            key_buff1[i] = 0;
        }
    }
    /*OUT: {
    Reverse<--, 267_1; 258_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<272,>}*/
#pragma omp barrier
    /*OUT: {
    Reverse<272,>}*/
    /*OUT: {
    Reverse<272,>}*/
    /*OUT: {
    Reverse<272, 275_0;>}*/
    for (i = 0; i < (1 << 11); i++) {
        /*OUT: {
        Reverse<272, 275_0;>}*/
        prv_buff1[i] = 0;
    }
#pragma omp for nowait
    /*OUT: {
    Reverse<272, 275_1;>}*/
    /*OUT: {
    Reverse<272, 275_1;>}*/
    /*OUT: {
    Reverse<272, 275_1;>}*/
    for (i = 0; i < (1 << 16); i++) {
        /*OUT: {
        Reverse<272, 275_1;>}*/
        key_buff2[i] = key_array[i];
        /*OUT: {
        Reverse<272, 275_1;>}*/
        prv_buff1[key_buff2[i]]++;
    }
    /*OUT: {
    Reverse<272, 275_1;>}*/
    /*OUT: {
    Reverse<272, 275_1;>}*/
    /*OUT: {
    Reverse<272, 296_0; 275_1;>}*/
    for (i = 0; i < (1 << 11) - 1; i++) {
        /*OUT: {
        Reverse<272, 296_0; 275_1;>}*/
        prv_buff1[i + 1] += prv_buff1[i];
    }
    /*OUT: {
    Reverse<272, 296_1; 275_1;>}*/
    // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
    {
        /*OUT: {
        Reverse<272, 296_1; 275_1;>}*/
        /*OUT: {
        Reverse<272, 296_1; 275_1;>}*/
        /*OUT: {
        Reverse<272, 304_0; 296_1; 275_1;>}*/
        for (i = 0; i < (1 << 11); i++) {
            /*OUT: {
            Reverse<272, 304_0; 296_1; 275_1;>}*/
            key_buff1[i] += prv_buff1[i];
        }
    }
    /*OUT: {
    Reverse<272, 304_1; 296_1; 275_1;>}*/
    // #pragma omp dummyFlush CRITICAL_END
    /*OUT: {
    Reverse<272, 304_1; 296_1; 275_1;>}*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: {
    Reverse<310,>}*/
#pragma omp barrier
#pragma omp master
    {
        /*OUT: {
        Reverse<310,>}*/
        /*OUT: {
        Reverse<310,>}*/
        /*OUT: {
        Reverse<310, 312_0;>}*/
        for (i = 0; i < 5; i++) {
            /*OUT: {
            Reverse<310, 312_0;>}*/
            k = partial_verify_vals[i];
            /*OUT: {
            Reverse<310, 312_0;>}*/
            int _imopVarPre35;
            /*OUT: {
            Reverse<310, 312_0;>}*/
            _imopVarPre35 = 0 <= k;
            /*OUT: {
            Reverse<310, 312_0;>}*/
            if (_imopVarPre35) {
                /*OUT: {
                Reverse<310, 320_0; 312_0;>}*/
                _imopVarPre35 = k <= (1 << 16) - 1;
            }
            /*OUT: {
            Reverse<310, 312_0;>}*/
            if (_imopVarPre35) {
                /*OUT: {
                Reverse<310, 324_0; 312_0;>}*/
                switch ('S') {
                    /*OUT: {
                    Reverse<310, 324_0; 312_0;>}*/
                    case 'S': if (i <= 2) {
                        /*OUT: {
                        Reverse<310, 326_0; 324_0; 312_0;>}*/
                        if (key_buff1[k - 1] != test_rank_array[i] + iteration) {
                            /*OUT: {
                            Reverse<310, 329_0; 326_0; 324_0; 312_0;>}*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*OUT: {
                            Reverse<310, 329_0; 326_0; 324_0; 312_0;>}*/
                        } else {
                            /*OUT: {
                            Reverse<310, 329_1; 326_0; 324_0; 312_0;>}*/
                            passed_verification++;
                        }
                    } else {
                        /*OUT: {
                        Reverse<310, 326_1; 324_0; 312_0;>}*/
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                            /*OUT: {
                            Reverse<310, 339_0; 326_1; 324_0; 312_0;>}*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*OUT: {
                            Reverse<310, 339_0; 326_1; 324_0; 312_0;>}*/
                        } else {
                            /*OUT: {
                            Reverse<310, 339_1; 326_1; 324_0; 312_0;>}*/
                            passed_verification++;
                        }
                    }
                    /*OUT: {
                    Reverse<310, 324_0; 312_0;>}*/
                    break;
                    case 'W': if (i < 2) {
                        if (key_buff1[k - 1] != test_rank_array[i] + (iteration - 2)) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    } else {
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    }
                    break;
                    case 'A': if (i <= 2) {
                        if (key_buff1[k - 1] != test_rank_array[i] + (iteration - 1)) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    } else {
                        if (key_buff1[k - 1] != test_rank_array[i] - (iteration - 1)) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    }
                    break;
                    case 'B': ;
                    int _imopVarPre36;
                    int _imopVarPre37;
                    _imopVarPre36 = i == 1;
                    if (!_imopVarPre36) {
                        _imopVarPre37 = i == 2;
                        if (!_imopVarPre37) {
                            _imopVarPre37 = i == 4;
                        }
                        _imopVarPre36 = _imopVarPre37;
                    }
                    if (_imopVarPre36) {
                        if (key_buff1[k - 1] != test_rank_array[i] + iteration) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    } else {
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    }
                    break;
                    case 'C': if (i <= 2) {
                        if (key_buff1[k - 1] != test_rank_array[i] + iteration) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    } else {
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                        } else {
                            passed_verification++;
                        }
                    }
                    break;
                }
            }
        }
        /*OUT: {
        Reverse<310, 312_1;>}*/
        if (iteration == 10) {
            /*OUT: {
            Reverse<310, 452_0; 312_1;>}*/
            key_buff_ptr_global = key_buff1;
        }
    }
}
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
    int iteration;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    double timecounter;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 462_0;>}*/
    for (i = 0; i < 5; i++) {
        /*OUT: {
        Reverse<--, 462_0;>}*/
        switch ('S') {
            /*OUT: {
            Reverse<--, 462_0;>}*/
            case 'S': test_index_array[i] = S_test_index_array[i];
            /*OUT: {
            Reverse<--, 462_0;>}*/
            test_rank_array[i] = S_test_rank_array[i];
            /*OUT: {
            Reverse<--, 462_0;>}*/
            break;
            case 'A': test_index_array[i] = A_test_index_array[i];
            test_rank_array[i] = A_test_rank_array[i];
            break;
            case 'W': test_index_array[i] = W_test_index_array[i];
            test_rank_array[i] = W_test_rank_array[i];
            break;
            case 'B': test_index_array[i] = B_test_index_array[i];
            test_rank_array[i] = B_test_rank_array[i];
            break;
            case 'C': test_index_array[i] = C_test_index_array[i];
            test_rank_array[i] = C_test_rank_array[i];
            break;
        }
    }
    /*OUT: {
    Reverse<--, 462_1;>}*/
    ;
    /*OUT: {
    Reverse<--, 462_1;>}*/
    printf("\n\n NAS Parallel Benchmarks 2.3 OpenMP C version" " - IS Benchmark\n\n");
    /*OUT: {
    Reverse<--, 462_1;>}*/
    /*OUT: {
    Reverse<--, 462_1;>}*/
    int _imopVarPre39;
    /*OUT: {
    Reverse<--, 462_1;>}*/
    _imopVarPre39 = (1 << 16);
    /*OUT: {
    Reverse<--, 462_1;>}*/
    printf(" Size:  %d  (class %c)\n", _imopVarPre39, 'S');
    /*OUT: {
    Reverse<--, 462_1;>}*/
    /*OUT: {
    Reverse<--, 462_1;>}*/
    printf(" Iterations:   %d\n", 10);
    /*OUT: {
    Reverse<--, 462_1;>}*/
    /*OUT: {
    Reverse<--, 462_1;>}*/
    timer_clear(0);
    /*OUT: {
    Reverse<--, 462_1;>}*/
    /*OUT: {
    Reverse<--, 462_1;>}*/
    create_seq(314159265.00, 1220703125.00);
    /*OUT: {
    Reverse<--, 462_1;>}*/
#pragma omp parallel
    {
        /*OUT: {
        Reverse<843,>}*/
        rank(1);
        /*OUT: {
        Reverse<843,>}*/
    }
    /*OUT: {
    Reverse<--, 462_1;>}*/
    passed_verification = 0;
    /*OUT: {
    Reverse<--, 462_1;>}*/
    if ('S' != 'S') {
        /*OUT: {
        Reverse<--, 547_0; 462_1;>}*/
        printf("\n   iteration\n");
        /*OUT: {
        Reverse<--, 547_0; 462_1;>}*/
    }
    /*OUT: {
    Reverse<--, 462_1;>}*/
    timer_start(0);
    /*OUT: {
    Reverse<--, 462_1;>}*/
#pragma omp parallel private(iteration)
    {
        /*OUT: {
        Reverse<851,>}*/
        /*OUT: {
        Reverse<851,>}*/
        /*OUT: {
        Reverse<851, 559_0;>}*/
        for (iteration = 1; iteration <= 10; iteration++) {
#pragma omp master
            {
                /*OUT: {
                Reverse<851, 559_0;>}*/
                if ('S' != 'S') {
                    /*OUT: {
                    Reverse<851, 561_0; 559_0;>}*/
                    printf("        %d\n", iteration);
                    /*OUT: {
                    Reverse<851, 561_0; 559_0;>}*/
                }
            }
            /*OUT: {
            Reverse<851, 559_0;>}*/
            rank(iteration);
            /*OUT: {
            Reverse<851, 559_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 462_1;>}*/
    timer_stop(0);
    /*OUT: {
    Reverse<--, 462_1;>}*/
    /*OUT: {
    Reverse<--, 462_1;>}*/
    timecounter = timer_read(0);
    /*OUT: {
    Reverse<--, 462_1;>}*/
    /*OUT: {
    Reverse<--, 462_1;>}*/
    full_verify();
    /*OUT: {
    Reverse<--, 462_1;>}*/
    /*OUT: {
    Reverse<--, 462_1;>}*/
    if (passed_verification != 5 * 10 + 1) {
        /*OUT: {
        Reverse<--, 588_0; 462_1;>}*/
        passed_verification = 0;
    }
    /*OUT: {
    Reverse<--, 462_1;>}*/
    double _imopVarPre42;
    /*OUT: {
    Reverse<--, 462_1;>}*/
    int _imopVarPre43;
    /*OUT: {
    Reverse<--, 462_1;>}*/
    _imopVarPre42 = ((double) (10 * (1 << 16))) / timecounter / 1000000.;
    /*OUT: {
    Reverse<--, 462_1;>}*/
    _imopVarPre43 = (1 << 16);
    /*OUT: {
    Reverse<--, 462_1;>}*/
    c_print_results("IS", 'S', _imopVarPre43, 0, 0, 10, nthreads, timecounter, _imopVarPre42, "keys ranked", passed_verification, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randlc");
    /*OUT: {
    Reverse<--, 462_1;>}*/
}
