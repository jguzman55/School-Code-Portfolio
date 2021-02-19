// ForLoops_Lab1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;


int main()
{	
	string sen;
	getline(cin, sen); // Gets full string

	int x; // gets number of times to be repeated

	cin >> x;

	for (int i = 0; i < x; i++) { // prints out string according to number specified
		cout << sen << endl;
	
	
	}
	return 0;
}