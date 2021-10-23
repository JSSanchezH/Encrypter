function [n, k, j] = keyGenerator(prime1, prime2)


%Genero la primera parte de la clave publica, la cual se consigue
%multiplicando los primos generados, debido al tamaño de estos numeros
%es muy dificil factorizar y conocer los primos originales

n = prime1*prime2;

%Tambien conocida como la funcion phi de euler, muy usada en teoria de
%numeros

s = (prime1-1)*(prime2-1);


%Buscamos un numero k que vaya desde 1 hasta s, notese que iniciamos de
%atras para adelante, esto se hace para aumentar la dificultad de los
%calculos a la hora de desencriptar, esta k es la otra parte de la clave
%publica
for k = s-1:-1:2
    %Este numero k tiene que ser coprimo, podemos saber esto facilmente 
    %calculando el Maximo Comun Multiplo (MCM o GCD en ingles)
    coprimo = gcd(k,s);
    
    %K solamente nos sirve si este es coprimo (que s no sea divisible por 
    %k) y ademas es primo
    
    if coprimo == 1 && isprime(k)
        %Nos salimos del for y nos quedamos con la k actual
        break
    end
    
end

%La clave publica sería entonces (n,k), este dato cualquiera lo puede
%conocer


%Existe solamente un j entre 1 y s para el cual j*k deje de residuo 1  al
%dividirlo entre s (j*k)%s=1, esta j es la clave privada y solamente el
%destinatario la debería de conocer

for j = 2:s-1
   
   %Calculamos dicha operación
   modular = mod(j*k,s);
   
   %Si resulta que es 1
   if modular == 1
       %Nos salimos del for y nos quedamos con la l actual
       break
   end
end

end

