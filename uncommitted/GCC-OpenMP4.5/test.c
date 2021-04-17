int main() {
	int x;
	x = 10;
#pragma omp parallel if(parallel: 2>1) proc_bind(master)
	{
	}
#pragma omp parallel if(parallel: 2>1) proc_bind(close)
	{
	}
#pragma omp parallel if(parallel: 2>1), proc_bind(spread)
	{
		int i;
		int size = 2;
#pragma omp for linear(x, size : size)
		for (i = 0; i < 10; i++) {
		}
#pragma omp sections
		{
			{
				x = 10;
			}
#pragma omp section
			{	
				x = 20;
			}
		}
	}
}
