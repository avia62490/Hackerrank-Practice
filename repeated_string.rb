def repeatedString(s, n)
  amount_of_a = s.chars.count("a")
  array = n.divmod(s.length)
  cycles = array[0]
  remainder = array[1]
  
  final_count = amount_of_a * cycles
  
  i = 0
  while i < remainder
    final_count +=1 if s[i] == "a"
    i += 1
  end 
  final_count
end
