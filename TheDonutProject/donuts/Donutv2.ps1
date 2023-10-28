                     $Ca = ".,-~:;=!*#$@";$sin `
                  = @(for ($i = 0; $i -lt 1000; $i `
              += 1) { [Math]::Sin($i*0.006283185307179
            )});$cos=@( for($i=0; $i-lt 1000; $i+=1 ) {`
          [Math]::Cos($i*0.00628318530717958)}); Clear-Host
        [System.Console]::SetWindowSize(80, 44);while($true){
       $oA=(' '*3520).ToCharArray(); $dA= [double[]]::new(3520)
      $tsA=$sin[($aA % 6.28 * 159.15)];$tcA=$cos[($aA % 6.28 * `
     159.15)];$tcB=$sin[($aA % 6.28*159.15)]; $tsB= $cos[($aA % `
    6.28*159.15)];$aY=0;while($aY-lt 6.28){$tcY=$cos[($aY % 6.28*`
  159.15)];$tsY=$sin[($aY % 6.28*159.15)];$tscYA=$tsY*$tcA;$Dp=$tcY`
 +2;$aX=0;while ($aX-lt6.28) {          $tcX=$cos[($aX%6.28*159.15)]
 $tsX=$sin[($aX%6.28*159.15                )];$tscXY=$tsX*$tcY;$iD=`
 1/($tsX*$Dp*$tsA+ $tscYA                   +5);$tp=($tsX*$Dp*$tcA-`
 $tsY * $tsA);$sX=[int](                     40+40*$iD*( $tcX* $Dp*`
 $tcB-$tp*$tsB )); $sY=                      [int](20+20*$iD*($tcX*`
 $Dp* $tsB+$tp* $tcB));                      $Ix=(8* (($tsY*$tsA - `
 $tscXY * $tcA)* $tcB -                       $tscXY* $tsA- $tscYA-`
 $tcX*$tcY*$tsB)); $idx                       =$sX+80*$sY;if($iD-gt`
 $dA[$idx]){$dA[$idx] =                      $iD;$oA[$idx]=$Ca[$Ix];                    
 } $aX+= 0.1;}$aY+= 0.1 }               $aA += 0.09; [Console]:: `
  SetCursorPosition(0,    0);          [console]::write([string]:: `
  join("", $oA) );[system.console]::title = "| Made by: Jh1sc - D" + 
   "onut c |"}<#                Donut.c                        ~~~~~
     ~~~~~                &_&           &_&                  ~~~~~
      ~~~~~              (o O)         (o O)                ~~~~~
       ~~~~~          _/(  V  )\_   _/(  V  )\_            ~~~~~
         #####------------m-m-----------m-m-------------#####
          ~~~~~   Github:        .-.                   ~~~~~
             ~~~~~      JH1SC   ( o )               ~~~~~
               ~~~~~             `-'             ~~~~~
                   ~~~~~                     ~~~~~
                       ~~~~~~~~~~~~~~~~~~~~~#>