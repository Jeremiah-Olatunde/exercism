class DifferenceOfSquares {
  int squareOfSum(int n){
    return [for(int i = 1; i <= n; i++) i].reduce((a, b) => a + b);
  }

  int sumOfSquares(int n){
    return [for(int i = 1; i < n; i++) i].map((i) => i ^ 2).reduce((a, b) => a + b);
  }

  int differenceOfSquares(int n){
    return sumOfSquares(n) - squareOfSum(n);
  }
}