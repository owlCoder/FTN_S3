#ifndef AUTOMOBIL_HPP
#define AUTOMOBIL_HPP

#include "Skoljka.hpp"

enum Stanje {UGASEN, POKVAREN, UVOZNJI};

class Automobil {
    private:
        Menjac m;
        Skoljka s;
        Stanje stanje;
        unsigned trenutnaBrzina;
    public:
        Automobil() {
            stanje = UGASEN;
            trenutnaBrzina = 0;
        }
        Automobil(unsigned brojBrzina, TipMenjaca menjac, BojaSkoljke bojaSkoljke, Stanje stanje, unsigned trenutnaBrzina) {
            m.setBrojBrzina(brojBrzina);
            m.setMenjac(menjac);
            s.setBojaSkoljke(bojaSkoljke);
            this -> stanje = stanje;
            this -> trenutnaBrzina = trenutnaBrzina;
        }
        Automobil(const Automobil &a) {
            m.setBrojBrzina(a.m.getBrojBrzina());
            m.setMenjac(a.m.getMenjac());
            s.setBojaSkoljke(a.s.getBojaSkoljke());
            stanje = a.stanje;
            trenutnaBrzina = a.trenutnaBrzina;
        }
        void setStanje(const Stanje stanje) {
            this -> stanje = stanje;
        }
        void setTrenutnaBrzina(const unsigned trenutnaBrzina) {
            this -> trenutnaBrzina = trenutnaBrzina;
        }
        Stanje getStanje() const {
            return stanje;
        }
        unsigned getTrenutnaBrzina() const {
            return trenutnaBrzina;
        }
        bool upali() {
            bool uspesno = false;

            if(stanje == UGASEN)
            {
                stanje = UVOZNJI;
                uspesno = true;
            }
            return uspesno;
        }
        bool ugasi() {
            bool uspesno = false;

            if(stanje == UVOZNJI)
            {
                stanje = UGASEN;
                trenutnaBrzina = 0;
                uspesno = true;
            }
            return uspesno;
        }
        bool pokvari() {
            bool uspesno = false;

            if(stanje != POKVAREN)
            {
                stanje = POKVAREN;
                trenutnaBrzina = 0;
                uspesno = true;
            }
            return uspesno;
        }
        bool popravi() {
            bool uspesno = false;

            if(stanje == POKVAREN)
            {
                stanje = UGASEN;
                trenutnaBrzina = 0;
                uspesno = true;
            }
            return uspesno;
        }
        bool povecajBrzinu() {
            bool uspesno = false;
            if(stanje == UVOZNJI && trenutnaBrzina + 1 <= m.getBrojBrzina())
            {
                ++trenutnaBrzina;
                uspesno = true;
            }
            return uspesno;
        }
        bool smanjiBrzinu() {
            bool uspesno = false;
            if(stanje == UVOZNJI && trenutnaBrzina - 1 >= 0)
            {
                --trenutnaBrzina;
                uspesno = true;
            }
            return uspesno;
        }
        friend ostream& operator<<(ostream &out, const Automobil &a);
};

ostream& operator<<(ostream &out, const Automobil &a) {
    string boja;
    BojaSkoljke *bs = new BojaSkoljke;
    *bs = a.s.getBojaSkoljke();

    if(*bs == PLAVA)
        boja = "PLAVA";
    else if(*bs == ZELENA)
        boja = "ZELENA";
    else if(*bs == CRVENA)
        boja = "CRVENA";
    else
        boja = "NEPOZNATA!";

    delete bs;

    out << "MENJAC: " << ((a.m.getMenjac() == AUTOMATSKI) ? "AUTOMATSKI\n" : "MANUELNI\n");
    out << "BROJ BRZINA: " << a.m.getBrojBrzina() << "\n";
    out << "BOJA SKOLJKE: " << boja << "\n";
    out << "TRENUTNA BRZINA: " << a.trenutnaBrzina << "\nSTANJE: ";

    Stanje *st = new Stanje;
    string ts;

    *st = a.stanje;
    if(*st == UGASEN)
        ts = "UGASEN\n";
    else if(*st == UVOZNJI)
        ts = "U VOZNJI\n";
    else if(*st == POKVAREN)
        ts = "POKVAREN\n";
    else
        ts = "NEPOZNATO!\n";

    out << ts << endl;

    delete st;
    st = NULL;

    return out;
}

#endif // AUTOMOBIL_HPP
