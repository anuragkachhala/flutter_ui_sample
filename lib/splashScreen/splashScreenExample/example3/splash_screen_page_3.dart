import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_samples_example/home_screen.dart';

class SplashScreenPage3 extends StatefulWidget {
  const SplashScreenPage3({Key? key}) : super(key: key);

  @override
  _SplashScreenPage3State createState() => _SplashScreenPage3State();
}

class _SplashScreenPage3State extends State<SplashScreenPage3> {

  _startTime() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, navigatorPage);
  }

  void navigatorPage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    _startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/splash3.png',
              width: 200,
              height: 200,),
              Container(
                padding: const EdgeInsets.fromLTRB(0,80,0,0),
                child: const CircularProgressIndicator(
                  backgroundColor: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
