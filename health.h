#pragma once
using namespace std;
class CHealth {
public:

	CHealth() { nCHealth++; age = 20; beat5min = temp5min = nullptr; };
	CHealth(int a);
	//destruction
	~CHealth();

	static int nCHealth;
	float height, beat, pressure, cel, faren;
	float BMIvalue, healthAge;
	float* beat5min, * temp5min;

	void measure();
	void measure(int);
	int  run5min();
private:
	// private member data
	int age;
	float weight;

	// private member function
	void cel2faren() { faren = cel * 9.0 / 5.0 + 32.0; }
	void faren2cel();
	void GetHealthAge() { healthAge = beat / pressure; }
	void GetBMI();
};