def kaprekarNumbers(p, q)
  numbers = []
  for number in p..q
    square = number ** 2
    string = square.to_s
    l = (string.length / 2)
    left = string.slice!(0..(l - 1)).to_i
    right = string.to_i
    if left + right == number
      numbers << number
    end
  end
  if numbers.any?
    numbers.each {|x| print x, " "}
  else
    puts "INVALID RANGE"
  end
end