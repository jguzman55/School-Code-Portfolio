#include <iostream>
#include <string>

using namespace std; // Declaring a namespace

int main() {

	int n; //declaring an integer for user input

	int count = 0; // declaring the count

	cout << "Enter a postive integer between [1-100]:" << endl; // printing a statement, asking for a positive input

	cin >> n; // user input

	if (n > 100) { // if user input is more than the range

		cout << "Out of range" << endl;

		return 0;

	}

	if (n < 0) { // if user inputs a negative number

		cout << "Invalid" << endl;

		return 0;

	}

	if (n == 0) { // if user inputs zero

		return 0;
	}

	if (n > 0 || n < 100) { // if the user input is within this range, execute code below

		for (int i = 1; i <= n; i++) { // for loop, creating an iteration later used to compare prime & not prime

			if (n % i == 0) { //checking if a number is prime

				count++; //incrementing
			}

		}
		
		if (count == 2) { //when count = 2, user input is [rime

			cout << "Prime" << endl;

		}

		else { // if count does not equal 2, number is not prime 

			cout << "Not prime" << endl;
		}

	}


	string y;
	getline(cin, y);

	return 0;
}
