
import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/example1/splash_screen_page.dart';

class SplashScreenApp1 extends StatelessWidget {
  const SplashScreenApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splash Screen Example 1",
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: const SplashScreenPage(),
    );
  }
}
