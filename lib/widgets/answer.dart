import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText, {Key? key}) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            widget.selectHandler();

            isPressed = true;
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              widget.answerText,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
