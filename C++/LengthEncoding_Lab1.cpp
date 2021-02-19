// LengthEncoding_Lab1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>

using namespace std;

int main()

{
	char C;
	int N;
	
	while (true) {
						
			cin >> C;
			cin >> N;

			if (N == -2) {
				break;
			}
			else if (N == -1) {
				cout << endl;
			}
			else {
				for (int i = N; i > 0; i--) {
					cout << C;
				}
			}
	}
	
	
	
	
	
	
	
	
	
	return 0;
}

