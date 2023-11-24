import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/quiz-logo.png',
          width: 200.00,
          height: 200,
          color: const Color.fromARGB(38, 49, 45, 46),
        ),
        const SizedBox(height: 20),
        Text('Click to open the quiz',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          label: const Text('take quiz'),
          icon: const Icon(Icons.arrow_right_alt),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey, //for background color
              foregroundColor: Colors.white, //for text color
              minimumSize: const Size(70, 30) //for button's size
              ),
        ),
      ],
    );
  }
}
