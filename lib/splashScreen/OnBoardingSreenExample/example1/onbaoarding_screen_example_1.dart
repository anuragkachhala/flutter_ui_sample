import 'package:flutter/material.dart';
import 'package:flutter_samples_example/home_screen.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example1/dot_indicator_widget.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example1/slideModel.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example1/slider_image_widget.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  _OnBoardingScreen1State createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  late List<SlideModel> _slides;
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    _slides = getSlide;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: _slides.length,
                itemBuilder: (context, index) {
                  return SliderImage(
                    image: _slides[index].image,
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  _slides.length,
                  (index) =>
                      DotIndicator(index: index, currentIndex: currentIndex)),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child: MaterialButton(
              child: Text(
                currentIndex == _slides.length - 1 ? 'Continue' : "next",
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                if (currentIndex == _slides.length - 1) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                } else {
                  _controller.nextPage(
                      duration: kTabScrollDuration, curve: Curves.ease);
                }
              },
              color: Colors.deepOrangeAccent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          )
        ],
      ),
    );
  }
}
