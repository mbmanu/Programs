#define F_CPU 20000000L
#include<avr/io.h>
int main()
{
  DDRB = 0b00100000;
  PORTB = 0b00000010;


  while(1)
  {
    if (bit_is_clear(PINB, 1))
      PORTB = 0b00100000;
      
    else
      PORTB = 0b00000000;
  }
}