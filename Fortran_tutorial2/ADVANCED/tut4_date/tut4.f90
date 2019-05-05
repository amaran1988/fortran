! creates a random matrix everytime you compile it


program dates

implicit none
integer,parameter :: r=2, c=3
integer :: values(1:30),k
integer,dimension(:),allocatable :: seed
real,dimension(r,c) :: randmat1,randmat2
logical,dimension(r,c) :: p_n


call date_and_time(values=values) ! date,month,year,time,hour,min,s,ms
write(*,*)
print*,"The date time subroutine gives :"
call printmatI(values,8,1)




call random_seed(size=k)
print*,"k = ",k


allocate(seed(1:k))
seed(:) = values(8)
write(*,*)
print*,"The seed is :"
call printmatI(seed,k,1)


call random_seed(put=values)


call random_number(randmat1)
write(*,*)
print*,"The random matrix 1 is:"
call printmatR(randmat1,r,c)


call random_number(randmat2)
write(*,*)
print*,"The random matrix 2 is:"
call printmatR(randmat2,r,c)



where (randmat1 < 0.5)
   randmat2 = -randmat2
endwhere



where (randmat1 > 0)
   p_n = .true.
elsewhere
   p_n = .false.
endwhere

write(*,*)
print*,"The logical matrix is:"
call printmatL(p_n,r,c)


end program dates





subroutine printmatI(a,n,m)

implicit none

integer,intent(in) :: n,m
integer,dimension(n,m),intent(in) :: a
integer :: i,j

 do i=1,n
    write(*,'("|")',advance='no')
    do j=1,m
      write(*,'(i5)',advance='no'),a(i,j)
    end do
    write(*,'("|")')
 end do


end subroutine




subroutine printmatR(a,n,m)

implicit none

integer,intent(in) :: n,m
real,dimension(n,m),intent(in) :: a
integer :: i,j


 do i=1,n
    write(*,'("|")',advance='no')
    do j=1,m
      write(*,'(f8.3,t3)',advance='no'),a(i,j)
    end do
    write(*,'("|")')
 end do


end subroutine





subroutine printmatL(a,n,m)

implicit none

integer,intent(in) :: n,m
logical,dimension(n,m),intent(in) :: a
integer :: i,j


 do i=1,n
    write(*,'("|")',advance='no')
    do j=1,m
      write(*,'(l4,t3)',advance='no'),a(i,j)
    end do
    write(*,'("|")')
 end do


end subroutine



