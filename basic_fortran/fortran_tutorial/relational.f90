Program re_logic

implicit none

logical m,n

m = .true.
n = .false.

print *, "M : ",M, "N : ",N

print *,"m.eqv.n",m.eqv.n

print *,"m.neqv.n",m.neqv.n

print *,".not.m",.not.m

print *,"m.or.n",m.or.n

print *,"m.and.n",m.and.n



end Program re_logic
