def viralAdvertising(n)
  cumulative = 2
  shared = 5
  liked = 2
  day = 1
  while day < n
    shared = liked * 3
    liked = shared / 2
    cumulative += liked
    day += 1
  end
  return cumulative
end