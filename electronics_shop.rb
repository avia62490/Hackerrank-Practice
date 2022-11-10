def getMoneySpent(keyboards, drives, b)
  output = -1
  i = 0
  while i < keyboards.length
    j = 0
    while j < drives.length
      if keyboards[i] + drives[j] > output && keyboards[i] + drives[j] <= b
        output = keyboards[i] + drives[j]
      end
      j+= 1
    end
    i += 1
  end
  return output
end