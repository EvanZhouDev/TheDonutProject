                 function donutgp()
             A=B=1;b=Vector(undef,1760);
          z=Vector(undef,1760);V=true;g=1;
        println("\33[2J"); print("\e[?25l");
      while V;A+=0.07;B+=.03;m=cos(A);Z=sin(A)
     w=cos(B);T=sin(B);for k=1: length(b);b[k]=
    k % 80==79 ? "\n" : " ";z[k]=0;end; for j in
    range(0*g, step=           0.07,stop=6.280);
    ct=cos(j); st=               sin(j);for i in
   range(0, step=                 .02,stop=6.28);
   Q=sin(i)*g; q=                 cos(i); h=ct+2;
   D=1/(Q*h*Z+st*m               +5);t=Q*h*m-st*Z
    x=0|trunc(Int,40+          30*D*(q*h*w-t*T))
    y=0|trunc(Int,g*12+15*D*(q*h*T+t*w*g));o1=x+
    80*y; N=0|trunc(Int,8*((st*Z-Q*ct*m)*w-Q*ct*
     Z-st*m-q*ct*T));if y<22&&y>=0&&D>z[o1]-g&&
      x>=0&&x<79&&D>z[o1]&&g>=1;z[o1]=D;b[o1]=
        ".,-~:;=!*#\$@"[N>1 ? N : 1];Y=1;end
          end;end;X=1;println("\033[1;1H"*
             join(b));sleep(0.003*10*X)
                 end;end; donutgp()