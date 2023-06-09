/*
 Print.cpp - Base class that provides print() and println()
 Copyright (c) 2008 David A. Mellis.  All right reserved.
 
 This library is free software; you can redistribute it and/or
 modify it under the terms of the GNU Lesser General Public
 License as published by the Free Software Foundation; either
 version 2.1 of the License, or (at your option) any later version.
 
 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 Lesser General Public License for more details.
 
 You should have received a copy of the GNU Lesser General Public
 License along with this library; if not, write to the Free Software
 Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 
 Modified 23 November 2006 by David A. Mellis
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "Arduino.h"

#include "arte.h"

#include "Print.h"



// Public Methods //////////////////////////////////////////////////////////////

/* default implementation: may be overridden */
size_t Print::write(const uint8_t *buffer, size_t size)
{
  size_t n = 0;
  
   /* *** ARTE - begin critical section  *** */
  arteLock();
  
  while (size--) {
    n += write(*buffer++);
  }
  
   /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::print(const __FlashStringHelper *ifsh)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  PGM_P p = reinterpret_cast<PGM_P>(ifsh);
  size_t n = 0;
  while (1) {
    unsigned char c = pgm_read_byte(p++);
    if (c == 0) break;
    n += write(c);
  }
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::print(const String &s)
{
  return write(s.c_str(), s.length());
}

size_t Print::print(const char str[])
{
  return write(str);
}

size_t Print::print(char c)
{
  return write(c);
}

size_t Print::print(unsigned char b, int base)
{
  return print((unsigned long) b, base);
}

size_t Print::print(int n, int base)
{
  return print((long) n, base);
}

size_t Print::print(unsigned int n, int base)
{
  return print((unsigned long) n, base);
}

size_t Print::print(long n, int base)
{
 size_t retval;
  
  if (base == 0) {
    return write(n);
  
  } else if (base == 10) {
    if (n < 0) {
      /* *** ARTE - begin critical section  *** */
      arteLock();
      
      int t = print('-');
      n = -n;
      retval = printNumber(n, 10) + t;
      
      /* *** ARTE - end critical section  *** */
      arteUnlock();
      
      return retval;
    }
    
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    retval = printNumber(n, 10);
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
    
    return retval;
    
    
  } else {
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    retval = printNumber(n, base);
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
    
    return retval;
  }
}



size_t Print::print(unsigned long n, int base)
{
  size_t retval;
  
  if (base == 0) {
    return write(n);
  
  } else { 
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    retval = printNumber(n, base);
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
    return retval;
  }
}

size_t Print::print(double n, int digits)
{
  size_t retval;
  
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  retval = printFloat(n, digits);
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return retval;
  
}

size_t Print::println(const __FlashStringHelper *ifsh)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(ifsh);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::print(const Printable& x)
{
  size_t retval;
  
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  retval = x.printTo(*this);
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return retval;
}

size_t Print::println(void)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print('\r');
  n += print('\n');
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(const String &s)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(s);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(const char c[])
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(c);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(char c)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(c);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(unsigned char b, int base)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(b, base);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(int num, int base)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(num, base);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(unsigned int num, int base)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(num, base);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(long num, int base)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(num, base);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(unsigned long num, int base)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(num, base);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(double num, int digits)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(num, digits);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

size_t Print::println(const Printable& x)
{
  /* *** ARTE - begin critical section  *** */
  arteLock();
  
  size_t n = print(x);
  n += println();
  
  /* *** ARTE - end critical section  *** */
  arteUnlock();
  
  return n;
}

// Private Methods /////////////////////////////////////////////////////////////

size_t Print::printNumber(unsigned long n, uint8_t base) {
  char buf[8 * sizeof(long) + 1]; // Assumes 8-bit chars plus zero byte.
  char *str = &buf[sizeof(buf) - 1];

  *str = '\0';

  // prevent crash if called with base == 1
  if (base < 2) base = 10;

  do {
    unsigned long m = n;
    n /= base;
    char c = m - base * n;
    *--str = c < 10 ? c + '0' : c + 'A' - 10;
  } while(n);

  return write(str);
}

size_t Print::printFloat(double number, uint8_t digits) 
{ 
  size_t n = 0;
  
  if (isnan(number)) return print("nan");
  if (isinf(number)) return print("inf");
  if (number > 4294967040.0) return print ("ovf");  // constant determined empirically
  if (number <-4294967040.0) return print ("ovf");  // constant determined empirically
  
  // Handle negative numbers
  if (number < 0.0)
  {
     n += print('-');
     number = -number;
  }

  // Round correctly so that print(1.999, 2) prints as "2.00"
  double rounding = 0.5;
  for (uint8_t i=0; i<digits; ++i)
    rounding /= 10.0;
  
  number += rounding;

  // Extract the integer part of the number and print it
  unsigned long int_part = (unsigned long)number;
  double remainder = number - (double)int_part;
  n += print(int_part);

  // Print the decimal point, but only if there are digits beyond
  if (digits > 0) {
    n += print("."); 
  }

  // Extract digits from the remainder one at a time
  while (digits-- > 0)
  {
    remainder *= 10.0;
    int toPrint = int(remainder);
    n += print(toPrint);
    remainder -= toPrint; 
  } 
  
  return n;
}
