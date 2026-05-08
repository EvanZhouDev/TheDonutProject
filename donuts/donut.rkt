#lang racket


                    (require racket/math)                   
               (define c".,-~:;=!*#$@")(define               
            (rend A B)(define o(make-vector 1920            
          #\space))(define b(make-vector 1920 0.0))        
        (for([θ(in-range 0(* 2 pi)0.07)])#||#(for([φ(       
       in-range 0(* 2 pi)0.02)])(define x(*(+ 2(cos θ)      
     )(cos φ)))(define y(*(+ 2(cos θ))(sin φ)))(define I    
    (/ 1(+(+(* y(sin A))(*(sin θ)(cos A)))5)))(define p (   
   inexact->exact(round(+ 40(* 30 I(-(* x (cos B))(* (- (*  
  y (cos A)) (* (sin θ) (sin A))) (sin B))))))))(define P ( 
  inexact->exact(round(+            12 (* 15 I(+(* x(sin B) 
 )(*(-(* y (cos A))(* (               sin θ)(sin A)))(cos B)
 )))))))(define L(-(*                   (cos φ)(cos θ)(sin B
 ))(*(cos A)(cos θ) (                   sin φ))(*(sin A)(sin
 θ))(*(cos B)(+(*(cos                   A)(sin θ))(*(cos θ)(
 sin A)(sin φ)))))) (                   define i(+ p(* P 80)
 ))(when(and(>= p 0)(                   < p 80)(>= P 0) (< P
 24)(> I(vector-ref b i               )))(vector-set! b i I)
  (define β(max 0(min (-(           string-length c)1)#||#( 
  inexact->exact(floor(* 8 L))))))#|qqqq|#(vector-set! o i( 
   string-ref c β)))))(for([y(in-range 24)])#|qq|#(for([x(  
    in-range 80)]) (display(vector-ref o(+ x(* y 80)))))(   
     newline)))(define(animate)(let loop([A 0.0][B 0.0])    
       (display "\033[H")(rend A B)(sleep 0.03)(loop (      
        + A 0.04) (+ B 0.02))))(animate)#|P$7]f2Y+uXc
          3@A^=t!K#q~9s1{b&0J|L8z\H6)M:gE<d;V4o?iR5l         
             donut.rkt implemented by OscarOrtiz-05        
                /8pF+H1E4x\L)0rA#Y:5T(fG%J5sH6oPq               
                  (T*Wv}pQxN~gQ7\]p$!aZr|# 
