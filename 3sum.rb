# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = []
  i = 0
  while i < nums.length - 2
    j = i + 1
    while j < nums.length - 1
      if nums[(j + 1) .. -1].include?(-(nums[i] + nums[j]))
        result.push([ nums[i], nums[j], nums[nums.index(-(nums[i] + nums[j]))] ])
      end
      j += 1
    end
    i += 1
  end
  return result.uniq 
end