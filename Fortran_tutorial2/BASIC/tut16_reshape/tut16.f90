
! Defining matrices and sliced versions - reshape and pack commands

program matcheck

  implicit none
  
  integer :: i,j
  real,dimension(3,3) :: mat
  real,dimension(2,2) :: short_mat
  logical,dimension(3,3) :: mask
  
  mat = reshape((/1,4,7,2,5,8,3,6,9/),(/3,3/))
  
  mask = .true.
  mask(:,3) = .false.
  mask(3,:) = .false.
  
  short_mat = reshape(pack(mat,mask),(/2,2/))
  
  
  
  do i=1,3
     do j=1,3
        print*,'Mat(',i,',',j,') = ',mat(i,j)
     end do
  end do
  
  
    do i=1,2
     do j=1,2
        print*,'ShortMat(',i,',',j,') = ',short_mat(i,j)
     end do
  end do
    
    
    print*,"The Matrix is: "
    do i=1,3
     do j=1,3
        write(*,'(f8.3,t3)',advance='no'),mat(i,j)
     end do
     write(*,*)
   end do



    print*,"The Sliced matrix is: "
    do i=1,2
     do j=1,2
        write(*,'(f8.3,t3)',advance='no'),short_mat(i,j)
     end do
     write(*,*)
   end do
   
   
end program Matcheck


