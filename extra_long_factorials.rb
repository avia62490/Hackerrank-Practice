def extraLongFactorials(n)
  output = 1
  number = n + 1
  n.times do
    number -= 1 
    output *= number
  end
  p output
end