import 'package:flutter/material.dart';
import 'package:flutter_samples_example/home_screen.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example2/constant.dart';
import 'package:flutter_samples_example/splashScreen/OnBoardingSreenExample/example2/dot_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboard_model.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  _OnBoardingScreen2State createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  int _currentIndex = 0;
  late PageController _pageController;
  late List<OnboardModel> onBoardList;

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    onBoardList = getOnBoardScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentIndex % 2 == 0 ? kwhite : kblue,
      appBar: AppBar(
        backgroundColor: _currentIndex % 2 == 0 ? kwhite : kblue,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              _storeOnboardInfo();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: _currentIndex % 2 == 0 ? kblack : kwhite,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: onBoardList.length,
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(onBoardList[index].img),
                  DotIndicatorWidget(
                      onBoardList: onBoardList, currentIndex: _currentIndex),
                  Text(
                    onBoardList[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: index % 2 == 0 ? kblack : kwhite,
                    ),
                  ),
                  Text(
                    onBoardList[index].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      color: index % 2 == 0 ? kblack : kwhite,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      print(index);
                      if (index == onBoardList.length - 1) {
                        await _storeOnboardInfo();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }

                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10),
                      decoration: BoxDecoration(
                          color: index % 2 == 0 ? kblue : kwhite,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: index % 2 == 0 ? kwhite : kblue),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: index % 2 == 0 ? kwhite : kblue,
                        )
                      ]),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }

/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentIndex % 2 == 0 ? kwhite : kblue,
      appBar: AppBar(
        backgroundColor: _currentIndex % 2 == 0 ? kwhite : kblue,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: TextStyle(color: _currentIndex % 2 == 0 ? kblack : kwhite),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            PageView.builder(
                itemCount: onBoardList.length,
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return SliderWidget(image: onBoardList[index].img);
                }
                ),
            Container(
              height: 10.0,
              child: ListView.builder(
                itemCount: onBoardList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return DotIndicatorWidget(index: index, _currentIndex: _currentIndex);
                },
              ),
            ),

            Text(
              onBoardList[_currentIndex].text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: _currentIndex % 2 == 0 ? kblack : kwhite,
              ),
            ),
            Text(
              onBoardList[_currentIndex].desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Montserrat',
                color: _currentIndex % 2 == 0 ? kblack : kwhite,
              ),
            ),
          ],
        ),
      ),
    );
  }*/

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
