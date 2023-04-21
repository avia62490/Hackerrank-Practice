def alternatingCharacters(s)
  deletions = 0
  i = 0
  while i < s.length
    if s[i] == s[i + 1]
      s.slice!(i + 1)
      deletions += 1
    else
      i += 1
    end
  end  
  return deletions
end