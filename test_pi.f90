subroutine test_pi(n, input, output)
  use monte_carlo_pi_mod
  implicit none
  integer, intent(in) :: n
  integer, intent(in) :: input(n)
  real, intent(out) :: output(n)
  real :: pi_estimate
  integer :: i
  
  do i = 1, n
    output(i) = monte_carlo_pi(input(i))
    pi_estimate = output(i)
    if (abs(pi_estimate - 3.141592653589793238462643383279502884197169399375105820974944592307816406286) > 0.2 * pi_estimate) then
      print *, "Warning: Error is larger than 20% for num_points = ", input(i)
    end if
  end do
  
end subroutine test_pi
