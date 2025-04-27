                      const R1 = 1;
                 const R2 = 2; const K2 =
             5; const K1 = 15; let A = 0; let
           B = 0; function renderFrame() { const
          chars = ".,-~:;=!*#$@" ; const b = new
       Array(1760).fill(" " ); const z = new Array (
     1760).fill(0);  for (let j = 0;  j < 6.28; j +=
    0.07) { for  (let i = 0;  i < 6.28;  i += 0.02) {
   const c = Math.sin(i); const d = Math.cos(j); const e
   = Math.sin(A); const f = Math.sin(j); const g = Math .
  cos(A); const h = d +            2; const D = 1 / (c *
 h * e + f * g + 5);                 const l = Math.cos(i)
 ; const  m = Math .                   cos(B); const n =
 Math.sin(B); const                    t = c * h * g - f *
  e; const x = Math.                   floor(40 + 30 * D *
  (l * h * m - t * n                   )); const y = Math.
 floor(12 + 15 * D *                    (l * h * n + t * m
 )); const o = x + 80                * y; const N = Math .
  floor(8 * ((f * e - c            * d * g) * m - c * d *
   e - f * g - l * d * n)); if (y >= 0 && y < 22 && x >=
   0 && x < 80 && D  > z[o]) { z[o]  = D; b[o] = chars [
    Math.max(0, N)]; } } } console.clear(); let output
     = ""; for (let k = 0; k < 1760; k++) { output +=
       b[k]; if (k % 80 ===  79) output += "\n";  }
         console.log(output); } setInterval(() =>
           { renderFrame(); A += 0.04; B += 0.08
             ;        }   ,        50        )
                 ; // Made by Shadowdara
                    //sry the end is a
                      // scuffed :3
