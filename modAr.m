function myAns = modAr(message, exp, n)

%Un teorema de teoria de numeros (el cual es una extensión del teorema de
%Fermat) que si tenemos que mensajeCodificado=(mensaje)^k % n, podemos
%hacer la operación inversa de tal forma que
%mensaje=(mensajeCodificado)^j % n

base= mod(message,n);
myAns = 1;
for i = 1:exp
    myAns = mod(myAns.*base,n);
end
end

