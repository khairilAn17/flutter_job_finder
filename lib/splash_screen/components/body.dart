import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder/constant.dart';
import './splash_content.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {"msg": "this", "img": "assets/images/splash-1.png", "end": false},
    {"msg": "this", "img": "assets/images/splash-1.png", "end": false},
    {"msg": "this", "img": "assets/images/splash-1.png", "end": true},
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: kPrimary));
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        index: splashData[index]["end"],
                      ))),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(splashData.length,
                      (index) => buildDot(index, currentPage)),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  Container buildDot(int? index, int? currentPage) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
          color: index == currentPage ? kPrimary : kSecondaryGray,
          borderRadius: BorderRadius.circular(4)),
    );
  }
}
