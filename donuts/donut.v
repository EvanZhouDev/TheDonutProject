                 import   math
            const y= 1760 fn join(s 
         string, a[y]string)string{mut
       r:=""for i:=0;i<y;i++{r+=a[i]if i
     <y-1{r+=s}}return r}fn main(){mut a:=
    .0 mut b:=.0 for{mut s:=[y]string{} mut
   t:=[y]f64{}a+=.020 b+=.028 o:=math.cos(a)
  e:=math.sin(a)n:=math.cos(b)c:= math.sin(b)
 for i:=0;i<y; i++           {s[i]=if i%80==79
 {"\n"}else{" "}t             [i]=0}for i:=.0;
 i<6.28;i+=.07{r               :=math.cos(i) w
 :=  math.sin(i)               for j:=.0 ; j <
 6.28;j+=.02{l:=               math.sin(j)f :=
 math.cos(j)g:=r+             2 q:=1/(l*g*e+w*
 o+5)d:=l*g*o-w* e           m:= int(40+30*q*(
  f*g*n-d*c))v:=int(12+15*q*(f*g*c+d*n))x:=m+
   80*v h:=int(8*((w*e-l*r*o)*n-l*r*e-w*o-f*
    r*c))if v<22&& v>=0&& m>=0&& m<79 && q>
     t[x]{t[x]=q s[x]=".,-~:;=!*#$@".split
       ("")[if h>0{h}else{0}]}}} print("
         \x1b[J\x1b[H"+join("",s))}}/*
            V-Lang  0.4.2  (b9d0aed)
                 by drakeerv*/
