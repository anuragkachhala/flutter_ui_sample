import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example1/onbaoarding_screen_example_1.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example3/onboarding_screen_example_3.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example4/screen/landing_page.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example5/screen/landing_page.dart';

import 'package:flutter_samples_example/splashScreen/splashScreenExample/example1/splash_screen_example_1.dart';
import 'package:flutter_samples_example/splashScreen/splashScreenExample/example2/splash_screen_example_2.dart';
import 'package:flutter_samples_example/splashScreen/splashScreenExample/example3/splash_screen_example_3.dart';
import 'package:flutter_samples_example/splashScreen/splashScreenExample/example4/splash_screen_example_4.dart';
import 'package:flutter_samples_example/splashScreen/splashScreenExample/example5/splash_screen_example_5.dart';

import 'OnBoardingSreenExample/example2/onbaoarding_screen_example_2.dart';
import 'OnBoardingSreenExample/example6/introduction_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spash Sceen'),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreenApp1()));
                  },
                  child: const Text(
                    'Splash Screen 1',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreenApp2()));
                  },
                  child: const Text(
                    'Splash Screen 2',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreenApp3()));
                  },
                  child: const Text(
                    'Splash Screen 3',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreenApp4()));
                  },
                  child: const Text(
                    'Splash Screen 4',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreenApp5()));
                  },
                  child: const Text(
                    'Splash Screen 5',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen1()));
                  },
                  child: const Text(
                    'OnBoarding Screen 1',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen2()));
                  },
                  child: const Text(
                    'OnBoarding Screen 2',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen3()));
                  },
                  child: const Text(
                    'OnBoarding Screen 3',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  LandingPage1()));
                  },
                  child: const Text(
                    'OnBoarding Screen 4',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  LandingPage2()));
                  },
                  child: const Text(
                    'OnBoarding Screen 5',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  IntroductionPage()));
                  },
                  child: const Text(
                    'OnBoarding Screen 6',
                    style: TextStyle(color: Colors.amber, fontSize: 24.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
