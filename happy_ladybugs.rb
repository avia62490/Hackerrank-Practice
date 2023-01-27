def happyLadybugs(b)
  board = b.split("")
  if board.all?{|letter| letter=="_"}
    return "YES"
  end
    
  b.each_char.with_index { |v,i| return "NO" if b[i]!=b[i-1] && b[i]!=b[i+1] && b.split("").all?{|v| v!="_"}}

  h= {}
  b.each_char{|v| h[v]+=1}
  h.each { |k,v| return "NO" if v==1 && k!="_" }
  "YES"
  
end