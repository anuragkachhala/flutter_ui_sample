import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliderWidget extends StatelessWidget {
  String image;

  SliderWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
