function balancedSums(arr) {
  let total = arr.reduce((a,b) => a + b)
  let left = 0
  for(let i = 0; i < arr.length; i++) {
    total -= arr[i]
    if(left === total) {
      return "YES";
    } else {
      left += arr[i];
    }
  }
  return "NO"
}