# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

def fizzbuzz(n)
  i = 1
  while i <= n
    if i % 3 == 0 && i % 5 == 0
      p "FIZZBUZZ"
    elsif i % 5 == 0
      p 'BUZZ'
    elsif i % 3 == 0
      p 'FIZZ'
    else
      p i
    end
    i +=1 
  end
end

fizzbuzz(19)
