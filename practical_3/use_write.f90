program printing

  implicit none

  !Declare variables
  integer (kind=4) :: int1=10, int2=200
  real (kind=4) :: fl1=1.11, fl2=-2.2222
 

  write(6,'(a,i2,i4,a,f4.2,f10.3)') 'Two ints ',int1,int2, & 
                                  ' and two floats ', fl1,fl2 


  stop 

end program printing  
