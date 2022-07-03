10 rem vertasium prisoners
15 rem plays the game once
20 dim b(100), p(100), pc(100)
30 l=0:w=0

90 rem load boxes and shuffle
100 for x = 1 to 100
110 b(x) = x
120 p(x) = int(1000000*rnd(1))+1
130 next x

200 for i = 1 to 100-1
210 for j = 1 to 100-i
220 if p(j)<= p(j+1) then goto 240
230 x=p(j): p(j)=p(j+1): p(j+1)=x
235 x=b(j): b(j)=b(j+1): b(j+1)=x
240 next j
250 next i

290 rem print boxes to see them
300 for x = 1 to 100
310 print b(x);"     ";
320 if x/10 = int(x/10) then print " "
330 next x

400 rem prisoner box selections
500 p=0
502 p=p+1: rem # prinsoner
505 nc=0
506 nc=nc+1 : rem # choices for each prisoner
510 if nc = 1 then pc(1) = p : goto 515
512 pc(nc) = b(pc(nc-1))
515 print "p= ";p, "?#= ";nc, "chce= ";pc(nc), "box= ";b(pc(nc))
520 if b(pc(nc)) = p then print "Prisoner ";p;" matched": goto 600
530 if nc < 50 then goto 506
550 print "Prisoner ";p;" no match": print "YOU ALL DIE!": goto 750

600 if p <100 then goto 502

700 Print "You Won"

750 end



