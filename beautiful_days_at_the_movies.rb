def beautifulDays(i, j, k)
  day = i
  beautiful_days = 0
  while day <= j
    reverse = day.digits.join.to_i
    if ((day - reverse).abs) % k == 0
      beautiful_days += 1
    end
    day += 1
  end
  return beautiful_days
end