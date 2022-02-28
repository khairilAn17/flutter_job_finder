import 'package:flutter/material.dart';

import '../../constant.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        title,
        style: TextStyle(
            color: kTextColor,
            fontSize: 18,
            fontFamily: "Inter",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
