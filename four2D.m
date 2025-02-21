Width = 0.1; %m
Length = 0.275; %m

syms x y
syms Amn(x,y)
for m = 1:3
    for n = 1:3
        w = sin(m*pi*x/Length)*sin(n*pi*y/Width);
Amn = 4/(Width*Length)*int(w*sin(m*pi*x/Length),x,0,Length)*int(w*sin(n*pi*y/Width),y,0,Width)
    end 
end

qq = 0;
