import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.index,
  }) : super(key: key);
  final bool index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/splash-1.png'),
          ),
          Expanded(
            flex: 1,
            child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                    text: "Join Us & Explore Thousand\n",
                    style: TextStyle(
                      fontFamily: "Inter",
                      color: kPrimary,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                      text: " of",
                      style: TextStyle(
                        fontFamily: "Inter",
                        color: kPrimary,
                        fontSize: 20,
                      )),
                  TextSpan(
                      text: " Great Job",
                      style: TextStyle(
                          fontFamily: "Inter",
                          color: kPrimary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ])),
          ),
          index
              ? SizedBox(
                  width: double.infinity - getProportionateScreenWidth((16)),
                  height: getProportionateScreenHeight(54),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor: MaterialStateProperty.all(kPrimary)),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
