def chocolateFeast(n, c, m)
  bars_eaten = n / c
  wrappers = bars_eaten
  while wrappers >= m
    bars = wrappers / m
    bars_eaten += bars
    wrappers = wrappers - (bars * m ) + bars
  end
  bars_eaten
end