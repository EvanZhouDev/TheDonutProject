use std::{io::{self, Write}, f64::consts::PI};

fn main() {
    let mut A: f64 = 0.0;
    let mut B: f64 = 0.0;
    let mut z: [f64; 7040] = [0.0; 7040];
    let mut b: [char; 1760] = [' '; 1760];
    print!("\x1b[2J");

    loop {
        for j in (0..1760).step_by(1) {
            b[j] = ' ';
        }
        for i in (0..1760).step_by(1) {
            z[i] = 0.0;
        }

        for j in (0..628).step_by(1) {
            let jf: f64 = j as f64 * 0.01;
            for i in (0..628).step_by(1) {
                let fi: f64 = i as f64 * 0.01;
                let c: f64 = fi.sin();
                let d: f64 = jf.cos();
                let e: f64 = A.sin();
                let f: f64 = jf.sin();
                let g: f64 = A.cos();
                let h: f64 = d + 2.0;
                let D: f64 = 1.0 / (c * h * e + f * g + 5.0);
                let l: f64 = fi.cos();
                let m: f64 = B.cos();
                let n: f64 = B.sin();
                let t: f64 = c * h * g - f * e;
                let x: i32 = (40.0 + 30.0 * D * (l * h * m - t * n)) as i32;
                let y: i32 = (12.0 + 15.0 * D * (l * h * n + t * m)) as i32;
                let o: usize = (x + 80 * y) as usize;
                let N: i32 = (8.0 * (f * e - c * d * g) * m - c * d * e - f * g - l * d * n) as i32;

                if y > 0 && y < 22 && x > 0 && x < 80 && D > z[o] {
                    z[o] = D;
                    b[o] = match N {
                        n if n > 0 => ".,-~:;=!*#$@".as_bytes()[n as usize] as char,
                        _ => ' ',
                    };
                }
            }
        }

        print!("\x1b[H");
        for (k, &ch) in b.iter().enumerate() {
            print!("{}", ch);
            if (k + 1) % 80 == 0 {
                println!();
            }
        }

        A += 0.04;
        B += 0.02;
    }
}
