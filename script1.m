nn=1000;
r=linspace(2.0,3.9,1000)
hold on
for k=1:length(r)
	x(1)=0.1;
	for n=1:nn-1
		x(n+1)=r(k)*x(n)*(1.0-x(n));
		if(n>0.9*nn)
			plot(r(k),x(n),'b.','MarkerSize',1)
		end
	end
end	
title('CFB: logistic map'); xlabel('r');ylabel('x');
