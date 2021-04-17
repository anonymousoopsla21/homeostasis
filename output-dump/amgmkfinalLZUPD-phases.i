
/*[]*/
typedef int __int32_t;
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef unsigned long __darwin_clock_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __int32_t __darwin_suseconds_t;
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
extern FILE *__stdoutp;
/*[]*/
extern FILE *__stderrp;
/*[]*/
int fflush(FILE *);
/*[]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*[]*/
void *calloc(size_t __count, size_t __size);
/*[]*/
void free(void *);
/*[]*/
typedef __darwin_clock_t clock_t;
/*[]*/
clock_t clock(void );
/*[]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*[]*/
extern double fabs(double );
/*[]*/
extern int omp_get_num_threads(void );
/*[]*/
int hypre_OutOfMemory(int size);
/*[]*/
char *hypre_CAlloc(int count, int elt_size);
/*[]*/
void hypre_Free(char *ptr);
/*[]*/
extern int hypre__global_error;
/*[]*/
void hypre_error_handler(char *filename, int line , int ierr);
/*[]*/
struct stUn_imopVarPre14 {
    double *data;
    int *i;
    int *j;
    int num_rows;
    int num_cols;
    int num_nonzeros;
    int *rownnz;
    int num_rownnz;
    int owns_data;
} ;
/*[]*/
typedef struct stUn_imopVarPre14 hypre_CSRMatrix;
/*[]*/
struct stUn_imopVarPre15 {
    double *data;
    int size;
    int owns_data;
    int num_vectors;
    int multivec_storage_method;
    int vecstride, idxstride;
} ;
/*[]*/
typedef struct stUn_imopVarPre15 hypre_Vector;
/*[]*/
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros);
/*[]*/
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix);
/*[]*/
hypre_Vector *hypre_SeqVectorCreate(int size);
/*[]*/
int hypre_SeqVectorDestroy(hypre_Vector *vector);
/*[]*/
int hypre_SeqVectorInitialize(hypre_Vector *vector);
/*[]*/
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value);
/*[]*/
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y);
/*[]*/
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *values , hypre_Vector **x_ptr , hypre_Vector **y_ptr , hypre_Vector **sol_ptr);
/*[]*/
/*[]*/
/*[]*/
/*[]*/
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros) {
/*[]*/
    /*[]*/
    hypre_CSRMatrix *matrix;
    /*[]*/
    unsigned int _imopVarPre153;
    /*[]*/
    unsigned int _imopVarPre154;
    /*[]*/
    char *_imopVarPre155;
    /*[]*/
    _imopVarPre153 = (unsigned int) sizeof(hypre_CSRMatrix);
    /*[]*/
    _imopVarPre154 = (unsigned int) 1;
    /*[]*/
    _imopVarPre155 = hypre_CAlloc(_imopVarPre154, _imopVarPre153);
    /*[]*/
    /*[]*/
    matrix = ((hypre_CSRMatrix *) _imopVarPre155);
    /*[]*/
    (matrix->data) = ((void *) 0);
    /*[]*/
    (matrix->i) = ((void *) 0);
    /*[]*/
    (matrix->j) = ((void *) 0);
    /*[]*/
    (matrix->rownnz) = ((void *) 0);
    /*[]*/
    (matrix->num_rows) = num_rows;
    /*[]*/
    (matrix->num_cols) = num_cols;
    /*[]*/
    (matrix->num_nonzeros) = num_nonzeros;
    /*[]*/
    (matrix->owns_data) = 1;
    /*[]*/
    (matrix->num_rownnz) = num_rows;
    /*[]*/
    return matrix;
}
/*[]*/
/*[]*/
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix) {
/*[]*/
    /*[]*/
    int ierr = 0;
    /*[]*/
    /*[]*/
    if (matrix) {
    /*[]*/
        /*[]*/
        char *_imopVarPre159;
        /*[]*/
        _imopVarPre159 = (char *) (matrix->i);
        /*[]*/
        hypre_Free(_imopVarPre159);
        /*[]*/
        /*[]*/
        ((matrix->i) = ((void *) 0));
        /*[]*/
        /*[]*/
        if ((matrix->rownnz)) {
        /*[]*/
            /*[]*/
            char *_imopVarPre163;
            /*[]*/
            _imopVarPre163 = (char *) (matrix->rownnz);
            /*[]*/
            hypre_Free(_imopVarPre163);
            /*[]*/
            /*[]*/
            ((matrix->rownnz) = ((void *) 0));
        }
        /*[]*/
        /*[]*/
        if ((matrix->owns_data)) {
        /*[]*/
            /*[]*/
            char *_imopVarPre167;
            /*[]*/
            _imopVarPre167 = (char *) (matrix->data);
            /*[]*/
            hypre_Free(_imopVarPre167);
            /*[]*/
            /*[]*/
            ((matrix->data) = ((void *) 0));
            /*[]*/
            char *_imopVarPre171;
            /*[]*/
            _imopVarPre171 = (char *) (matrix->j);
            /*[]*/
            hypre_Free(_imopVarPre171);
            /*[]*/
            /*[]*/
            ((matrix->j) = ((void *) 0));
        }
        /*[]*/
        char *_imopVarPre175;
        /*[]*/
        _imopVarPre175 = (char *) matrix;
        /*[]*/
        hypre_Free(_imopVarPre175);
        /*[]*/
        /*[]*/
        (matrix = ((void *) 0));
    }
    /*[]*/
    return ierr;
}
/*[]*/
/*[]*/
hypre_Vector *hypre_SeqVectorCreate(int size) {
/*[]*/
    /*[]*/
    hypre_Vector *vector;
    /*[]*/
    unsigned int _imopVarPre310;
    /*[]*/
    unsigned int _imopVarPre311;
    /*[]*/
    char *_imopVarPre312;
    /*[]*/
    _imopVarPre310 = (unsigned int) sizeof(hypre_Vector);
    /*[]*/
    _imopVarPre311 = (unsigned int) 1;
    /*[]*/
    _imopVarPre312 = hypre_CAlloc(_imopVarPre311, _imopVarPre310);
    /*[]*/
    /*[]*/
    vector = ((hypre_Vector *) _imopVarPre312);
    /*[]*/
    (vector->data) = ((void *) 0);
    /*[]*/
    (vector->size) = size;
    /*[]*/
    (vector->num_vectors) = 1;
    /*[]*/
    (vector->multivec_storage_method) = 0;
    /*[]*/
    (vector->owns_data) = 1;
    /*[]*/
    return vector;
}
/*[]*/
/*[]*/
int hypre_SeqVectorDestroy(hypre_Vector *vector) {
/*[]*/
    /*[]*/
    int ierr = 0;
    /*[]*/
    /*[]*/
    if (vector) {
    /*[]*/
        /*[]*/
        /*[]*/
        if ((vector->owns_data)) {
        /*[]*/
            /*[]*/
            char *_imopVarPre317;
            /*[]*/
            _imopVarPre317 = (char *) (vector->data);
            /*[]*/
            hypre_Free(_imopVarPre317);
            /*[]*/
            /*[]*/
            ((vector->data) = ((void *) 0));
        }
        /*[]*/
        char *_imopVarPre321;
        /*[]*/
        _imopVarPre321 = (char *) vector;
        /*[]*/
        hypre_Free(_imopVarPre321);
        /*[]*/
        /*[]*/
        (vector = ((void *) 0));
    }
    /*[]*/
    return ierr;
}
/*[]*/
/*[]*/
int hypre_SeqVectorInitialize(hypre_Vector *vector) {
/*[]*/
    /*[]*/
    int size = (vector->size);
    /*[]*/
    int ierr = 0;
    /*[]*/
    int num_vectors = (vector->num_vectors);
    /*[]*/
    int multivec_storage_method = (vector->multivec_storage_method);
    /*[]*/
    /*[]*/
    if (!(vector->data)) {
    /*[]*/
        /*[]*/
        unsigned int _imopVarPre331;
        /*[]*/
        unsigned int _imopVarPre332;
        /*[]*/
        char *_imopVarPre333;
        /*[]*/
        _imopVarPre331 = (unsigned int) sizeof(double);
        /*[]*/
        _imopVarPre332 = (unsigned int) (num_vectors * size);
        /*[]*/
        _imopVarPre333 = hypre_CAlloc(_imopVarPre332, _imopVarPre331);
        /*[]*/
        /*[]*/
        (vector->data) = ((double *) _imopVarPre333);
    }
    /*[]*/
    /*[]*/
    if (multivec_storage_method == 0) {
    /*[]*/
        /*[]*/
        (vector->vecstride) = size;
        /*[]*/
        (vector->idxstride) = 1;
    } else {
    /*[]*/
        /*[]*/
        /*[]*/
        if (multivec_storage_method == 1) {
        /*[]*/
            /*[]*/
            (vector->vecstride) = 1;
            /*[]*/
            (vector->idxstride) = num_vectors;
        } else {
        /*[]*/
            /*[]*/
            ++ierr;
        }
    }
    /*[]*/
    return ierr;
}
/*[]*/
/*[]*/
/*[]*/
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value) {
/*[]*/
    /*[]*/
    double *vector_data = (v->data);
    /*[]*/
    int size = (v->size);
    /*[]*/
    int i;
    /*[]*/
    int ierr = 0;
    /*[]*/
    size *= (v->num_vectors);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < size; i++) {
    /*[]*/
        /*[]*/
        vector_data[i] = value;
    }
    /*[]*/
    return ierr;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y) {
/*[]*/
    /*[]*/
    double *x_data = (x->data);
    /*[]*/
    double *y_data = (y->data);
    /*[]*/
    int size = (x->size);
    /*[]*/
    int i;
    /*[]*/
    int ierr = 0;
    /*[]*/
    size *= (x->num_vectors);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < size; i++) {
    /*[]*/
        /*[]*/
        y_data[i] += alpha * x_data[i];
    }
    /*[]*/
    return ierr;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *value , hypre_Vector **rhs_ptr , hypre_Vector **x_ptr , hypre_Vector **sol_ptr) {
/*[]*/
    /*[]*/
    hypre_CSRMatrix *A;
    /*[]*/
    hypre_Vector *rhs;
    /*[]*/
    hypre_Vector *x;
    /*[]*/
    hypre_Vector *sol;
    /*[]*/
    double *rhs_data;
    /*[]*/
    double *x_data;
    /*[]*/
    double *sol_data;
    /*[]*/
    int *A_i;
    /*[]*/
    int *A_j;
    /*[]*/
    double *A_data;
    /*[]*/
    int ix;
    /*[]*/
    int iy;
    /*[]*/
    int iz;
    /*[]*/
    int cnt;
    /*[]*/
    int row_index;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int grid_size;
    /*[]*/
    grid_size = nx * ny * nz;
    /*[]*/
    unsigned int _imopVarPre353;
    /*[]*/
    unsigned int _imopVarPre354;
    /*[]*/
    char *_imopVarPre355;
    /*[]*/
    _imopVarPre353 = (unsigned int) sizeof(int);
    /*[]*/
    _imopVarPre354 = (unsigned int) (grid_size + 1);
    /*[]*/
    _imopVarPre355 = hypre_CAlloc(_imopVarPre354, _imopVarPre353);
    /*[]*/
    /*[]*/
    A_i = ((int *) _imopVarPre355);
    /*[]*/
    unsigned int _imopVarPre365;
    /*[]*/
    unsigned int _imopVarPre366;
    /*[]*/
    char *_imopVarPre367;
    /*[]*/
    _imopVarPre365 = (unsigned int) sizeof(double);
    /*[]*/
    _imopVarPre366 = (unsigned int) grid_size;
    /*[]*/
    _imopVarPre367 = hypre_CAlloc(_imopVarPre366, _imopVarPre365);
    /*[]*/
    /*[]*/
    rhs_data = ((double *) _imopVarPre367);
    /*[]*/
    unsigned int _imopVarPre377;
    /*[]*/
    unsigned int _imopVarPre378;
    /*[]*/
    char *_imopVarPre379;
    /*[]*/
    _imopVarPre377 = (unsigned int) sizeof(double);
    /*[]*/
    _imopVarPre378 = (unsigned int) grid_size;
    /*[]*/
    _imopVarPre379 = hypre_CAlloc(_imopVarPre378, _imopVarPre377);
    /*[]*/
    /*[]*/
    x_data = ((double *) _imopVarPre379);
    /*[]*/
    unsigned int _imopVarPre389;
    /*[]*/
    unsigned int _imopVarPre390;
    /*[]*/
    char *_imopVarPre391;
    /*[]*/
    _imopVarPre389 = (unsigned int) sizeof(double);
    /*[]*/
    _imopVarPre390 = (unsigned int) grid_size;
    /*[]*/
    _imopVarPre391 = hypre_CAlloc(_imopVarPre390, _imopVarPre389);
    /*[]*/
    /*[]*/
    sol_data = ((double *) _imopVarPre391);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < grid_size; i++) {
    /*[]*/
        /*[]*/
        x_data[i] = 0.0;
        /*[]*/
        sol_data[i] = 0.0;
        /*[]*/
        rhs_data[i] = 1.0;
    }
    /*[]*/
    cnt = 1;
    /*[]*/
    A_i[0] = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iz = 0; iz < nz; iz++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (iy = 0; iy < ny; iy++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (ix = 0; ix < nx; ix++) {
            /*[]*/
                /*[]*/
                A_i[cnt] = A_i[cnt - 1];
                /*[]*/
                A_i[cnt]++;
                /*[]*/
                /*[]*/
                if (iz) {
                /*[]*/
                    /*[]*/
                    A_i[cnt]++;
                }
                /*[]*/
                /*[]*/
                if (iy) {
                /*[]*/
                    /*[]*/
                    A_i[cnt]++;
                }
                /*[]*/
                /*[]*/
                if (ix) {
                /*[]*/
                    /*[]*/
                    A_i[cnt]++;
                }
                /*[]*/
                /*[]*/
                if (ix + 1 < nx) {
                /*[]*/
                    /*[]*/
                    A_i[cnt]++;
                }
                /*[]*/
                /*[]*/
                if (iy + 1 < ny) {
                /*[]*/
                    /*[]*/
                    A_i[cnt]++;
                }
                /*[]*/
                /*[]*/
                if (iz + 1 < nz) {
                /*[]*/
                    /*[]*/
                    A_i[cnt]++;
                }
                /*[]*/
                cnt++;
            }
        }
    }
    /*[]*/
    unsigned int _imopVarPre401;
    /*[]*/
    unsigned int _imopVarPre402;
    /*[]*/
    char *_imopVarPre403;
    /*[]*/
    _imopVarPre401 = (unsigned int) sizeof(int);
    /*[]*/
    _imopVarPre402 = (unsigned int) (A_i[grid_size]);
    /*[]*/
    _imopVarPre403 = hypre_CAlloc(_imopVarPre402, _imopVarPre401);
    /*[]*/
    /*[]*/
    A_j = ((int *) _imopVarPre403);
    /*[]*/
    unsigned int _imopVarPre413;
    /*[]*/
    unsigned int _imopVarPre414;
    /*[]*/
    char *_imopVarPre415;
    /*[]*/
    _imopVarPre413 = (unsigned int) sizeof(double);
    /*[]*/
    _imopVarPre414 = (unsigned int) (A_i[grid_size]);
    /*[]*/
    _imopVarPre415 = hypre_CAlloc(_imopVarPre414, _imopVarPre413);
    /*[]*/
    /*[]*/
    A_data = ((double *) _imopVarPre415);
    /*[]*/
    row_index = 0;
    /*[]*/
    cnt = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (iz = 0; iz < nz; iz++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (iy = 0; iy < ny; iy++) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (ix = 0; ix < nx; ix++) {
            /*[]*/
                /*[]*/
                A_j[cnt] = row_index;
                /*[]*/
                A_data[cnt++] = value[0];
                /*[]*/
                /*[]*/
                if (iz) {
                /*[]*/
                    /*[]*/
                    A_j[cnt] = row_index - nx * ny;
                    /*[]*/
                    A_data[cnt++] = value[3];
                }
                /*[]*/
                /*[]*/
                if (iy) {
                /*[]*/
                    /*[]*/
                    A_j[cnt] = row_index - nx;
                    /*[]*/
                    A_data[cnt++] = value[2];
                }
                /*[]*/
                /*[]*/
                if (ix) {
                /*[]*/
                    /*[]*/
                    A_j[cnt] = row_index - 1;
                    /*[]*/
                    A_data[cnt++] = value[1];
                }
                /*[]*/
                /*[]*/
                if (ix + 1 < nx) {
                /*[]*/
                    /*[]*/
                    A_j[cnt] = row_index + 1;
                    /*[]*/
                    A_data[cnt++] = value[1];
                }
                /*[]*/
                /*[]*/
                if (iy + 1 < ny) {
                /*[]*/
                    /*[]*/
                    A_j[cnt] = row_index + nx;
                    /*[]*/
                    A_data[cnt++] = value[2];
                }
                /*[]*/
                /*[]*/
                if (iz + 1 < nz) {
                /*[]*/
                    /*[]*/
                    A_j[cnt] = row_index + nx * ny;
                    /*[]*/
                    A_data[cnt++] = value[3];
                }
                /*[]*/
                row_index++;
            }
        }
    }
    /*[]*/
    int _imopVarPre417;
    /*[]*/
    struct stUn_imopVarPre14 *_imopVarPre418;
    /*[]*/
    _imopVarPre417 = A_i[grid_size];
    /*[]*/
    _imopVarPre418 = hypre_CSRMatrixCreate(grid_size, grid_size, _imopVarPre417);
    /*[]*/
    /*[]*/
    A = _imopVarPre418;
    /*[]*/
    rhs = hypre_SeqVectorCreate(grid_size);
    /*[]*/
    /*[]*/
    (rhs->data) = rhs_data;
    /*[]*/
    x = hypre_SeqVectorCreate(grid_size);
    /*[]*/
    /*[]*/
    (x->data) = x_data;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < grid_size; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = A_i[i]; j < A_i[i + 1]; j++) {
        /*[]*/
            /*[]*/
            sol_data[i] += A_data[j];
        }
    }
    /*[]*/
    sol = hypre_SeqVectorCreate(grid_size);
    /*[]*/
    /*[]*/
    (sol->data) = sol_data;
    /*[]*/
    (A->i) = A_i;
    /*[]*/
    (A->j) = A_j;
    /*[]*/
    (A->data) = A_data;
    /*[]*/
    *rhs_ptr = rhs;
    /*[]*/
    *x_ptr = x;
    /*[]*/
    *sol_ptr = sol;
    /*[]*/
    return A;
}
/*[]*/
int hypre__global_error = 0;
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
void hypre_error_handler(char *filename, int line , int ierr) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    hypre__global_error |= ierr;
}
/*[1, 2, 3]*/
/*[1, 2, 3]*/
int hypre_OutOfMemory(int size) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    printf("Out of memory trying to allocate %d bytes\n", size);
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    fflush(__stdoutp);
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    hypre_error_handler("amgmk.c", 2270, 2);
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    return 0;
}
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
char *hypre_CAlloc(int count, int elt_size) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    char *ptr;
    /*[1, 2, 3]*/
    int size = count * elt_size;
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    if (size > 0) {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        ptr = calloc(count, elt_size);
        /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        if (ptr == ((void *) 0)) {
        /*[1, 2, 3]*/
            /*[1, 2, 3]*/
            hypre_OutOfMemory(size);
            /*[1, 2, 3]*/
        }
    } else {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        ptr = ((void *) 0);
    }
    /*[1, 2, 3]*/
    return ptr;
}
/*[4, 5, 6]*/
/*[4, 5, 6]*/
void hypre_Free(char *ptr) {
/*[4, 5, 6]*/
    /*[4, 5, 6]*/
    /*[4, 5, 6]*/
    if (ptr) {
    /*[4, 5, 6]*/
        /*[4, 5, 6]*/
        free(ptr);
        /*[4, 5, 6]*/
    }
}
/*[]*/
const int testIter = 500;
/*[]*/
double totalWallTime = 0.0;
/*[]*/
double totalCPUTime = 0.0;
/*[]*/
void test_Axpy();
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char *argv[]) {
/*[]*/
    /*[]*/
    struct timeval t0;
    /*[]*/
    struct timeval t1;
    /*[]*/
    clock_t t0_cpu = 0;
    /*[]*/
    clock_t t1_cpu = 0;
    /*[]*/
    double del_wtime = 0.0;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//  Sequoia Benchmark Version 1.0 \n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    void *_imopVarPre493;
    /*[]*/
    struct timeval *_imopVarPre494;
    /*[]*/
    _imopVarPre493 = ((void *) 0);
    /*[]*/
    _imopVarPre494 = &t0;
    /*[]*/
    gettimeofday(_imopVarPre494, _imopVarPre493);
    /*[]*/
    /*[]*/
    t0_cpu = clock();
    /*[]*/
    /*[]*/
    totalWallTime = 0.0;
    /*[]*/
    totalCPUTime = 0.0;
    /*[]*/
    struct timeval t0_imopVar78;
    /*[]*/
    struct timeval t1_imopVar79;
    /*[]*/
    clock_t t0_cpu_imopVar80 = 0;
    /*[]*/
    clock_t t1_cpu_imopVar81 = 0;
    /*[]*/
    hypre_CSRMatrix *A;
    /*[]*/
    hypre_Vector *x;
    /*[]*/
    hypre_Vector *y;
    /*[]*/
    hypre_Vector *sol;
    /*[]*/
    int nx;
    /*[]*/
    int ny;
    /*[]*/
    int nz;
    /*[]*/
    int i;
    /*[]*/
    double *values;
    /*[]*/
    double *y_data;
    /*[]*/
    double *sol_data;
    /*[]*/
    double error;
    /*[]*/
    double diff;
    /*[]*/
    nx = 50;
    /*[]*/
    ny = 50;
    /*[]*/
    nz = 50;
    /*[]*/
    unsigned int _imopVarPre510;
    /*[]*/
    unsigned int _imopVarPre511;
    /*[]*/
    char *_imopVarPre512;
    /*[]*/
    _imopVarPre510 = (unsigned int) sizeof(double);
    /*[]*/
    _imopVarPre511 = (unsigned int) 4;
    /*[]*/
    _imopVarPre512 = hypre_CAlloc(_imopVarPre511, _imopVarPre510);
    /*[]*/
    /*[]*/
    values = ((double *) _imopVarPre512);
    /*[]*/
    values[0] = 6;
    /*[]*/
    values[1] = -1;
    /*[]*/
    values[2] = -1;
    /*[]*/
    values[3] = -1;
    /*[]*/
    struct stUn_imopVarPre15 **_imopVarPre516;
    /*[]*/
    struct stUn_imopVarPre15 **_imopVarPre517;
    /*[]*/
    struct stUn_imopVarPre15 **_imopVarPre518;
    /*[]*/
    struct stUn_imopVarPre14 *_imopVarPre519;
    /*[]*/
    _imopVarPre516 = &sol;
    /*[]*/
    _imopVarPre517 = &x;
    /*[]*/
    _imopVarPre518 = &y;
    /*[]*/
    _imopVarPre519 = GenerateSeqLaplacian(nx, ny, nz, values, _imopVarPre518, _imopVarPre517, _imopVarPre516);
    /*[]*/
    /*[]*/
    A = _imopVarPre519;
    /*[]*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*[]*/
    /*[]*/
    hypre_SeqVectorSetConstantValues(y, 0);
    /*[]*/
    /*[]*/
    void *_imopVarPre522;
    /*[]*/
    struct timeval *_imopVarPre523;
    /*[]*/
    _imopVarPre522 = ((void *) 0);
    /*[]*/
    _imopVarPre523 = &t0_imopVar78;
    /*[]*/
    gettimeofday(_imopVarPre523, _imopVarPre522);
    /*[]*/
    /*[]*/
    t0_cpu_imopVar80 = clock();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < testIter; ++i) {
    /*[]*/
        /*[]*/
        double alpha;
        /*[]*/
        double beta;
        /*[]*/
        alpha = 1;
        /*[]*/
        beta = 0;
        /*[]*/
        double *A_data = (A->data);
        /*[]*/
        int *A_i = (A->i);
        /*[]*/
        int *A_j = (A->j);
        /*[]*/
        int num_rows = (A->num_rows);
        /*[]*/
        int num_cols = (A->num_cols);
        /*[]*/
        int *A_rownnz = (A->rownnz);
        /*[]*/
        int num_rownnz = (A->num_rownnz);
        /*[]*/
        double *x_data = (x->data);
        /*[]*/
        double *y_data_imopVar76 = (y->data);
        /*[]*/
        int x_size = (x->size);
        /*[]*/
        int y_size = (y->size);
        /*[]*/
        int num_vectors = (x->num_vectors);
        /*[]*/
        int idxstride_y = (y->idxstride);
        /*[]*/
        int vecstride_y = (y->vecstride);
        /*[]*/
        int idxstride_x = (x->idxstride);
        /*[]*/
        int vecstride_x = (x->vecstride);
        /*[]*/
        double temp;
        /*[]*/
        double tempx;
        /*[]*/
        int i_imopVar77;
        /*[]*/
        int j;
        /*[]*/
        int jj;
        /*[]*/
        int m;
        /*[]*/
        double xpar = 0.7;
        /*[]*/
        int ierr = 0;
        /*[]*/
        /*[]*/
        if (!(num_vectors == (y->num_vectors))) {
        /*[]*/
            /*[]*/
            fprintf(__stderrp, "hypre_assert failed: %s\n", "num_vectors == hypre_VectorNumVectors(y)");
            /*[]*/
            /*[]*/
            hypre_error_handler("amgmk.c", 1112, 1);
            /*[]*/
        }
        /*[]*/
        ;
        /*[]*/
        /*[]*/
        if (num_cols != x_size) {
        /*[]*/
            /*[]*/
            ierr = 1;
        }
        /*[]*/
        /*[]*/
        if (num_rows != y_size) {
        /*[]*/
            /*[]*/
            ierr = 2;
        }
        /*[]*/
        int _imopVarPre292;
        /*[]*/
        _imopVarPre292 = num_cols != x_size;
        /*[]*/
        /*[]*/
        if (_imopVarPre292) {
        /*[]*/
            /*[]*/
            _imopVarPre292 = num_rows != y_size;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre292) {
        /*[]*/
            /*[]*/
            ierr = 3;
        }
        /*[]*/
        /*[]*/
        if (alpha == 0.0) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (i_imopVar77 = 0; i_imopVar77 < num_rows * num_vectors; i_imopVar77++) {
            /*[]*/
                /*[]*/
                y_data_imopVar76[i_imopVar77] *= beta;
            }
            /*[]*/
            ierr;
            /*[]*/
            goto hypre_CSRMatrixMatvec_imopVar75;
        }
        /*[7]*/
