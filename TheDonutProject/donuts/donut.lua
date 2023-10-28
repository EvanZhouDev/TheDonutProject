                 local mt,a,ba,z,b=
             math,0,0,{},{} local ts,ps=
          0.07,0.02 while 1 do local j,i=0
        for l=1, 1760 do z[l], b[l]=0,' ' end
      while j<6.28 do j, i=j+ts, 0 while i<6.28
     do i=i+ps local c,d,e,f,g,h,D,l,m,n,t,x,y,o
   ,N c,l,d,f,e,g,h=mt.sin(i),mt.cos(i),mt.cos(j),
   mt.sin(j),mt.sin(a),       mt.cos(a),mt.cos(j)+2
  D,m,n,t=1/(c*h*e+f             *g+5), mt.cos(ba),
  mt.sin(ba), c*h*g               -f*e x,y=mt.floor(
 40+30*D*(l*h*m-t*                 n)), mt.floor(12+
 15*D*(l*h*n+t*m))                  o, N=mt.floor(x+
 (80*y)), mt.floor                  (8*((f*e-c*d*g)*
  m-c*d*e-f*g-l*d*                   n)) local st={
  '.',',','-','~',                  ':',';','=','!'
  ,'*','#','$','@'                  } if 22>y and y
   > 0 and 80> x and               x>0 and D>z[o+1]
   then z[o+1],b[o+1]=           D, st[N+1] or '.'
    end end end for l=1,       1760 do io.write(l%
     80~=0 and b[l] or '\n') print('\x1b[H') end
       a,ba=a+0.04,ba+0.02 end -- Based on donut.c
        -- by Andy Salone.Translated to lua by
           -- Zeyu Li. Rewritten & shortened
            -- by Claire => @Ex-Opera
