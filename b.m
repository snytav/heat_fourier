function [bb] = b(n,x,f,L)
bb = 2/L*int(f(x)*sin(n*pi*x/L),x,0,L);
end