def jumpingOnClouds(c)
  jumps = -1
  i = 0
  while i < c.length
    if c[i + 2] == 0
      i += 2
    else
      i += 1
    end
    jumps += 1
  end
  jumps
end