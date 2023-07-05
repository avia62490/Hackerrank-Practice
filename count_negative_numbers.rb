# Given a m x n matrix grid which is sorted in non-increasing order both row-wise and column-wise, return the number of negative numbers in grid.

# Example 1:

# Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
# Output: 8
# Explanation: There are 8 negatives number in the matrix.
# Example 2:

# Input: grid = [[3,2],[1,0]]
# Output: 0

# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  negative_count = 0
  grid.each {|row|
    row.each {|num|
      if num < 0
        negative_count += 1
      end
    }
  }
  return negative_count
end