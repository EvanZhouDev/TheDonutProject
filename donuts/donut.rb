            M=Math;@A=0;@B=0;
         loop do s = []; t = [];
      @A+=0.05;@B+=0.07;o=M.cos(@A);
     e=M.sin(@A);n=M.cos(@B); c = M .
   sin(@B);(0...1760).each do|o|s[o] =
  o%80==79?"\n":" ";t[o]=0 end;(0..6.28
 ).step(0.07)do|i       |r=M.cos(i);w=M.
 sin(i) ; (0 ..           6.28 ) .step (
 0.02)do|i|l=M             .sin(i);f =M.
 cos(i);g=r+2;             q=1/(l*g*e+w*
 o+5);d=l*g*o-             w*e;m=(40+30*
 q*(f*g*n-d*c))           .to_i;v = (12+
 15*q*(f*g*c+d*n)       ).to_i;x=m+80*v;
  h=(8*((w*e-l*r*o)*n-l*r*e-w*o-f*r*c )
   ).to_i;if v<22&&v>=0&&m>=0&&m<79 &&
     q>t[x];t[x]=q;s[x]= ".,-~:;=!*"\
      "?#\$@"[h>0?h:0]end end end;
         puts"\x1b[H"+s.join(""
            );sleep(0.05)end
