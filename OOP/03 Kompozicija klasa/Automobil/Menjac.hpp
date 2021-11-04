#ifndef MENJAC_HPP
#define MENJAC_HPP

#include <iostream>
using namespace std;

enum TipMenjaca {MANUELNI, AUTOMATSKI};

class Menjac
{
    private:
        unsigned brojBrzina;
        TipMenjaca menjac;
    public:
        Menjac() {
            menjac = MANUELNI;
            brojBrzina = 3;
        }
        Menjac(unsigned brojBrzina, TipMenjaca menjac) {
            this -> brojBrzina = brojBrzina;
            this -> menjac = menjac;
        }
        Menjac(const Menjac &m) {
            brojBrzina = m.brojBrzina;
            menjac = m.menjac;
        }
        void setBrojBrzina(const unsigned brojBrzina) {
            this -> brojBrzina = brojBrzina;
        }
        void setMenjac(const TipMenjaca menjac) {
            this -> menjac = menjac;
        }
        unsigned getBrojBrzina() const {
            return brojBrzina;
        }
        TipMenjaca getMenjac() const {
            return menjac;
        }
};

#endif // MENJAC_HPP
