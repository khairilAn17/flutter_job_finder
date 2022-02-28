import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';
import '../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Hallo, ",
                          style: TextStyle(
                              color: kTextColor,
                              fontSize: 17,
                              fontFamily: "Inter")),
                      TextSpan(
                        text: "Khairil Anwar",
                        style: TextStyle(
                            color: kTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter"),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Find Your Great Job",
                    style: TextStyle(
                        color: kPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )
                ],
              ),
              Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/unnamed.jpg"),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: kPrimary)),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(28),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: SizeConfig.screenWdith * .75,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Search a Job",
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Icon(
                      Icons.search,
                      color: kPrimaryGray,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: kPrimary, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/icons/filter.svg"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
