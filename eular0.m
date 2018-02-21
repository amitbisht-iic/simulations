clear all;
nn=1000;
h=0.001;
x(1)=1;
t(1)=0;
for n=1:nn-1
	fn=-x(n)*t(n);
	x(n+1)=x(n)+h*fn;
	t(n+1)=t(n)+h;
end
plot(t,x)
title('CFB');xlabel('t');ylabel('y');