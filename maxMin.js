function maxMin(k, arr) {
  arr.sort((a , b) => a - b);
  k -= 1;
  let minDiff = arr[k] - arr[0];
  for(let i = k; i < arr.length; i++) {
      let diff = arr[i] - arr[i - k];
      if(diff < minDiff) {
          minDiff = diff
      }
  }
  return minDiff
}