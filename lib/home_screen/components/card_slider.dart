import 'package:flutter/material.dart';

import '../../constant.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Card(
              first: true,
            ),
            Card(
              first: false,
            ),
            Card(
              first: false,
            ),
            Card(
              first: false,
            )
          ])),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.first,
  }) : super(key: key);
  final bool first;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 143,
        width: 250,
        decoration: BoxDecoration(
            color: first ? kPrimary : Colors.white,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: kPrimaryLight,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Image.asset("assets/images/tokped.png")),
                  Text(
                    "\$50 - \$75 \/ Mo",
                    style: TextStyle(color: first ? kPrimaryLight : kTextColor),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Senior Project Manager",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    color: first ? kPrimaryLight : kTextColor,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Tokopedia - Jakarta, ID",
                style: TextStyle(color: first ? kPrimaryLight : kTextColor),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      cardItems(
                        notes: "Full Time",
                      ),
                      cardItems(
                        notes: "Remote",
                      ),
                      cardItems(
                        notes: "Senior",
                      ),
                    ],
                  ),
                  Icon(
                    Icons.bookmark_outline,
                    color: kPrimaryLight,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardItems extends StatelessWidget {
  const cardItems({
    Key? key,
    required this.notes,
  }) : super(key: key);
  final String notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryLight, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          child: Text(
            notes,
            style: TextStyle(color: kPrimary),
          ),
        ),
      ),
    );
  }
}
