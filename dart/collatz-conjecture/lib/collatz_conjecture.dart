class CollatzConjecture {
  int steps(int n, [int count = 0]) {
    if (n < 1) throw ArgumentError("Only positive integers are allowed");
    if (n == 1) return count;
    if (n.isEven) return steps(n ~/ 2, count + 1);
    return steps(3 * n + 1, count + 1);
  }
}
