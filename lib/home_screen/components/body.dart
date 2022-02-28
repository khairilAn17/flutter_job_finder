import 'package:flutter/material.dart';
import 'package:job_finder/constant.dart';
import 'package:job_finder/size_config.dart';
import 'section_title.dart';
import './home_header.dart';
import 'card_slider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: SizeConfig.screenHeigh,
      color: Colors.black.withOpacity(.03),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            SectionTitle(
              title: "Most Popular",
            ),
            CardSlider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CartItemsSlider(
                      notes: "All Jobs",
                      first: true,
                    ),
                    CartItemsSlider(
                      notes: "UI Designer",
                      first: false,
                    ),
                    CartItemsSlider(
                      notes: "FE Dev",
                      first: false,
                    ),
                    CartItemsSlider(
                      notes: "FE Dev",
                      first: false,
                    ),
                    CartItemsSlider(
                      notes: "FE Dev",
                      first: false,
                    ),
                    CartItemsSlider(
                      notes: "FE Dev",
                      first: false,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: SizeConfig.screenHeigh,
                child: GridView.count(
                  physics: ScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    cardMenu(),
                    cardMenu(),
                    cardMenu(),
                    cardMenu(),
                    cardMenu(),
                    cardMenu(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Container cardMenu() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/tokped.png"),
                Icon(Icons.bookmark_outline)
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              "FE Developer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Tokped - Jakarta, ID",
              style: TextStyle(fontSize: 14, color: kPrimaryGray),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "\$50 - \$75 \/ Mo",
              style: TextStyle(fontSize: 14, color: kPrimaryGray),
            )
          ],
        ),
      ),
    );
  }
}

class CartItemsSlider extends StatelessWidget {
  const CartItemsSlider({Key? key, required this.notes, required this.first})
      : super(key: key);
  final String notes;
  final bool first;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: first ? kPrimary : Colors.black.withOpacity(.2),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            notes,
            style: TextStyle(color: first ? kPrimaryLight : kPrimaryGray),
          ),
        ),
      ),
    );
  }
}
