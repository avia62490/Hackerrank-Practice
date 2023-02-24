def marsExploration(s)
  count = 0
  i = 0
  while i < s.length
    if i % 3 == 1 && s[i] != "O"
      count += 1
    elsif i % 3 != 1 && s[i] != "S"
      count += 1
    end
    i += 1
  end
  count
end