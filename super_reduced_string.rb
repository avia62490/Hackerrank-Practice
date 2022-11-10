def superReducedString(s)
  i = 0
  while i < s.length
    if s[i] == s[i + 1]
      s.slice!(i..(i + 1))
      if i > 0
        i -= 1
      end
    else
      i +=1
    end
  end
  if s.length == 0
    return "Empty String"
  else
    return s
  end
end