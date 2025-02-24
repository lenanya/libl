#ifndef LMATH_H
#define LMATH_H

int pow(int n, int pow) {
    if (n == 0 && pow != 0) return 0;
    int result = 1;
    for (int i = pow; i > 0; --i) {
        result *= n;
    } 
    return result;
}

#endif