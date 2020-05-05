#include <iostream>
using namespace std;
extern "C" int funcao();
extern "C" int funcao2();
extern "C" int funcao3();
extern "C" int funcao4();
extern "C" int funcao5();
extern "C" int funcao6();
extern "C" int funcao7();

int main() {
	


	cout << "Valores: A=0 B=5 C=7 D=9 E=2" << endl;
	cout << "1) A= B + C: " << funcao() << endl;
	cout << "2) A= B-C + D: " << funcao2() << endl;
	cout << "3) A = B + C - D + 10: " << funcao3() << endl;
	cout << "4) A = B + C + (D - E) : " << funcao4() << endl;
	cout << "5) Loop ate zero: " << funcao5() << endl;
	cout << "6) Condicional Se 5 é Maior que 7, Retorna 5, se não retorna 7: " << funcao6() << endl;
	cout << "7) Multiplicação: " << funcao7() << endl;
	return 0;
}