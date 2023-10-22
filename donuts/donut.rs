                    /*Rust!*/use std
               ::thread; use std::time::
            Duration;; fn main(){ let mut A
         =0.0;let mut B:f64=0.0;loop{let mut s
       =vec![' ';1760];let mut t=vec![0.0;1760];
      A+=0.05;B+=0.07;let o=A.cos();let e=A.sin()
    ;let n=B.cos();let c=B.sin();for o in 0..1760{s
   [o]=match o{o if o%80==79=>'\n',_=>' ',}}for i in
  (0..628).step_by(2){let l=(i as f64*0.01).sin();let
  f=(i as f64*0.01).cos         ();let A=r+2.0;let B=
 1.0/(l*A*e+a*o+5.0);             let d:f64=l*A*o-a*e;
 let m =(40.0+30.0*B                 * (f*A*n-d*c)) as
 i32;;let v:f64=(12                 .0+15.0*B*(f*A*c+d
 *n))as i32;let I=(                 m+80*v)as usize;;;
 let h=(8.0*((a*e-l                 *r*o)*n-l*r*e-a*o-
 f*r*c))as usize;if                 v<22&&v>=0&&m>=0&&
 m<79&&B>t[I]{t[I]=B;             s[I] =".,-~:;=!*#$@"
  .as_bytes()[h]as char         ;}}};print!//Almost..
  ("\x1b[J\x1b[H{}", s.iter().collect::<String>());;;
   thread::sleep(Duration::from_millis(50));}}/*....
    ...............................................
      <================Rust Donut=================>
       .........................................
         .................by..................
            ..................ThatXliner...
               ....follow me on Github!!
                    .............*/