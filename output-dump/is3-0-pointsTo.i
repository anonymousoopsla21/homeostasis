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
/*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
ptsTo(test_index_array.f) := [S_test_index_array.f];
ptsTo(test_rank_array.f) := [S_test_rank_array.f];
ptsTo(X) := [seed];
]*/
/*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
ptsTo(test_index_array.f) := [S_test_index_array.f];
ptsTo(test_rank_array.f) := [S_test_rank_array.f];
ptsTo(A) := [a];
ptsTo(X) := [seed];
]*/
double randlc(double *X, double *A) {
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    static int KS = 0;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    static double R23;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    static double R46;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    static double T23;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    static double T46;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double T1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double T2;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double T3;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double T4;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double A1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double A2;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double X1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double X2;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    double Z;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    int i;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    int j;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    if (KS == 0) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        R23 = 1.0;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        R46 = 1.0;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        T23 = 1.0;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        T46 = 1.0;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        for (i = 1; i <= 23; i++) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(A) := [a];
            ptsTo(X) := [seed];
            ]*/
            R23 = 0.50 * R23;
            /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(A) := [a];
            ptsTo(X) := [seed];
            ]*/
            T23 = 2.0 * T23;
        }
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        for (i = 1; i <= 46; i++) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(A) := [a];
            ptsTo(X) := [seed];
            ]*/
            R46 = 0.50 * R46;
            /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(A) := [a];
            ptsTo(X) := [seed];
            ]*/
            T46 = 2.0 * T46;
        }
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(A) := [a];
        ptsTo(X) := [seed];
        ]*/
        KS = 1;
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    T1 = R23 * *A;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    j = T1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    A1 = j;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    A2 = *A - T23 * A1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    T1 = R23 * *X;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    j = T1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    X1 = j;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    X2 = *X - T23 * X1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    T1 = A1 * X2 + A2 * X1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    j = R23 * T1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    T2 = j;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    Z = T1 - T23 * T2;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    T3 = T23 * Z + A2 * X2;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    j = R46 * T3;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    T4 = j;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    *X = T3 - T46 * T4;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(A) := [a];
    ptsTo(X) := [seed];
    ]*/
    return (R46 * *X);
}
/*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
ptsTo(test_index_array.f) := [S_test_index_array.f];
ptsTo(test_rank_array.f) := [S_test_rank_array.f];
]*/
/*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
ptsTo(test_index_array.f) := [S_test_index_array.f];
ptsTo(test_rank_array.f) := [S_test_rank_array.f];
]*/
void create_seq(double seed, double a) {
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    double x;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    int i;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    int k;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    k = (1 << 11) / 4;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    for (i = 0; i < (1 << 16); i++) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre16;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [nullCell];
        ptsTo(_imopVarPre17) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre17;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [nullCell];
        ptsTo(_imopVarPre17) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double _imopVarPre18;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre16 = &a;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre17 = &seed;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre18 = randlc(_imopVarPre17, _imopVarPre16);
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        x = _imopVarPre18;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre21;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [nullCell];
        ptsTo(_imopVarPre22) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre22;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [nullCell];
        ptsTo(_imopVarPre22) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double _imopVarPre23;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre21 = &a;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre22 = &seed;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre23 = randlc(_imopVarPre22, _imopVarPre21);
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        x += _imopVarPre23;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre26;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [nullCell];
        ptsTo(_imopVarPre27) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre27;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [nullCell];
        ptsTo(_imopVarPre27) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double _imopVarPre28;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre26 = &a;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre27 = &seed;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre28 = randlc(_imopVarPre27, _imopVarPre26);
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        x += _imopVarPre28;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre31;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [nullCell];
        ptsTo(_imopVarPre32) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double *_imopVarPre32;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [nullCell];
        ptsTo(_imopVarPre32) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        double _imopVarPre33;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [a];
        ptsTo(_imopVarPre32) := [nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre31 = &a;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [a];
        ptsTo(_imopVarPre32) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre32 = &seed;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [a];
        ptsTo(_imopVarPre32) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        _imopVarPre33 = randlc(_imopVarPre32, _imopVarPre31);
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [a];
        ptsTo(_imopVarPre32) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [a];
        ptsTo(_imopVarPre32) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        x += _imopVarPre33;
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(_imopVarPre16) := [a];
        ptsTo(_imopVarPre17) := [seed];
        ptsTo(_imopVarPre21) := [a];
        ptsTo(_imopVarPre22) := [seed];
        ptsTo(_imopVarPre26) := [a];
        ptsTo(_imopVarPre27) := [seed];
        ptsTo(_imopVarPre31) := [a];
        ptsTo(_imopVarPre32) := [seed];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        key_array[i] = k * x;
    }
}
void full_verify() {
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    INT_TYPE i;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    INT_TYPE j;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    for (i = 0; i < (1 << 16); i++) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_array.f) := [key_buff2.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        key_array[--key_buff_ptr_global[key_buff2[i]]] = key_buff2[i];
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    j = 0;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    for (i = 1; i < (1 << 16); i++) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_array.f) := [key_buff2.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        if (key_array[i - 1] > key_array[i]) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_array.f) := [key_buff2.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            j++;
        }
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    if (j != 0) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_array.f) := [key_buff2.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        printf("Full_verify: number of keys out of sort: %d\n", j);
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_array.f) := [key_buff2.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
    } else {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_array.f) := [key_buff2.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        passed_verification++;
    }
}
/*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
ptsTo(test_index_array.f) := [S_test_index_array.f];
ptsTo(test_rank_array.f) := [S_test_rank_array.f];
ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
ptsTo(key_buff2.f) := [key_array.f];
]*/
void rank(int iteration) {
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    INT_TYPE i;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    INT_TYPE k;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    11 - 9;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    INT_TYPE prv_buff1[(1 << 11)];
#pragma omp master
    {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        key_array[iteration] = iteration;
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        key_array[iteration + 10] = (1 << 11) - iteration;
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        for (i = 0; i < 5; i++) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            partial_verify_vals[i] = key_array[test_index_array[i]];
        }
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        for (i = 0; i < (1 << 11); i++) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            key_buff1[i] = 0;
        }
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
#pragma omp barrier
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    for (i = 0; i < (1 << 11); i++) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        prv_buff1[i] = 0;
    }
