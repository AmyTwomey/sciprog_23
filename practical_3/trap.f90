Program Trap 

  implicit none 

  !Declare variables 
   integer (kind=4) :: N=12, i 
   real (kind=4) :: a=0.0, b_reg=60.0
   real (kind=4) :: pi, b_rad, area, mult_rad 


  !Convert b=pi/3 to radians 
   pi = atan(1.0) * 4.0
   b_rad=(pi*b_deg)/180.0
   

  !Sum tan(a)+tan(b) where a and b are in radians (first and last points)
   area=tan(a)+tan(b_rad):
   write(6,*) 'Initial area (sum at x(0) an x(12))', area 
   

  !Calc area at points x1 , x2 .. x11 and add up as in forumla using loops
  i=5
   do while(i .lt. 60) 
      area=area+2*tan(pi*i)/180.0)
      select case(mod(i,2))
       case(0)
         write(6,*) 'New area of x(', i/5, ') =', area
      end select 
      i=i+5
   end do 
 

  !Multiply the area by (pi/3)/2(12) after converting to radians    
   mult_rad=(pi*((b_deg-a)/(2*N))/180.0;
   area=mult_rad*area;
   
  !Approximated result
   write(6,*) ' Trapezodial result is ' , area

  !Actual result --> integral of tan = log(2) 
   write(6,*) 'Real result is' ,log(2.0)

  
   stop 

end program trap 
