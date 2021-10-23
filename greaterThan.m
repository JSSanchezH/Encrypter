function [x1,y1,z1] = greaterThan(x,y,z)
x1=0; y1=0; z1=0;
if x>y && x>z
    x1=1;
elseif y>z
    y1=1;
else
    z1=1;
end
end

