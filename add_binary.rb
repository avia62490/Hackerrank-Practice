# Given two binary strings a and b, return their sum as a binary string.
# Example 1:
# Input: a = "11", b = "1"
# Output: "100"
# Example 2:
# Input: a = "1010", b = "1011"
# Output: "10101"

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  x = a.to_i(2) + b.to_i(2)
  return x.to_s(2)
end