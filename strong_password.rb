def minimumNumber(n, password)
  characters_needed = 0
  if password.count("a-z") == 0
    characters_needed += 1
  end
  if password.count("A-Z") == 0
    characters_needed += 1
  end
  if password.count("0-9") == 0
    characters_needed += 1
  end
  if password.count("!@#$%^&*()\\-+") == 0
    characters_needed += 1
  end
  if characters_needed > (6 - password.length)
    characters_needed
  else
    (6 - password.length)
  end
end