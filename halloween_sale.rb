def howManyGames(p, d, m, s)
  games_bought = 0
  cost = p
  total_cost = p
  while total_cost <= s
    games_bought += 1
    if (cost - d) > m
      cost -= d
    else
      cost = m
    end
    total_cost += cost
  end
  games_bought
end