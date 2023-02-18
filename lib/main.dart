import 'package:flutter/material.dart';
import 'package:quizz_app/screens/home%20screen/home.dart';

import 'package:tbib_splash_screen/splash_screen_view.dart';

void main() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: const Color(0XFF252c4a)),
    home: const MyHomePage(),
  )));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((value) => setState(() {
          isLoaded = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
        navigateWhere: isLoaded,
        navigateRoute: MyApp(),
        linearGradient: const LinearGradient(
            colors: [Colors.indigo, Colors.blueAccent],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
        text: WavyAnimatedText(
          "Flutter Quiz",
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        imageSrc: "assets/lottiefiles/quiz.json");
  }
}
