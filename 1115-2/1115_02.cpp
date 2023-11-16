//P24 ¿¬½À1, 2
#include <iostream>
#include "health.h"
using namespace std;
int main() {
	cout << " class size " << sizeof(CHealth) << endl;

	CHealth* students = new CHealth[5];

	for (int i = 0; i < 3; i++) {
		students[i].measure(20 + rand() % 4);
		(students + i)->run5min();
	}
	//students[4].GetBMI();
	cout << students[1].beat5min[30] << endl;
	//cout << students[5].weight << end;;

	delete[] students; 
	getchar();
	return 123;
}
