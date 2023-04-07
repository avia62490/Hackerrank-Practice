function maximumToys(prices, k) {
  prices.sort((a , b) => a - b);
  let toys = 0
  for(let i = 0; i < prices.length; i++) {
    if(k >= prices[i]) {
      k -= prices[i];
      toys++;
    } else {
      break
    }
  }
  return toys
}