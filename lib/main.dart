import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/example1/splash_screen_example_1.dart';
import 'package:flutter_samples_example/splashScreen/landing_page.dart';

import 'home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sample App",
      home: LandingPage(),
    );
  }
}


