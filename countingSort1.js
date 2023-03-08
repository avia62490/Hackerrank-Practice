function countingSort(arr) {
  let array = Array(100).fill(0)
  arr.forEach(number => array[number]++)
  return array
}