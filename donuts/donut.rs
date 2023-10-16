use std::f64::consts::PI;
use std::io::{self, Write};
use std::thread;
use std::time::Duration;

fn main() {
    let mut A: f64 = 0.0;
    let mut B: f64 = 0.0;
    let mut z = vec![0.0; 1760];
    let mut b = vec![' '; 1760];
    let PI_2 = PI * 2.0;
    print!("\x1b[2J");
    loop {
        for i in 0..1760 {
            b[i] = ' ';
            z[i] = 0.0;
        }
        let mut j = 0.0;
        while j < PI_2 {
            let mut i = 0.0;
            while i < PI_2 {
                let c = i.sin();
                let d = j.sin();
                let e = A.sin();
                let f = j.sin();
                let g = A.cos();
                let h = d + 2.0;
                let D = 1.0 / (c * h * e + f * g + 5.0);
                let l = i.cos();
                let m = B.cos();
                let n = B.sin();
                let t = c * h * g - f * e;
                let x = (40.0 + 30.0 * D * (l * h * m - t * n)) as i32;
                let y = (12.0 + 15.0 * D * (l * h * n + t * m)) as i32;
                let o = (x + 80 * y) as usize;
                let N = (8.0 * ((f * e - c * d * g) * m - c * d * e - f * g - l * d * n)) as i32;
                if 22 > y && y > 0 && x > 0 && 80 > x && D > z[o] {
                    z[o] = D;
                    b[o] = match N {
                        N if N > 0 => ".,-~:;=!*#$@".as_bytes()[h as usize] as char,
                        _ => ' ',
                    };
                }
                i += 0.02;
            }
            j += 0.07;
        }

        print!("\x1b[H");
        for k in 0..1761 {
            let s = match k {
                k if k % 80 == 0 => '\n',
                _ => b[k],
            };
            print!("{}", s);
        }
        io::stdout().flush().unwrap();
        A += 0.04;
        B += 0.02;

        thread::sleep(Duration::from_millis(50));
    }
}
