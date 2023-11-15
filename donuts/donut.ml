                   let a,b, s,u,
             tS,pS,r,v,m= ref 0.,ref
          0.,40., 40,0.03,0.02,1.,2.,5.
       in let k=s *.m*.3. /.(8.*.(r+.v))in
     let rf a b=let g,h,n,q,o,zB,t=cos!a,sin
    !a,cos!b, sin!b,Array.make_matrix u u ' '
   ,Array.make_matrix u u 0. ,ref 0. in while(
  !t< 6.28)do let c,d,p = cos!t,sin!t,ref 0. in
 while(!p<6.28)do let e,f,i,j=cos!p,sin!p,v+.r*.
c,r*.d in let x,y,z           =i*.(n*.e+.h*.q*.f)
-.j*.g*.q,i*.(q*.e             -.h*.n*.f)+.j*.g*.
n,m+.g*.i*.f+.j*.               h in let w=1. /.z
in let xp, yp, l=               truncate(s/.2.+.k
*.w*.x),truncate(               s/.2.-.k*.w*.y),e
*.c*.q-.g*.c*.f-.h             *.d+.n*.(g*.d-.c*.
h*.f)in if(0.<l)&&(           zB.(xp).(yp)<w)then
 (let lI=truncate(l*.8.)in zB.(xp).(yp)<-w;o.(xp
  ).(yp)<-".,-~:;=!*#$@".[lI]); p:=!p+.pS; done
   ;t:= !t +. tS; done; for j =0 to u-1 do for
    i=0 to u-1 do print_char o.(i).(j); done;
     print_endline""done;in while true do rf
       a b;print_string"\x1b[2J\x1b[H";a:=
          !a+. tS; b:= !b +. pS; done;;
             (*-------Made by-------)
                  (sully_vian*)