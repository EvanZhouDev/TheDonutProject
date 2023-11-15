                    with Ada.Text_IO;with
              Ada.Numerics.Elementary_Functions
             ;procedure Donut is use Ada.Text_IO
          ;use Ada.Numerics.Elementary_Functions;A,
        B,CA,SA,CB,SB,T,P,CT,ST,CP,SP,CX,CY,X,Y,Z,OOZ
       ,L,SS,Spa,R1,R2,K1,K2:Float:=1.0;S:String(1..12
     );SSI,Xp,Yp,LI:Integer:=40;type T1 is array(0..29,0
    ..29) of Character; type T2 is array(0..29, 0..29) of
   Float;procedure RF is OP:T1:=(others=>(others=>' '));ZB
  :T2:=(others=>(others=>0.0)); begin T:=0.0; while(T<6.28)
  loop CT:=Cos(T);ST:=Sin           (T);P:=0.0;while(P<6.28
 )loop CP:=Cos(P); SP:=               Sin(P);CX:=R2+R1*CT;CY
 :=R1*ST;X:=CX*(CB*CP                   +SA*SB*SP)-CY*CA*SB;
 Y:= CX*(SB*CP-SA*CB*                   SP)+CY*CA*CB; Z:=K2+
 CA*CX*SP+CY*SA;OOZ:=                   1.0/Z; Xp:=Integer((
 SS)/2.0+K1*OOZ*X);Yp                   :=Integer ((SS)/2.0-
 K1*OOZ*Y); L:=CP*CT*                   SB-CA*CT*SP-SA*ST+CB
 *(CA*ST-CT*SA*SP);if(L               >0.0)then if(OOZ>ZB(Xp
  ,Yp)) then ZB (Xp,Yp):=           OOZ;LI:=Integer(L*8.0);
  OP(Xp,Yp):=S(LI+1);end if;end if;P:=P+Spa;end loop; T:=T+
   Spa; end loop; for J in 0..SSI-1 loop for I in 0..SSI-1
    loop Put(OP(I, J));end loop;New_Line;end loop;end RF;
     begin S:=".,-~:;=!*#$@";SSI:=30;SS:=30.0;Spa:=0.02;
       R1:=1.0;R2:=2.0;K2:=5.0;K1:=SS*K2*3.0/(8.0*(R1+
        R2));while True loop CA:=Cos(A);SA:=Sin(A);CB
          :=Cos(B);SB:=Sin(B); RF;A:=A+Spa;B:=B+Spa
             --------------Made by-------------
                ---------sully_vian----------
                    ;end loop; end Donut;
