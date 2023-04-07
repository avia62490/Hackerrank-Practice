function toys(w) {
  w.sort((a , b ) => a - b);
  let minWeight = w[0];
  let boxes = 1
  for(let i = 0; i < w.length; i++) {
      if(w[i] > minWeight + 4) {
          minWeight = w[i];
          boxes++
      }
  }
  return boxes
}