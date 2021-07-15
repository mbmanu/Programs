int main()
{
  DDRB = 0b00100000;
  PORTB = 0b00000010;
  int pressed = 0;


  while(1)
  {
    if (bit_is_clear(PINB, 1))//make sure the button is pressed and released
    {
      if(pressed==0)
      {
        PORTB ^= 0b00100000;
        pressed = 1;
      }
    }
    else
    pressed = 0;
  }
}