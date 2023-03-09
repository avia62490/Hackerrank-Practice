function countingSort(arr) {
  let frequency = Array(100).fill(0)
  arr.forEach(number => frequency[number]++)
  let output = []
  frequency.map((element, index) => {
    for(let i = 0; i < element; i++) {
      output.push(index)
    }
  })
  return output
}