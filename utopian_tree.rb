def utopianTree(n)
  height = 1
  index = 0
  while index < n
    if index.even? == true
      height *= 2
    else
      height += 1
    end
    index +=1
  end
  return height
end