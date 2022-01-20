import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_samples_example/home_screen.dart';

class SplashScreenAnimationPage extends StatefulWidget {
  const SplashScreenAnimationPage({Key? key}) : super(key: key);

  @override
  _SplashScreenAnimationPageState createState() => _SplashScreenAnimationPageState();
}

class _SplashScreenAnimationPageState extends State<SplashScreenAnimationPage> with SingleTickerProviderStateMixin {

  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigateScreen);
  }

  void navigateScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    animationController =  AnimationController(
        vsync: this, duration:  const Duration(seconds: 2));
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Image.asset(
                  'assets/splash3.png',
                  height: 25.0,
                  fit: BoxFit.scaleDown,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }


}


