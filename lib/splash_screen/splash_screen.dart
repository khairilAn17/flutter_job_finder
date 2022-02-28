import 'package:flutter/material.dart';
import 'package:job_finder/size_config.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static const nameRoute = 'splashScreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
