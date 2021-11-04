#ifndef SKOLJKA_HPP
#define SKOLJKA_HPP

#include "Menjac.hpp"

enum BojaSkoljke {PLAVA, CRVENA, ZELENA};

class Skoljka
{
    private:
        BojaSkoljke bojaSkoljke;
    public:
        Skoljka() {
            bojaSkoljke = PLAVA;
        }
        Skoljka(BojaSkoljke bojaSkoljke) {
            this -> bojaSkoljke = bojaSkoljke;
        }
        Skoljka(const Skoljka &s) {
            bojaSkoljke = s.bojaSkoljke;
        }
        void setBojaSkoljke(const BojaSkoljke bojaSkoljke) {
            this -> bojaSkoljke = bojaSkoljke;
        }
        BojaSkoljke getBojaSkoljke() const {
            return bojaSkoljke;
        }
};

#endif // SKOLJKA_HPP
