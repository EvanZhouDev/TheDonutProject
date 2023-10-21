                  <?php function
              donut($index){$A=$index
           * 0.04; $B = $index*0.02; $z=
        array_fill(0,1760,0);$p=array_fill(
      0,1760,' ');for($j=0;6.28>$j;$j+=0.07){
    for ($i=0;6.28>$i;$i+=0.02) {$c=sin($i);$d=
   cos($j);$e=sin($A); $f=sin($j);$g=cos($A);$h=
  $d+2; $q=1/($c*$h*$e+$f*$g+5);$l=cos($i);$m=cos
 ($B);$n=sin($B); $t=$c*$h*$g-$f*$e;$x=floor(40+30
*$q*($l*$h*$m-$t*$n           ));$y=floor(12+15*$q*
($l*$h*$n+$t*$m));             $o=$x+80*$y; $r=8*((
$f*$e- $c*$d*$g)*               $m-$c*$d* $e-$f*$g-
$l*$d*$n); if(22>               $y&&$y>0&&$x>0&&80>
$x&&$q>$z[$o]) {$z             [$o]=$q;$p[$o]=(".".
",-~:;=!*#$@")[$r>0?         $r:0];}}}for($k=0;1761
 >$k;$k++)echo($k%80?$p[$k]:"\n");}?><html><body>
  <pre><?php $index = $_REQUEST['i'] ?? 0;donut(
   $index); ?></pre> <script> setTimeout( () =>
    {window.location.href=window.location.href
      .replace(/(\?i=\d+)?$/, "?i=<?php echo
         ($index + 1); ?>");}); </script>
            </body> </html>  <?php ?>
                 <!------------>