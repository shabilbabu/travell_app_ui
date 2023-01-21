import 'package:flutter/material.dart';
import 'package:travel_booking_app/shared/constants/font/font_constatnts.dart';

import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../shared/text_widgets/buil_text.dart';

class FavoriteScreen extends StatefulWidget {
  static const String routeName = "/favoriteScreen";
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: BuildText(
          text: 'Favorite Screen',
          color: ColorName.colorWhite,
          fontSize: 10.0.large23px(),
          family: FontFamily.poppinsBold,
        ),
      ),
    );
  }
}
