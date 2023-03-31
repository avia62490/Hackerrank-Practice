function gridChallenge(grid) {
  let width = grid[0].length - 1;
  let height = grid.length - 1;
  const sorted = grid.map(string => string.split('').sort())
  for(let i = 0; i < width; i++) {
      let column = [];
      for(let j = 0; j < height; j++) {
        column.push(sorted[j][i]);
      }
      if(column.join() !== column.sort().join()) {
        return "NO"
      }
  }
  return "YES"
}