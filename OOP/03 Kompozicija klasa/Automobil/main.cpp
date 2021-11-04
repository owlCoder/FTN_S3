#include "Automobil.hpp"

int main(void)
{
    Automobil a1;
    Automobil a2(6, AUTOMATSKI, ZELENA, UGASEN, 0);
    Automobil a3(a1);

    cout << "A1\n" << a1;
    cout << "POKVARI\n" << (a1.pokvari() == true ? "----------- POKVARIO! ----------" : "----------- NIJE POKVARENO!----------") << endl << endl;
    cout << "A1\n" << a1;

    cout << "POKVARI\n" << (a1.pokvari() == true ? "----------- POKVARIO! ----------" : "----------- NIJE POKVARENO!----------") << endl << endl;
    cout << "A1\n" << a1;

    cout << "POPRAVI\n" << (a1.popravi() == true ? "----------- POPRAVIO! ----------" : "----------- NIJE POKVARENO!----------") << endl << endl;
    cout << "A1\n" << a1;

    cout << "POPRAVI\n" << (a1.popravi() == true ? "----------- POPRAVIO! ----------" : "----------- NIJE POKVARENO!----------") << endl << endl;
    cout << "A1\n" << a1

    return 0;
}
