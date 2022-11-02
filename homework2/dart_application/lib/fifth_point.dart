Map<String, int> wordsNumbers = {
  'zero': 0,
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 8,
  'eight': 8,
  'nine': 9,
};

Set<int> getUniqueNumbers(List<String> wordsList) {
  Set<int> numbersSet = {};
  for (String word in wordsList) {
    if (wordsNumbers.containsKey(word)) {
      int? wordNumber = wordsNumbers[word];

      if (wordNumber != null) {
        numbersSet.add(wordNumber);
      }
    }
  }
  return numbersSet;
}
