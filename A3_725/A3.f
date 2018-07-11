c
        program A3_725
c
         double precision ::  DP980 (3)
         double precision ::  ep (4), Sb, h
         double precision ::  ep_curr
         integer i
c
         DP980 = (/ 1300.0_8, 0.002_8, 0.07_8 /)
         ep    = (/ 0.00_8, 0.05_8, 0.20_8, 0.50_8 /)
         print *,
         print *,"         ep,        Sb,          h"
         print *,"=================================="
c
         ep_curr = 0.01_8
         do i=1,100
           call iso_hard (DP980(1),DP980(2),DP980(3),ep_curr,Sb,h)
           print "(3e12.4)",ep_curr,Sb,h
           ep_curr = ep_curr + 0.01_8
         end do
c
         print *,
         print *,
c
         do i=1,4
           call iso_hard (DP980(1),DP980(2),DP980(3),ep(i),Sb,h)
           print "(3e12.4)",ep(i),Sb,h
         end do
c    
         print *,
         return
c
        end program A3_725