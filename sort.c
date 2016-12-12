#include <stdio.h>

typedef struct{
	int id;
	float height;
} hdata;

void swap(hdata *x, hdata *y){
	hdata temp;

	temp = *x;
	*x = *y;
	*y = temp;
}

int compar_id(const hdata *a, const hdata *b){
	if ((a -> id) < (b -> id)){
		return 1;
	} else return -1;
}

int compar_height(const hdata *a, const hdata *b){
	if ((a -> height) < (b -> height)){
		return 1;
	} else return -1;
}

int sort(hdata *base, int num, int (*compar)(const hdata *a, const hdata *b)){
	int i, j;
	
	for (i = 0; i < num; i++){
		int k = num - 1;

		for (j = 0; j < k; j++){
			if (compar(&base[j+1], &base[j]) == 1){
				swap(&base[j+1], &base[j]);
			}
		}

		k = k - 1;
	}

	return 0;
}



int main(){
	hdata base[] = {
		{4, 154},
		{2, 166},
		{8, 124},
		{1, 176}
	};

	sort(base, 4, compar_id);
	printf("compare id\n");
	for (int i = 0; i < 4; i++){
		printf("%d:%d(id=%f)\n",i, base[i].id, base[i].height);
	}
	
	printf("\n");

	sort(base, 4, compar_height);
	printf("compare height\n");
	for (int i = 0; i < 4; i++){
		printf("%d:%d(id=%f)\n",i, base[i].id, base[i].height);
	}

	return 0;
}
