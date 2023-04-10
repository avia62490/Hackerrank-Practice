function jimOrders(orders) {
  const prepTimes = orders.map((order, index) => {
      return [index + 1, (order[0] + order[1])];
  })
  return prepTimes.sort((a, b) => a[1] - b[1]).map(customer => customer[0])
}