                 import :math #yeah!
             Stream.unfold({ 0.0, 0.0 },
          fn{q,w}->{_,b}=(for j<-0..628//7,
        i<-0..628//2,do: {i/100,j/100})|>Enum
      .reduce({ :array.new(1760, default: 0.0),
     :array.new(1760, default: 32)},fn {i,j},{z,
   b} -> {c,d,e,f,g,l,m,n}={ sin(i),cos(j),sin(q),
   ###############################################
  sin(j),cos(q),cos(i)         ,cos(w),sin(w)};h=d+
 2;dd=1/(c*h*e+f*g+5             ) ;t=c*h*g-f*e ;nn=
 trunc(8*((f*e-c*d                 *g)*m-c*d*e-f*g-l
 *d*n));x=trunc(40                 +30*dd*(l*h*m-t*n
 ));y=trunc(12+15*                 dd*(l*h*n+t*m));o
 =x+80*y;{z,b}= if                 22>y and  y>0 and
 x>0 and  80>x and                 dd>:array.get(o,z
 ), do: (z = :array.             set(o,dd,z);p=if nn
  >0,do: nn, else: 0;b         =:array.set(o, Enum.
   at('.,-~:;=!*#$@',p),b);{z,b}), else: {z,b}; b=
   Enum.reduce(0..1759//80,b,fn ix,b ->:array.set(
     ix,10,b)end); {z, b} end); IO.puts('\x1b[H'
      ++:array.to_list(b)); {0,{q+0.04,w+0.02}}
        #    https://github.com/Virviil     #
          #    https://t.me/proelixir     #
             #  f@ck war, let's code!  #
                 end) |>Stream.run()
