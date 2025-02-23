#ifndef LMATH_H
#define LMATH_H

int pow(int n, int pow) {
    int result = 1;
    for (int i = pow; i > 0; --i) {
        result *= n;
    } 
    return result;
}

#endif