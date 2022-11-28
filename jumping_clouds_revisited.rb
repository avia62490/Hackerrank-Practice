def jumpingOnClouds(c, k)
  energy = 100
  index = 0
  begin
    if c[index] == 1
      energy -= 2
    end
    energy -= 1
    index = (index + k) % c.length
  end until index == 0
  energy
end