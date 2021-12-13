#include <iostream>
using namespace std;

#include "DedaMraz.hpp"

// INICIJALIZACIJA STATICKOG POLJA KLASE NovogodisnjiPaketic
int NovogodisnjiPaketic::napravljeniNovogodisnjiPaketici = 0;

int main(void)
{
    // Dete d, d2("Milica", DEVOJCICA, 20, true), d1(d2);
    // cout << d1.getNadimak() << ", Uzrast: " << d1.getUzrast() << " godina" << endl;
    // d.setNadimak("Milica");
    // cout << d.getNadimak() << endl;
    // cout << d2;
    // Paketic p; nije moguce zbog abstraktnih metoda

    // NovogodisnjiPaketic n1, n2("Nije za tebe", d2, 10);
    // n1.ispisi();
    // n2.ispisi();
    // n2.isporuci();
    // n2.ispisi();

    Dete d1("Misa", DECAK, 6, true), d2("Jeca", DEVOJCICA, 7, true), d3("Laza", DECAK, 10, true), d4("Mica", DEVOJCICA, 2, true), d5(d4);

    NovogodisnjiPaketic np("autic na daljinsko upravljanje", d1, 5);
    cout << "napravljeni novogodisnji paketici: " << np.getNapravljeniNovogodisnjiPaketici() << endl;

    {
        NovogodisnjiPaketic np1("plisani meda", d4, 4);
        cout << "napravljeni novogodisnji paketici: " << np.getNapravljeniNovogodisnjiPaketici() << endl;
    }

    cout << "napravljeni novogodisnji paketici: " << np.getNapravljeniNovogodisnjiPaketici() << endl;

    DedaMraz dm;
    dm.dodaj("vozic", d1, 5, DECAK);
    dm.dodaj("barbika", d2, 4, DEVOJCICA);
    dm.dodaj("lego kockice", d3, 9, DECAK);
    dm.dodaj("bratz lutka", d4, 7, DEVOJCICA);
    dm.dodaj("dinosaurus", d1, 3, DECAK);
    dm.dodaj("plisani meda", d2, 6, DEVOJCICA);
    dm.dodaj("avioncic", d3, 8, DECAK);
    dm.dodaj("emotivna sovica", d4, 6, DEVOJCICA);
    dm.dodaj("autic", d1, 4, DECAK);
    dm.dodaj("kofercic sa sminkom", d2, 5, DEVOJCICA);
    dm.dodaj("motoric", d3, 7, DECAK);
    dm.ispisi();
    cout << "uspesno izbacivanje novogodisnjeg paketica: " << dm.izbaci(5) << endl;
    cout << "prosecan minimalan uzrast: " << dm.prosecanMinimalanUzrast() << endl;

    return 0;
}
