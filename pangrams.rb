def pangrams(s)
  s.downcase!
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result = "pangram"
  i = 0
  while i < alphabet.length
    if !s.include?(alphabet[i])
      result = "not pangram"
      break
    end
    i += 1
  end
  result
end
