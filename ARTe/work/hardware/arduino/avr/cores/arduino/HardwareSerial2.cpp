/*
  HardwareSerial2.cpp - Hardware serial library for Wiring
  Copyright (c) 2006 Nicholas Zambetti.  All right reserved.

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
  Modified 28 September 2010 by Mark Sproul
  Modified 14 August 2012 by Alarus
  Modified 3 December 2013 by Matthijs Kooijman
*/

#include "Arduino.h"
#include "HardwareSerial.h"
#include "HardwareSerial_private.h"


#define ISRf ISR
#ifdef __RT_ARDUINO__
#include "ee.h"   
#include "cpu/avr8/inc/ee_avr8_irqstub.h"
#undef ISRf
#define ISRf ISR2
#endif


// Each HardwareSerial is defined in its own file, sine the linker pulls
// in the entire file when any element inside is used. --gc-sections can
// additionally cause unused symbols to be dropped, but ISRs have the
// "used" attribute so are never dropped and they keep the
// HardwareSerial instance in as well. Putting each instance in its own
// file prevents the linker from pulling in any unused instances in the
// first place.

#if defined(HAVE_HWSERIAL2)

#if defined(USART_RX_vect)
  ISRf(USART_RX_vect)
#elif defined(USART2_RX_vect)
  ISRf(USART2_RX_vect)
#elif defined(USART_RXC_vect)
  ISRf(USART_RXC_vect) // ATmega8
#else
  #error "Don't know what the Data Received vector is called for the first UART"
#endif
  {
    Serial2._rx_complete_irq();
  }

#if defined(UART2_UDRE_vect)
ISRf(UART2_UDRE_vect)
#elif defined(UART_UDRE_vect)
ISRf(UART_UDRE_vect)
#elif defined(USART2_UDRE_vect)
ISRf(USART2_UDRE_vect)
#elif defined(USART_UDRE_vect)
ISRf(USART_UDRE_vect)
#else
  #error "Don't know what the Data Register Empty vector is called for the first UART"
#endif
{
  Serial2._tx_udr_empty_irq();
}

#if defined(UBRRH) && defined(UBRRL)
  HardwareSerial Serial2(&UBRRH, &UBRRL, &UCSRA, &UCSRB, &UCSRC, &UDR);
#else
  HardwareSerial Serial2(&UBRR2H, &UBRR2L, &UCSR2A, &UCSR2B, &UCSR2C, &UDR2);
#endif

// Function that can be weakly referenced by serialEventRun to prevent
// pulling in this file if it's not otherwise used.
bool Serial2_available() {
  return Serial2.available();
}

#endif // HAVE_HWSERIAL2
