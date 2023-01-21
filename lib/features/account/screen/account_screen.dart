import 'package:flutter/material.dart';
import 'package:travel_booking_app/shared/constants/font/font_constatnts.dart';

import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../shared/text_widgets/buil_text.dart';

class AccountScreen extends StatefulWidget {
  static const String routeName = "/accountScreen";
 const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
      child: Center(
        child: BuildText(
          text: 'Account Screen',
          color: ColorName.colorWhite,
          fontSize: 10.0.large23px(),
          family: FontFamily.poppinsBold,
        ),
      ),
    );
  }
}