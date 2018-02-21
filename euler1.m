clear all;
nn=1000;
h=0.5;
x1(1)=1.0;
x2(1)=1.0;
t(1)=0;
for n=1:nn-1
	fun1=x2(n);
	fun2=-x1(n)-0.2*x2(n);
	x1(n+1)=x1(n)+h*fun1;
	x2(n+1)=x2(n)+h*fun2;
	t(n+1)=t(n)+h;
end
plot(t,x2);
title('CFB');xlabel('t');ylabel('x1');