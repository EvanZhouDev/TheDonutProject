                #include <stdint.h>
            #define R(m,s,x,y)_=x;x-=m\
         *y>>s;y+=m*_>>s;_=3145728-x*x-y*\
       /*Sp*/y>>11;x=x*_>>10;y=y*_>>10;//ace
     int8_t b[1760],z[1760];void main(){int sA
    =1024,cA=0,sB=1024,cB=0,_;for(;;){memset(b,
  32,1760); memset(z,127,1760); int sj=0,cj=1024;
  for(int j=0;j<90;j++){int si=0,ci=1024; for(int
 i=0; i<324;i++) {int         R1=1,R2=2048,K=5120*
1024,x0=R1*cj+R2,x1             =ci*x0>>10,x2=cA*sj
>>10,x3=si*x0>>10                 ,x4=R1*x2- (sA*x3
>>10), x5=sA*sj>>                 10, x6=K+R1*1024*
x5+cA*x3,x7=cj*si                 >>10,x=40+30*(cB*
x1-sB*x4)/x6,y=12                 +15*(cB*x4+sB*x1)
/x6,N=(-cA*x7-cB*                 ((-sA*x7>>10)+x2)
-ci*(cj*sB>>10)>>10             )-x5>>7, o=x+ 80*y;
 int8_t zz = (x6-K)>>         15;if (22>y&&y>0&&x>
  0&&80>x&&zz<z[o]){z[o]=zz;b[o]=".,-~:;=!*#$@"[N
  >0?N:0];}R(5,8,ci,si)}R(9,7,cj,sj)}for(int k=0;
    1761>k;k++)putchar (k%80?b[k]:10);R(5,7,cA,
     sA); R(5,8,cB,sB); usleep(15000); printf(
       "\x1b[23A");}}/*...Code by a1k0n...*/
         /*...........Donut by IOKG04..*/
            /*.For  TheDonutProject.*/
                /*..............*/
