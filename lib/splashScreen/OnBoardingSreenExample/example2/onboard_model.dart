import 'package:flutter/material.dart';

class OnboardModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnboardModel(
      {required this.img,
      required this.text,
      required this.desc,
      required this.bg,
      required this.button});
}

List<OnboardModel> getOnBoardScreen = <OnboardModel>[
  OnboardModel(
    img: 'assets/splash3.png',
    text: "Belajar Dengan Metode",
    desc:
        "Sebuah metode",
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
  OnboardModel(
    img: 'assets/splash3.png',
    text: "Dapatkan ",
    desc:
        "Tidak peduli ",
    bg: Color(0xFF4756DF),
    button: Colors.white,
  ),
  OnboardModel(
    img: 'assets/splash3.png',
    text: "Gunakan ",
    desc:
        "Tersedia ",
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
];
