class DifferenceOfSquares {
  int squareOfSum(int n) => square(sum(rangeList(1, n + 1)));

  int sumOfSquares(int n) => sum(rangeList(1, n + 1).map(square));

  int differenceOfSquares(int n) => squareOfSum(n) - sumOfSquares(n);
}

int square(int n) {
  return n * n;
}

int sum(Iterable<int> xs) {
  return xs.reduce((a, b) => a + b);
}

Iterable<int> rangeList(int start, int stop) {
  return [for (int i = start; i < stop; i++) i];
}