#pragma omp for nowait
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    for (i = 0; i < (1 << 16); i++) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        key_buff2[i] = key_array[i];
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        prv_buff1[key_buff2[i]]++;
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [prv_buff1.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    for (i = 0; i < (1 << 11) - 1; i++) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        prv_buff1[i + 1] += prv_buff1[i];
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
    {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        for (i = 0; i < (1 << 11); i++) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            key_buff1[i] += prv_buff1[i];
        }
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    // #pragma omp dummyFlush CRITICAL_END
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    // #pragma omp dummyFlush BARRIER_START
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
#pragma omp barrier
#pragma omp master
    {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        for (i = 0; i < 5; i++) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            k = partial_verify_vals[i];
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            int _imopVarPre35;
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            _imopVarPre35 = 0 <= k;
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            if (_imopVarPre35) {
                /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                ptsTo(test_index_array.f) := [S_test_index_array.f];
                ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                ptsTo(key_buff2.f) := [key_array.f];
                ]*/
                _imopVarPre35 = k <= (1 << 16) - 1;
            }
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            if (_imopVarPre35) {
                /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                ptsTo(test_index_array.f) := [S_test_index_array.f];
                ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                ptsTo(key_buff2.f) := [key_array.f];
                ]*/
                switch ('S') {
                    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                    ptsTo(test_index_array.f) := [S_test_index_array.f];
                    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                    ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                    ptsTo(key_buff2.f) := [key_array.f];
                    ]*/
                    case 'S': if (i <= 2) {
                        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                        ptsTo(test_index_array.f) := [S_test_index_array.f];
                        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                        ptsTo(key_buff2.f) := [key_array.f];
                        ]*/
                        if (key_buff1[k - 1] != test_rank_array[i] + iteration) {
                            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                            ptsTo(test_index_array.f) := [S_test_index_array.f];
                            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(key_buff2.f) := [key_array.f];
                            ]*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                            ptsTo(test_index_array.f) := [S_test_index_array.f];
                            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(key_buff2.f) := [key_array.f];
                            ]*/
                        } else {
                            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                            ptsTo(test_index_array.f) := [S_test_index_array.f];
                            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(key_buff2.f) := [key_array.f];
                            ]*/
                            passed_verification++;
                        }
                    } else {
                        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                        ptsTo(test_index_array.f) := [S_test_index_array.f];
                        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                        ptsTo(key_buff2.f) := [key_array.f];
                        ]*/
                        if (key_buff1[k - 1] != test_rank_array[i] - iteration) {
                            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                            ptsTo(test_index_array.f) := [S_test_index_array.f];
                            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(key_buff2.f) := [key_array.f];
                            ]*/
                            printf("Failed partial verification: " "iteration %d, test key %d\n", iteration, i);
                            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                            ptsTo(test_index_array.f) := [S_test_index_array.f];
                            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(key_buff2.f) := [key_array.f];
                            ]*/
                        } else {
                            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                            ptsTo(test_index_array.f) := [S_test_index_array.f];
                            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                            ptsTo(key_buff2.f) := [key_array.f];
                            ]*/
                            passed_verification++;
                        }
                    }
                    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                    ptsTo(test_index_array.f) := [S_test_index_array.f];
                    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                    ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
                    ptsTo(key_buff2.f) := [key_array.f];
                    ]*/
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
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        if (iteration == 10) {
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(prv_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            key_buff_ptr_global = key_buff1;
        }
    }
}
/*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int iteration;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int nthreads = 1;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double timecounter;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    for (i = 0; i < 5; i++) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        switch ('S') {
            /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ]*/
            case 'S': test_index_array[i] = S_test_index_array[i];
            /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ]*/
            test_rank_array[i] = S_test_rank_array[i];
            /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ]*/
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
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    ;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    printf("\n\n NAS Parallel Benchmarks 2.3 OpenMP C version" " - IS Benchmark\n\n");
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    int _imopVarPre39;
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    _imopVarPre39 = (1 << 16);
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    printf(" Size:  %d  (class %c)\n", _imopVarPre39, 'S');
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    printf(" Iterations:   %d\n", 10);
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    timer_clear(0);
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
    create_seq(314159265.00, 1220703125.00);
    /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ]*/
