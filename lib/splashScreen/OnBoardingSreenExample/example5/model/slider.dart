import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example5/constant/constants.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;
  final String skipBtn;

  Slider(
      {required this.sliderImageUrl,
      required this.sliderHeading,
      required this.sliderSubHeading,
      required this.skipBtn});
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: 'assets/splash3.png',
      sliderHeading: Constants.SLIDER_HEADING_1,
      sliderSubHeading: Constants.SLIDER_DESC,
      skipBtn: Constants.SKIP),
  Slider(
      sliderImageUrl: 'assets/splash3.png',
      sliderHeading: Constants.SLIDER_HEADING_2,
      sliderSubHeading: Constants.SLIDER_DESC,
      skipBtn: Constants.SKIP),
  Slider(
      sliderImageUrl: 'assets/splash3.png',
      sliderHeading: Constants.SLIDER_HEADING_3,
      sliderSubHeading: Constants.SLIDER_DESC,
      skipBtn: ""),
];
