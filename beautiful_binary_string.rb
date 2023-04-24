def beautifulBinaryString(b)
  mutations = 0
  i = 0
  while i < b.length - 2
    if b[i, 3] == "010"
      i += 3
      mutations += 1
    else
      i += 1
    end
  end
  return mutations
end