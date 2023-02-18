import 'package:flutter/material.dart';
import 'package:quizz_app/data/questionanswer.dart';
import 'package:quizz_app/widgets/quiz.dart';
import 'package:quizz_app/widgets/result.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _score = 0;
  var _questionindex = 0;

  void resutQuiz() {
    setState(() {
      _questionindex = 0;
      _score = 0;
    });
  }

  void _answerQuestion(String answer) {
    setState(() {
      _questionindex = _questionindex + 1;
      if (correct.contains(answer)) {
        _score = _score + 1;
      } else {
        _score;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _questionindex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionindex,
              )
            : Result(score: _score, resetHandler: resutQuiz));
  }
}
