
import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/splashScreenExample/example2/splash_screen_page2.dart';

class SplashScreenApp2 extends StatefulWidget {
  const SplashScreenApp2({Key? key}) : super(key: key);

  @override
  _SplashScreenApp2State createState() => _SplashScreenApp2State();
}

class _SplashScreenApp2State extends State<SplashScreenApp2> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Splash Screen 2",
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage2(),
    );
  }
}