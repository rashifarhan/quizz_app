import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  Question(this.questionText, {super.key});

  String? questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      child: Text(
        "$questionText",
        style: const TextStyle(fontSize: 28, color: Colors.white),
      ),
    );
  }
}
