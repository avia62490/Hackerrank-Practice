def pickingNumbers(a)
  highest_count = 0
  a.each do |number|
    num1 = number
    num2 = num1 + 1
    count = a.count(num1) + a.count(num2)
    if count > highest_count
      highest_count = count
    end
  end
  return highest_count
end