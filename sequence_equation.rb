def permutationEquation(p)
  output = []
  x = 1
  while x <= p.length
    index = p.index(x) + 1
    output << p.index(index) + 1
    x += 1
  end
  return output
end