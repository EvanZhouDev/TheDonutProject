              import kotlin.math.*;
           fun main(){var k:Int;var A=
         0.0;var B=0.0;var i:Double;var j:
       Double;val z=DoubleArray(1760);val b=
     CharArray(1760);print("\u001b[H\u001b["+
    "2J");while(true){b.fill(' ');z.fill(0.0);
   j=0.0;while(j<6.28){i=0.0;while(i<6.28){val
  c=sin(i);val d=cos(j);val e=sin(A);val f=sin(j)
 val g=cos(A);val h           =d+2;val D=1/(c*h*e+
 f*g+5);val l=cos              (i);val m=cos(B);
 val n=sin(B);val               t=c*h*g-f*e;val x=
 (40+30*D*(l*h*m-               t*n)).toInt();val
 y=(12+15*D*(l*h                *n+t*m)).toInt();
 val o=x+80*y;val              N=(8*((f*e-c*d*g)*
 m-c*d*e-f*g-l*d*n            )).toInt();if(y in
  1..21&&x>0&&80>x&&         D>z[o]){z[o]=D;b[o]=
   ".,-~:;=!*#$@"[if(N>0)N else 0]};i+=0.02};j+=
    0.07};print("\u001b[H\u001b[2J");k=0;while(
     k<1761){print(if(k%80!=0) b[k] else "\n"
        );k++};A+=0.04;B+=0.02}}/* Donut.kt
           Based on donut.c, Tested on
             Kotlin 1.9.10. Made by:
                 @AbdallahMehiz */