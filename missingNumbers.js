function missingNumbers(arr, brr) {
  arr.forEach(number => {
      let index = brr.indexOf(number)
      brr.splice(index, 1)
  })
  const uniq = [...new Set(brr)]
  return uniq.sort((x, y) => x - y)
}