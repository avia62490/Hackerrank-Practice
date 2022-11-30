def squares(a, b)
  number = Integer.sqrt(a)
  count = 0
  while number ** 2 <= b
    if number ** 2 >= a
      count +=1
    end
    number += 1
  end
  count
end