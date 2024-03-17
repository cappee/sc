// Inserire qui il C equivalente
unsigned int fib(unsigned int n) {
    unsigned int fib1 = 0, fib2 = 1;
    if (n == 0) goto R1;
    if (n == 1) goto R2;

    F: if (n<=1) goto R2;
    fib1 = fib1 + fib2;
    // scambiamo fib1 e fib2 senza usare variabile aggiuntiva
    fib1 = fib1 + fib2;
    fib2 = fib1 - fib2; // ricorda che in IA32 le istruzioni sono "D = D op S" 
                        // mentre questa istruzione e' "D = S - D" pero' puo' essere 
                        // facilmente spezzata in due passaggi! 
    fib1 = fib1 - fib2;
    n--;
    goto F;
    
        
    R1: return fib1;

    R2: return fib2;
}