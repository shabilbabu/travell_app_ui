import 'package:flutter/material.dart';
import 'package:travel_booking_app/gen/assets.gen.dart';
import 'package:travel_booking_app/shared/constants/font/font_constatnts.dart';
import 'package:travel_booking_app/shared/widget/appbutton.dart';

import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../shared/constants/font/size_config.dart';
import '../../../shared/constants/string_constants.dart';
import '../../../shared/text_widgets/buil_text.dart';
import '../../auth/login/screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = "/welcomScreen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  //height and width
  double height = 0.0;
  double width = 0.0;

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
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.travelGirlBgImage.image().image,
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 10),
        child: Column(
          children: [
            SizedBox(height: height * 15),
            titleSection(),
            const Spacer(),
            welcomeButton(),
            SizedBox(
              height: height * 10,
            )
          ],
        ),
      ),
    );
  }

//title section
  Widget titleSection() {
    return BuildText(
      text: StringConstants.welcomeText,
      color: Colors.black,
      family: FontFamily.poppinsRegular,
      fontSize: 10.0.medium20px(),
      textAlign: TextAlign.center,
    );
  }

//welcomButton
  Widget welcomeButton() {
    return AppButton(
      buttonWidth: width * 35,
      title: 'Welcome',
      color: ColorName.colorWhite,
      titleColor: Colors.black,
      onTap: () => Navigator.of(context)
          .pushNamedAndRemoveUntil(LoginScreen.routeName, (route) => false),
    );
  }
}
