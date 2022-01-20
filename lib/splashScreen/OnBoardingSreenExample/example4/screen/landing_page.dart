import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example4/ui_view/slider_layout_view.dart';

class LandingPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
    child: SliderLayoutView(),
  );
}