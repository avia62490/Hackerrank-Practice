function findMedian(arr) {
  const sorted = arr.sort((x,y) => x -y);
  let index = Math.floor(sorted.length / 2);
  return sorted[index]
}