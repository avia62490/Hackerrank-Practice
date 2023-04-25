def theLoveLetterMystery(s)
  changes = 0
  i = 0
  while i < s.length / 2
    first = s[i].ord
    last = s[-(i + 1)].ord
    difference = (first - last).abs
    changes += difference
    i += 1
  end
  return changes
end