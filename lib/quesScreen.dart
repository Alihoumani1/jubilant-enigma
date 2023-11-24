import 'package:flutter/material.dart';
import 'package:sixthapp/answer_button.dart';
import 'package:sixthapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectedAnswer, {super.key});
  final void Function(String selectedAnswer) onSelectedAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  //and now this "selectedAnswer" is gonna be replaced by the actual "answer" when used in the button, where "questionAnswered" is the func used onPressed and takes "answer" as a parameter, which is the current answer being pressed

  void questionAnswered(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
        child: Container(
      margin: const EdgeInsets.all(40),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.question,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          //we used getShuffledList instead of answers so we could display the shuffled list for the user, and the "answers" one remains for the memory so we can check the correct answer later on
          ...currentQuestion.getShuffledList().map((answer) {
            return AnswerButton(answer, () {
              questionAnswered(
                  answer); //when a specific button is pressed, aam a3mol calling la hay l function with a parameter li huwe l "answer", which in this case refers lal answer li ana kabaset aale, cuz as u can see fo2 aam a3mol mapping la kel answer bi variable esmo answer
            });
          })
        ],
      ),
    ));
  }
}
