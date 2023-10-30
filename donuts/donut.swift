               import  Foundation;
           var A=0.0,B=0.0,y=1760;func
         a()->Void{var s = [ String ] (
       repeating:" ",count:y),t=[Double] (
     repeating:0,count:y);A += 0.05;B+=0.07;
    let o=cos(A),e=sin(A),n=cos(B),c = sin(B)
   for i in 0..<y{s[i]=(i%80==79) ? "\n": " ";
  t[i] = 0};for i in stride(from:0,to:6.28, by:
 0.07){let r=cos(i)           ,a=sin(i);for j in
 stride(from:0,to:             6.28,by:0.02){let
 l=sin(j),f=cos(j               ),A=r+2,B=1/(l*A
 * e+a*o+5),d=l *               A*o-a*e,m=Int(40
 + 30*B*( f*A*n -               d*c)),v=Int(12 +
 15*B*(f*A*c+d*n))             ,I=m+80*v,h=Int(8
 * ((a*e-l*r*o)*n -           l*r*e-a*o-f*r*c));
  if v<22&&v>=0&&m>=0&&m<79&&B>t[I]{t[I]=B;s[I]
   = [".",",","-","~",":",";","=","!","*","#",
    "$","@"][h>0 ? h:0]}}};print("\u{001B}[J"
     + "\u{001B}[H"+s.joined(separator:""))}
       Timer.scheduledTimer(//by drakeerv.
         withTimeInterval:0.05, repeats:
           1==1){_ in a()};RunLoop//..
               .current.run()//...
