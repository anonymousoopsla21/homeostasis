
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
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, heapCell#1]
WRITE_S: [nullCell, hypre__global_error, heapCell#1]*/
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros) {
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, heapCell#1]
WRITE_S: [nullCell, hypre__global_error, heapCell#1]*/
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
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->data) = ((void *) 0);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->i) = ((void *) 0);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->j) = ((void *) 0);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->rownnz) = ((void *) 0);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->num_rows) = num_rows;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->num_cols) = num_cols;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->num_nonzeros) = num_nonzeros;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->owns_data) = 1;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (matrix->num_rownnz) = num_rows;
    /*READ_S: []
    WRITE_S: []*/
    return matrix;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [nullCell, ptr, matrix, hypre_Free, free, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix) {
/*READ_S: [nullCell, ptr, matrix, hypre_Free, free, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [matrix]
    WRITE_S: []*/
    /*READ_S: [nullCell, ptr, matrix, hypre_Free, free, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    if (matrix) {
    /*READ_S: [nullCell, ptr, hypre_Free, free, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre159;
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        _imopVarPre159 = (char *) (matrix->i);
        /*READ_S: [hypre_Free]
        WRITE_S: []*/
        hypre_Free(_imopVarPre159);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        ((matrix->i) = ((void *) 0));
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: [nullCell, ptr, free, hypre_Free, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        if ((matrix->rownnz)) {
        /*READ_S: [nullCell, ptr, hypre_Free, free, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre163;
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: []*/
            _imopVarPre163 = (char *) (matrix->rownnz);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre163);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
            ((matrix->rownnz) = ((void *) 0));
        }
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: [nullCell, ptr, free, hypre_Free, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        if ((matrix->owns_data)) {
        /*READ_S: [nullCell, ptr, free, hypre_Free, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre167;
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: []*/
            _imopVarPre167 = (char *) (matrix->data);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre167);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
            ((matrix->data) = ((void *) 0));
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre171;
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: []*/
            _imopVarPre171 = (char *) (matrix->j);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre171);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
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
/*READ_S: [__stderrp, A_j, hypre_error_handler, _imopVarPre292, A_data, x_data, fprintf, i, j, A_i, idxstride_x, num_rows, nullCell, hypre__global_error, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
WRITE_S: [nullCell, hypre__global_error, j]*/
int hypre_CSRMatrixMatvec(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y) {
/*READ_S: [__stderrp, A_j, hypre_error_handler, _imopVarPre292, A_data, x_data, fprintf, i, j, A_i, idxstride_x, num_rows, nullCell, hypre__global_error, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
WRITE_S: [nullCell, hypre__global_error, j]*/
    /*READ_S: []
    WRITE_S: []*/
    double *A_data = (A->data);
    /*READ_S: []
    WRITE_S: []*/
    int *A_i = (A->i);
    /*READ_S: []
    WRITE_S: []*/
    int *A_j = (A->j);
    /*READ_S: []
    WRITE_S: []*/
    int num_rows = (A->num_rows);
    /*READ_S: []
    WRITE_S: []*/
    int num_cols = (A->num_cols);
    /*READ_S: []
    WRITE_S: []*/
    int *A_rownnz = (A->rownnz);
    /*READ_S: []
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
    /*READ_S: [__stderrp, nullCell, hypre__global_error, hypre_error_handler, fprintf]
    WRITE_S: [nullCell, hypre__global_error]*/
    if (!(num_vectors == (y->num_vectors))) {
    /*READ_S: [__stderrp, nullCell, hypre__global_error, hypre_error_handler, fprintf]
    WRITE_S: [nullCell, hypre__global_error]*/
        /*READ_S: [__stderrp, nullCell, fprintf]
        WRITE_S: [nullCell]*/
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
    /*READ_S: [A_j, A_data, x_data, i, A_i, j, idxstride_x, num_rows, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
    WRITE_S: [j]*/
    if (num_rownnz < xpar * num_rows) {
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
        for (i = 0; i < num_rownnz; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            m = A_rownnz[i];
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (num_vectors == 1) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                tempx = y_data[m];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    tempx += A_data[jj] * x_data[A_j[jj]];
                }
                /*READ_S: []
                WRITE_S: []*/
                y_data[m] = tempx;
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
                for (j = 0; j < num_vectors; ++j) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    tempx = y_data[j * vecstride_y + m * idxstride_y];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
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
    /*READ_S: [A_j, A_data, x_data, i, A_i, j, idxstride_x, num_rows, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
    WRITE_S: [j]*/
        /*READ_S: [A_j, A_data, x_data, i, A_i, j, idxstride_x, num_rows, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
        WRITE_S: [j]*/
#pragma omp parallel private(i, jj, temp)
        {
        /*READ_S: [A_j, A_data, x_data, i, A_i, j, idxstride_x, num_rows, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
        WRITE_S: [j]*/
            /*READ_S: [A_j, A_data, x_data, i, A_i, j, idxstride_x, num_rows, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
            WRITE_S: [j]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [num_rows]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < num_rows; i++) {
            /*READ_S: [A_j, idxstride_y, A_data, x_data, num_vectors, A_i, j, vecstride_y, vecstride_x, idxstride_x, y_data]
            WRITE_S: [j]*/
                /*READ_S: [num_vectors]
                WRITE_S: []*/
                /*READ_S: [A_j, idxstride_y, A_data, x_data, num_vectors, A_i, j, vecstride_y, vecstride_x, idxstride_x, y_data]
                WRITE_S: [j]*/
                if (num_vectors == 1) {
                /*READ_S: [A_j, A_data, x_data, A_i, y_data]
                WRITE_S: []*/
                    /*READ_S: [y_data]
                    WRITE_S: []*/
                    temp = y_data[i];
                    /*READ_S: [A_i]
                    WRITE_S: []*/
                    /*READ_S: [A_i]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [A_j, A_data, x_data, A_i]
                    WRITE_S: []*/
                    for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                    /*READ_S: [A_j, A_data, x_data]
                    WRITE_S: []*/
                        /*READ_S: [A_j, A_data, x_data]
                        WRITE_S: []*/
                        temp += A_data[jj] * x_data[A_j[jj]];
                    }
                    /*READ_S: [y_data]
                    WRITE_S: []*/
                    y_data[i] = temp;
                } else {
                /*READ_S: [A_j, idxstride_y, A_data, x_data, A_i, j, num_vectors, vecstride_y, vecstride_x, idxstride_x, y_data]
                WRITE_S: [j]*/
                    /*READ_S: []
                    WRITE_S: [j]*/
                    /*READ_S: [j, num_vectors]
                    WRITE_S: []*/
                    /*READ_S: [j]
                    WRITE_S: [j]*/
                    /*READ_S: [A_j, idxstride_y, A_data, x_data, A_i, j, num_vectors, vecstride_y, vecstride_x, idxstride_x, y_data]
                    WRITE_S: [j]*/
                    for (j = 0; j < num_vectors; ++j) {
                    /*READ_S: [A_j, idxstride_y, A_data, x_data, j, A_i, vecstride_y, vecstride_x, idxstride_x, y_data]
                    WRITE_S: []*/
                        /*READ_S: [idxstride_y, j, vecstride_y, y_data]
                        WRITE_S: []*/
                        temp = y_data[j * vecstride_y + i * idxstride_y];
                        /*READ_S: [A_i]
                        WRITE_S: []*/
                        /*READ_S: [A_i]
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [A_j, A_data, x_data, A_i, j, vecstride_x, idxstride_x]
                        WRITE_S: []*/
                        for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                        /*READ_S: [A_j, A_data, x_data, j, vecstride_x, idxstride_x]
                        WRITE_S: []*/
                            /*READ_S: [A_j, A_data, x_data, j, vecstride_x, idxstride_x]
                            WRITE_S: []*/
                            temp += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                        }
                        /*READ_S: [idxstride_y, j, vecstride_y, y_data]
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
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
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
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, heapCell#1]
WRITE_S: [nullCell, hypre__global_error, heapCell#1]*/
hypre_Vector *hypre_SeqVectorCreate(int size) {
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, heapCell#1]
WRITE_S: [nullCell, hypre__global_error, heapCell#1]*/
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
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (vector->data) = ((void *) 0);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (vector->size) = size;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (vector->num_vectors) = 1;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (vector->multivec_storage_method) = 0;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (vector->owns_data) = 1;
    /*READ_S: []
    WRITE_S: []*/
    return vector;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [nullCell, ptr, hypre_Free, free, vector, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
int hypre_SeqVectorDestroy(hypre_Vector *vector) {
/*READ_S: [nullCell, ptr, hypre_Free, free, vector, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [vector]
    WRITE_S: []*/
    /*READ_S: [nullCell, ptr, hypre_Free, free, vector, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    if (vector) {
    /*READ_S: [nullCell, ptr, hypre_Free, free, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: [nullCell, ptr, free, hypre_Free, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        if ((vector->owns_data)) {
        /*READ_S: [ptr, nullCell, free, hypre_Free, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre317;
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: []*/
            _imopVarPre317 = (char *) (vector->data);
            /*READ_S: [hypre_Free]
            WRITE_S: []*/
            hypre_Free(_imopVarPre317);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
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
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, free_ierr, heapCell#1]
WRITE_S: [nullCell, hypre__global_error, free_ierr, heapCell#1]*/
int hypre_SeqVectorInitialize(hypre_Vector *vector) {
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, free_ierr, heapCell#1]
WRITE_S: [nullCell, hypre__global_error, free_ierr, heapCell#1]*/
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    int size = (vector->size);
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    int num_vectors = (vector->num_vectors);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    int multivec_storage_method = (vector->multivec_storage_method);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    /*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, heapCell#1]
    WRITE_S: [nullCell, hypre__global_error, heapCell#1]*/
    if (!(vector->data)) {
    /*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, hypre_CAlloc, __stdoutp, printf, fflush, hypre_OutOfMemory, heapCell#1]
    WRITE_S: [nullCell, hypre__global_error, heapCell#1]*/
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
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        (vector->data) = ((double *) _imopVarPre333);
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, free_ierr, heapCell#1]
    WRITE_S: [nullCell, free_ierr, heapCell#1]*/
    if (multivec_storage_method == 0) {
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        (vector->vecstride) = size;
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        (vector->idxstride) = 1;
    } else {
    /*READ_S: [nullCell, free_ierr, heapCell#1]
    WRITE_S: [nullCell, free_ierr, heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, free_ierr, heapCell#1]
        WRITE_S: [nullCell, free_ierr, heapCell#1]*/
        if (multivec_storage_method == 1) {
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
            (vector->vecstride) = 1;
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
            (vector->idxstride) = num_vectors;
        } else {
        /*READ_S: [free_ierr]
        WRITE_S: [free_ierr]*/
            /*READ_S: [free_ierr]
            WRITE_S: [free_ierr]*/
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
/*READ_S: [nullCell, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value) {
/*READ_S: [nullCell, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    double *vector_data = (v->data);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    int size = (v->size);
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    size *= (v->num_vectors);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
    for (i = 0; i < size; i++) {
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: []
        WRITE_S: [nullCell, heapCell#1]*/
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
/*READ_S: [nullCell, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y) {
/*READ_S: [nullCell, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    double *x_data = (x->data);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    double *y_data = (y->data);
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    int size = (x->size);
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int ierr = 0;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: []*/
    size *= (x->num_vectors);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    for (i = 0; i < size; i++) {
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
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
/*READ_S: [hypre_error_handler, hypre_CAlloc, __stdoutp, printf, fflush, iy, ix, iz, nullCell, hypre__global_error, calloc, hypre_CSRMatrixCreate, hypre_SeqVectorCreate, hypre_OutOfMemory, heapCell#1]
WRITE_S: [nullCell, y, hypre__global_error, y, heapCell#1]*/
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *value , hypre_Vector **rhs_ptr , hypre_Vector **x_ptr , hypre_Vector **sol_ptr) {
/*READ_S: [hypre_error_handler, hypre_CAlloc, __stdoutp, printf, fflush, iy, ix, iz, nullCell, hypre__global_error, calloc, hypre_CSRMatrixCreate, hypre_SeqVectorCreate, hypre_OutOfMemory, heapCell#1]
WRITE_S: [nullCell, y, hypre__global_error, y, heapCell#1]*/
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
    WRITE_S: [nullCell, heapCell#1]*/
    for (i = 0; i < grid_size; i++) {
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: []
        WRITE_S: [nullCell, heapCell#1]*/
        x_data[i] = 0.0;
        /*READ_S: []
        WRITE_S: [nullCell, heapCell#1]*/
        sol_data[i] = 0.0;
        /*READ_S: []
        WRITE_S: [nullCell, heapCell#1]*/
        rhs_data[i] = 1.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    cnt = 1;
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
    A_i[0] = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    for (iz = 0; iz < nz; iz++) {
    /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        for (iy = 0; iy < ny; iy++) {
        /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
            for (ix = 0; ix < nx; ix++) {
            /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                A_i[cnt] = A_i[cnt - 1];
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                A_i[cnt]++;
                /*READ_S: [iz]
                WRITE_S: []*/
                /*READ_S: [nullCell, iz, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iz) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_i[cnt]++;
                }
                /*READ_S: [iy]
                WRITE_S: []*/
                /*READ_S: [nullCell, iy, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iy) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_i[cnt]++;
                }
                /*READ_S: [ix]
                WRITE_S: []*/
                /*READ_S: [nullCell, ix, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (ix) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_i[cnt]++;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (ix + 1 < nx) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_i[cnt]++;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iy + 1 < ny) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_i[cnt]++;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iz + 1 < nz) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
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
    /*READ_S: [nullCell, heapCell#1]
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
    /*READ_S: [nullCell, heapCell#1]
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
    /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    for (iz = 0; iz < nz; iz++) {
    /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        for (iy = 0; iy < ny; iy++) {
        /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
            for (ix = 0; ix < nx; ix++) {
            /*READ_S: [nullCell, iy, ix, iz, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
                /*READ_S: []
                WRITE_S: [nullCell, heapCell#1]*/
                A_j[cnt] = row_index;
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                A_data[cnt++] = value[0];
                /*READ_S: [iz]
                WRITE_S: []*/
                /*READ_S: [nullCell, iz, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iz) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_j[cnt] = row_index - nx * ny;
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_data[cnt++] = value[3];
                }
                /*READ_S: [iy]
                WRITE_S: []*/
                /*READ_S: [nullCell, iy, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iy) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_j[cnt] = row_index - nx;
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_data[cnt++] = value[2];
                }
                /*READ_S: [ix]
                WRITE_S: []*/
                /*READ_S: [nullCell, ix, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (ix) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_j[cnt] = row_index - 1;
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_data[cnt++] = value[1];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (ix + 1 < nx) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_j[cnt] = row_index + 1;
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_data[cnt++] = value[1];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iy + 1 < ny) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_j[cnt] = row_index + nx;
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_data[cnt++] = value[2];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                if (iz + 1 < nz) {
                /*READ_S: [nullCell, heapCell#1]
                WRITE_S: [nullCell, heapCell#1]*/
                    /*READ_S: []
                    WRITE_S: [nullCell, heapCell#1]*/
                    A_j[cnt] = row_index + nx * ny;
                    /*READ_S: [nullCell, heapCell#1]
                    WRITE_S: [nullCell, heapCell#1]*/
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
    /*READ_S: [nullCell, heapCell#1]
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
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (rhs->data) = rhs_data;
    /*READ_S: [hypre_SeqVectorCreate]
    WRITE_S: []*/
    x = hypre_SeqVectorCreate(grid_size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (x->data) = x_data;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    for (i = 0; i < grid_size; i++) {
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
        for (j = A_i[i]; j < A_i[i + 1]; j++) {
        /*READ_S: [nullCell, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
            /*READ_S: [nullCell, heapCell#1]
            WRITE_S: [nullCell, heapCell#1]*/
            sol_data[i] += A_data[j];
        }
    }
    /*READ_S: [hypre_SeqVectorCreate]
    WRITE_S: []*/
    sol = hypre_SeqVectorCreate(grid_size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (sol->data) = sol_data;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (A->i) = A_i;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    (A->j) = A_j;
    /*READ_S: [nullCell, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
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
/*READ_S: [ptr, printf, free, res, free_A_diag_data, i, ii, calloc, ns, A_diag_i, omp_get_num_threads, rest, hypre_Free, ne, size, free_jj, hypre_error_handler, _imopVarPre432, hypre_CAlloc, n, __stdoutp, u_data, free_tmp_data, fflush, A_diag_data, tmp_data, j, nullCell, jj, hypre__global_error, A_diag_j, hypre_OutOfMemory, f_data, free_res, free_ii, heapCell#1]
WRITE_S: [globalCell]*/
int hypre_BoomerAMGSeqRelax(hypre_CSRMatrix *A, hypre_Vector *f , hypre_Vector *u) {
/*READ_S: [ptr, printf, free, res, free_A_diag_data, i, ii, calloc, ns, A_diag_i, omp_get_num_threads, rest, hypre_Free, ne, size, free_jj, hypre_error_handler, _imopVarPre432, hypre_CAlloc, n, __stdoutp, u_data, free_tmp_data, fflush, A_diag_data, tmp_data, j, nullCell, jj, hypre__global_error, A_diag_j, hypre_OutOfMemory, f_data, free_res, free_ii, heapCell#1]
WRITE_S: [globalCell]*/
    /*READ_S: [nullCell]
    WRITE_S: []*/
    double *A_diag_data = (A->data);
    /*READ_S: [nullCell]
    WRITE_S: []*/
    int *A_diag_i = (A->i);
    /*READ_S: [nullCell]
    WRITE_S: []*/
    int *A_diag_j = (A->j);
    /*READ_S: [nullCell]
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
    /*READ_S: [ptr, printf, free, res, free_A_diag_data, i, ii, calloc, ns, A_diag_i, omp_get_num_threads, rest, hypre_Free, ne, size, free_jj, hypre_error_handler, _imopVarPre432, hypre_CAlloc, n, __stdoutp, u_data, free_tmp_data, fflush, A_diag_data, tmp_data, j, nullCell, jj, hypre__global_error, A_diag_j, hypre_OutOfMemory, f_data, free_res, free_ii, heapCell#1]
    WRITE_S: [globalCell]*/
    if (1) {
    /*READ_S: [ptr, printf, free, res, free_A_diag_data, i, ii, calloc, ns, A_diag_i, omp_get_num_threads, rest, hypre_Free, ne, size, free_jj, hypre_error_handler, _imopVarPre432, hypre_CAlloc, n, __stdoutp, u_data, free_tmp_data, fflush, A_diag_data, tmp_data, j, nullCell, jj, hypre__global_error, A_diag_j, hypre_OutOfMemory, f_data, free_res, free_ii, heapCell#1]
    WRITE_S: [nullCell, jj, ii, hypre__global_error, ns, rest, ne, size, res, i, free_res, heapCell#1]*/
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
        /*READ_S: [_imopVarPre432, n, u_data, free_tmp_data, A_diag_data, j, tmp_data, res, free_A_diag_data, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, omp_get_num_threads, rest, ne, f_data, size, free_res, free_jj, free_ii]
        WRITE_S: [nullCell, ii, jj, ns, rest, ne, size, res, free_res, i, heapCell#1]*/
#pragma omp parallel private(numThreads)
        {
        /*READ_S: [_imopVarPre432, n, u_data, free_tmp_data, A_diag_data, j, tmp_data, res, free_A_diag_data, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, omp_get_num_threads, rest, ne, f_data, size, free_res, free_jj, free_ii]
        WRITE_S: [nullCell, ii, jj, ns, rest, ne, size, res, free_res, i, heapCell#1]*/
            /*READ_S: [omp_get_num_threads]
            WRITE_S: []*/
            numThreads = omp_get_num_threads();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n, u_data, tmp_data, i]
            WRITE_S: [nullCell, heapCell#1]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for private(i) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < n; i++) {
            /*READ_S: [u_data, tmp_data]
            WRITE_S: [nullCell, heapCell#1]*/
                /*READ_S: [u_data, tmp_data]
                WRITE_S: [nullCell, heapCell#1]*/
                tmp_data[i] = u_data[i];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
            /*READ_S: [_imopVarPre432, n, u_data, free_tmp_data, A_diag_data, j, res, free_A_diag_data, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, rest, ne, f_data, size, free_res, free_jj, free_ii]
            WRITE_S: [ii, jj, ns, rest, ne, size, res, free_res, i]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for private(i, ii, j, jj, ns, ne, res, rest, size) nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < numThreads; j++) {
            /*READ_S: [_imopVarPre432, n, u_data, free_tmp_data, A_diag_data, res, free_A_diag_data, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, rest, ne, f_data, size, free_res, free_jj, free_ii]
            WRITE_S: [ii, jj, ns, rest, ne, size, res, free_res, i]*/
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
                /*READ_S: [ne, i]
                WRITE_S: []*/
                /*READ_S: [i]
                WRITE_S: [i]*/
                /*READ_S: [_imopVarPre432, free_tmp_data, u_data, A_diag_data, free_A_diag_data, res, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, ne, f_data, free_res, free_jj, free_ii]
                WRITE_S: [jj, ii, res, free_res, i]*/
                for (i = ns; i < ne; i++) {
                /*READ_S: [_imopVarPre432, free_tmp_data, u_data, A_diag_data, free_A_diag_data, res, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, ne, f_data, free_res, free_jj, free_ii]
                WRITE_S: [jj, ii, res, free_res]*/
                    /*READ_S: [nullCell, A_diag_i, A_diag_data, i]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre432, free_tmp_data, u_data, A_diag_data, free_A_diag_data, res, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, ne, f_data, free_res, free_jj, free_ii]
                    WRITE_S: [jj, ii, res, free_res]*/
                    if (A_diag_data[A_diag_i[i]] != 0.0) {
                    /*READ_S: [_imopVarPre432, free_tmp_data, u_data, A_diag_data, free_A_diag_data, res, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, ne, f_data, free_res, free_jj, free_ii]
                    WRITE_S: [jj, ii, res, free_res]*/
                        /*READ_S: [f_data, i]
                        WRITE_S: [res]*/
                        res = f_data[i];
                        /*READ_S: [nullCell, A_diag_i, i]
                        WRITE_S: [jj]*/
                        /*READ_S: [nullCell, jj, A_diag_i, i]
                        WRITE_S: []*/
                        /*READ_S: [jj]
                        WRITE_S: [jj]*/
                        /*READ_S: [_imopVarPre432, free_tmp_data, u_data, A_diag_data, free_A_diag_data, res, i, nullCell, jj, ii, A_diag_j, ns, A_diag_i, ne, free_res, free_jj, free_ii]
                        WRITE_S: [jj, ii, res, free_res]*/
                        for (jj = A_diag_i[i] + 1; jj < A_diag_i[i + 1]; jj++) {
                        /*READ_S: [_imopVarPre432, free_tmp_data, u_data, A_diag_data, free_A_diag_data, res, nullCell, jj, ii, A_diag_j, ns, ne, free_res, free_jj, free_ii]
                        WRITE_S: [ii, res, free_res]*/
                            /*READ_S: [nullCell, jj, A_diag_j]
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
                            /*READ_S: [nullCell, jj, ii, _imopVarPre432, free_tmp_data, u_data, A_diag_data, free_A_diag_data, res, free_res, free_jj, free_ii]
                            WRITE_S: [res, free_res]*/
                            if (_imopVarPre432) {
                            /*READ_S: [nullCell, jj, ii, u_data, A_diag_data, res]
                            WRITE_S: [res]*/
                                /*READ_S: [nullCell, jj, ii, u_data, A_diag_data, res]
                                WRITE_S: [res]*/
                                res -= A_diag_data[jj] * u_data[ii];
                            } else {
                            /*READ_S: [free_tmp_data, free_A_diag_data, free_res, free_jj, free_ii]
                            WRITE_S: [free_res]*/
                                /*READ_S: [free_tmp_data, free_A_diag_data, free_res, free_jj, free_ii]
                                WRITE_S: [free_res]*/
                                res -= A_diag_data[jj] * tmp_data[ii];
                            }
                        }
                        /*READ_S: [nullCell, u_data, A_diag_i, A_diag_data, res, i]
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
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
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
    WRITE_S: [globalCell]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [globalCell]*/
        for (i = 0; i < n; i++) {
        /*READ_S: []
        WRITE_S: [globalCell]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: [globalCell]*/
            if (A_diag_data[A_diag_i[i]] != 0.0) {
            /*READ_S: []
            WRITE_S: [globalCell]*/
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
                WRITE_S: [globalCell]*/
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
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, __stdoutp, printf, fflush]
WRITE_S: [nullCell, hypre__global_error]*/
int hypre_OutOfMemory(int size) {
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, __stdoutp, fflush, printf]
WRITE_S: [nullCell, hypre__global_error]*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Out of memory trying to allocate %d bytes\n", size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, __stdoutp, fflush]
    WRITE_S: [nullCell]*/
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
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, __stdoutp, printf, fflush, hypre_OutOfMemory]
WRITE_S: [nullCell, hypre__global_error]*/
char *hypre_CAlloc(int count, int elt_size) {
/*READ_S: [nullCell, hypre__global_error, hypre_error_handler, calloc, __stdoutp, printf, fflush, hypre_OutOfMemory]
WRITE_S: [nullCell, hypre__global_error]*/
    /*READ_S: []
    WRITE_S: []*/
    char *ptr;
    /*READ_S: []
    WRITE_S: []*/
    int size = count * elt_size;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, hypre__global_error, calloc, hypre_error_handler, __stdoutp, printf, fflush, hypre_OutOfMemory]
    WRITE_S: [nullCell, hypre__global_error]*/
    if (size > 0) {
    /*READ_S: [nullCell, hypre__global_error, calloc, hypre_error_handler, __stdoutp, printf, fflush, hypre_OutOfMemory]
    WRITE_S: [nullCell, hypre__global_error]*/
        /*READ_S: [calloc]
        WRITE_S: []*/
        ptr = calloc(count, elt_size);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, hypre__global_error, hypre_error_handler, __stdoutp, printf, fflush, hypre_OutOfMemory]
        WRITE_S: [nullCell, hypre__global_error]*/
        if (ptr == ((void *) 0)) {
        /*READ_S: [nullCell, hypre__global_error, hypre_error_handler, __stdoutp, printf, fflush, hypre_OutOfMemory]
        WRITE_S: [nullCell, hypre__global_error]*/
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
/*READ_S: [ptr, nullCell, free, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
void hypre_Free(char *ptr) {
/*READ_S: [ptr, nullCell, free, heapCell#1]
WRITE_S: [nullCell, heapCell#1]*/
    /*READ_S: [ptr]
    WRITE_S: []*/
    /*READ_S: [ptr, nullCell, free, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    if (ptr) {
    /*READ_S: [nullCell, free, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
        /*READ_S: [nullCell, free, heapCell#1]
        WRITE_S: [nullCell, heapCell#1]*/
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
/*READ_S: [__stderrp, i, free, iz, res, i, calloc, omp_get_num_threads, rest, ne, size, hypre_SeqVectorDestroy, vector, y_data, hypre_error_handler, gettimeofday, n, A_i, u_data, fflush, tmp_data, j, nullCell, jj, totalCPUTime, matrix, hypre_CSRMatrixCreate, hypre_SeqVectorCreate, A_diag_j, hypre_OutOfMemory, hypre_BoomerAMGSeqRelax, free_res, test_Relax, free_ii, hypre_SeqVectorAxpy, ptr, A_j, hypre_SeqVectorInitialize, printf, ix, totalWallTime, free_ierr, testIter, free_A_diag_data, ii, idxstride_y, clock, ns, num_vectors, A_diag_i, vecstride_y, hypre_CSRMatrixDestroy, hypre_Free, free_jj, hypre_CSRMatrixMatvec, fabs, _imopVarPre292, _imopVarPre432, hypre_CAlloc, A_data, x_data, fprintf, __stdoutp, j, free_tmp_data, iy, A_diag_data, idxstride_x, num_rows, GenerateSeqLaplacian, hypre__global_error, test_Matvec, hypre_SeqVectorSetConstantValues, vecstride_x, f_data, heapCell#1, test_Axpy]
WRITE_S: [j, totalWallTime, free_ierr, res, i, nullCell, jj, totalCPUTime, hypre__global_error, ii, y, ns, y, rest, ne, size, free_res, heapCell#1]*/
int main(int argc, char *argv[]) {
/*READ_S: [__stderrp, i, free, iz, res, i, calloc, omp_get_num_threads, rest, ne, size, hypre_SeqVectorDestroy, vector, y_data, hypre_error_handler, gettimeofday, n, A_i, u_data, fflush, tmp_data, j, nullCell, jj, totalCPUTime, matrix, hypre_CSRMatrixCreate, hypre_SeqVectorCreate, A_diag_j, hypre_OutOfMemory, hypre_BoomerAMGSeqRelax, free_res, test_Relax, free_ii, hypre_SeqVectorAxpy, ptr, A_j, hypre_SeqVectorInitialize, printf, ix, totalWallTime, free_ierr, testIter, free_A_diag_data, ii, idxstride_y, clock, ns, num_vectors, A_diag_i, vecstride_y, hypre_CSRMatrixDestroy, hypre_Free, free_jj, hypre_CSRMatrixMatvec, fabs, _imopVarPre292, _imopVarPre432, hypre_CAlloc, A_data, x_data, fprintf, __stdoutp, j, free_tmp_data, iy, A_diag_data, idxstride_x, num_rows, GenerateSeqLaplacian, hypre__global_error, test_Matvec, hypre_SeqVectorSetConstantValues, vecstride_x, f_data, heapCell#1, test_Axpy]
WRITE_S: [j, totalWallTime, free_ierr, res, i, nullCell, jj, totalCPUTime, hypre__global_error, ii, y, ns, y, rest, ne, size, free_res, heapCell#1]*/
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
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
    /*READ_S: [printf, totalWallTime]
    WRITE_S: []*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalCPUTime, printf]
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
    /*READ_S: [printf, totalWallTime]
    WRITE_S: []*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalCPUTime, printf]
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
    /*READ_S: [printf, totalWallTime]
    WRITE_S: []*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [totalCPUTime, printf]
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
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
/*READ_S: [__stderrp, ptr, A_j, i, printf, ix, free, totalWallTime, iz, testIter, calloc, idxstride_y, clock, num_vectors, vecstride_y, hypre_CSRMatrixDestroy, hypre_Free, hypre_SeqVectorDestroy, vector, y_data, hypre_CSRMatrixMatvec, fabs, hypre_error_handler, gettimeofday, _imopVarPre292, hypre_CAlloc, A_data, x_data, fprintf, __stdoutp, j, A_i, fflush, iy, idxstride_x, num_rows, nullCell, GenerateSeqLaplacian, totalCPUTime, matrix, hypre__global_error, hypre_CSRMatrixCreate, hypre_SeqVectorCreate, hypre_OutOfMemory, hypre_SeqVectorSetConstantValues, vecstride_x, heapCell#1]
WRITE_S: [nullCell, totalCPUTime, hypre__global_error, y, j, y, totalWallTime, heapCell#1]*/
void test_Matvec() {
/*READ_S: [__stderrp, ptr, A_j, i, printf, ix, free, totalWallTime, iz, testIter, calloc, idxstride_y, clock, num_vectors, vecstride_y, hypre_CSRMatrixDestroy, hypre_Free, hypre_SeqVectorDestroy, vector, y_data, hypre_CSRMatrixMatvec, fabs, hypre_error_handler, gettimeofday, _imopVarPre292, hypre_CAlloc, A_data, x_data, fprintf, __stdoutp, j, A_i, fflush, iy, idxstride_x, num_rows, nullCell, GenerateSeqLaplacian, totalCPUTime, matrix, hypre__global_error, hypre_CSRMatrixCreate, hypre_SeqVectorCreate, hypre_OutOfMemory, hypre_SeqVectorSetConstantValues, vecstride_x, heapCell#1]
WRITE_S: [nullCell, totalCPUTime, hypre__global_error, y, j, y, totalWallTime, heapCell#1]*/
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
    WRITE_S: [nullCell, heapCell#1]*/
    values[0] = 6;
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
    values[1] = -1;
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
    values[2] = -1;
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
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
    /*READ_S: [__stderrp, hypre_CSRMatrixMatvec, A_j, hypre_error_handler, _imopVarPre292, A_data, x_data, fprintf, i, j, A_i, testIter, idxstride_x, num_rows, nullCell, hypre__global_error, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
    WRITE_S: [nullCell, hypre__global_error, j]*/
    for (i = 0; i < testIter; ++i) {
    /*READ_S: [__stderrp, hypre_CSRMatrixMatvec, A_j, hypre_error_handler, _imopVarPre292, A_data, x_data, fprintf, i, j, A_i, idxstride_x, num_rows, nullCell, hypre__global_error, idxstride_y, num_vectors, vecstride_y, vecstride_x, y_data]
    WRITE_S: [nullCell, hypre__global_error, j]*/
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
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
    /*READ_S: [nullCell]
    WRITE_S: []*/
    y_data = (y->data);
    /*READ_S: [nullCell]
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
    /*READ_S: [nullCell, fabs]
    WRITE_S: []*/
    for (i = 0; i < nx * ny * nz; i++) {
    /*READ_S: [nullCell, fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre529;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre530;
        /*READ_S: [nullCell]
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
/*READ_S: [free, iz, res, i, calloc, omp_get_num_threads, rest, ne, size, hypre_SeqVectorDestroy, vector, gettimeofday, hypre_error_handler, n, u_data, fflush, j, tmp_data, nullCell, jj, totalCPUTime, matrix, hypre_CSRMatrixCreate, A_diag_j, hypre_SeqVectorCreate, hypre_OutOfMemory, hypre_BoomerAMGSeqRelax, free_res, free_ii, ptr, printf, ix, totalWallTime, testIter, free_A_diag_data, ii, clock, ns, A_diag_i, hypre_CSRMatrixDestroy, hypre_Free, free_jj, fabs, _imopVarPre432, hypre_CAlloc, __stdoutp, free_tmp_data, A_diag_data, iy, GenerateSeqLaplacian, hypre__global_error, hypre_SeqVectorSetConstantValues, f_data, heapCell#1]
WRITE_S: [totalWallTime, res, i, nullCell, totalCPUTime, jj, ii, y, hypre__global_error, ns, y, rest, ne, size, free_res, heapCell#1]*/
void test_Relax() {
/*READ_S: [free, iz, res, i, calloc, omp_get_num_threads, rest, ne, size, hypre_SeqVectorDestroy, vector, gettimeofday, hypre_error_handler, n, u_data, fflush, j, tmp_data, nullCell, jj, totalCPUTime, matrix, hypre_CSRMatrixCreate, A_diag_j, hypre_SeqVectorCreate, hypre_OutOfMemory, hypre_BoomerAMGSeqRelax, free_res, free_ii, ptr, printf, ix, totalWallTime, testIter, free_A_diag_data, ii, clock, ns, A_diag_i, hypre_CSRMatrixDestroy, hypre_Free, free_jj, fabs, _imopVarPre432, hypre_CAlloc, __stdoutp, free_tmp_data, A_diag_data, iy, GenerateSeqLaplacian, hypre__global_error, hypre_SeqVectorSetConstantValues, f_data, heapCell#1]
WRITE_S: [totalWallTime, res, i, nullCell, totalCPUTime, jj, ii, y, hypre__global_error, ns, y, rest, ne, size, free_res, heapCell#1]*/
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
    WRITE_S: [nullCell, heapCell#1]*/
    values[0] = 6;
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
    values[1] = -1;
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
    values[2] = -1;
    /*READ_S: []
    WRITE_S: [nullCell, heapCell#1]*/
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
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
    /*READ_S: [ptr, printf, free, testIter, res, free_A_diag_data, i, ii, calloc, ns, A_diag_i, omp_get_num_threads, rest, hypre_Free, ne, size, free_jj, hypre_error_handler, _imopVarPre432, hypre_CAlloc, n, __stdoutp, u_data, free_tmp_data, fflush, A_diag_data, tmp_data, j, nullCell, jj, hypre__global_error, A_diag_j, hypre_OutOfMemory, f_data, hypre_BoomerAMGSeqRelax, free_res, free_ii, heapCell#1]
    WRITE_S: [nullCell, jj, ii, hypre__global_error, ns, rest, ne, size, res, i, free_res, heapCell#1]*/
    for (i = 0; i < testIter; ++i) {
    /*READ_S: [ptr, printf, free, res, free_A_diag_data, i, ii, calloc, ns, A_diag_i, omp_get_num_threads, rest, hypre_Free, ne, size, free_jj, hypre_error_handler, _imopVarPre432, hypre_CAlloc, n, __stdoutp, u_data, free_tmp_data, fflush, A_diag_data, tmp_data, j, nullCell, jj, hypre__global_error, A_diag_j, hypre_OutOfMemory, f_data, hypre_BoomerAMGSeqRelax, free_res, free_ii, heapCell#1]
    WRITE_S: [nullCell, jj, ii, hypre__global_error, ns, rest, ne, size, res, i, free_res, heapCell#1]*/
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
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
    /*READ_S: [nullCell]
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
    /*READ_S: [nullCell, fabs]
    WRITE_S: []*/
    for (i = 0; i < nx * ny * nz; i++) {
    /*READ_S: [nullCell, fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre563;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre564;
        /*READ_S: [nullCell]
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
/*READ_S: [ptr, hypre_SeqVectorInitialize, printf, free, totalWallTime, free_ierr, testIter, calloc, clock, hypre_Free, hypre_SeqVectorDestroy, vector, fabs, hypre_error_handler, gettimeofday, hypre_CAlloc, __stdoutp, fflush, nullCell, totalCPUTime, hypre__global_error, hypre_SeqVectorCreate, hypre_OutOfMemory, hypre_SeqVectorSetConstantValues, heapCell#1, hypre_SeqVectorAxpy]
WRITE_S: [nullCell, totalCPUTime, hypre__global_error, totalWallTime, free_ierr, heapCell#1]*/
void test_Axpy() {
/*READ_S: [ptr, hypre_SeqVectorInitialize, printf, free, totalWallTime, free_ierr, testIter, calloc, clock, hypre_Free, hypre_SeqVectorDestroy, vector, fabs, hypre_error_handler, gettimeofday, hypre_CAlloc, __stdoutp, fflush, nullCell, totalCPUTime, hypre__global_error, hypre_SeqVectorCreate, hypre_OutOfMemory, hypre_SeqVectorSetConstantValues, heapCell#1, hypre_SeqVectorAxpy]
WRITE_S: [nullCell, totalCPUTime, hypre__global_error, totalWallTime, free_ierr, heapCell#1]*/
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
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
    /*READ_S: [nullCell, testIter, hypre_SeqVectorAxpy, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
    for (i = 0; i < testIter; ++i) {
    /*READ_S: [nullCell, hypre_SeqVectorAxpy, heapCell#1]
    WRITE_S: [nullCell, heapCell#1]*/
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
    /*READ_S: [nullCell, gettimeofday]
    WRITE_S: [nullCell]*/
    gettimeofday(_imopVarPre576, _imopVarPre575);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [clock]
    WRITE_S: []*/
    t1_cpu = clock();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nullCell, heapCell#1]
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
    /*READ_S: [nullCell, fabs, testIter, heapCell#1]
    WRITE_S: []*/
    for (i = 0; i < nx; i++) {
    /*READ_S: [nullCell, fabs, testIter, heapCell#1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre578;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre579;
        /*READ_S: [nullCell, testIter, heapCell#1]
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
