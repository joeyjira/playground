function autoBioNum(size) {
  let res = new Array(size).fill(0);
  let map = new Map();

  map.set(0, 10);
  for (int i = 1; i < 10; i++) {
    map.set(i, 0);
  }

  for (let i = 0; i < res.length; i++) {
    for (let j = 9; j >= 0; j--) {
      res[i] = j;
      map.set()
    }
  }
}
