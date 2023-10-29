                fn R (t:f32, mut x:
            f32,mut y:f32)->(f32,f32,){
         let mut f=x;x-=t*y;y+=t*f;f=(3.-x
       *x-y*y)/2.;(x*f,y*f)}fn main() {let(
     mut x,mut y,mut o,mut N); let mut z:[f32;
    1760];let mut a:f32=0.;let mut e:f32=1.;let
  mut c:f32=1.;let mut d:f32=0.;let (mut g,mut h,
  mut G,mut H,mut A,mut t,mut D);let(mut b):[char
 ;1760];loop{(z)=[0.;         1760];(g,h)=(0.,1.);
b=[' ';1760];for TJ             in 0..90{(G,H)=(0.,
1.0);for M in 0..                 314{A=h+2.0;D=1./
(G*A*a+g*e+5.);t=                 (G*A*e)-(g*a);x=(
40.0+(30.0*D*(H*A                 *d-t*c)))as i32;y
=(12.0+(15.*D*(H*                 A*c+t*d)))as i32;
o=x+(80*y);N=(8.*                 (((g*a-G*h*e)*d)-
G*h*a-g*e-H*h*c))as             i32;if 0<y&&y<22&&0
 <x&& x<80&& D>z[o as         usize]{z[o as usize]
  =D;b[o as usize]=b".,-~:;=!*#$@"[if N >0{N as//
  usize}else{0}]as char}(H,G)=R(0.02,H,G);}(h,g)=
    R(0.07,h,g);}for k in 0..=1760{print!("{}",
     if k%80!=0{b[k]}else{'\n' as char})}(e,a)
       =R(0.04,e,a);(d,c)=R(0.020,d,c);std::
         thread::sleep(std::time::Duration
            ::from_millis(015));print!(
                "\x1b[23A");}}//TJ!
