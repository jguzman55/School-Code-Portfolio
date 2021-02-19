// PrimeNums_Lab1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>

using namespace std;


int main(){

	int N;
	int num = 1;
	int primenum = 0;
	
	
	cin >> N;



		for (int j = 1; j <= N; j++) {

			num++;
			primenum = 0;
			if (num < N) {
			for (int i = 1; i <= num; i++) {



				if (num % i == 0)
				{
					primenum++;
				}


			}
			if (primenum == 2)
			{

				cout << num << endl;
			}
		}


	}
	return 0;

}

