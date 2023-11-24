import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              backgroundColor: const Color.fromARGB(255, 112, 106, 106),
              foregroundColor: Colors.white,
              fixedSize: Size(400, 35),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(answerText, textAlign: TextAlign.center)),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}
