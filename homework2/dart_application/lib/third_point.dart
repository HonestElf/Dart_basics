List<num> getNumLsit(String input) {
  List<num> numList = [];
  List<String> wordsList = input.split(' ');

  for (String word in wordsList) {
    int? parsedInt = int.tryParse(word);
    if (parsedInt != null) {
      numList.add(parsedInt);
    } else {
      double? parsedDouble = double.tryParse(word);
      if (parsedDouble != null) {
        numList.add(parsedDouble);
      }
    }
  }

  return numList;
}
