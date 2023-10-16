                using static System
            .Math;int k;double A=0,B=0,
         i,j; double[] z=new double[1760];
       char[] b=new char[1760];Console.Clear
     ();for(;;){for(k=0;k<1760;k++){ z[k]=0; b
    [k]=' ';}for(j=0;PI*2>j;j+=0.07){for(i=0;PI
  *2>i;i+=0.02){ double sini=Sin(i), cosj=Cos(j),
  sinA=Sin(A),sinj=Sin(j),cosA=Cos(A),cosj2=cosj+
 2, mess =1 / (sini*           cosj2*sinA + sinj *
cosA+5),cosi=Cos(i               ),cosB=Cos(B),sinB
=Sin(B), t=sini*                   cosj2*cosA-sinj*
sinA;int x=(int)                   (40 + 30*mess* (
cosi*cosj2*cosB-                   t*sinB)),y=(int)
(12 + 15*mess* (                   cosi*cosj2*sinB+
t*cosB)),o=x+80*                   y, N=(int)(8* ((
sinj*sinA - sini *               cosj*cosA) *cosB -
 sini*cosj*sinA-sinj           *cosA-cosi*cosj*Sin
  (B)));if(22>y&&y>0&&x>0&&80>x&&mess>z[o]){z[o]=
  mess; b[o]=".,-~:;=!*#$@"[N>0?N:0]; }}}Console.
    Write("\x1b[d");for(k=0;1761>k;k++)Console.
     Write(k%80!=0?b[k]:'\n');A+=0.04;B+=0.02;
       }/*..................................
         ........... Made  for ...........
            ........ .NET  7.0 ........
                .................*/
