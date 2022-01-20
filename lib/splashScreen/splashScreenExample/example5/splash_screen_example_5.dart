import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/splashScreenExample/example4/splash_screen_page_4.dart';
class SplashScreenApp5 extends StatelessWidget {
  const SplashScreenApp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenAnimationPage(),
    );
  }
}
