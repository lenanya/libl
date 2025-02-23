#ifndef LSTRING_H
#define LSTRING_H
#include "lmem.h"
#include "lmath.h"

int lstrlen(char* str) {
	int i = 0;
	while (str[i] != 0) ++i;
	return i;
}

void lstrcpy(char* dest, char* src) {
	int length = lstrlen(src);
	for (int i = 0; i < length; ++i) dest[i] = src[i];
}

int lstrncpy(char* dest, char* src, int n) {
	if (lstrlen(src) < n) return -1;
	for (int i = 0; i < n; ++i) dest[i] = src[i];
}

int lfindchar(char* str, char needle) {
	int length = lstrlen(str);
	int i = 0;
	while (i < length) {
		if (str[i] == needle) return i;
	}
	return -1;
}

void strrev(char* str) { // shitty string reversal
	char* temp = alloc(lstrlen(str));
	int length = lstrlen(str);
	memncpy(temp, str, length);	
	for (int i = length - 1; i >= 0; --i) str[length - 1 - i] = temp[i]; // reverse iterate 
	free(temp);
}

char* itoa(int n) {
	char* ret = alloc(64);
	int negative = 0;
	if (n < 0) { 
		negative = 1;
		n *= -1; // basically abs(n)
	}
	int i = 0;
	while (n > 0) { // go through digits from right to left (in reverse)
		int temp = n % 10; // get digit
		ret[i] = temp + 0x30; // ascii of numbers is 0x30 to 0x39
		n = n / 10; // move to next digit
		++i;
	}
	if (negative) {
		ret[i] = 0x2D; // "-"
		++i;
	}	
	ret[i] = 0; // null terminate string so strlen and strrev work
	strrev(ret); // reverse the string
	return ret;
}

int is_digit(char c) {
	return (c <= 0x39 && c >= 0x30);
}

int atoi(char* str) { // returns 0 on failure
	int negative = 0;
	size_t length = lstrlen(str);
	if (!length) return 0;
	int result = 0;
	for (int i = length - 1; i >= 0; --i) {
		if (i == 0 && str[i] == '-')  {
			negative = 1;
			break;
		}
		if (!is_digit(str[i])) return 0;
		result += (str[i] - 0x30) * (pow(10, length - 1 - i));
	}
	return result;
}

#endif
