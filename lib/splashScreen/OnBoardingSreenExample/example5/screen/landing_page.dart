import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example5/ui_view/onboardinglayoutview.dart';

class LandingPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPage2State();
}

class _LandingPage2State extends State<LandingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
    child: OnBoardingLayoutView(),
  );
}