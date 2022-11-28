def findDigits(n)
  digits = n.digits
  divisors = 0
  digits.each do |digit|
    if digit != 0 && n % digit == 0
      divisors += 1
    end
  end
  divisors
end