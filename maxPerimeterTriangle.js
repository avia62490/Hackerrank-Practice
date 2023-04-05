function maximumPerimeterTriangle(sticks) {
  sticks.sort((a , b) => a - b)
  let output = [-1];
  for(let i = 2; i < sticks.length; i++) {
    let side1 = sticks[i - 2];
    let side2 = sticks[i - 1];
    let side3 = sticks[i];
    if(side1 + side2 > side3) {
      output = [side1, side2, side3];
    }
  }
  return output
}