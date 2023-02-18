import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Result extends StatelessWidget {
  late Function resetHandler;

  final score;

  Result({
    required this.resetHandler,
    required this.score,
    super.key,
  });

  Widget get result {
    Widget outcome;

    if (score == 5) {
      outcome = Lottie.asset("assets/lottiefiles/champion.json");
    } else if (score == 4) {
      outcome = Lottie.asset("assets/lottiefiles/great.json");
    } else {
      outcome = Lottie.asset("assets/lottiefiles/tryagain.json");
    }
    return outcome;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Score:$score/5",
          style: TextStyle(
            color: Theme.of(context).primaryColorLight,
            fontWeight: FontWeight.w600,
            fontSize: 40,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 10,
        ),
        result,
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 10,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: TextButton(
              onPressed: () => resetHandler(),
              child: Text(
                "Wanna try again?",
                style: TextStyle(color: Theme.of(context).primaryColorLight),
              )),
        )
      ]),
    );
  }
}
