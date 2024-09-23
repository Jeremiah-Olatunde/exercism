import 'dart:math';

class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() => this.scores.last;

  int personalBest() => this.scores.reduce(max);

  List<int> personalTopThree() {
    List<int> copy = List.of(this.scores)..sort();
    return copy.reversed.take(3).toList();
  }
}
