import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/answer.dart';
import 'package:quizz_app/widgets/question.dart';
import 'package:quizz_app/data/questionanswer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;

  Quiz({super.key, required this.answerQuestion, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 280,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  //fit: BoxFit.contain,
                  image: AssetImage("assets/images/flutter.png"))),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Question${questionIndex + 1}/${questions.length}",
          style: const TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.w300, color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: Colors.white,
          height: 8.0,
          thickness: 1.0,
        ),
        Question(questions[questionIndex]["questionText"].toString()),
        const SizedBox(
          height: 10,
        ),
        ...(questions[questionIndex]["answerText"] as List<String>)
            .map((answer) {
          return Answer(
            (() => answerQuestion(answer)),
            answer,
          );
        }).toList()
      ]),
    );
  }
}
