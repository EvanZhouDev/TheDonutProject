             import"dart:math"as
          M; import "dart:io"; void 
       main(){var A=.0,B=.0;while(true
      ){List<String>s=[];List<double>t=
    [];A+=.05;B+=.07;var o=M.cos(A),e= M.
   sin(A),n=M.cos(B),c=M.sin(B);for(var i=
  0;i<1760;i++){s.add(i%80==79?"\n":" ");t.
 add(.0);}for(var i       =.0;i<6.28;i+=.07)
 {var r=M.cos(i),           w=M.sin(i);for (
 var j=.0;j<6.28             ;j+=.02){var l=
 M.sin(j),f = M.             cos(j),g=r+2,q=
 1/(l*g*e+w*o+5)             ,d=l*g*o-w*e,m=
 (40+(30*q*(f*g*n           -d*c))).toInt(),
 v=(12+(15*q*(f*g*c       +d*n))).toInt(),x=
  m+80*v,h=(8*((w*e-l*r*o)*n-l*r*e-w*o-f*r*
   c)).toInt();if(v<22&&v>=0&&m>=0&&m<80&&
    q>t[x]){t[x]=q;s[x]=".,-~:;=!*#\$@"[h
      >0?h:0];}}}stdout.write("\x1b[H"+s
       .join(""));sleep(const Duration
          (milliseconds:50));}}/*..
             Dart..by drakeerv*/