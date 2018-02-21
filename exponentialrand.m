clear
function f=quicksort(v)                       % v must be a column vector
  f = v; n=length(v);
  if(n > 1)
     vl = min(f); vh = max(f);                  % min, max
     p  = (vl+vh)*0.5;                          % pivot
     ia = find(f < p); ib = find(f == p); ic=find(f > p);
     f  = [quicksort(f(ia)); f(ib); quicksort(f(ic))];
  end
endfunction
%N=10000; 

v=exprnd(0,[20]);
x=length(v)
u=quicksort(v)
hist(u,100)
