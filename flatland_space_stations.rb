def flatlandSpaceStations(n, c)
  c.sort!
 r=[]
 r<< c.first << n-1-c.last 
 c.each_with_index do |k,i|
     next if i==0
     r << (k-c[i-1])/2
 end
 return r.max
end