class WordCount {
  Map<String, int> countWords(String sentence){
    var counter = <String, int>{};
    var matches = RegExp(r"\w+('\w\w?)*").allMatches(sentence.toLowerCase());    

    for(final match in matches){
      counter.update(match[0]!, (v) => v + 1, ifAbsent: () => 1);
    }

    return counter;
  }
}