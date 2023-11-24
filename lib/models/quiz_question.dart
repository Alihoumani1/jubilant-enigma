class quizQuestion {
  quizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;
//created a copy of the list since shuffle changes the order of the list in the memory, and we don't want that. we want the correct answer to be the first one in the memory and then shuffle the answers for the user
//List<String> is a data type just like String, but the difference here is that ma hatayna final abla, and that's because it's a variable of type function, no void was used because it returns a value(it basically return a list of strings)
  List<String> getShuffledList() {
//  List is a class here that we can use. of is a built in method in dart that allows you to take a copy of something
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
