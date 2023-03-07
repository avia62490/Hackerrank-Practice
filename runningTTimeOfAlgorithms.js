function runningTime(arr) {
  let shifts = 0
  for(let i = 1; i < arr.length; i++) {
      let j = i
      while(j >= 0) {
          if(arr[i] < arr[j - 1]) {
            j --
          } else {
            arr.splice(j, 0, arr.splice(i, 1))
            shifts = shifts + (i - j)
            break
          }
      }
  }
  return shifts
}