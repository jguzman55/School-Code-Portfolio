#include <iostream>
#include <string>

using namespace std;

int main() {

	string x; // declaring a string

	int n; // declaring an integer
	
	int i = 0; //declaring an integer
	

		cout << "Enter the phrase:" << endl; // asking user for a phrase
		
		getline(cin, x); // obtaining the whole line

		cout << "Enter the number of times to repeat the phrase: " << endl; // asking user for the amount of times repeated 

		cin >> n; // user input

		if (n > -1) //execute bellow if n is a positive number
			
		while (i < n) { //while loop with iterations, will continue to execute until statement is no longer true

			cout << x << endl; // printing user input statement
	
			i++; //adds one to count each time statement is printed
		}
		else //if number is a negative number, error message shows up

			cout << "You entered an incorret value for the number of repetitions" << endl; // Prints error message

 


	string y;
	getline(cin, y);


	return 0;
}
