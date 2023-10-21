             package main
         import("fmt";."math"
       "time");func main(){A,B:=
     0.,0.;b:=make([]byte,1760);for{
   var z[1760]float64;for i:=range b{
  b[i]=32};for j:=0.;6.28>j;j+=0.07{for
 i:=0.;6.28>i;i+=0.02{c,d,e,f,g,l,m,n:=
 Sin(i),Cos(j),Sin(A),Sin(j),Cos(A),Cos(
 i),Cos(B),Sin(B)      ;h:=d+2;D,t:=1/(c*
h*e+f*g+5),c*h*g        -f*e;N,x,y:=int(8*
((f*e-c*d*g)*m             -c*d*e-f*g-l*d*
n)),int(40+30*D*         (l*h*m-t*n)),int(
 12+15*D*(l*h*n+t      *m));o:=x+80*y;if//
 22>y&&y>0&&x>0&&80>x&&D>z[o]{z[o]=D;p:=0
 if N>0{p=N}else{p=0};b[o]=(".,-~:;=!*#"+
  "$@")[p]}}};for k:=range b{if k%80==0{
   b[k]=10}};fmt.Println("\x1b[H",//--.
     string(b));A+=0.04;B+=0.02;time.
       Sleep(time.Second/15)}}/**
         ;;==#####@@@@@@#####=;
             ;==$##@@#$=;*/