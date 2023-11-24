import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  QuestionIdentifier(this.questionIndex, {super.key});
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
        width: 30,
        height: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(250)),
        child: Text(
          questionNumber.toString(),
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ));
  }
}
