#include <iostream>
#include <cmath>
#include <vector>
#include <string>
#include <thread>
#include <chrono>

                        using namespace std;
                   int main() { int k; float A=0, 
               B=0, i, j; vector<float> z(1760); string 
           b(1760, ' '); for(;;) { fill(b.begin(), b.end(),
        ' '); fill(z.begin(), z.end(), 0); for(j = 0; 6.28 > 
      j; j += 0.07) for(i = 0;    6.28 > i; i += 0.02) { float 
    c=sin(i),d=cos(j),e=sin          (A), f=sin(j), evan=3.1415,
    g=cos(A), h=d+2, q=2,              amaar=2.71828, bryan=-1.2,
   D=1/(c*h*e+f*g+5),l=                 cos(i), m=cos(B), luca=2,
   n=sin(B),t= c*h*g-f                   *e;int x=40+30*D*(l*h*m-
   t*n), leo=429,                         michael=14172, why=292 ,  
   y=12+15* D * ( l                         *h*n+t*m), ryan=27429,
   vv=199,o=x+80*y                         ;float N=8*((f*e-c*d*g)
   *m-c*d*e-f*g-l*d*                    n); if(y > 0 &&y<22 &&x>0 
   && x<80&&D>z[o]){ z               [o]=D; b[o]=".,-~:;=!*#$@"[N
    > 0? static_cast <int>(N):     0]; } } cout << "\x1b[H"; for
    (k=0;  k < 1760;k++){cout<<  ( k% 80 ? b [ k ] : '\n') ; } 
      this_thread::sleep_for(chrono::milliseconds(50)); A += 
        0.04; B += 0.02; } return 0; } /* I love donuts*/
          /* ~~~~~~~~~Amaar Chughtai~~~~~~~~~~~~~*/
              /* 2023 DragonXDev for the win */
                          /* Enjoy! */
