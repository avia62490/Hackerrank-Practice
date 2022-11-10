def saveThePrisoner(n, m, s)
  seat_change = (m - 1) % n 
  if s + seat_change > n
    return (s + seat_change) % n
  else
    return s + seat_change
  end
end