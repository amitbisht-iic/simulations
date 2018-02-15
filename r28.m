nn=100;r=3.5;
x(1,1)=0.1;x(2,1)=0.3;x(3,1)=0.5;
for k=1:3
	for n=1:nn-1
		x(k,n+1)=r*x(k,n)*(1.0-x(k,n));
	end
end
plot(1:nn,x(1,1:nn),1:nn,x(2,1:nn),1:nn,x(3,1:nn))
title('CFB:r=2.8');
axis([80 100 -1 3]);
