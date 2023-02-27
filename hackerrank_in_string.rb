def hackerrankInString(s)
  target = "hackerrank"
  i = 0
  j = 0
  answer = "NO"
  while i < s.length
    if s[i] == target[j]
      j += 1
    end
    if j == 10
      answer = "YES"
      break
    end
    i += 1
  end
  return answer
end