function boardCutting(cost_y, cost_x) {
  cost_y.push(0);
  cost_x.push(0);
  let totalCost = 0;
  let horizontalSegments = 1;
  let verticalSegments = 1;
  while(cost_y.length > 1 || cost_x.length > 1) {
      let y = cost_y.indexOf(Math.max(...cost_y))
      let x = cost_x.indexOf(Math.max(...cost_x))
      if(cost_y[y] >= cost_x[x]) {
          let costRate = cost_y.splice(y, 1);
          let cost = costRate * verticalSegments;
          totalCost += cost;
          horizontalSegments++;
      } else if(cost_y[y] < cost_x[x]) {
          let costRate = cost_x.splice(x, 1);
          let cost = costRate * horizontalSegments;
          totalCost += cost;
          verticalSegments++;
      }
  }
  return totalCost % (10 ** 9 + 7)
}