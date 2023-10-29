                 Screen _NewImage( _
             400,800,256):Dim r%,c%,ch$,_
          R1#,R2#,K2#,K1#,A#,B#,tS#,pS#:ch$_
        =".,-~:;=!*#S@":r%=Int(_Height/16):c%=_       
     Int(_Width/8):R1#=11:R2#=20:K2#=200:K1#=c%_     
    *K2#*3/(8*(R1#+R2#)):A#=0: B#=0:tS#=10: pS#=3    
   Dim o$(r%,c%),zB#(r%,c%):Do:Cls:For r=0 To r%-1:
  For c=0 To c%-1: o$(r,c)=" ": zB#(r, c)=0: Next c
  Print:Next r:For T=0         To 628-1 Step tS#:For_
 P = 0 To 628-1 Step             pS#:d=Sin(T):e=Cos(_
 P):f=Sin(P):g=Cos                 (A#):h=Sin(A#):m=_
 Cos(B#):n=Sin(B#)                 :q=Cos(T):cX=R2# _
 +R1#*q: cY=R1#+d:                  x=cX*(m*e+h*n*f)_
 -cY*g*n:y=cX*(n*e                 -h*m*f)+cY*g*m:z_
 =K2#+g*cX*f+cY*h:                 ooz=1/z: xp=Int(_
 c%/2+K1#*ooz*x):yp=             Int(r%/2-K1#*ooz*y)
  L=e*q*n-g*q*f-h*d+m*         (g*d-q*h*f):iL=Int(_
   L*8+1):tmp=zB#(yp,xp):If ooz>tmp Then zB#(yp,xp_
    )=ooz:o$(yp,xp)=".": If iL>1 And ooz>tmp Then_
     o$ ( yp ,  xp )  =   Mid$(  ch$ ,  iL ,  1 )
      Next P:Print:Next T:For r=0 To r%-1:For c_
        =  0 To c% - 1  :  Print o$( r , c ) ;
         Next c : If r <> r% - 2 Then Print:
           Next r:_Display:_Delay .05:A#=A#_
                +.05:B#=B#+.025: Loop
             

'         -------
'     Erik Schreiner
'  22Oct23 Refs:youtube
' .com/watc     h?v=LqQ-
'  ezbyiW4      AND a1k0n
'  .net/20     11/07/20        
'   /donut-math.html
'    Coded in Qb64
'       -------