function decentNumber(n) {
  let threes = 0;
  if(n == 1 || n == 2 || n == 4 || n == 7) {
    console.log(-1);
  } else {
    if(n % 3 !== 0) {
      threes = 3 - (n % 3);
    }
    let fives = (n - 5 * threes) / 3;
    let number = ''
    for(let i = 0; i < fives; i++) {
      number += '555'
    }
    for(let i = 0; i < threes; i++) {
      number += '33333'
    }
    console.log(number)
  }
}