#pragma omp parallel
    {
        /*OUT: [ptsTo(key_buff_ptr_global) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ]*/
        rank(1);
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    passed_verification = 0;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    if ('S' != 'S') {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        printf("\n   iteration\n");
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    timer_start(0);
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
#pragma omp parallel private(iteration)
    {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        for (iteration = 1; iteration <= 10; iteration++) {
#pragma omp master
            {
                /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                ptsTo(argv) := [heapCell#0];
                ptsTo(test_index_array.f) := [S_test_index_array.f];
                ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                ptsTo(key_buff2.f) := [key_array.f];
                ]*/
                if ('S' != 'S') {
                    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(test_index_array.f) := [S_test_index_array.f];
                    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                    ptsTo(key_buff2.f) := [key_array.f];
                    ]*/
                    printf("        %d\n", iteration);
                    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
                    ptsTo(argv) := [heapCell#0];
                    ptsTo(test_index_array.f) := [S_test_index_array.f];
                    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
                    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
                    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
                    ptsTo(key_buff2.f) := [key_array.f];
                    ]*/
                }
            }
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
            rank(iteration);
            /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(test_index_array.f) := [S_test_index_array.f];
            ptsTo(test_rank_array.f) := [S_test_rank_array.f];
            ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
            ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
            ptsTo(key_buff2.f) := [key_array.f];
            ]*/
        }
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    timer_stop(0);
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    timecounter = timer_read(0);
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    full_verify();
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    if (passed_verification != 5 * 10 + 1) {
        /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(test_index_array.f) := [S_test_index_array.f];
        ptsTo(test_rank_array.f) := [S_test_rank_array.f];
        ptsTo(key_array.f) := [key_buff2.f];
        ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
        ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
        ptsTo(key_buff2.f) := [key_array.f];
        ]*/
        passed_verification = 0;
    }
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    double _imopVarPre42;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    int _imopVarPre43;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    _imopVarPre42 = ((double) (10 * (1 << 16))) / timecounter / 1000000.;
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    _imopVarPre43 = (1 << 16);
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
    c_print_results("IS", 'S', _imopVarPre43, 0, 0, 10, nthreads, timecounter, _imopVarPre42, "keys ranked", passed_verification, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randlc");
    /*OUT: [ptsTo(key_buff_ptr_global) := [key_buff1.f, nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(test_index_array.f) := [S_test_index_array.f];
    ptsTo(test_rank_array.f) := [S_test_rank_array.f];
    ptsTo(key_array.f) := [key_buff2.f];
    ptsTo(key_buff1.f) := [prv_buff1.f, nullCell];
    ptsTo(partial_verify_vals.f) := [test_index_array.f, key_array.f];
    ptsTo(key_buff2.f) := [key_array.f];
    ]*/
}
