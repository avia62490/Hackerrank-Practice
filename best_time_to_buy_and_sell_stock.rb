# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  buy_value = sell_value = prices[0]
  i = 0
  while i < prices.length
  buy_value = prices[i] if prices[i] < buy_value
  profit = prices[i] - buy_value
  max_profit = profit if profit > max_profit
  i += 1
  end
  return max_profit
end