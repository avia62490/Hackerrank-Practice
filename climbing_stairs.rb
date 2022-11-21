def climb_stairs(n)
  steps = [0, 1]
  index = 0
  while index < n
    steps << (steps[index] + steps[index + 1])  
    index += 1
  end
  return steps.last
end