nn=10000;r=3.9;
x(1)=0.1;
y(1)=0.100001;
d(1)=abs(x(1)-y(1));
for n=1:nn-1
	x(n+1)=r*x(n)*(1.0-x(n));
	y(n+1)=r*y(n)*(1.0-y(n));
	d(n+1)=abs(x(n+1)-y(n+1));
end
%plot(1:nn,x(1:nn),'r-',1:nn,y(1:nn),'b-')
%title('CFB: r=3.9')
%axis([1 10000 0 1]);
%xlabel('n')
%ylabel('x(n) and y(n)')
plot(1:nn,log10(d(1:nn)))
ylabel('log10(abs(x-y))')
xlabel('n')
title('CFB: r3.9')
