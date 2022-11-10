def camelcase(s)
  word_count = 1
  i = 0
  while i < s.length
    if s[i].upcase == s[i]
      word_count += 1
    end
    i +=1
  end
  word_count
end