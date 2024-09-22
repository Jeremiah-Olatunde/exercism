class SumOfMultiples {
  int sum(List<int> xs, int level) {
    return xs
        .map((x) => multiples(x, level))
        .expand((x) => x)
        .toSet()
        .fold(0, (p, v) => p + v);
  }
}

List<int> multiples(int n, int max) {
  if(n == 0) return [];
  return [for (int i = n; i < max; i += n) i];
}
