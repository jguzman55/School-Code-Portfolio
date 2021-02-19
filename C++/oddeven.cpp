#include <iostream>

using namespace std; 

int main() {
	
	int x; // declaring an integer variable

	do {

		cout << "Enter a positive integer:" << endl; //Asking for user input

		cin >> x; //user input

		if (x % 2 == 0) // Checking if number is even

			cout << "Even" << endl;

		else // if not even, will print out odd

			cout << "Odd" << endl;

	}
	
		while (x > -1); // while numbers are positive, it will continue to execute

	return 0;
}
