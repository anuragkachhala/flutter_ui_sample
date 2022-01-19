import 'package:flutter/material.dart';

import 'example1/splash_screen_example_1.dart';

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
          child: Column(
            children: <Widget>[
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreenApp1()));
                  },
                  child: const Text('Splash Screen 1',
                    style: TextStyle(color: Colors.amber,
                    fontSize: 24.0),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
