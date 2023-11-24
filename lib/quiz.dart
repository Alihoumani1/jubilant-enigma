import 'package:sixthapp/quesScreen.dart';
import 'package:flutter/material.dart';
import 'package:sixthapp/results_screen.dart';
import 'package:sixthapp/startScreen.dart';
import 'package:sixthapp/data/questions.dart'; //we were able to use variables inside of questions.dart normally by just importing it since

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() {
    return __MyAppState();
  }
}

class __MyAppState extends State<MyApp> {
  List<String> selectedAnswers = [];

  var screenChoice = 'Start-Screen';
  void switchScreen() {
    setState(() {
      screenChoice = 'Questions-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        screenChoice = 'Results-Screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      screenChoice = 'Questions-Screen';
      selectedAnswers = [];
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (screenChoice == 'Questions-Screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }
    if (screenChoice == 'Results-Screen') {
      screenWidget = ResultsScreen(selectedAnswers, restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blueGrey,
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
