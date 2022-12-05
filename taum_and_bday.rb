def taumBday(b, w, bc, wc, z)
  if bc + z < wc
    return (b * bc) + ((bc + z) * w)
  elsif wc + z < bc
    return (wc * w) + ((wc + z) * b)
  else
    return (bc * b) + (wc * w)
  end
end