#include <avr/io.h>
#include <util/delay.h>

int main(){
   
    DDRB |= (1 << PIN5);

    
    while(1){
        
        PORTB ^= (1 << PIN5); 

        _delay_ms(1000);

    }

}

