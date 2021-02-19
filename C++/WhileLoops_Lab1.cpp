//#include "stdafx.h"
#include <iostream>

using namespace std;

int main()
{
	int x;
	
	while (cin >> x && x > 0)
	{

		if (x % 2 == 0)
		{
			cout << "EVEN" << endl;
		}

		else 
		{

			cout << "ODD" << endl;

		}

		x++;

		
	}
	return 0;
}

