function breakingRecords(scores) {
  let records = [0, 0]
  let maxScore = scores[0]
  let minScore = scores[0]
  for(let i = 0; i < scores.length; i++) {
      if (scores[i] > maxScore) {
        records[0]++;
        maxScore= scores[i];
      } else if (scores[i] < minScore) {
        records[1]++;
        minScore = scores[i];
      };
  };
  return records
}