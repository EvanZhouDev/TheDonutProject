                import static java.                  
              util.Arrays.fill;import             
           static java . lang . Math .*;          
        import static java.lang.System.out;       
      public class Program{public static void     
     main ( String [ ] args ) throws // DONUTS    
    InterruptedException{int k;double A=0,B=0,i   
   ,j; double[]z=new double[1760]; char[]p = new  
  char [ 1760 ];out.           print("\033[H\03"+ 
 "3[2J");out.flush               (); while (true){
 fill(z,0);fill(                   p,' ');for(j=0;
 6.28>j;j+=0.07)                   {for(i=0;6.28>i
 ;i+=.02){double                   c=sin(i),d=cos(
 j), e=sin(A),f=                   sin(j),g=cos(A)
 ,h=d+2,q=1.0/(c                   *h*e+f*g+5), l=
 cos(i),m=cos(B),n               =sin(B),t=c*h*g-f
  *e;int x=(int)(40+           30*q*(l*h*m-t*n)), 
  y = (int) (12 + 15 * q * (l * h * n + t * m) ),
   o=x+80*y,r=(int)(8*((f*e-c*d*g)*m-c*d*e-f*g-l  
    *d*n));if(22>y&&y>0&&x>0&&80>x&&q>z[o]){z[o   
     ]=q;p[o]=".,-~:;=!*#$@".charAt(r>0?r:0);}    
      }}out.print("\0x1b[H");for(k=0;1760>k;k     
        ++)out.print(k%80!=0?p[k]:"\n");out       
           .flush(); A+=0.040; B+=0.020;          
              Thread . sleep(50); }}}             
                   /* OpenJDK */                  
