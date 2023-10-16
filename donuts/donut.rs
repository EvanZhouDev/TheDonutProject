                      use std::{ time,
                 thread}; fn main(){let(mut
             a,mut b)=(1.0_f64,1.0_f64);loop{a+=
          0.07; b+=0.03; let((g ,m),(p,r),mut q,mut
        z,mut j)=(a.sin_cos(),b.sin_cos(),[' ';1760],
       [0.0_f64;1760],0.0_f64);while j<=6.28{let(u,v)=
     j.sin_cos();let mut i=0.0f64;while i<=6.28{let(w,c)
    =i.sin_cos(); let h=v+         2.0;let(d,t)=(1.0/(w*h
  *g+u*m+5.0),w*h*m-u*g)             ;let(x,y)=((40.0+30.0*
 d * (c*h*r - t*p)) as                 usize,((12.0+15.0*d*(
 c*h*p+t*r)))as usize                   ); let(o,n)=(x+80*y,
 8.0*((u*g-w*v*m)*r-w                   *v*g-u*m-c*v*p)); if
 y<22&&x<79&&d>z[o]{z[                 o]=d;q[o]=("▁▂▂▃▄▄▅".
  to_owned() + "▆▆▇██").             chars().nth(n as usize
    ). or ( Some( '▁' ) ).         unwrap(); } i+=0.02} j
     +=0.07}print!("\x1B[H{}",q.chunks(80).map(|l|l.iter
       ().collect::<String>()).collect::<Vec<String>>(
        ).join("\n")); thread::sleep(time::Duration::
          from_millis(16));}}/* Based on donut.c */
             /* by Andy Sloane. Translated to */
                 /* Rust by Isaac Clayton- */
                     /* @slightknack */
