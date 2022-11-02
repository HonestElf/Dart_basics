Map<String, int> getWordsCountMap(List<String> wordsList) {
  Map<String, int> wordsCountMap = {};

  for (String word in wordsList) {
    if (!wordsCountMap.containsKey(word)) {
      wordsCountMap[word] = 1;
    } else {
      int? count = wordsCountMap[word];

      if (count != null) {
        int newValue = count + 1;
        wordsCountMap[word] = newValue;
      }
    }
  }
  return wordsCountMap;
}
