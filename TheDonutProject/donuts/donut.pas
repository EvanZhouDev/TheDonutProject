                   PROGRAM Donut
              ;USES CRT;VAR k,x,y,o,r
           :Integer;A,B,i,j,c,d,e,f,g,h,
        q,l,m,n,t:Single; z:ARRAY[0..1759]
      OF Single;p:ARRAY[0..1759]OF Char;BEGIN
     A:=0; B:=0; clrscr; WHILE True DO BEGIN//
    FillChar(z,SizeOf(z),0);FillChar(p,SizeOf(p
   ),' ');j:=0;WHILE j<6.28 DO BEGIN i:=0; WHILE
  i<6.28 DO BEGIN c             :=sin(i);d:=cos(j
 ); e:=sin(A);f:=                 sin(j);g:=cos(A)
 ;h:=d+2;q:=1/(                     c*h*e+f*g+5);l
 := cos(i); m:=                     cos(B);n:=sin(
 B);t:=c*h*g-f*                     e;x:=Trunc(40+
 30*q*(l*h*m-t*                     n));y:= Trunc(
 12+15*q*(l*h*n                     +t*m));o:=x+80
 *y;r:=Trunc(8*((                 f*e-c*d*g)*m-c*d
  *e-f*g-l*d*n));IF             (22>y)AND(y>0)AND
   (x>0)AND(80>x)AND(q>z[o]) THEN BEGIN z[o]:=q;
    IF r>0 THEN p[o]:='.,-~:;=!*#$@'[r] ELSE p
     [o]:='.';END;i:=i+0.02;END;j:=j+0.07;END
      ;gotoxy(1,1);FOR k:=0 TO 1760 DO BEGIN
        IF k MOD 80  = 0 THEN writeln ELSE
           write(p[k]); END; A:=A+0.04;
               B:=B+0.02;Delay(5);{
                   }END; END.//
