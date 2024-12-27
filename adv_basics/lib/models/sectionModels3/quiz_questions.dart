class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // list of creates a new list from the elements of the original list and then .shuffle() shuffles that list
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
