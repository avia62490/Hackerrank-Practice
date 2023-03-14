function closestNumbers(arr) {
  const arrSorted = arr.sort((x, y) => x - y);
  let minDiff = arrSorted[1] - arrSorted[0] + 1;
  let pairs = [];
  for(let i = 1; i < arrSorted.length; i++) {
      let diff = arrSorted[i] - arrSorted[i - 1]
      if(diff < minDiff) {
          pairs = [];
          minDiff = diff;
          pairs.push(arrSorted[i - 1], arrSorted[i]);
      } else if(diff === minDiff) {
          pairs.push(arrSorted[i - 1], arrSorted[i]);
      }
  }
  return pairs
}