import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  String image;

  SliderImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}
