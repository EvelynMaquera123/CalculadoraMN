function [resultado,err]=primeraregresiva(fx,xi,xh)
i=str2double(xi);
h=str2double(xh);

syms x
f=str2sym(fx);

aprox=(subs(f,i)-subs(f,i-h))/h;
f_derivada=diff(f);
error=abs(subs(f_derivada,i)-aprox)

cambiar=double(aprox)
resultado=num2str(cambiar);
cambiar=double(error)
err=num2str(cambiar);
%resultado=num2str(derivacion);