program main
  use monte_carlo_pi_mod
  implicit none
  integer :: num_points
  real :: pi_estimate
  integer, parameter :: n = 6
  integer :: input(n)
  real :: output(n)
  integer :: i
  
  ! Specify the number of points for the Monte Carlo simulation
  num_points = 10000
  
  ! Call the monte_carlo_pi function to estimate pi
  pi_estimate = monte_carlo_pi(num_points)
  
  ! Print the estimate of pi
  print *, "Estimate of Pi: ", pi_estimate
  
  ! Define the array of values for the number of points
  input = [10, 100, 1000, 10000, 100000, 1000000]

  ! Call the test_pi subroutine
  call test_pi(n, input, output)

  ! Print the results
  print *, "Number of points   Estimate of Pi"
  print *, "--------------------------------"
  do i = 1, n
    print *, input(i), output(i)
  end do

  
  
end program main


