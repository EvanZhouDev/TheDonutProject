               use Math::Trig; use 
           Time::HiRes qw(usleep);my$y
         =1760;my $a=0.0; my $b=0.0; sub
       join_str{my($s, @a)=@_;my$r=""; for
     my$i(0..$y-1){$r.=$a[$i];$r.=$s if$i<$y
    -1}return $r}for(; ;){my@s=("")x$y;my@t=(
   .0)x$y;$a+=.05;$b+=.07;my $o=cos($a);my $e=
  sin($a);my$n=cos($b);my$c=sin($b);for my $i(0
 ..$y-1){$s[$i]=($i           %80==79)?"\n":" ";
 $t[$i]=0}for(my$i             =0;$i<6.28; $i +=
 .07){my$r=cos($i               );my$w= sin($i);
 for(my$j=0; $j <               6.28;$j+=.02){my
 $l=sin($j);my$f=               cos($j);my$g=$r+
 2;my$q=1/($l*$g *             $e+$w*$o+5);my$d=
 $l*$g*$o-$w*$e; my           $m= int(40+30*$q*(
  $f*$g*$n-$d*$c));my$v=int(12+15*$q*($f*$g*$c+
   $d*$n));my$x=$m+80*$v;my$h=int(8*(($w*$e-$l
    *$r*$o)*$n-$l*$r*$e-$w*$o-$f*$r*$c));if (
     $v<22&&$v>=0&&$m>=0&&$m<79&&$q>$t[$x]){
       $t[$x]=$q;$s[$x]=substr((".,-~:;=!".
         "*#\$@"),$h>0?$h:0,1)}}}print("
           \x1b[J\x1b[H".join_str("" ,
               @s));usleep(50000)}