function insertionSort2(n, arr) {
  for(let i = 1; i < arr.length; i++) {
      let j = i
      while(j >= 0) {
        if(arr[i] < arr[j - 1]) {
          j --
        } else {
          arr.splice(j, 0, arr.splice(i, 1))
          break
        }
      }
      console.log(arr.join(" "))  
  }
}