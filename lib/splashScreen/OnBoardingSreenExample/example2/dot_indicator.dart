import 'package:flutter/material.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example2/constant.dart';

import 'onboard_model.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    Key? key,
    required this.onBoardList,
    required int currentIndex,
  })  : _currentIndex = currentIndex,
        super(key: key);

  final List<OnboardModel> onBoardList;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      child: ListView.builder(
        itemCount: onBoardList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3.0),
              width: _currentIndex == index ? 25 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: _currentIndex == index ? kbrown : kbrown300,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
