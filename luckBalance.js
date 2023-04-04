function luckBalance(k, contests) {
  let importantScores = [];
  let luck = 0;
  contests.forEach(contest => {
      luck += contest[0];
      if(contest[1] === 1) {
          importantScores.push(contest[0]);
      }
  });
  importantScores.sort((a,b) => b - a).splice(0, k);
  let subtractScores = importantScores.reduce(
    (a , c) => a + c, 0
  );
  return luck - 2*subtractScores
}