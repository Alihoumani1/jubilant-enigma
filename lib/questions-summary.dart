import 'package:flutter/material.dart';
import 'package:sixthapp/questions-summary/question-identifier.dart';
import 'package:sixthapp/results_screen.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});
  List<Map<String, Object>> summaryData;
  @override
  //Text(((data['question index'] as int) + 1).toString())
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(children: [
            QuestionIdentifier(data['question index'] as int),
            Expanded(
              child: Column(children: [
                Text(data['question'] as String,
                    style: const TextStyle(color: Colors.white)),
                const SizedBox(height: 5),
                Text(data['correct answer'] as String,
                    style: const TextStyle(color: Colors.green)),
                const SizedBox(height: 5),
                Text(data['user answer'] as String,
                    style: const TextStyle(color: Colors.red)),
                const SizedBox(height: 10)
              ]),
            )
          ]);
        }).toList()),
      ),
    );
  }
}
