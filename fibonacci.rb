def fibonacci_iterative(n)
  # ----- PSEUDOCODE -------
  # n = nth fibonacci
  # array = start with 0 and 1
  # n - 1.times
  #   array << array[-1] + array[-2]
  # return last element
  # ----- PSEUDOCODE -------
  return 0 if n < 1
  fibonaccis = [0, 1]
  (n-1).times { fibonaccis << sum_last_two_of(fibonaccis) }
  fibonaccis.last
end

def fibonacci_recursive(n)
  return n if n < 2
  (fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2))
end

def modern_fibonacci_recursive(n)
  fibonacci_recursive(n - 1)
end

def sum_last_two_of(array)
  array[-1] + array[-2]
end

p fibonacci_recursive(7)
p modern_fibonacci_recursive(7)
