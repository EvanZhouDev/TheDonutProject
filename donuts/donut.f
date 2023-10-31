                   PROGRAM DONUT
              CHARACTER * 1760 :: ARR
           REAL V(1760);CHARACTER*12CHRS
         PARAMETER (CHRS = ".,-~:;=!*#$@")
       LOGICAL X; X( I,J,K ) = J>I .AND. I>K
      PRINT*,ACHAR(27)//"[2J";DO;ARR=ACHAR(32
     &); V = 0;S = 0;DO WHILE(S < 6.28); R = 0
    8 DO WHILE( R<6.28 );C = SIN(R); D = COS(S)
   19 E= SIN(A); F = SIN(S); G = COS(A); H = D+2
  110 U=1/( C * H * E + F * G + 5 ); O = COS( R )
 1111 P = COS( B );Q           =SIN(B);T=C*H*G-F*E
 1112 Z=0;I=40+30*U             * (O* H* P - T *Q)
 1113 J =12+ 15* U               *(O* H* Q + T *P)
 1114 L=I +80*J;W=               - C*D*E-F*G-O*D*Q
 1115 N = 8* ( (F*               E - C*D * G)*P+W)
 1116 IF(X(J,22,0)             .AND.X(I,80,0))THEN
 1117 IF( U + Z > V(           L))THEN; V(L)=U+Z*2
  118 M=MERGE(N+1,1, N .GT. 1);ARR(L:L)=CHRS(M:M)
   29 ENDIF; ENDIF; R = R + 0.02; IF (Z) 8, 2,2;
    2 ENDDO;S=S+0.07; ENDDO; PRINT*,ACHAR(27)//
     &"[H"; DO K=1,1760,80;PRINT*,ARR (K:K+80)
      ENDDO; A=A+0.04; B=B+0.02; CYCLE; ENDDO
        END PROGRAM DONUT; !@@@$$$##**!!=;-
           !!***##$$ DONUT.F $$##***=!!!
               !!!:;; SIRRAIDE ;;:!!!
                    !., 2023 ,.!