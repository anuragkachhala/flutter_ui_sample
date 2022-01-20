import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/splashScreenExample/example4/splash_screen_page_4.dart';

class SplashScreenApp4 extends StatefulWidget {
  const SplashScreenApp4({Key? key}) : super(key: key);

  @override
  _SplashScreenApp4State createState() => _SplashScreenApp4State();
}

class _SplashScreenApp4State extends State<SplashScreenApp4> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenAnimationPage(),
    );
  }
}




