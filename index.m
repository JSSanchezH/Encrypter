clc
clear
close all

%Algoritmo RSA

[p,q] = primeGenerator(500);
[n,k,j] = keyGenerator(p,q);

pname = "Cual es su nombre: ";


name = input(pname,"s");

nameEncrypted = encrypter(name, k, n);
disp("Nombre encriptado")
disp(nameEncrypted)



nameDesencrypted = desencrypter(nameEncrypted, j, n);
disp("Nombre desencriptado")
disp(char(nameDesencrypted))

