import 'package:flutter/material.dart';
import 'package:job_finder/constant.dart';
import './components/body.dart';

class HomeScreen extends StatelessWidget {
  static const nameRoute = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: Container(
        height: 67,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -2), color: Color(0xFF0c1818).withOpacity(0.15))
        ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                size: 30,
                color: kPrimary,
              ),
              Icon(
                Icons.bookmark_outline,
                size: 30,
                color: kPrimaryGray,
              ),
              Icon(
                Icons.settings_outlined,
                size: 30,
                color: kPrimaryGray,
              )
            ],
          ),
        ),
      ),
    );
  }
}
