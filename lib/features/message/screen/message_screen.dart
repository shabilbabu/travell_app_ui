import 'package:flutter/material.dart';
import 'package:travel_booking_app/shared/constants/font/font_constatnts.dart';

import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../shared/text_widgets/buil_text.dart';

class MessageScreen extends StatefulWidget {
  static const String routeName = "/messageScreen";
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red,
      child: Center(
        child: BuildText(
          text: 'Message Screen',
          color: ColorName.colorWhite,
          fontSize: 10.0.large23px(),
          family: FontFamily.poppinsBold,
        ),
      ),
    );
  }
}