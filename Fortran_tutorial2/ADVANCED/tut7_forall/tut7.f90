
! All you need to know about forall statement
! - Can be written in a single line along with condition
! Note: forall actually updates the new matrix only after the loop
! which is best to update an existing variable but memory can be affected 
! whereas do loop updates at every loop and hence require to delete the
! existing variable and then update it again 

program mat

implicit none


integer,parameter :: n=3
integer, dimension(n,n) :: a,b,b1,b2,b3
integer :: i,j


a = reshape((/1,2,3,4,5,6,7,8,9/),(/n,n/))

print*,"The matrix a is: "
call printmatI(a,n,n)


b = -1

b2 = a

b3 = a


print*,"The matrix b2 is: "
call printmatI(b2,n,n)


forall (i=1:n, j=1:n, i/=2) b(i,j) = a(i,i)*a(j,j)



do i=1,n
  do j=1,n
     b1(i,j) = a(i,i)*a(j,j)
  end do
end do


print*,"The matrix b using forall but with condition i/=2 is: "
call printmatI(b,n,n)

print*,"The matrix b1 using doloop is: "
call printmatI(b1,n,n)


do i=1,n
  do j=1,n
     a(i,j) = a(i,i)*a(j,j)
  end do
end do


forall (i=1:n, j=1:n) b2(i,j) = b2(i,i)*b2(j,j)

print*,"The matrix a after modification using doloop is: "
call printmatI(a,n,n)

print*,"The matrix b2 after modification using forall is: "
call printmatI(b2,n,n)


forall (i=1:n)
   forall(j=1:n)
       b3(i,j) = b3(i,i)*b3(j,j)
   end forall
end forall

print*,"The matrix b3 after modification using forall nested loop is: "
call printmatI(b3,n,n)

end program mat


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
