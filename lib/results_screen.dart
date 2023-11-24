import 'package:flutter/material.dart';
import 'package:sixthapp/data/questions.dart';
import 'package:sixthapp/questions-summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(this.chosenAnswers, this.restart, {super.key});
  final List<String> chosenAnswers;
  void Function() restart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question index': i,
        'question': questions[i].question,
        'correct answer': questions[i].answers[0],
        'user answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    int X = 0;
    for (int i = 0; i < chosenAnswers.length; i++) {
      if (questions[i].answers[0] == chosenAnswers[i]) {
        X++;
      }
    }

    int Y = chosenAnswers.length;
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(40),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered  $X out of $Y questions correctly!',
                style: TextStyle(fontSize: 24, color: Colors.black)),
            const SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30),
            TextButton(
              onPressed: restart,
              child: const Text('Restart Quiz!',
                  style: TextStyle(color: Colors.pinkAccent)),
            )
          ],
        ),
      ),
    );
  }
}
