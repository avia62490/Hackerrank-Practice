def cutTheSticks(arr)
  sticks_cut = []
  while arr.length > 0
    sticks_cut << arr.length
    cut_size = arr.min
    arr.map! {|stick| stick - cut_size}
    arr.delete_if {|stick| stick <= 0}
  end
  sticks_cut
end