
/*READ_S: []
WRITE_S: []*/
typedef int __int32_t;
/*READ_S: []
WRITE_S: []*/
typedef long long __int64_t;
/*READ_S: []
WRITE_S: []*/
typedef long unsigned int __darwin_size_t;
/*READ_S: []
WRITE_S: []*/
typedef unsigned long __darwin_clock_t;
/*READ_S: []
WRITE_S: []*/
typedef long __darwin_time_t;
/*READ_S: []
WRITE_S: []*/
typedef __int64_t __darwin_off_t;
/*READ_S: []
WRITE_S: []*/
typedef __int32_t __darwin_suseconds_t;
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
WRITE_S: [__stdoutp]*/
extern FILE *__stdoutp;
/*READ_S: []
WRITE_S: [__stderrp]*/
extern FILE *__stderrp;
/*READ_S: []
WRITE_S: [fflush]*/
int fflush(FILE *);
/*READ_S: []
WRITE_S: [fprintf]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: []*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*READ_S: []
WRITE_S: [calloc]*/
void *calloc(size_t __count, size_t __size);
/*READ_S: []
WRITE_S: [free]*/
void free(void *);
/*READ_S: []
WRITE_S: []*/
typedef __darwin_clock_t clock_t;
/*READ_S: []
WRITE_S: [clock]*/
clock_t clock(void );
/*READ_S: []
WRITE_S: [gettimeofday]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*READ_S: []
WRITE_S: [fabs]*/
extern double fabs(double );
/*READ_S: []
WRITE_S: [omp_get_num_threads]*/
extern int omp_get_num_threads(void );
/*READ_S: []
WRITE_S: [hypre_OutOfMemory]*/
int hypre_OutOfMemory(int size);
/*READ_S: []
WRITE_S: [hypre_CAlloc]*/
char *hypre_CAlloc(int count, int elt_size);
/*READ_S: []
WRITE_S: [hypre_Free]*/
void hypre_Free(char *ptr);
/*READ_S: []
WRITE_S: [hypre__global_error]*/
extern int hypre__global_error;
/*READ_S: []
WRITE_S: [hypre_error_handler]*/
void hypre_error_handler(char *filename, int line , int ierr);
/*READ_S: []
WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
typedef struct stUn_imopVarPre14 hypre_CSRMatrix;
/*READ_S: []
WRITE_S: []*/
struct stUn_imopVarPre15 {
    double *data;
    int size;
    int owns_data;
    int num_vectors;
    int multivec_storage_method;
    int vecstride, idxstride;
} ;
/*READ_S: []
WRITE_S: []*/
typedef struct stUn_imopVarPre15 hypre_Vector;
/*READ_S: []
WRITE_S: [hypre_CSRMatrixCreate]*/
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros);
/*READ_S: []
WRITE_S: [hypre_CSRMatrixDestroy]*/
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix);
/*READ_S: []
WRITE_S: [hypre_CSRMatrixMatvec]*/
int hypre_CSRMatrixMatvec(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y);
/*READ_S: []
WRITE_S: [hypre_SeqVectorCreate]*/
hypre_Vector *hypre_SeqVectorCreate(int size);
/*READ_S: []
WRITE_S: [hypre_SeqVectorDestroy]*/
int hypre_SeqVectorDestroy(hypre_Vector *vector);
/*READ_S: []
WRITE_S: [hypre_SeqVectorInitialize]*/
int hypre_SeqVectorInitialize(hypre_Vector *vector);
/*READ_S: []
WRITE_S: [hypre_SeqVectorSetConstantValues]*/
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value);
/*READ_S: []
WRITE_S: [hypre_SeqVectorAxpy]*/
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y);
/*READ_S: []
WRITE_S: [GenerateSeqLaplacian]*/
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *values , hypre_Vector **x_ptr , hypre_Vector **y_ptr , hypre_Vector **sol_ptr);
/*READ_S: []
WRITE_S: [hypre_BoomerAMGSeqRelax]*/
int hypre_BoomerAMGSeqRelax(hypre_CSRMatrix *A, hypre_Vector *x , hypre_Vector *y);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [__stdoutp, heapCell#1, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush, hypre_CAlloc]
WRITE_S: [heapCell#1, hypre__global_error]*/
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros) {
/*READ_S: [__stdoutp, heapCell#1, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush, hypre_CAlloc]
WRITE_S: [heapCell#1, hypre__global_error]*/
    /*READ_S: []
    WRITE_S: []*/
    hypre_CSRMatrix *matrix;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre153;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre154;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre155;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre153 = (unsigned int) sizeof(hypre_CSRMatrix);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre154 = (unsigned int) 1;
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre155 = hypre_CAlloc(_imopVarPre154, _imopVarPre153);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    matrix = ((hypre_CSRMatrix *) _imopVarPre155);
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->data) = ((void *) 0);
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->i) = ((void *) 0);
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->j) = ((void *) 0);
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->rownnz) = ((void *) 0);
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->num_rows) = num_rows;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->num_cols) = num_cols;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->num_nonzeros) = num_nonzeros;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->owns_data) = 1;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (matrix->num_rownnz) = num_rows;
    /*READ_S: []
    WRITE_S: []*/
    return matrix;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [free, nullCell, heapCell#1, hypre_Free, matrix, ptr]
WRITE_S: [heapCell#1]*/
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix) {
/*READ_S: [free, nullCell, heapCell#1, hypre_Free, matrix, ptr]
WRITE_S: [heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [matrix]
    WRITE_S: []*/
    /*READ_S: [free, nullCell, heapCell#1, hypre_Free, matrix, ptr]
    WRITE_S: [heapCell#1]*/
    if (matrix) {
    /*READ_S: [free, nullCell, heapCell#1, hypre_Free, ptr]
    WRITE_S: [heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre159;
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        _imopVarPre159 = (char *) (matrix->i);
        /*READ_S: [hypre_Free]
        WRITE_S: []*/
        hypre_Free(_imopVarPre159);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#1]
        WRITE_S: [heapCell#1]*/
        ((matrix->i) = ((void *) 0));
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: [free, nullCell, heapCell#1, hypre_Free, ptr]
        WRITE_S: [heapCell#1]*/
        if ((matrix->rownnz)) {
        /*READ_S: [free, heapCell#1, hypre_Free, ptr]
        WRITE_S: [heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre163;
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
            _imopVarPre163 = (char *) (matrix->rownnz);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre163);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1]
            WRITE_S: [heapCell#1]*/
            ((matrix->rownnz) = ((void *) 0));
        }
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: [free, nullCell, heapCell#1, hypre_Free, ptr]
        WRITE_S: [heapCell#1]*/
        if ((matrix->owns_data)) {
        /*READ_S: [free, heapCell#1, hypre_Free, ptr]
        WRITE_S: [heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre167;
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
            _imopVarPre167 = (char *) (matrix->data);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre167);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1]
            WRITE_S: [heapCell#1]*/
            ((matrix->data) = ((void *) 0));
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre171;
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
            _imopVarPre171 = (char *) (matrix->j);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre171);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1]
            WRITE_S: [heapCell#1]*/
            ((matrix->j) = ((void *) 0));
        }
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre175;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre175 = (char *) matrix;
        /*READ_S: [hypre_Free]
        WRITE_S: []*/
        hypre_Free(_imopVarPre175);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        (matrix = ((void *) 0));
    }
    /*READ_S: []
    WRITE_S: []*/
    return ierr;
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
/*READ_S: [A_j, j, A_i, y_data, __stderrp, num_vectors, num_rows, A_data, idxstride_x, i, fprintf, _imopVarPre292, idxstride_y, heapCell#1, vecstride_y, hypre__global_error, vecstride_x, hypre_error_handler, x_data]
WRITE_S: [j, hypre__global_error]*/
int hypre_CSRMatrixMatvec(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y) {
/*READ_S: [A_j, j, A_i, y_data, __stderrp, num_vectors, num_rows, A_data, idxstride_x, i, fprintf, _imopVarPre292, idxstride_y, heapCell#1, vecstride_y, hypre__global_error, vecstride_x, hypre_error_handler, x_data]
WRITE_S: [j, hypre__global_error]*/
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    double *A_data = (A->data);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int *A_i = (A->i);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int *A_j = (A->j);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int num_rows = (A->num_rows);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int num_cols = (A->num_cols);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int *A_rownnz = (A->rownnz);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int num_rownnz = (A->num_rownnz);
    /*READ_S: []
    WRITE_S: []*/
    double *x_data = (x->data);
    /*READ_S: []
    WRITE_S: []*/
    double *y_data = (y->data);
    /*READ_S: []
    WRITE_S: []*/
    int x_size = (x->size);
    /*READ_S: []
    WRITE_S: []*/
    int y_size = (y->size);
    /*READ_S: []
    WRITE_S: []*/
    int num_vectors = (x->num_vectors);
    /*READ_S: []
    WRITE_S: []*/
    int idxstride_y = (y->idxstride);
    /*READ_S: []
    WRITE_S: []*/
    int vecstride_y = (y->vecstride);
    /*READ_S: []
    WRITE_S: []*/
    int idxstride_x = (x->idxstride);
    /*READ_S: []
    WRITE_S: []*/
    int vecstride_x = (x->vecstride);
    /*READ_S: []
    WRITE_S: []*/
    double temp;
    /*READ_S: []
    WRITE_S: []*/
    double tempx;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int jj;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    double xpar = 0.7;
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre__global_error, __stderrp, hypre_error_handler, fprintf]
    WRITE_S: [hypre__global_error]*/
    if (!(num_vectors == (y->num_vectors))) {
    /*READ_S: [hypre__global_error, __stderrp, hypre_error_handler, fprintf]
    WRITE_S: [hypre__global_error]*/
        /*READ_S: [__stderrp, fprintf]
        WRITE_S: []*/
        fprintf(__stderrp, "hypre_assert failed: %s\n", "num_vectors == hypre_VectorNumVectors(y)");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [hypre_error_handler]
        WRITE_S: []*/
        hypre_error_handler("amgmk.c", 1112, 1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (num_cols != x_size) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        ierr = 1;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (num_rows != y_size) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        ierr = 2;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre292;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre292 = num_cols != x_size;
    /*READ_S: [_imopVarPre292]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre292]
    WRITE_S: []*/
    if (_imopVarPre292) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre292 = num_rows != y_size;
    }
    /*READ_S: [_imopVarPre292]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre292]
    WRITE_S: []*/
    if (_imopVarPre292) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        ierr = 3;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (alpha == 0.0) {
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
        for (i = 0; i < num_rows * num_vectors; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            y_data[i] *= beta;
        }
        /*READ_S: []
        WRITE_S: []*/
        return ierr;
    }
    /*READ_S: []
    WRITE_S: []*/
    temp = beta / alpha;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (temp != 1.0) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (temp == 0.0) {
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
            for (i = 0; i < num_rows * num_vectors; i++) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                y_data[i] = 0.0;
            }
        } else {
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
            for (i = 0; i < num_rows * num_vectors; i++) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                y_data[i] *= temp;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [A_j, j, A_i, y_data, num_vectors, num_rows, A_data, idxstride_x, i, idxstride_y, heapCell#1, vecstride_y, vecstride_x, x_data]
    WRITE_S: [j]*/
    if (num_rownnz < xpar * num_rows) {
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        for (i = 0; i < num_rownnz; i++) {
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
            m = A_rownnz[i];
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
            if (num_vectors == 1) {
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                tempx = y_data[m];
                /*READ_S: [heapCell#1]
                WRITE_S: []*/
                /*READ_S: [heapCell#1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#1]
                WRITE_S: []*/
                for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                /*READ_S: [heapCell#1]
                WRITE_S: []*/
                    /*READ_S: [heapCell#1]
                    WRITE_S: []*/
                    tempx += A_data[jj] * x_data[A_j[jj]];
                }
                /*READ_S: []
                WRITE_S: []*/
                y_data[m] = tempx;
            } else {
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#1]
                WRITE_S: []*/
                for (j = 0; j < num_vectors; ++j) {
                /*READ_S: [heapCell#1]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    tempx = y_data[j * vecstride_y + m * idxstride_y];
                    /*READ_S: [heapCell#1]
                    WRITE_S: []*/
                    /*READ_S: [heapCell#1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#1]
                    WRITE_S: []*/
                    for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                    /*READ_S: [heapCell#1]
                    WRITE_S: []*/
                        /*READ_S: [heapCell#1]
                        WRITE_S: []*/
                        tempx += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    y_data[j * vecstride_y + m * idxstride_y] = tempx;
                }
            }
        }
    } else {
    /*READ_S: [A_j, j, A_i, y_data, num_vectors, num_rows, A_data, idxstride_x, i, idxstride_y, heapCell#1, vecstride_y, vecstride_x, x_data]
    WRITE_S: [j]*/
        /*READ_S: [A_j, j, A_i, y_data, num_vectors, num_rows, A_data, idxstride_x, i, idxstride_y, heapCell#1, vecstride_y, vecstride_x, x_data]
        WRITE_S: [j]*/
#pragma omp parallel private(i, jj, temp)
        {
        /*READ_S: [A_j, j, A_i, y_data, num_vectors, num_rows, A_data, idxstride_x, i, idxstride_y, heapCell#1, vecstride_y, vecstride_x, x_data]
        WRITE_S: [j]*/
            /*READ_S: [A_j, j, A_i, y_data, num_vectors, num_rows, A_data, idxstride_x, i, idxstride_y, heapCell#1, vecstride_y, vecstride_x, x_data]
            WRITE_S: [j]*/
#pragma omp for schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [num_rows]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < num_rows; i++) {
            /*READ_S: [A_j, j, A_i, y_data, heapCell#1, vecstride_y, vecstride_x, num_vectors, A_data, x_data, idxstride_x, idxstride_y]
            WRITE_S: [j]*/
                /*READ_S: [num_vectors]
                WRITE_S: []*/
                /*READ_S: [A_j, j, A_i, y_data, heapCell#1, vecstride_y, vecstride_x, num_vectors, A_data, x_data, idxstride_x, idxstride_y]
                WRITE_S: [j]*/
                if (num_vectors == 1) {
                /*READ_S: [A_j, A_i, y_data, heapCell#1, A_data, x_data]
                WRITE_S: []*/
                    /*READ_S: [y_data]
                    WRITE_S: []*/
                    temp = y_data[i];
                    /*READ_S: [A_i, heapCell#1]
                    WRITE_S: []*/
                    /*READ_S: [A_i, heapCell#1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [A_j, A_i, heapCell#1, A_data, x_data]
                    WRITE_S: []*/
                    for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                    /*READ_S: [A_j, heapCell#1, A_data, x_data]
                    WRITE_S: []*/
                        /*READ_S: [A_j, heapCell#1, A_data, x_data]
                        WRITE_S: []*/
                        temp += A_data[jj] * x_data[A_j[jj]];
                    }
                    /*READ_S: [y_data]
                    WRITE_S: []*/
                    y_data[i] = temp;
                } else {
                /*READ_S: [A_j, j, A_i, y_data, heapCell#1, vecstride_y, vecstride_x, num_vectors, A_data, idxstride_x, x_data, idxstride_y]
                WRITE_S: [j]*/
                    /*READ_S: []
                    WRITE_S: [j]*/
                    /*READ_S: [j, num_vectors]
                    WRITE_S: []*/
                    /*READ_S: [j]
                    WRITE_S: [j]*/
                    /*READ_S: [A_j, j, A_i, y_data, heapCell#1, vecstride_y, vecstride_x, num_vectors, A_data, idxstride_x, x_data, idxstride_y]
                    WRITE_S: [j]*/
                    for (j = 0; j < num_vectors; ++j) {
                    /*READ_S: [A_j, j, A_i, y_data, heapCell#1, vecstride_y, vecstride_x, A_data, idxstride_x, x_data, idxstride_y]
                    WRITE_S: []*/
                        /*READ_S: [j, y_data, vecstride_y, idxstride_y]
                        WRITE_S: []*/
                        temp = y_data[j * vecstride_y + i * idxstride_y];
                        /*READ_S: [A_i, heapCell#1]
                        WRITE_S: []*/
                        /*READ_S: [A_i, heapCell#1]
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [A_j, A_i, j, heapCell#1, vecstride_x, A_data, idxstride_x, x_data]
                        WRITE_S: []*/
                        for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                        /*READ_S: [A_j, j, heapCell#1, vecstride_x, A_data, idxstride_x, x_data]
                        WRITE_S: []*/
                            /*READ_S: [A_j, j, heapCell#1, vecstride_x, A_data, idxstride_x, x_data]
                            WRITE_S: []*/
                            temp += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                        }
                        /*READ_S: [j, y_data, vecstride_y, idxstride_y]
                        WRITE_S: []*/
                        y_data[j * vecstride_y + i * idxstride_y] = temp;
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
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (alpha != 1.0) {
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
        for (i = 0; i < num_rows * num_vectors; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            y_data[i] *= alpha;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return ierr;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [__stdoutp, heapCell#1, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush, hypre_CAlloc]
WRITE_S: [heapCell#1, hypre__global_error]*/
hypre_Vector *hypre_SeqVectorCreate(int size) {
/*READ_S: [__stdoutp, heapCell#1, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush, hypre_CAlloc]
WRITE_S: [heapCell#1, hypre__global_error]*/
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *vector;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre310;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre311;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre312;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre310 = (unsigned int) sizeof(hypre_Vector);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre311 = (unsigned int) 1;
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre312 = hypre_CAlloc(_imopVarPre311, _imopVarPre310);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    vector = ((hypre_Vector *) _imopVarPre312);
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (vector->data) = ((void *) 0);
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (vector->size) = size;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (vector->num_vectors) = 1;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (vector->multivec_storage_method) = 0;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (vector->owns_data) = 1;
    /*READ_S: []
    WRITE_S: []*/
    return vector;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [free, nullCell, heapCell#1, hypre_Free, vector, ptr]
WRITE_S: [heapCell#1]*/
int hypre_SeqVectorDestroy(hypre_Vector *vector) {
/*READ_S: [free, nullCell, heapCell#1, hypre_Free, vector, ptr]
WRITE_S: [heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [vector]
    WRITE_S: []*/
    /*READ_S: [free, nullCell, heapCell#1, hypre_Free, vector, ptr]
    WRITE_S: [heapCell#1]*/
    if (vector) {
    /*READ_S: [free, nullCell, heapCell#1, hypre_Free, ptr]
    WRITE_S: [heapCell#1]*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: [free, nullCell, heapCell#1, hypre_Free, ptr]
        WRITE_S: [heapCell#1]*/
        if ((vector->owns_data)) {
        /*READ_S: [free, heapCell#1, hypre_Free, ptr]
        WRITE_S: [heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre317;
            /*READ_S: [heapCell#1]
            WRITE_S: []*/
            _imopVarPre317 = (char *) (vector->data);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre317);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1]
            WRITE_S: [heapCell#1]*/
            ((vector->data) = ((void *) 0));
        }
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre321;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre321 = (char *) vector;
        /*READ_S: [hypre_Free]
        WRITE_S: []*/
        hypre_Free(_imopVarPre321);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        (vector = ((void *) 0));
    }
    /*READ_S: []
    WRITE_S: []*/
    return ierr;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [__stdoutp, heapCell#1, hypre_OutOfMemory, hypre__global_error, printf, calloc, hypre_error_handler, fflush, hypre_CAlloc]
WRITE_S: [heapCell#1, hypre__global_error]*/
int hypre_SeqVectorInitialize(hypre_Vector *vector) {
/*READ_S: [__stdoutp, heapCell#1, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush, hypre_CAlloc]
WRITE_S: [heapCell#1, hypre__global_error]*/
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int size = (vector->size);
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int num_vectors = (vector->num_vectors);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int multivec_storage_method = (vector->multivec_storage_method);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    /*READ_S: [__stdoutp, heapCell#1, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush, hypre_CAlloc]
    WRITE_S: [hypre__global_error]*/
    if (!(vector->data)) {
    /*READ_S: [__stdoutp, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush, hypre_CAlloc]
    WRITE_S: [hypre__global_error]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned int _imopVarPre331;
        /*READ_S: []
        WRITE_S: []*/
        unsigned int _imopVarPre332;
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre333;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre331 = (unsigned int) sizeof(double);
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre332 = (unsigned int) (num_vectors * size);
        /*READ_S: [hypre_CAlloc]
        WRITE_S: []*/
        _imopVarPre333 = hypre_CAlloc(_imopVarPre332, _imopVarPre331);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        (vector->data) = ((double *) _imopVarPre333);
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    if (multivec_storage_method == 0) {
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
        /*READ_S: [heapCell#1]
        WRITE_S: [heapCell#1]*/
        (vector->vecstride) = size;
        /*READ_S: [heapCell#1]
        WRITE_S: [heapCell#1]*/
        (vector->idxstride) = 1;
    } else {
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#1]
        WRITE_S: [heapCell#1]*/
        if (multivec_storage_method == 1) {
        /*READ_S: [heapCell#1]
        WRITE_S: [heapCell#1]*/
            /*READ_S: [heapCell#1]
            WRITE_S: [heapCell#1]*/
            (vector->vecstride) = 1;
            /*READ_S: [heapCell#1]
            WRITE_S: [heapCell#1]*/
            (vector->idxstride) = num_vectors;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            ++ierr;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return ierr;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#1]
WRITE_S: [heapCell#1]*/
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value) {
/*READ_S: [heapCell#1]
WRITE_S: [heapCell#1]*/
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    double *vector_data = (v->data);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int size = (v->size);
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    size *= (v->num_vectors);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    for (i = 0; i < size; i++) {
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
        /*READ_S: []
        WRITE_S: [heapCell#1]*/
        vector_data[i] = value;
    }
    /*READ_S: []
    WRITE_S: []*/
    return ierr;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [heapCell#1]
WRITE_S: []*/
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y) {
/*READ_S: [heapCell#1]
WRITE_S: []*/
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    double *x_data = (x->data);
    /*READ_S: []
    WRITE_S: []*/
    double *y_data = (y->data);
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    int size = (x->size);
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    size *= (x->num_vectors);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    for (i = 0; i < size; i++) {
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        y_data[i] += alpha * x_data[i];
    }
    /*READ_S: []
    WRITE_S: []*/
    return ierr;
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
/*READ_S: [hypre_OutOfMemory, fflush, hypre_CAlloc, iz, iy, __stdoutp, heapCell#1, hypre__global_error, printf, calloc, hypre_SeqVectorCreate, hypre_error_handler, hypre_CSRMatrixCreate, ix]
WRITE_S: [heapCell#1, hypre__global_error, y, y]*/
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *value , hypre_Vector **rhs_ptr , hypre_Vector **x_ptr , hypre_Vector **sol_ptr) {
/*READ_S: [hypre_OutOfMemory, fflush, hypre_CAlloc, iz, iy, __stdoutp, heapCell#1, hypre__global_error, printf, calloc, hypre_SeqVectorCreate, hypre_error_handler, hypre_CSRMatrixCreate, ix]
WRITE_S: [heapCell#1, hypre__global_error, y, y]*/
    /*READ_S: []
    WRITE_S: []*/
    hypre_CSRMatrix *A;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *rhs;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *x;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *sol;
    /*READ_S: []
    WRITE_S: []*/
    double *rhs_data;
    /*READ_S: []
    WRITE_S: []*/
    double *x_data;
    /*READ_S: []
    WRITE_S: []*/
    double *sol_data;
    /*READ_S: []
    WRITE_S: []*/
    int *A_i;
    /*READ_S: []
    WRITE_S: []*/
    int *A_j;
    /*READ_S: []
    WRITE_S: []*/
    double *A_data;
    /*READ_S: []
    WRITE_S: []*/
    int ix;
    /*READ_S: []
    WRITE_S: []*/
    int iy;
    /*READ_S: []
    WRITE_S: []*/
    int iz;
    /*READ_S: []
    WRITE_S: []*/
    int cnt;
    /*READ_S: []
    WRITE_S: []*/
    int row_index;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int grid_size;
    /*READ_S: []
    WRITE_S: []*/
    grid_size = nx * ny * nz;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre353;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre354;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre355;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre353 = (unsigned int) sizeof(int);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre354 = (unsigned int) (grid_size + 1);
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre355 = hypre_CAlloc(_imopVarPre354, _imopVarPre353);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A_i = ((int *) _imopVarPre355);
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre365;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre366;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre367;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre365 = (unsigned int) sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre366 = (unsigned int) grid_size;
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre367 = hypre_CAlloc(_imopVarPre366, _imopVarPre365);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    rhs_data = ((double *) _imopVarPre367);
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre377;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre378;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre379;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre377 = (unsigned int) sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre378 = (unsigned int) grid_size;
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre379 = hypre_CAlloc(_imopVarPre378, _imopVarPre377);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    x_data = ((double *) _imopVarPre379);
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre389;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre390;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre391;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre389 = (unsigned int) sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre390 = (unsigned int) grid_size;
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre391 = hypre_CAlloc(_imopVarPre390, _imopVarPre389);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    sol_data = ((double *) _imopVarPre391);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    for (i = 0; i < grid_size; i++) {
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
        /*READ_S: []
        WRITE_S: [heapCell#1]*/
        x_data[i] = 0.0;
        /*READ_S: []
        WRITE_S: [heapCell#1]*/
        sol_data[i] = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        rhs_data[i] = 1.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    cnt = 1;
    /*READ_S: []
    WRITE_S: []*/
    A_i[0] = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [iz, iy, ix]
    WRITE_S: []*/
    for (iz = 0; iz < nz; iz++) {
    /*READ_S: [iz, iy, ix]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [iz, iy, ix]
        WRITE_S: []*/
        for (iy = 0; iy < ny; iy++) {
        /*READ_S: [iz, iy, ix]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [iz, iy, ix]
            WRITE_S: []*/
            for (ix = 0; ix < nx; ix++) {
            /*READ_S: [iz, iy, ix]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                A_i[cnt] = A_i[cnt - 1];
                /*READ_S: []
                WRITE_S: []*/
                A_i[cnt]++;
                /*READ_S: [iz]
                WRITE_S: []*/
                /*READ_S: [iz]
                WRITE_S: []*/
                if (iz) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    A_i[cnt]++;
                }
                /*READ_S: [iy]
                WRITE_S: []*/
                /*READ_S: [iy]
                WRITE_S: []*/
                if (iy) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    A_i[cnt]++;
                }
                /*READ_S: [ix]
                WRITE_S: []*/
                /*READ_S: [ix]
                WRITE_S: []*/
                if (ix) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    A_i[cnt]++;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                if (ix + 1 < nx) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    A_i[cnt]++;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                if (iy + 1 < ny) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    A_i[cnt]++;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                if (iz + 1 < nz) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    A_i[cnt]++;
                }
                /*READ_S: []
                WRITE_S: []*/
                cnt++;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre401;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre402;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre403;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre401 = (unsigned int) sizeof(int);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre402 = (unsigned int) (A_i[grid_size]);
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre403 = hypre_CAlloc(_imopVarPre402, _imopVarPre401);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A_j = ((int *) _imopVarPre403);
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre413;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre414;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre415;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre413 = (unsigned int) sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre414 = (unsigned int) (A_i[grid_size]);
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre415 = hypre_CAlloc(_imopVarPre414, _imopVarPre413);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A_data = ((double *) _imopVarPre415);
    /*READ_S: []
    WRITE_S: []*/
    row_index = 0;
    /*READ_S: []
    WRITE_S: []*/
    cnt = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [iz, iy, heapCell#1, ix]
    WRITE_S: [heapCell#1]*/
    for (iz = 0; iz < nz; iz++) {
    /*READ_S: [iz, iy, heapCell#1, ix]
    WRITE_S: [heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [iz, iy, heapCell#1, ix]
        WRITE_S: [heapCell#1]*/
        for (iy = 0; iy < ny; iy++) {
        /*READ_S: [iz, iy, heapCell#1, ix]
        WRITE_S: [heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [iz, iy, heapCell#1, ix]
            WRITE_S: [heapCell#1]*/
            for (ix = 0; ix < nx; ix++) {
            /*READ_S: [iz, iy, heapCell#1, ix]
            WRITE_S: [heapCell#1]*/
                /*READ_S: []
                WRITE_S: [heapCell#1]*/
                A_j[cnt] = row_index;
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                A_data[cnt++] = value[0];
                /*READ_S: [iz]
                WRITE_S: []*/
                /*READ_S: [iz, heapCell#1]
                WRITE_S: [heapCell#1]*/
                if (iz) {
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    A_j[cnt] = row_index - nx * ny;
                    /*READ_S: [heapCell#1]
                    WRITE_S: [heapCell#1]*/
                    A_data[cnt++] = value[3];
                }
                /*READ_S: [iy]
                WRITE_S: []*/
                /*READ_S: [iy, heapCell#1]
                WRITE_S: [heapCell#1]*/
                if (iy) {
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    A_j[cnt] = row_index - nx;
                    /*READ_S: [heapCell#1]
                    WRITE_S: [heapCell#1]*/
                    A_data[cnt++] = value[2];
                }
                /*READ_S: [ix]
                WRITE_S: []*/
                /*READ_S: [heapCell#1, ix]
                WRITE_S: [heapCell#1]*/
                if (ix) {
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    A_j[cnt] = row_index - 1;
                    /*READ_S: [heapCell#1]
                    WRITE_S: [heapCell#1]*/
                    A_data[cnt++] = value[1];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                if (ix + 1 < nx) {
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    A_j[cnt] = row_index + 1;
                    /*READ_S: [heapCell#1]
                    WRITE_S: [heapCell#1]*/
                    A_data[cnt++] = value[1];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                if (iy + 1 < ny) {
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    A_j[cnt] = row_index + nx;
                    /*READ_S: [heapCell#1]
                    WRITE_S: [heapCell#1]*/
                    A_data[cnt++] = value[2];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                if (iz + 1 < nz) {
                /*READ_S: [heapCell#1]
                WRITE_S: [heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [heapCell#1]*/
                    A_j[cnt] = row_index + nx * ny;
                    /*READ_S: [heapCell#1]
                    WRITE_S: [heapCell#1]*/
                    A_data[cnt++] = value[3];
                }
                /*READ_S: []
                WRITE_S: []*/
                row_index++;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre417;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre14 *_imopVarPre418;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre417 = A_i[grid_size];
    /*READ_S: [hypre_CSRMatrixCreate]
    WRITE_S: []*/
    _imopVarPre418 = hypre_CSRMatrixCreate(grid_size, grid_size, _imopVarPre417);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A = _imopVarPre418;
    /*READ_S: [hypre_SeqVectorCreate]
    WRITE_S: []*/
    rhs = hypre_SeqVectorCreate(grid_size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (rhs->data) = rhs_data;
    /*READ_S: [hypre_SeqVectorCreate]
    WRITE_S: []*/
    x = hypre_SeqVectorCreate(grid_size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (x->data) = x_data;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    for (i = 0; i < grid_size; i++) {
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#1]
        WRITE_S: [heapCell#1]*/
        for (j = A_i[i]; j < A_i[i + 1]; j++) {
        /*READ_S: [heapCell#1]
        WRITE_S: [heapCell#1]*/
            /*READ_S: [heapCell#1]
            WRITE_S: [heapCell#1]*/
            sol_data[i] += A_data[j];
        }
    }
    /*READ_S: [hypre_SeqVectorCreate]
    WRITE_S: []*/
    sol = hypre_SeqVectorCreate(grid_size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (sol->data) = sol_data;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (A->i) = A_i;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (A->j) = A_j;
    /*READ_S: [heapCell#1]
    WRITE_S: [heapCell#1]*/
    (A->data) = A_data;
    /*READ_S: []
    WRITE_S: [y, y]*/
    *rhs_ptr = rhs;
    /*READ_S: []
    WRITE_S: []*/
    *x_ptr = x;
    /*READ_S: []
    WRITE_S: []*/
    *sol_ptr = sol;
    /*READ_S: []
    WRITE_S: []*/
    return A;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ii, hypre_Free, A_diag_j, j, ns, omp_get_num_threads, __stdoutp, rest, printf, size, calloc, hypre_error_handler, ptr, ne, jj, _imopVarPre432, A_diag_i, hypre_OutOfMemory, i, tmp_data, fflush, A_diag_data, hypre_CAlloc, free, res, heapCell#1, n, hypre__global_error, u_data, f_data]
WRITE_S: [jj, ii, res, heapCell#1, rest, i, hypre__global_error, size, ns, ne]*/
int hypre_BoomerAMGSeqRelax(hypre_CSRMatrix *A, hypre_Vector *f , hypre_Vector *u) {
/*READ_S: [ii, hypre_Free, A_diag_j, j, ns, omp_get_num_threads, __stdoutp, rest, printf, size, calloc, hypre_error_handler, ptr, ne, jj, _imopVarPre432, A_diag_i, hypre_OutOfMemory, i, tmp_data, fflush, A_diag_data, hypre_CAlloc, free, res, heapCell#1, n, hypre__global_error, u_data, f_data]
WRITE_S: [jj, ii, res, heapCell#1, rest, i, hypre__global_error, size, ns, ne]*/
    /*READ_S: []
    WRITE_S: []*/
    double *A_diag_data = (A->data);
    /*READ_S: []
    WRITE_S: []*/
    int *A_diag_i = (A->i);
    /*READ_S: []
    WRITE_S: []*/
    int *A_diag_j = (A->j);
    /*READ_S: []
    WRITE_S: []*/
    int n = (A->num_rows);
    /*READ_S: []
    WRITE_S: []*/
    double *u_data = (u->data);
    /*READ_S: []
    WRITE_S: []*/
    double *f_data = (f->data);
    /*READ_S: []
    WRITE_S: []*/
    double *tmp_data;
    /*READ_S: []
    WRITE_S: []*/
    double res;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int ii;
    /*READ_S: []
    WRITE_S: []*/
    int jj;
    /*READ_S: []
    WRITE_S: []*/
    int ns;
    /*READ_S: []
    WRITE_S: []*/
    int ne;
    /*READ_S: []
    WRITE_S: []*/
    int size;
    /*READ_S: []
    WRITE_S: []*/
    int rest;
    /*READ_S: []
    WRITE_S: []*/
    int relax_error = 0;
    /*READ_S: []
    WRITE_S: []*/
    int numThreads;
    /*READ_S: []
    WRITE_S: []*/
    numThreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ii, hypre_Free, A_diag_j, j, ns, omp_get_num_threads, __stdoutp, rest, printf, size, calloc, hypre_error_handler, ptr, ne, jj, _imopVarPre432, A_diag_i, hypre_OutOfMemory, i, tmp_data, fflush, A_diag_data, hypre_CAlloc, free, res, heapCell#1, n, hypre__global_error, u_data, f_data]
    WRITE_S: [jj, ii, res, heapCell#1, rest, i, hypre__global_error, size, ns, ne]*/
    if (1) {
    /*READ_S: [ii, hypre_Free, A_diag_j, j, ns, omp_get_num_threads, __stdoutp, rest, printf, size, calloc, hypre_error_handler, ptr, ne, jj, _imopVarPre432, A_diag_i, hypre_OutOfMemory, i, tmp_data, fflush, A_diag_data, hypre_CAlloc, free, res, heapCell#1, n, hypre__global_error, f_data, u_data]
    WRITE_S: [ii, jj, res, heapCell#1, rest, i, hypre__global_error, size, ns, ne]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned int _imopVarPre428;
        /*READ_S: []
        WRITE_S: []*/
        unsigned int _imopVarPre429;
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre430;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre428 = (unsigned int) sizeof(double);
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre429 = (unsigned int) n;
        /*READ_S: [hypre_CAlloc]
        WRITE_S: []*/
        _imopVarPre430 = hypre_CAlloc(_imopVarPre429, _imopVarPre428);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        tmp_data = ((double *) _imopVarPre430);
        /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, j, ns, omp_get_num_threads, A_diag_data, res, heapCell#1, n, rest, f_data, u_data, size, ne]
        WRITE_S: [ii, jj, res, heapCell#1, rest, i, size, ns, ne]*/
#pragma omp parallel private(numThreads)
        {
        /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, j, ns, omp_get_num_threads, A_diag_data, res, heapCell#1, n, rest, f_data, u_data, size, ne]
        WRITE_S: [ii, jj, res, heapCell#1, rest, i, size, ns, ne]*/
            /*READ_S: [omp_get_num_threads]
            WRITE_S: []*/
            numThreads = omp_get_num_threads();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n, i, tmp_data, u_data]
            WRITE_S: [heapCell#1]*/
#pragma omp for private(i) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < n; i++) {
            /*READ_S: [tmp_data, u_data]
            WRITE_S: [heapCell#1]*/
                /*READ_S: [tmp_data, u_data]
                WRITE_S: [heapCell#1]*/
                tmp_data[i] = u_data[i];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, j, ns, A_diag_data, res, heapCell#1, n, rest, f_data, u_data, size, ne]
            WRITE_S: [ii, jj, res, rest, i, size, ns, ne]*/
#pragma omp for private(i, ii, j, jj, ns, ne, res, rest, size) nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < numThreads; j++) {
            /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, ns, A_diag_data, res, heapCell#1, n, rest, f_data, u_data, size, ne]
            WRITE_S: [ii, jj, res, rest, i, size, ns, ne]*/
                /*READ_S: [n]
                WRITE_S: [size]*/
                size = n / numThreads;
                /*READ_S: [n, size]
                WRITE_S: [rest]*/
                rest = n - size * numThreads;
                /*READ_S: [rest]
                WRITE_S: []*/
                /*READ_S: [rest, size]
                WRITE_S: [ns, ne]*/
                if (j < rest) {
                /*READ_S: [size]
                WRITE_S: [ns, ne]*/
                    /*READ_S: [size]
                    WRITE_S: [ns]*/
                    ns = j * size + j;
                    /*READ_S: [size]
                    WRITE_S: [ne]*/
                    ne = (j + 1) * size + j + 1;
                } else {
                /*READ_S: [rest, size]
                WRITE_S: [ns, ne]*/
                    /*READ_S: [rest, size]
                    WRITE_S: [ns]*/
                    ns = j * size + rest;
                    /*READ_S: [rest, size]
                    WRITE_S: [ne]*/
                    ne = (j + 1) * size + rest;
                }
                /*READ_S: [ns]
                WRITE_S: [i]*/
                /*READ_S: [i, ne]
                WRITE_S: []*/
                /*READ_S: [i]
                WRITE_S: [i]*/
                /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, ns, A_diag_data, res, heapCell#1, u_data, f_data, ne]
                WRITE_S: [jj, ii, res, i]*/
                for (i = ns; i < ne; i++) {
                /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, ns, A_diag_data, res, heapCell#1, u_data, f_data, ne]
                WRITE_S: [jj, ii, res]*/
                    /*READ_S: [A_diag_i, i, A_diag_data]
                    WRITE_S: []*/
                    /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, ns, A_diag_data, res, heapCell#1, u_data, f_data, ne]
                    WRITE_S: [jj, ii, res]*/
                    if (A_diag_data[A_diag_i[i]] != 0.0) {
                    /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, ns, A_diag_data, res, heapCell#1, u_data, f_data, ne]
                    WRITE_S: [jj, ii, res]*/
                        /*READ_S: [i, f_data]
                        WRITE_S: [res]*/
                        res = f_data[i];
                        /*READ_S: [A_diag_i, i]
                        WRITE_S: [jj]*/
                        /*READ_S: [jj, A_diag_i, i]
                        WRITE_S: []*/
                        /*READ_S: [jj]
                        WRITE_S: [jj]*/
                        /*READ_S: [jj, ii, A_diag_i, _imopVarPre432, i, tmp_data, A_diag_j, ns, A_diag_data, res, heapCell#1, u_data, ne]
                        WRITE_S: [jj, ii, res]*/
                        for (jj = A_diag_i[i] + 1; jj < A_diag_i[i + 1]; jj++) {
                        /*READ_S: [jj, ii, res, _imopVarPre432, heapCell#1, tmp_data, u_data, A_diag_j, ns, A_diag_data, ne]
                        WRITE_S: [ii, res]*/
                            /*READ_S: [jj, A_diag_j]
                            WRITE_S: [ii]*/
                            ii = A_diag_j[jj];
                            /*READ_S: []
                            WRITE_S: []*/
                            int _imopVarPre432;
                            /*READ_S: [ii, ns]
                            WRITE_S: []*/
                            _imopVarPre432 = ii >= ns;
                            /*READ_S: [_imopVarPre432]
                            WRITE_S: []*/
                            /*READ_S: [ii, _imopVarPre432, ne]
                            WRITE_S: []*/
                            if (_imopVarPre432) {
                            /*READ_S: [ii, ne]
                            WRITE_S: []*/
                                /*READ_S: [ii, ne]
                                WRITE_S: []*/
                                _imopVarPre432 = ii < ne;
                            }
                            /*READ_S: [_imopVarPre432]
                            WRITE_S: []*/
                            /*READ_S: [jj, ii, res, _imopVarPre432, heapCell#1, tmp_data, u_data, A_diag_data]
                            WRITE_S: [res]*/
                            if (_imopVarPre432) {
                            /*READ_S: [jj, ii, res, u_data, A_diag_data]
                            WRITE_S: [res]*/
                                /*READ_S: [jj, ii, res, u_data, A_diag_data]
                                WRITE_S: [res]*/
                                res -= A_diag_data[jj] * u_data[ii];
                            } else {
                            /*READ_S: [jj, ii, res, heapCell#1, tmp_data, A_diag_data]
                            WRITE_S: [res]*/
                                /*READ_S: [jj, ii, res, heapCell#1, tmp_data, A_diag_data]
                                WRITE_S: [res]*/
                                res -= A_diag_data[jj] * tmp_data[ii];
                            }
                        }
                        /*READ_S: [res, A_diag_i, i, u_data, A_diag_data]
                        WRITE_S: []*/
                        u_data[i] = res / A_diag_data[A_diag_i[i]];
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
        char *_imopVarPre436;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre436 = (char *) tmp_data;
        /*READ_S: [hypre_Free]
        WRITE_S: []*/
        hypre_Free(_imopVarPre436);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        (tmp_data = ((void *) 0));
    } else {
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
        for (i = 0; i < n; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (A_diag_data[A_diag_i[i]] != 0.0) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                res = f_data[i];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (jj = A_diag_i[i] + 1; jj < A_diag_i[i + 1]; jj++) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    ii = A_diag_j[jj];
                    /*READ_S: []
                    WRITE_S: []*/
                    res -= A_diag_data[jj] * u_data[ii];
                }
                /*READ_S: []
                WRITE_S: []*/
                u_data[i] = res / A_diag_data[A_diag_i[i]];
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    return relax_error;
}
/*READ_S: []
WRITE_S: [hypre__global_error]*/
int hypre__global_error = 0;
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [hypre__global_error]
WRITE_S: [hypre__global_error]*/
void hypre_error_handler(char *filename, int line , int ierr) {
/*READ_S: [hypre__global_error]
WRITE_S: [hypre__global_error]*/
    /*READ_S: [hypre__global_error]
    WRITE_S: [hypre__global_error]*/
    hypre__global_error |= ierr;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [__stdoutp, printf, hypre__global_error, hypre_error_handler, fflush]
WRITE_S: [hypre__global_error]*/
int hypre_OutOfMemory(int size) {
/*READ_S: [__stdoutp, printf, hypre__global_error, hypre_error_handler, fflush]
WRITE_S: [hypre__global_error]*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Out of memory trying to allocate %d bytes\n", size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stdoutp, fflush]
    WRITE_S: []*/
    fflush(__stdoutp);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_error_handler]
    WRITE_S: []*/
    hypre_error_handler("amgmk.c", 2270, 2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [__stdoutp, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush]
WRITE_S: [hypre__global_error]*/
char *hypre_CAlloc(int count, int elt_size) {
/*READ_S: [__stdoutp, hypre_OutOfMemory, hypre__global_error, printf, hypre_error_handler, calloc, fflush]
WRITE_S: [hypre__global_error]*/
    /*READ_S: []
    WRITE_S: []*/
    char *ptr;
    /*READ_S: []
    WRITE_S: []*/
    int size = count * elt_size;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stdoutp, hypre_OutOfMemory, printf, hypre__global_error, hypre_error_handler, calloc, fflush]
    WRITE_S: [hypre__global_error]*/
    if (size > 0) {
    /*READ_S: [__stdoutp, hypre_OutOfMemory, printf, hypre__global_error, hypre_error_handler, calloc, fflush]
    WRITE_S: [hypre__global_error]*/
        /*READ_S: [calloc]
        WRITE_S: []*/
        ptr = calloc(count, elt_size);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stdoutp, hypre_OutOfMemory, printf, hypre__global_error, hypre_error_handler, fflush]
        WRITE_S: [hypre__global_error]*/
        if (ptr == ((void *) 0)) {
        /*READ_S: [__stdoutp, hypre_OutOfMemory, printf, hypre__global_error, hypre_error_handler, fflush]
        WRITE_S: [hypre__global_error]*/
            /*READ_S: [hypre_OutOfMemory]
            WRITE_S: []*/
            hypre_OutOfMemory(size);
            /*READ_S: []
            WRITE_S: []*/
        }
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        ptr = ((void *) 0);
    }
    /*READ_S: []
    WRITE_S: []*/
    return ptr;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [free, heapCell#1, ptr]
WRITE_S: [heapCell#1]*/
void hypre_Free(char *ptr) {
/*READ_S: [free, heapCell#1, ptr]
WRITE_S: [heapCell#1]*/
    /*READ_S: [ptr]
    WRITE_S: []*/
    /*READ_S: [free, heapCell#1, ptr]
    WRITE_S: [heapCell#1]*/
    if (ptr) {
    /*READ_S: [free, heapCell#1]
    WRITE_S: [heapCell#1]*/
        /*READ_S: [free, heapCell#1]
        WRITE_S: [heapCell#1]*/
        free(ptr);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: [testIter]*/
const int testIter = 500;
/*READ_S: []
WRITE_S: [totalWallTime]*/
double totalWallTime = 0.0;
/*READ_S: []
WRITE_S: [totalCPUTime]*/
double totalCPUTime = 0.0;
/*READ_S: []
WRITE_S: [test_Matvec]*/
void test_Matvec();
/*READ_S: []
WRITE_S: [test_Relax]*/
void test_Relax();
/*READ_S: []
WRITE_S: [test_Axpy]*/
void test_Axpy();
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ii, A_j, test_Axpy, __stderrp, j, ns, omp_get_num_threads, idxstride_y, __stdoutp, fabs, vecstride_y, hypre_CSRMatrixMatvec, calloc, ptr, ix, jj, A_i, i, tmp_data, hypre_SeqVectorDestroy, fprintf, GenerateSeqLaplacian, hypre_CAlloc, iy, hypre_SeqVectorSetConstantValues, hypre_SeqVectorInitialize, heapCell#1, vector, n, hypre__global_error, u_data, test_Matvec, hypre_BoomerAMGSeqRelax, y_data, hypre_Free, A_diag_j, i, iz, totalWallTime, hypre_CSRMatrixDestroy, nullCell, rest, printf, size, matrix, hypre_error_handler, clock, ne, j, _imopVarPre432, A_diag_i, hypre_OutOfMemory, hypre_SeqVectorAxpy, num_vectors, gettimeofday, num_rows, A_data, idxstride_x, fflush, _imopVarPre292, A_diag_data, free, testIter, res, test_Relax, f_data, vecstride_x, hypre_SeqVectorCreate, hypre_CSRMatrixCreate, x_data, totalCPUTime]
WRITE_S: [jj, ii, j, i, ns, y, totalWallTime, res, heapCell#1, rest, hypre__global_error, y, size, totalCPUTime, ne]*/
int main(int argc, char *argv[]) {
/*READ_S: [ii, A_j, test_Axpy, __stderrp, j, ns, omp_get_num_threads, idxstride_y, __stdoutp, fabs, vecstride_y, hypre_CSRMatrixMatvec, calloc, ptr, ix, jj, A_i, i, tmp_data, hypre_SeqVectorDestroy, fprintf, GenerateSeqLaplacian, hypre_CAlloc, iy, hypre_SeqVectorSetConstantValues, hypre_SeqVectorInitialize, heapCell#1, vector, n, hypre__global_error, u_data, test_Matvec, hypre_BoomerAMGSeqRelax, y_data, hypre_Free, A_diag_j, i, iz, totalWallTime, hypre_CSRMatrixDestroy, nullCell, rest, printf, size, matrix, hypre_error_handler, clock, ne, j, _imopVarPre432, A_diag_i, hypre_OutOfMemory, hypre_SeqVectorAxpy, num_vectors, gettimeofday, num_rows, A_data, idxstride_x, fflush, _imopVarPre292, A_diag_data, free, testIter, res, test_Relax, f_data, vecstride_x, hypre_SeqVectorCreate, hypre_CSRMatrixCreate, x_data, totalCPUTime]
WRITE_S: [jj, ii, j, i, ns, y, totalWallTime, res, heapCell#1, rest, hypre__global_error, y, size, totalCPUTime, ne]*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t0;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t1;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t0_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t1_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    double del_wtime = 0.0;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//  Sequoia Benchmark Version 1.0 \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre493;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre494;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre493 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre494 = &t0;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre494, _imopVarPre493);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t0_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [totalWallTime]*/
    totalWallTime = 0.0;
    /*READ_S: []
    WRITE_S: [totalCPUTime]*/
    totalCPUTime = 0.0;
    /*READ_S: [test_Matvec]
    WRITE_S: []*/
    test_Matvec();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//   MATVEC\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalWallTime, printf]
    WRITE_S: []*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, totalCPUTime]
    WRITE_S: []*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [totalWallTime]*/
    totalWallTime = 0.0;
    /*READ_S: []
    WRITE_S: [totalCPUTime]*/
    totalCPUTime = 0.0;
    /*READ_S: [test_Relax]
    WRITE_S: []*/
    test_Relax();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//   Relax\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalWallTime, printf]
    WRITE_S: []*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, totalCPUTime]
    WRITE_S: []*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [totalWallTime]*/
    totalWallTime = 0.0;
    /*READ_S: []
    WRITE_S: [totalCPUTime]*/
    totalCPUTime = 0.0;
    /*READ_S: [test_Axpy]
    WRITE_S: []*/
    test_Axpy();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//   Axpy\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("// \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("//------------ \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalWallTime, printf]
    WRITE_S: []*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, totalCPUTime]
    WRITE_S: []*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre497;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre498;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre497 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre498 = &t1;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre498, _imopVarPre497);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t1_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    del_wtime = (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\nTotal Wall time = %f seconds. \n", del_wtime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre500;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre500 = ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\nTotal CPU  time = %f seconds. \n", _imopVarPre500);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
/*READ_S: [A_j, y_data, hypre_Free, __stderrp, i, idxstride_y, iz, hypre_CSRMatrixDestroy, totalWallTime, __stdoutp, nullCell, vecstride_y, printf, hypre_CSRMatrixMatvec, fabs, matrix, calloc, hypre_error_handler, ptr, clock, ix, j, A_i, hypre_OutOfMemory, hypre_SeqVectorDestroy, num_vectors, gettimeofday, num_rows, A_data, idxstride_x, fflush, fprintf, GenerateSeqLaplacian, _imopVarPre292, hypre_CAlloc, free, iy, hypre_SeqVectorSetConstantValues, testIter, heapCell#1, vector, hypre__global_error, vecstride_x, hypre_SeqVectorCreate, hypre_CSRMatrixCreate, x_data, totalCPUTime]
WRITE_S: [totalWallTime, j, heapCell#1, hypre__global_error, y, y, totalCPUTime]*/
void test_Matvec() {
/*READ_S: [A_j, y_data, hypre_Free, __stderrp, i, idxstride_y, iz, hypre_CSRMatrixDestroy, totalWallTime, __stdoutp, nullCell, vecstride_y, printf, hypre_CSRMatrixMatvec, fabs, matrix, calloc, hypre_error_handler, ptr, clock, ix, j, A_i, hypre_OutOfMemory, hypre_SeqVectorDestroy, num_vectors, gettimeofday, num_rows, A_data, idxstride_x, fflush, fprintf, GenerateSeqLaplacian, _imopVarPre292, hypre_CAlloc, free, iy, hypre_SeqVectorSetConstantValues, testIter, heapCell#1, vector, hypre__global_error, vecstride_x, hypre_SeqVectorCreate, hypre_CSRMatrixCreate, x_data, totalCPUTime]
WRITE_S: [totalWallTime, j, heapCell#1, hypre__global_error, y, y, totalCPUTime]*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t0;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t1;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t0_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t1_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    hypre_CSRMatrix *A;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *x;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *y;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *sol;
    /*READ_S: []
    WRITE_S: []*/
    int nx;
    /*READ_S: []
    WRITE_S: []*/
    int ny;
    /*READ_S: []
    WRITE_S: []*/
    int nz;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    double *values;
    /*READ_S: []
    WRITE_S: []*/
    double *y_data;
    /*READ_S: []
    WRITE_S: []*/
    double *sol_data;
    /*READ_S: []
    WRITE_S: []*/
    double error;
    /*READ_S: []
    WRITE_S: []*/
    double diff;
    /*READ_S: []
    WRITE_S: []*/
    nx = 50;
    /*READ_S: []
    WRITE_S: []*/
    ny = 50;
    /*READ_S: []
    WRITE_S: []*/
    nz = 50;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre510;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre511;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre512;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre510 = (unsigned int) sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre511 = (unsigned int) 4;
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre512 = hypre_CAlloc(_imopVarPre511, _imopVarPre510);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    values = ((double *) _imopVarPre512);
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[0] = 6;
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[1] = -1;
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[2] = -1;
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[3] = -1;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre15 **_imopVarPre516;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre15 **_imopVarPre517;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre15 **_imopVarPre518;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre14 *_imopVarPre519;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre516 = &sol;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre517 = &x;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre518 = &y;
    /*READ_S: [GenerateSeqLaplacian]
    WRITE_S: []*/
    _imopVarPre519 = GenerateSeqLaplacian(nx, ny, nz, values, _imopVarPre518, _imopVarPre517, _imopVarPre516);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A = _imopVarPre519;
    /*READ_S: [hypre_SeqVectorSetConstantValues]
    WRITE_S: []*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorSetConstantValues]
    WRITE_S: []*/
    hypre_SeqVectorSetConstantValues(y, 0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre522;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre523;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre522 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre523 = &t0;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre523, _imopVarPre522);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t0_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [testIter]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [A_j, j, A_i, y_data, __stderrp, num_vectors, num_rows, A_data, idxstride_x, i, fprintf, _imopVarPre292, idxstride_y, testIter, heapCell#1, vecstride_y, hypre__global_error, hypre_CSRMatrixMatvec, vecstride_x, hypre_error_handler, x_data]
    WRITE_S: [j, hypre__global_error]*/
    for (i = 0; i < testIter; ++i) {
    /*READ_S: [A_j, j, A_i, y_data, __stderrp, num_vectors, num_rows, A_data, idxstride_x, i, fprintf, _imopVarPre292, idxstride_y, heapCell#1, vecstride_y, hypre__global_error, hypre_CSRMatrixMatvec, vecstride_x, hypre_error_handler, x_data]
    WRITE_S: [j, hypre__global_error]*/
        /*READ_S: [hypre_CSRMatrixMatvec]
        WRITE_S: []*/
        hypre_CSRMatrixMatvec(1, A, x, 0, y);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre526;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre527;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre526 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre527 = &t1;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre527, _imopVarPre526);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t1_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalWallTime]
    WRITE_S: [totalWallTime]*/
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*READ_S: [totalCPUTime]
    WRITE_S: [totalCPUTime]*/
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*READ_S: []
    WRITE_S: []*/
    y_data = (y->data);
    /*READ_S: []
    WRITE_S: []*/
    sol_data = (sol->data);
    /*READ_S: []
    WRITE_S: []*/
    error = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fabs]
    WRITE_S: []*/
    for (i = 0; i < nx * ny * nz; i++) {
    /*READ_S: [fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre529;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre530;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre529 = y_data[i] - sol_data[i];
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre530 = fabs(_imopVarPre529);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        diff = _imopVarPre530;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (diff > error) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            error = diff;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (error > 0) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" \n Matvec: error: %e\n", error);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre534;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre534 = (char *) values;
    /*READ_S: [hypre_Free]
    WRITE_S: []*/
    hypre_Free(_imopVarPre534);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    (values = ((void *) 0));
    /*READ_S: [hypre_CSRMatrixDestroy]
    WRITE_S: []*/
    hypre_CSRMatrixDestroy(A);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(x);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(y);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(sol);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [ii, j, ns, omp_get_num_threads, __stdoutp, fabs, calloc, ptr, ix, jj, i, tmp_data, hypre_SeqVectorDestroy, GenerateSeqLaplacian, hypre_CAlloc, iy, hypre_SeqVectorSetConstantValues, heapCell#1, vector, n, hypre__global_error, u_data, hypre_BoomerAMGSeqRelax, hypre_Free, A_diag_j, iz, totalWallTime, hypre_CSRMatrixDestroy, nullCell, rest, printf, matrix, size, hypre_error_handler, clock, ne, _imopVarPre432, A_diag_i, hypre_OutOfMemory, gettimeofday, fflush, A_diag_data, free, testIter, res, f_data, hypre_SeqVectorCreate, hypre_CSRMatrixCreate, totalCPUTime]
WRITE_S: [jj, ii, i, ns, y, totalWallTime, res, heapCell#1, rest, hypre__global_error, y, size, totalCPUTime, ne]*/
void test_Relax() {
/*READ_S: [ii, j, ns, omp_get_num_threads, __stdoutp, fabs, calloc, ptr, ix, jj, i, tmp_data, hypre_SeqVectorDestroy, GenerateSeqLaplacian, hypre_CAlloc, iy, hypre_SeqVectorSetConstantValues, heapCell#1, vector, n, hypre__global_error, u_data, hypre_BoomerAMGSeqRelax, hypre_Free, A_diag_j, iz, totalWallTime, hypre_CSRMatrixDestroy, nullCell, rest, printf, matrix, size, hypre_error_handler, clock, ne, _imopVarPre432, A_diag_i, hypre_OutOfMemory, gettimeofday, fflush, A_diag_data, free, testIter, res, f_data, hypre_SeqVectorCreate, hypre_CSRMatrixCreate, totalCPUTime]
WRITE_S: [jj, ii, i, ns, y, totalWallTime, res, heapCell#1, rest, hypre__global_error, y, size, totalCPUTime, ne]*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t0;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t1;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t0_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t1_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    hypre_CSRMatrix *A;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *x;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *y;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *sol;
    /*READ_S: []
    WRITE_S: []*/
    int nx;
    /*READ_S: []
    WRITE_S: []*/
    int ny;
    /*READ_S: []
    WRITE_S: []*/
    int nz;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    double *values;
    /*READ_S: []
    WRITE_S: []*/
    double *x_data;
    /*READ_S: []
    WRITE_S: []*/
    double diff;
    /*READ_S: []
    WRITE_S: []*/
    double error;
    /*READ_S: []
    WRITE_S: []*/
    nx = 50;
    /*READ_S: []
    WRITE_S: []*/
    ny = 50;
    /*READ_S: []
    WRITE_S: []*/
    nz = 50;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre544;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre545;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre546;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre544 = (unsigned int) sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre545 = (unsigned int) 4;
    /*READ_S: [hypre_CAlloc]
    WRITE_S: []*/
    _imopVarPre546 = hypre_CAlloc(_imopVarPre545, _imopVarPre544);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    values = ((double *) _imopVarPre546);
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[0] = 6;
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[1] = -1;
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[2] = -1;
    /*READ_S: []
    WRITE_S: [heapCell#1]*/
    values[3] = -1;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre15 **_imopVarPre550;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre15 **_imopVarPre551;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre15 **_imopVarPre552;
    /*READ_S: []
    WRITE_S: []*/
    struct stUn_imopVarPre14 *_imopVarPre553;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre550 = &sol;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre551 = &x;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre552 = &y;
    /*READ_S: [GenerateSeqLaplacian]
    WRITE_S: []*/
    _imopVarPre553 = GenerateSeqLaplacian(nx, ny, nz, values, _imopVarPre552, _imopVarPre551, _imopVarPre550);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A = _imopVarPre553;
    /*READ_S: [hypre_SeqVectorSetConstantValues]
    WRITE_S: []*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre556;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre557;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre556 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre557 = &t0;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre557, _imopVarPre556);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t0_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [testIter]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_BoomerAMGSeqRelax, ii, hypre_Free, A_diag_j, j, ns, omp_get_num_threads, __stdoutp, rest, printf, size, calloc, hypre_error_handler, ptr, ne, jj, _imopVarPre432, A_diag_i, hypre_OutOfMemory, i, tmp_data, fflush, A_diag_data, hypre_CAlloc, free, testIter, res, heapCell#1, n, hypre__global_error, u_data, f_data]
    WRITE_S: [jj, ii, res, heapCell#1, rest, i, hypre__global_error, size, ns, ne]*/
    for (i = 0; i < testIter; ++i) {
    /*READ_S: [hypre_BoomerAMGSeqRelax, ii, hypre_Free, A_diag_j, j, ns, omp_get_num_threads, __stdoutp, rest, printf, size, calloc, hypre_error_handler, ptr, ne, jj, _imopVarPre432, A_diag_i, hypre_OutOfMemory, i, tmp_data, fflush, A_diag_data, hypre_CAlloc, free, res, heapCell#1, n, hypre__global_error, u_data, f_data]
    WRITE_S: [jj, ii, res, heapCell#1, rest, i, hypre__global_error, size, ns, ne]*/
        /*READ_S: [hypre_BoomerAMGSeqRelax]
        WRITE_S: []*/
        hypre_BoomerAMGSeqRelax(A, sol, x);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre560;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre561;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre560 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre561 = &t1;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre561, _imopVarPre560);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t1_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalWallTime]
    WRITE_S: [totalWallTime]*/
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*READ_S: [totalCPUTime]
    WRITE_S: [totalCPUTime]*/
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*READ_S: []
    WRITE_S: []*/
    x_data = (x->data);
    /*READ_S: []
    WRITE_S: []*/
    error = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fabs]
    WRITE_S: []*/
    for (i = 0; i < nx * ny * nz; i++) {
    /*READ_S: [fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre563;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre564;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre563 = x_data[i] - 1;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre564 = fabs(_imopVarPre563);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        diff = _imopVarPre564;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (diff > error) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            error = diff;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (error > 0) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" \n Relax: error: %e\n", error);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre568;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre568 = (char *) values;
    /*READ_S: [hypre_Free]
    WRITE_S: []*/
    hypre_Free(_imopVarPre568);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    (values = ((void *) 0));
    /*READ_S: [hypre_CSRMatrixDestroy]
    WRITE_S: []*/
    hypre_CSRMatrixDestroy(A);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(x);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(y);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(sol);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [hypre_Free, totalWallTime, __stdoutp, nullCell, fabs, printf, calloc, hypre_error_handler, ptr, clock, hypre_OutOfMemory, hypre_SeqVectorAxpy, hypre_SeqVectorDestroy, gettimeofday, fflush, hypre_CAlloc, free, hypre_SeqVectorSetConstantValues, hypre_SeqVectorInitialize, testIter, heapCell#1, vector, hypre__global_error, hypre_SeqVectorCreate, totalCPUTime]
WRITE_S: [totalWallTime, heapCell#1, hypre__global_error, totalCPUTime]*/
void test_Axpy() {
/*READ_S: [hypre_Free, totalWallTime, __stdoutp, nullCell, fabs, printf, calloc, hypre_error_handler, ptr, clock, hypre_OutOfMemory, hypre_SeqVectorAxpy, hypre_SeqVectorDestroy, gettimeofday, fflush, hypre_CAlloc, free, hypre_SeqVectorSetConstantValues, hypre_SeqVectorInitialize, testIter, heapCell#1, vector, hypre__global_error, hypre_SeqVectorCreate, totalCPUTime]
WRITE_S: [totalWallTime, heapCell#1, hypre__global_error, totalCPUTime]*/
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t0;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval t1;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t0_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    clock_t t1_cpu = 0;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *x;
    /*READ_S: []
    WRITE_S: []*/
    hypre_Vector *y;
    /*READ_S: []
    WRITE_S: []*/
    int nx;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    double alpha = 0.5;
    /*READ_S: []
    WRITE_S: []*/
    double diff;
    /*READ_S: []
    WRITE_S: []*/
    double error;
    /*READ_S: []
    WRITE_S: []*/
    double *y_data;
    /*READ_S: []
    WRITE_S: []*/
    nx = 125000;
    /*READ_S: [hypre_SeqVectorCreate]
    WRITE_S: []*/
    x = hypre_SeqVectorCreate(nx);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorCreate]
    WRITE_S: []*/
    y = hypre_SeqVectorCreate(nx);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorInitialize]
    WRITE_S: []*/
    hypre_SeqVectorInitialize(x);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorInitialize]
    WRITE_S: []*/
    hypre_SeqVectorInitialize(y);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorSetConstantValues]
    WRITE_S: []*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorSetConstantValues]
    WRITE_S: []*/
    hypre_SeqVectorSetConstantValues(y, 1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre571;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre572;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre571 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre572 = &t0;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre572, _imopVarPre571);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t0_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [testIter]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [testIter, heapCell#1, hypre_SeqVectorAxpy]
    WRITE_S: []*/
    for (i = 0; i < testIter; ++i) {
    /*READ_S: [heapCell#1, hypre_SeqVectorAxpy]
    WRITE_S: []*/
        /*READ_S: [hypre_SeqVectorAxpy]
        WRITE_S: []*/
        hypre_SeqVectorAxpy(alpha, x, y);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre575;
    /*READ_S: []
    WRITE_S: []*/
    struct timeval *_imopVarPre576;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre575 = ((void *) 0);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre576 = &t1;
    /*READ_S: [gettimeofday]
    WRITE_S: []*/
    gettimeofday(_imopVarPre576, _imopVarPre575);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t1_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    y_data = (y->data);
    /*READ_S: []
    WRITE_S: []*/
    error = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [testIter, fabs]
    WRITE_S: []*/
    for (i = 0; i < nx; i++) {
    /*READ_S: [testIter, fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre578;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre579;
        /*READ_S: [testIter]
        WRITE_S: []*/
        _imopVarPre578 = y_data[i] - 1 - 0.5 * (double) testIter;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre579 = fabs(_imopVarPre578);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        diff = _imopVarPre579;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (diff > error) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            error = diff;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (error > 0) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" \n Axpy: error: %e\n", error);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [totalWallTime]
    WRITE_S: [totalWallTime]*/
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*READ_S: [totalCPUTime]
    WRITE_S: [totalCPUTime]*/
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(x);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [hypre_SeqVectorDestroy]
    WRITE_S: []*/
    hypre_SeqVectorDestroy(y);
    /*READ_S: []
    WRITE_S: []*/
}
