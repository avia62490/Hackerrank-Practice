# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s.gsub!(/[^a-zA-Z0-9]/, '')
  i = 0
  while i < s.length / 2
    if s[i].downcase != s[-(i + 1)].downcase
      return false
    end
    i += 1
  end
  return true
end