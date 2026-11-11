#include <iostream>
#include <fstream>
#include <cstdint>
#include <cstdlib>
#include "FFT.h"          // your top header
using namespace std;
 
#define ONE (1 << 15)
 
// input x[0..7] = 1..8 in Q15, natural order (engine does the bit reversal)
static const int A_IN[8] = {1*ONE, 2*ONE, 3*ONE, 4*ONE, 5*ONE, 6*ONE, 7*ONE, 8*ONE};
static const int B_IN[8] = {0, 0, 0, 0, 0, 0, 0, 0};
 
// expected, unload order: 8 imaginary then 8 real
static const uint32_t GOLD[16] = {
    0x00000000, 0x0004D410, 0x00020000, 0x0000D410,
    0x00000000, 0xFFFF2BF0, 0xFFFE0000, 0xFFFB2BF0,
    0x00120000, 0xFFFE0000, 0xFFFE0000, 0xFFFE0000,
    0xFFFE0000, 0xFFFE0000, 0xFFFE0000, 0xFFFE0000
};
 
int main() {
    ofstream FILE;
    int retval = 0;
 
    hs_is_t a_i, b_i, c_i, d_o;
    bool clear, enable, function, start;
    shift_t shift;
    len_t len, f_cnt;
    bool f_valid;
 
    a_i.data = 0; a_i.valid = false; a_i.ready = false;
    b_i.data = 0; b_i.valid = false; b_i.ready = false;
    c_i.data = 0; c_i.valid = false; c_i.ready = false;
    d_o.data = 0; d_o.valid = false; d_o.ready = false;
    enable = false; start = false;
    function = 1;      // FFT
    shift    = 0;      // plain kernel, no twiddle on unload
    len      = 16;     // 16 output words; A and B take len/2 = 8
 
    // reset
    clear = 1;
    cont(&a_i, &b_i, &c_i, &d_o, clear, enable, function, start, shift, len, &f_cnt, &f_valid);
    clear = 0;
 
    FILE.open("result.dat");
 
    uint32_t got[16];
    int ia = 0, ib = 0, nout = 0, t;
 
    for (t = 0; t < 16 && nout < 16; t++) {
        a_i.valid = (ia < 8);  a_i.data =true;
        b_i.valid = (ib < 8);  b_i.data = true;
        c_i.valid = true;     c_i.data = 0;
        d_o.ready = true;
        enable = true;
        start  = (t == 0);
 
        cont(&a_i, &b_i, &c_i, &d_o, clear, enable, function, start, shift, len, &f_cnt, &f_valid);
 
        if (a_i.valid && a_i.ready) ia++;
        if (b_i.valid && b_i.ready) ib++;
 
        if (d_o.valid) {
            got[nout] = (uint32_t)(int32_t)d_o.data;
            cout << "t=" << t << (nout < 8 ? "  im[" : "  re[") << (nout % 8) << "] = 0x"
                 << hex << got[nout] << dec << endl;
            FILE << d_o.data << endl;
            nout++;
        }
    }
    FILE.close();
 
    cout << "accepted A=" << ia << " B=" << ib << "  outputs=" << nout << "  cycles=" << t << endl;
 
    int errs = 0;
    for (int i = 0; i < nout; i++)
        if (got[i] != GOLD[i]) {
            errs++;
            cout << "  MISMATCH " << (i < 8 ? "im[" : "re[") << (i % 8) << "]  got 0x"
                 << hex << got[i] << "  exp 0x" << GOLD[i] << dec << endl;
        }
    if (nout != 16) { errs++; cout << "  only " << nout << " of 16 outputs" << endl; }
 
    if (errs) { printf("Test failed  !!!  (%d errors)\n", errs); retval = 1; }
    else      { printf("Test passed !\n"); }
    return retval;
}
 

/* Code for printing the result if needed for debugging 
  
    ifstream infile("result.dat");
    if (!infile) {
        cerr << "Cannot open result.dat!" << endl;
        return 1;
    }

    string firstLine;
    if (getline(infile, firstLine)) {
        cout << "First line of result.dat: [" << firstLine << "]" << endl;
    } else {
        cout << "File is empty!" << endl;
    }

    infile.close();*/


   
