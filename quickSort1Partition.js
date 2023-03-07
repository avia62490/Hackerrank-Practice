function quickSort(arr) {
  let left = []
  let middle = []
  let right = []
  arr.forEach(element => {
      if(element < arr[0]) {
        left.push(element)
      } else if(element === arr[0]) {
        middle.push(element)
      } else if(element > arr[0]) {
        right.push(element)
      }
  })
  return left.concat(middle.concat(right))
}