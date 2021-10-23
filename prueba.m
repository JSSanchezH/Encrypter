clc
clear
close all


[p,q]= primeGenerator(500);
            [n,k,j] = keyGenerator(p,q);    
            nameEncrypted = encrypter('hoadsfsdfasdfasdla', k, n);
            genderEncrypted = encrypter('masculino', k, n);
            hobbyEncrypted = encrypter('jugar', k, n);
            
            nL = length(nameEncrypted);
            gL = length(genderEncrypted);
            hL = length(hobbyEncrypted);
%             disp(nL)
%             disp(gL)
            [x1,y1,z1] = greaterThan(nL,gL,hL);
            if x1 == 1
                size = nL;
                genderEncrypted = [genderEncrypted,zeros(1,size-gL)];
                disp("hola")
            elseif y1 == 1
                size = gL;
            elseif z1 == 1
                size = hL;
            end
%             disp(length(nameEncrypted))
%             disp(length(genderEncrypted))