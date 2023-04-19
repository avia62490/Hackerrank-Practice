function funnyString(s) {
  let values = s.split("").map(letter => letter.charCodeAt());
  let n = values.length
  for(let i = 1; i <= values.length / 2; i++) {
    let diff1 = Math.abs(values[i] - values[i - 1]); 
    let diff2 = Math.abs(values[n - i] - values[n - i - 1]); 
    if(diff1 !== diff2) {
      return "Not Funny"
    }
  }
  return "Funny"
}