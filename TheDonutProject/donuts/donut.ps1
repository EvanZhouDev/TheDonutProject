$A = 0; $B = 0; $z = @(1..
  1760); $p = @(1..1760); while (
  $true) {
  for ($i = 0; 1760 -gt $i; $i++
  ) { $p[$i] = ' '; $z[$i] = 0; }; for ($j = 0;
    6.28 -gt $j; $j += 0.07) {
    for ($i = 0; 6.28 -gt $i;
      $i += 0.02) {
      $c = [Math]::Sin($i); $d = [Math]::
      Cos($j); $e = [Math]::Sin($A); $f = [Math]::Sin(
        $j) ; $g = [Math]::         Cos($A) ; $h = $d + 2;
      $q = 1 / ($c * $h * $e + $f * $g + 5); $l = [Math]::
      Cos( $i ); $m = [               Math ]::Cos($B);
      $n = [Math]::Sin(                 $B); $t = ($c * $h * `
          $g - $f * $e) ; $x = [int](40 + 30 * $q`
          * ($l * $h * $m - $t * $n)); $y = [int](
        12 + 15 * $q * ($l * $h * $n + $t * $m)); $o = $x`
        + 80 * $y; $r = [int](8 * (($f * $e - $c * $d * $g`
          ) * $m - $c * $d * $e - $f * $g - $l * $d * $n)); if (`
        (22 -gt $y) -and ($y -gt 0) -and ($x -gt 0) -and (80 `
            -gt $x) -and ($q -gt $z[$o])) {
        $z[$o] = $q;
        $p[$o] = ".,-~:;=!*#$@"[($r -gt 0 ? $r :0)];
      };
    };
  }; Clear-Host; for ($k = 0; 1761 -gt
    $k; $k++) {
    Write-Host -NoNewline(`
        $k % 80 ? $p[$k]:"`n") ;
  }; $A += .04
  ; $B += 0.02
}; <#PS1#>     
