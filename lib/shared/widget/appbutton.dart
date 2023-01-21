import 'package:flutter/material.dart';
import '../../gen/fonts.gen.dart';
import '../text_widgets/buil_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.buttonWidth,
    required this.title,
    required this.color,
    required this.titleColor,
    this.onTap,
  }) : super(key: key);

  final double buttonWidth;
  final String title;
  final Color color;
  final Function()? onTap;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        padding: const EdgeInsets.all(12),
        alignment: Alignment.center,
        width: buttonWidth,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: BuildText(
          text: title,
          color: titleColor,
          family: FontFamily.poppinsSemiBold,
        ),
      ),
    );
  }
}
