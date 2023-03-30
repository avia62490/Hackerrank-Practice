function marcsCakewalk(calorie) {
  calorie.sort((a,b) => b - a)
  let miles = 0
  for(let i = 0; i < calorie.length; i++) {
    let calories = (2 ** i) * calorie[i]
    miles += calories
  }
  return miles
}