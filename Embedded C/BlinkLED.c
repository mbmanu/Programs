#define F_CPU 20000000L
#include<avr/io.h>
#include<avr/delay.h>

int main(){
  DDRB |= (1<<PB0);
  
  while(1){
    PORTB ^= (1<<PB0);
    _delay_ms(100);
  }
  return 0;
}