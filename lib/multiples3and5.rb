# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def three_five_multiples(n)
  multiples = []
  i = 1
  while i < n
    if i % 3 == 0 || i % 5 == 0
      multiples << i
    end
    i += 1
  end
  return multiples.sum
end

p three_five_multiples(100)