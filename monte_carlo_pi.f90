module monte_carlo_pi_mod
  implicit none
  
contains

  ! Function to estimate pi using Monte Carlo method
  real function monte_carlo_pi(num_points)
    integer, intent(in) :: num_points
    real :: x, y
    integer :: i, count
    
    count = 0
    do i = 1, num_points
      call random_number(x)
      call random_number(y)
      if (x**2 + y**2 <= 1.0) then
        count = count + 1
      end if
    end do
    
    monte_carlo_pi = real(count) / real(num_points) * 4.0
  end function monte_carlo_pi

end module monte_carlo_pi_mod
