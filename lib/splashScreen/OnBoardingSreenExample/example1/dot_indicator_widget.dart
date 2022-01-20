import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  int index;
  int currentIndex;
   DotIndicator({Key? key,required this.index,required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex== index ?25 : 10,
      margin:   const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepOrangeAccent
      ),
    );
  }
}
