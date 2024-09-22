class EggCounter {
  int count(int n) {
    List<String> binary = n.toRadixString(2).split('');
    return binary.fold(0, (p, v) => p + (v == '1' ? 1 : 0));
  }
}


