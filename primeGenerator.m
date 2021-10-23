function [prime1,prime2] = primeGenerator(maxNumber)

%Genera un arreglo de numeros primos que van hasta el maxNumber
prime = primes(maxNumber);


%Se crea un arreglo que va desde la mitad (aproximada hacia arriba) hasta
%la cantidad total de numeros primos generados

lengthPrime = ceil(length(prime)/2):1:length(prime);

%Se crea un arreglo con posiciónes aleatorios tomadas del paso anterior,
%se hace así para que los primos generados no sean tan pequeños
x = lengthPrime(randperm(ceil(length(prime)/2)));

%Tomo los primos que se encuentran en dos posiciones (que son unicas)

prime1 = prime(x(1));
prime2 = prime(x(2));

end

