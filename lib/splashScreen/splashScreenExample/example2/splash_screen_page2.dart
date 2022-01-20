import 'package:flutter/material.dart';
import 'package:flutter_samples_example/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage2 extends StatefulWidget {
  const SplashScreenPage2({Key? key}) : super(key: key);

  @override
  _SplashScreenPage2State createState() => _SplashScreenPage2State();
}

class _SplashScreenPage2State extends State<SplashScreenPage2> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      // Load Splash screen for 6 seconds.
      navigateAfterSeconds: HomeScreen(),
      // Navigate to HomeScreen after defined duration.
      title: const Text(
        'Splash Screen 2',
        textScaleFactor: 2,
      ),
      image: Image.asset('assets/splash3.png'),
      // Load this image in the splash screen
      loadingText: const Text("Loading..."),
      photoSize: 100.0,
      loaderColor: Colors.blue,
      gradientBackground: const LinearGradient(
        // Background color
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Colors.lightBlue, Colors.indigo],
      ),
    );
  }
}
