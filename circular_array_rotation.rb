def circularArrayRotation(a, k, queries)
  (k % a.length).times do
    a.rotate!(-1)
  end
  output = []
  queries.each do |index|
    output << a[index]
  end
  return output
end