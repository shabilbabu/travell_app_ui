import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_booking_app/features/welcom/screen/welcome_screen.dart';
import 'package:travel_booking_app/gen/assets.gen.dart';
import 'package:travel_booking_app/gen/colors.gen.dart';

import '../../../shared/constants/font/size_config.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //height and width
  double height = 0.0;
  double width = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    return SafeArea(
      child: Scaffold(
        body: createBody(),
      ),
    );
  }

//Create body
  Widget createBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: ColorName.colorLoginButton,
      child: Center(
        child: Image(
          image: Assets.images.appLogoWhite.image().image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
