function compactMatrix(matrix) {
  // First Array In Matrix
  const start = matrix.shift();
  // Last Array In Matrix (Reversed)
  const end = matrix.pop().reverse();
  // Moving Vertically Down Right Side
  for (let i = 0; i < matrix.length; i++) {
    start.push(matrix[i].pop());
  }
  start.push(end);
  // Moving Vertically Up Left Side
  for (let i = matrix.length - 1; i > 0; i--) {
    start.push(matrix[i].shift());
  }
  return [].concat(...start);
}

const snail = function (array) {
  switch (array.length) {
    case 0:
      return [];
    case 1:
      return array[0];
  }

  const result = [];
  while (array.length > 1) {
    result.push(compactMatrix(array));
    if (array.length === 1) {
      result.push(array[0]);
    }
  }

  return [].concat(...result);
};