#pragma omp parallel private(i_imopVar77, jj, temp)
        {
        /*[7]*/
            /*[7]*/
#pragma omp master
            {
            /*[7]*/
                /*[7]*/
                temp = beta / alpha;
                /*[7]*/
                /*[7]*/
                if (temp != 1.0) {
                /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    if (temp == 0.0) {
                    /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        for (i_imopVar77 = 0; i_imopVar77 < num_rows * num_vectors; i_imopVar77++) {
                        /*[7]*/
                            /*[7]*/
                            y_data_imopVar76[i_imopVar77] = 0.0;
                        }
                    } else {
                    /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        for (i_imopVar77 = 0; i_imopVar77 < num_rows * num_vectors; i_imopVar77++) {
                        /*[7]*/
                            /*[7]*/
                            y_data_imopVar76[i_imopVar77] *= temp;
                        }
                    }
                }
            }
            /*[7]*/
            /*[7]*/
            if (num_rownnz < xpar * num_rows) {
            /*[7]*/
                /*[7]*/
#pragma omp master
                {
                /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    for (i_imopVar77 = 0; i_imopVar77 < num_rownnz; i_imopVar77++) {
                    /*[7]*/
                        /*[7]*/
                        m = A_rownnz[i_imopVar77];
                        /*[7]*/
                        /*[7]*/
                        if (num_vectors == 1) {
                        /*[7]*/
                            /*[7]*/
                            tempx = y_data_imopVar76[m];
                            /*[7]*/
                            /*[7]*/
                            /*[7]*/
                            /*[7]*/
                            for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                            /*[7]*/
                                /*[7]*/
                                tempx += A_data[jj] * x_data[A_j[jj]];
                            }
                            /*[7]*/
                            y_data_imopVar76[m] = tempx;
                        } else {
                        /*[7]*/
                            /*[7]*/
                            /*[7]*/
                            /*[7]*/
                            /*[7]*/
                            for (j = 0; j < num_vectors; ++j) {
                            /*[7]*/
                                /*[7]*/
                                tempx = y_data_imopVar76[j * vecstride_y + m * idxstride_y];
                                /*[7]*/
                                /*[7]*/
                                /*[7]*/
                                /*[7]*/
                                for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                                /*[7]*/
                                    /*[7]*/
                                    tempx += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                                }
                                /*[7]*/
                                y_data_imopVar76[j * vecstride_y + m * idxstride_y] = tempx;
                            }
                        }
                    }
                }
            } else {
            /*[7]*/
                /*[7]*/
#pragma omp for schedule(static) nowait
                /*[7]*/
                /*[7]*/
                /*[7]*/
                for (i_imopVar77 = 0; i_imopVar77 < num_rows; i_imopVar77++) {
                /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    if (num_vectors == 1) {
                    /*[7]*/
                        /*[7]*/
                        temp = y_data_imopVar76[i_imopVar77];
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        for (jj = A_i[i_imopVar77]; jj < A_i[i_imopVar77 + 1]; jj++) {
                        /*[7]*/
                            /*[7]*/
                            temp += A_data[jj] * x_data[A_j[jj]];
                        }
                        /*[7]*/
                        y_data_imopVar76[i_imopVar77] = temp;
                    } else {
                    /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        /*[7]*/
                        for (j = 0; j < num_vectors; ++j) {
                        /*[7]*/
                            /*[7]*/
                            temp = y_data_imopVar76[j * vecstride_y + i_imopVar77 * idxstride_y];
                            /*[7]*/
                            /*[7]*/
                            /*[7]*/
                            /*[7]*/
                            for (jj = A_i[i_imopVar77]; jj < A_i[i_imopVar77 + 1]; jj++) {
                            /*[7]*/
                                /*[7]*/
                                temp += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                            }
                            /*[7]*/
                            y_data_imopVar76[j * vecstride_y + i_imopVar77 * idxstride_y] = temp;
                        }
                    }
                }
            }
            /*[7]*/
#pragma omp master
            {
            /*[7]*/
                /*[7]*/
                /*[7]*/
                if (alpha != 1.0) {
                /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    for (i_imopVar77 = 0; i_imopVar77 < num_rows * num_vectors; i_imopVar77++) {
                    /*[7]*/
                        /*[7]*/
                        y_data_imopVar76[i_imopVar77] *= alpha;
                    }
                }
                /*[7]*/
                ierr;
            }
        }
        /*[]*/
        goto hypre_CSRMatrixMatvec_imopVar75;
        /*[]*/
        hypre_CSRMatrixMatvec_imopVar75: ;
    }
    /*[]*/
    void *_imopVarPre526;
    /*[]*/
    struct timeval *_imopVarPre527;
    /*[]*/
    _imopVarPre526 = ((void *) 0);
    /*[]*/
    _imopVarPre527 = &t1_imopVar79;
    /*[]*/
    gettimeofday(_imopVarPre527, _imopVarPre526);
    /*[]*/
    /*[]*/
    t1_cpu_imopVar81 = clock();
    /*[]*/
    /*[]*/
    totalWallTime += (double) (t1_imopVar79.tv_sec - t0_imopVar78.tv_sec) + (double) (t1_imopVar79.tv_usec - t0_imopVar78.tv_usec) / 1000000.0;
    /*[]*/
    totalCPUTime += ((double) (t1_cpu_imopVar81 - t0_cpu_imopVar80)) / 1000000;
    /*[]*/
    y_data = (y->data);
    /*[]*/
    sol_data = (sol->data);
    /*[]*/
    error = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nx * ny * nz; i++) {
    /*[]*/
        /*[]*/
        double _imopVarPre529;
        /*[]*/
        double _imopVarPre530;
        /*[]*/
        _imopVarPre529 = y_data[i] - sol_data[i];
        /*[]*/
        _imopVarPre530 = fabs(_imopVarPre529);
        /*[]*/
        /*[]*/
        diff = _imopVarPre530;
        /*[]*/
        /*[]*/
        if (diff > error) {
        /*[]*/
            /*[]*/
            error = diff;
        }
    }
    /*[]*/
    /*[]*/
    if (error > 0) {
    /*[]*/
        /*[]*/
        printf(" \n Matvec: error: %e\n", error);
        /*[]*/
    }
    /*[]*/
    char *_imopVarPre534;
    /*[]*/
    _imopVarPre534 = (char *) values;
    /*[]*/
    hypre_Free(_imopVarPre534);
    /*[]*/
    /*[]*/
    (values = ((void *) 0));
    /*[]*/
    hypre_CSRMatrixDestroy(A);
    /*[]*/
    /*[]*/
    hypre_SeqVectorDestroy(x);
    /*[]*/
    /*[]*/
    hypre_SeqVectorDestroy(y);
    /*[]*/
    /*[]*/
    hypre_SeqVectorDestroy(sol);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//   MATVEC\n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*[]*/
    /*[]*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*[]*/
    /*[]*/
    totalWallTime = 0.0;
    /*[]*/
    totalCPUTime = 0.0;
    /*[]*/
    struct timeval t0_imopVar83;
    /*[]*/
    struct timeval t1_imopVar84;
    /*[]*/
    clock_t t0_cpu_imopVar85 = 0;
    /*[]*/
    clock_t t1_cpu_imopVar86 = 0;
    /*[]*/
    hypre_CSRMatrix *A_imopVar87;
    /*[]*/
    hypre_Vector *x_imopVar88;
    /*[]*/
    hypre_Vector *y_imopVar89;
    /*[]*/
    hypre_Vector *sol_imopVar90;
    /*[]*/
    int nx_imopVar91;
    /*[]*/
    int ny_imopVar92;
    /*[]*/
    int nz_imopVar93;
    /*[]*/
    int i_imopVar94;
    /*[]*/
    double *values_imopVar95;
    /*[]*/
    double *x_data;
    /*[]*/
    double diff_imopVar96;
    /*[]*/
    double error_imopVar97;
    /*[]*/
    nx_imopVar91 = 50;
    /*[]*/
    ny_imopVar92 = 50;
    /*[]*/
    nz_imopVar93 = 50;
    /*[]*/
    unsigned int _imopVarPre544;
    /*[]*/
    unsigned int _imopVarPre545;
    /*[]*/
    char *_imopVarPre546;
    /*[]*/
    _imopVarPre544 = (unsigned int) sizeof(double);
    /*[]*/
    _imopVarPre545 = (unsigned int) 4;
    /*[]*/
    _imopVarPre546 = hypre_CAlloc(_imopVarPre545, _imopVarPre544);
    /*[]*/
    /*[]*/
    values_imopVar95 = ((double *) _imopVarPre546);
    /*[]*/
    values_imopVar95[0] = 6;
    /*[]*/
    values_imopVar95[1] = -1;
    /*[]*/
    values_imopVar95[2] = -1;
    /*[]*/
    values_imopVar95[3] = -1;
    /*[]*/
    struct stUn_imopVarPre15 **_imopVarPre550;
    /*[]*/
    struct stUn_imopVarPre15 **_imopVarPre551;
    /*[]*/
    struct stUn_imopVarPre15 **_imopVarPre552;
    /*[]*/
    struct stUn_imopVarPre14 *_imopVarPre553;
    /*[]*/
    _imopVarPre550 = &sol_imopVar90;
    /*[]*/
    _imopVarPre551 = &x_imopVar88;
    /*[]*/
    _imopVarPre552 = &y_imopVar89;
    /*[]*/
    _imopVarPre553 = GenerateSeqLaplacian(nx_imopVar91, ny_imopVar92, nz_imopVar93, values_imopVar95, _imopVarPre552, _imopVarPre551, _imopVarPre550);
    /*[]*/
    /*[]*/
    A_imopVar87 = _imopVarPre553;
    /*[]*/
    hypre_SeqVectorSetConstantValues(x_imopVar88, 1);
    /*[]*/
    /*[]*/
    void *_imopVarPre556;
    /*[]*/
    struct timeval *_imopVarPre557;
    /*[]*/
    _imopVarPre556 = ((void *) 0);
    /*[]*/
    _imopVarPre557 = &t0_imopVar83;
    /*[]*/
    gettimeofday(_imopVarPre557, _imopVarPre556);
    /*[]*/
    /*[]*/
    t0_cpu_imopVar85 = clock();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVar94 = 0; i_imopVar94 < testIter; ++i_imopVar94) {
    /*[]*/
        /*[]*/
        int jj;
        /*[]*/
        int ns;
        /*[]*/
        int ne;
        /*[]*/
        int size;
        /*[]*/
        struct stUn_imopVarPre15 *f;
        /*[]*/
        struct stUn_imopVarPre15 *u;
        /*[]*/
        int rest;
        /*[]*/
        double *tmp_data;
        /*[]*/
        double res;
        /*[]*/
        int i_imopVar82;
        /*[]*/
        int j;
        /*[]*/
        int ii;
        /*[8]*/
#pragma omp parallel
        {
        /*[8]*/
            /*[8]*/
#pragma omp master
            {
            /*[8]*/
                /*[8]*/
                f = sol_imopVar90;
                /*[8]*/
                u = x_imopVar88;
            }
            /*[8]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[8]*/
#pragma omp barrier
            /*[2]*/
            int relax_error = 0;
            /*[2]*/
            double *A_diag_data = (A_imopVar87->data);
            /*[2]*/
            int *A_diag_i = (A_imopVar87->i);
            /*[2]*/
            int *A_diag_j = (A_imopVar87->j);
            /*[2]*/
            int n = (A_imopVar87->num_rows);
            /*[2]*/
            double *u_data = (u->data);
            /*[2]*/
            double *f_data = (f->data);
            /*[2]*/
            int numThreads;
            /*[2]*/
#pragma omp master
            {
            /*[2]*/
                /*[2]*/
                numThreads = 1;
            }
            /*[2]*/
            /*[2]*/
            if (1) {
            /*[2]*/
                /*[2]*/
                unsigned int _imopVarPre428;
                /*[2]*/
                unsigned int _imopVarPre429;
                /*[2]*/
                char *_imopVarPre430;
                /*[2]*/
#pragma omp master
                {
                /*[2]*/
                    /*[2]*/
                    _imopVarPre428 = (unsigned int) sizeof(double);
                    /*[2]*/
                    _imopVarPre429 = (unsigned int) n;
                    /*[2]*/
                    _imopVarPre430 = hypre_CAlloc(_imopVarPre429, _imopVarPre428);
                    /*[2]*/
                    /*[2]*/
                    tmp_data = ((double *) _imopVarPre430);
                }
                /*[2]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[2]*/
#pragma omp barrier
                /*[9]*/
                char *_imopVarPre436;
                /*[9]*/
                numThreads = omp_get_num_threads();
                /*[9]*/
                /*[9]*/
#pragma omp for private(i_imopVar82) nowait
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (i_imopVar82 = 0; i_imopVar82 < n; i_imopVar82++) {
                /*[9]*/
                    /*[9]*/
                    tmp_data[i_imopVar82] = u_data[i_imopVar82];
                }
                /*[9]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[9]*/
#pragma omp barrier
                /*[10]*/
#pragma omp for private(i_imopVar82, ii, j, jj, ns, ne, res, rest, size) nowait
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (j = 0; j < numThreads; j++) {
                /*[10]*/
                    /*[10]*/
                    size = n / numThreads;
                    /*[10]*/
                    rest = n - size * numThreads;
                    /*[10]*/
                    /*[10]*/
                    if (j < rest) {
                    /*[10]*/
                        /*[10]*/
                        ns = j * size + j;
                        /*[10]*/
                        ne = (j + 1) * size + j + 1;
                    } else {
                    /*[10]*/
                        /*[10]*/
                        ns = j * size + rest;
                        /*[10]*/
                        ne = (j + 1) * size + rest;
                    }
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (i_imopVar82 = ns; i_imopVar82 < ne; i_imopVar82++) {
                    /*[10]*/
                        /*[10]*/
                        /*[10]*/
                        if (A_diag_data[A_diag_i[i_imopVar82]] != 0.0) {
                        /*[10]*/
                            /*[10]*/
                            res = f_data[i_imopVar82];
                            /*[10]*/
                            /*[10]*/
                            /*[10]*/
                            /*[10]*/
                            for (jj = A_diag_i[i_imopVar82] + 1; jj < A_diag_i[i_imopVar82 + 1]; jj++) {
                            /*[10]*/
                                /*[10]*/
                                ii = A_diag_j[jj];
                                /*[10]*/
                                int _imopVarPre432;
                                /*[10]*/
                                _imopVarPre432 = ii >= ns;
                                /*[10]*/
                                /*[10]*/
                                if (_imopVarPre432) {
                                /*[10]*/
                                    /*[10]*/
                                    _imopVarPre432 = ii < ne;
                                }
                                /*[10]*/
                                /*[10]*/
                                if (_imopVarPre432) {
                                /*[10]*/
                                    /*[10]*/
                                    res -= A_diag_data[jj] * u_data[ii];
                                } else {
                                /*[10]*/
                                    /*[10]*/
                                    res -= A_diag_data[jj] * tmp_data[ii];
                                }
                            }
                            /*[10]*/
                            u_data[i_imopVar82] = res / A_diag_data[A_diag_i[i_imopVar82]];
                        }
                    }
                }
                /*[10]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[10]*/
#pragma omp barrier
                /*[5]*/
#pragma omp master
                {
                /*[5]*/
                    /*[5]*/
                    _imopVarPre436 = (char *) tmp_data;
                    /*[5]*/
                    hypre_Free(_imopVarPre436);
                    /*[5]*/
                    /*[5]*/
                    (tmp_data = ((void *) 0));
                }
            } else {
            /*[]*/
                /*[]*/
#pragma omp master
                {
                /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    /*[]*/
                    for (i_imopVar82 = 0; i_imopVar82 < n; i_imopVar82++) {
                    /*[]*/
                        /*[]*/
                        /*[]*/
                        if (A_diag_data[A_diag_i[i_imopVar82]] != 0.0) {
                        /*[]*/
                            /*[]*/
                            res = f_data[i_imopVar82];
                            /*[]*/
                            /*[]*/
                            /*[]*/
                            /*[]*/
                            for (jj = A_diag_i[i_imopVar82] + 1; jj < A_diag_i[i_imopVar82 + 1]; jj++) {
                            /*[]*/
                                /*[]*/
                                ii = A_diag_j[jj];
                                /*[]*/
                                res -= A_diag_data[jj] * u_data[ii];
                            }
                            /*[]*/
                            u_data[i_imopVar82] = res / A_diag_data[A_diag_i[i_imopVar82]];
                        }
                    }
                }
            }
            /*[5]*/
#pragma omp master
            {
            /*[5]*/
                /*[5]*/
                relax_error;
            }
        }
    }
    /*[]*/
    void *_imopVarPre560;
    /*[]*/
    struct timeval *_imopVarPre561;
    /*[]*/
    _imopVarPre560 = ((void *) 0);
    /*[]*/
    _imopVarPre561 = &t1_imopVar84;
    /*[]*/
    gettimeofday(_imopVarPre561, _imopVarPre560);
    /*[]*/
    /*[]*/
    t1_cpu_imopVar86 = clock();
    /*[]*/
    /*[]*/
    totalWallTime += (double) (t1_imopVar84.tv_sec - t0_imopVar83.tv_sec) + (double) (t1_imopVar84.tv_usec - t0_imopVar83.tv_usec) / 1000000.0;
    /*[]*/
    totalCPUTime += ((double) (t1_cpu_imopVar86 - t0_cpu_imopVar85)) / 1000000;
    /*[]*/
    x_data = (x_imopVar88->data);
    /*[]*/
    error_imopVar97 = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i_imopVar94 = 0; i_imopVar94 < nx_imopVar91 * ny_imopVar92 * nz_imopVar93; i_imopVar94++) {
    /*[]*/
        /*[]*/
        double _imopVarPre563;
        /*[]*/
        double _imopVarPre564;
        /*[]*/
        _imopVarPre563 = x_data[i_imopVar94] - 1;
        /*[]*/
        _imopVarPre564 = fabs(_imopVarPre563);
        /*[]*/
        /*[]*/
        diff_imopVar96 = _imopVarPre564;
        /*[]*/
        /*[]*/
        if (diff_imopVar96 > error_imopVar97) {
        /*[]*/
            /*[]*/
            error_imopVar97 = diff_imopVar96;
        }
    }
    /*[]*/
    /*[]*/
    if (error_imopVar97 > 0) {
    /*[]*/
        /*[]*/
        printf(" \n Relax: error: %e\n", error_imopVar97);
        /*[]*/
    }
    /*[]*/
    char *_imopVarPre568;
    /*[]*/
    _imopVarPre568 = (char *) values_imopVar95;
    /*[]*/
    hypre_Free(_imopVarPre568);
    /*[]*/
    /*[]*/
    (values_imopVar95 = ((void *) 0));
    /*[]*/
    hypre_CSRMatrixDestroy(A_imopVar87);
    /*[]*/
    /*[]*/
    hypre_SeqVectorDestroy(x_imopVar88);
    /*[]*/
    /*[]*/
    hypre_SeqVectorDestroy(y_imopVar89);
    /*[]*/
    /*[]*/
    hypre_SeqVectorDestroy(sol_imopVar90);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//   Relax\n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*[]*/
    /*[]*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*[]*/
    /*[]*/
    totalWallTime = 0.0;
    /*[]*/
    totalCPUTime = 0.0;
    /*[]*/
    test_Axpy();
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//   Axpy\n");
    /*[]*/
    /*[]*/
    printf("// \n");
    /*[]*/
    /*[]*/
    printf("//------------ \n");
    /*[]*/
    /*[]*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*[]*/
    /*[]*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*[]*/
    /*[]*/
    void *_imopVarPre497;
    /*[]*/
    struct timeval *_imopVarPre498;
    /*[]*/
    _imopVarPre497 = ((void *) 0);
    /*[]*/
    _imopVarPre498 = &t1;
    /*[]*/
    gettimeofday(_imopVarPre498, _imopVarPre497);
    /*[]*/
    /*[]*/
    t1_cpu = clock();
    /*[]*/
    /*[]*/
    del_wtime = (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*[]*/
    printf("\nTotal Wall time = %f seconds. \n", del_wtime);
    /*[]*/
    /*[]*/
    double _imopVarPre500;
    /*[]*/
    _imopVarPre500 = ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*[]*/
    printf("\nTotal CPU  time = %f seconds. \n", _imopVarPre500);
    /*[]*/
    /*[]*/
    return 0;
}
/*[]*/
void test_Axpy() {
/*[]*/
    /*[]*/
    struct timeval t0;
    /*[]*/
    struct timeval t1;
    /*[]*/
    clock_t t0_cpu = 0;
    /*[]*/
    clock_t t1_cpu = 0;
    /*[]*/
    hypre_Vector *x;
    /*[]*/
    hypre_Vector *y;
    /*[]*/
    int nx;
    /*[]*/
    int i;
    /*[]*/
    double alpha = 0.5;
    /*[]*/
    double diff;
    /*[]*/
    double error;
    /*[]*/
    double *y_data;
    /*[]*/
    nx = 125000;
    /*[]*/
    x = hypre_SeqVectorCreate(nx);
    /*[]*/
    /*[]*/
    y = hypre_SeqVectorCreate(nx);
    /*[]*/
    /*[]*/
    hypre_SeqVectorInitialize(x);
    /*[]*/
    /*[]*/
    hypre_SeqVectorInitialize(y);
    /*[]*/
    /*[]*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*[]*/
    /*[]*/
    hypre_SeqVectorSetConstantValues(y, 1);
    /*[]*/
    /*[]*/
    void *_imopVarPre571;
    /*[]*/
    struct timeval *_imopVarPre572;
    /*[]*/
    _imopVarPre571 = ((void *) 0);
    /*[]*/
    _imopVarPre572 = &t0;
    /*[]*/
    gettimeofday(_imopVarPre572, _imopVarPre571);
    /*[]*/
    /*[]*/
    t0_cpu = clock();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < testIter; ++i) {
    /*[]*/
        /*[]*/
        hypre_SeqVectorAxpy(alpha, x, y);
        /*[]*/
    }
    /*[]*/
    void *_imopVarPre575;
    /*[]*/
    struct timeval *_imopVarPre576;
    /*[]*/
    _imopVarPre575 = ((void *) 0);
    /*[]*/
    _imopVarPre576 = &t1;
    /*[]*/
    gettimeofday(_imopVarPre576, _imopVarPre575);
    /*[]*/
    /*[]*/
    t1_cpu = clock();
    /*[]*/
    /*[]*/
    y_data = (y->data);
    /*[]*/
    error = 0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nx; i++) {
    /*[]*/
        /*[]*/
        double _imopVarPre578;
        /*[]*/
        double _imopVarPre579;
        /*[]*/
        _imopVarPre578 = y_data[i] - 1 - 0.5 * (double) testIter;
        /*[]*/
        _imopVarPre579 = fabs(_imopVarPre578);
        /*[]*/
        /*[]*/
        diff = _imopVarPre579;
        /*[]*/
        /*[]*/
        if (diff > error) {
        /*[]*/
            /*[]*/
            error = diff;
        }
    }
    /*[]*/
    /*[]*/
    if (error > 0) {
    /*[]*/
        /*[]*/
        printf(" \n Axpy: error: %e\n", error);
        /*[]*/
    }
    /*[]*/
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*[]*/
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*[]*/
    hypre_SeqVectorDestroy(x);
    /*[]*/
    /*[]*/
    hypre_SeqVectorDestroy(y);
    /*[]*/
}
