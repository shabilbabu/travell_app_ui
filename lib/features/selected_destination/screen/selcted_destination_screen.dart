import 'package:flutter/material.dart';
import 'package:travel_booking_app/gen/assets.gen.dart';
import 'package:travel_booking_app/gen/colors.gen.dart';
import 'package:travel_booking_app/shared/constants/font/font_constatnts.dart';
import 'package:travel_booking_app/shared/constants/string_constants.dart';

import '../../../gen/fonts.gen.dart';
import '../../../shared/constants/font/size_config.dart';
import '../../../shared/text_widgets/buil_text.dart';

class SelectedDestinationScreen extends StatefulWidget {
  static const String routeName = "/selectedDestinationScreen";
  const SelectedDestinationScreen({Key? key}) : super(key: key);

  @override
  State<SelectedDestinationScreen> createState() =>
      _SelectedDestinationScreenState();
}

class _SelectedDestinationScreenState extends State<SelectedDestinationScreen> {
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

//Create Body
  Widget createBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          firstSection(),
          SizedBox(height: height * 2),
          secondSection(),
        ],
      ),
    );
  }

//First Section
  Widget firstSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height * 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.londonBridge.image().image,
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 6),
        child: Column(
          children: [
            SizedBox(height: height * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    height: height * 4,
                    width: width * 8,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: ColorName.colorWhite,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: height * 4,
                  width: width * 8,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.search,
                      color: ColorName.colorWhite,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            BuildText(
              text: StringConstants.destinationText,
              color: ColorName.colorWhite,
              fontSize: 10.0.large25px(),
              family: FontFamily.poppinsSemiBold,
            ),
            SizedBox(height: height * 2),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: ColorName.colorWhite,
                  size: 25,
                ),
                SizedBox(width: width * 3),
                BuildText(
                  text: 'London',
                  color: ColorName.colorWhite,
                  fontSize: 10.0.small14px(),
                  family: FontFamily.poppinsRegular,
                ),
              ],
            ),
            Row(
              children: [
                starIcon(),
                starIcon(),
                starIcon(),
                starIcon(),
                starIcon(),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.save_alt_outlined,
                      color: ColorName.colorWhite,
                    ))
              ],
            ),
            SizedBox(height: height * 3),
          ],
        ),
      ),
    );
  }

//star icon
  Widget starIcon() {
    return const Icon(
      Icons.star,
      color: Colors.amber,
      size: 20,
    );
  }

//Second Section
  Widget secondSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        children: [
          BuildText(
            text: StringConstants.loremIpsumText,
            color: ColorName.colorPrimary,
            fontSize: 10.0.small14px(),
            family: FontFamily.poppinsRegular,
          ),
          SizedBox(height: height * 2),
          rowWidget(Icons.timer, '8AM - 9PM'),
          SizedBox(height: height * 1),
          rowWidget(Icons.date_range, 'Friday - Tuesday'),
          SizedBox(height: height * 1),
          rowWidget(Icons.flight, 'Ticket 2 way'),
          SizedBox(height: height * 2),
          screenButton(),
        ],
      ),
    );
  }

//widget
  Widget rowWidget(IconData icon, String title) {
    return Row(
      children: [
        Icon(
          icon,
          color: ColorName.colorLoginButton,
          size: 30,
        ),
        SizedBox(width: width * 3),
        BuildText(
          text: title,
          color: ColorName.colorPrimary,
          fontSize: 10.0.small14px(),
          family: FontFamily.poppinsmedium,
        ),
      ],
    );
  }

//screen button
  Widget screenButton() {
    return Row(
      children: [
        Container(
          height: height * 6,
          width: width * 30,
          decoration: BoxDecoration(
              border: Border.all(color: ColorName.colorLoginButton, width: 2),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: BuildText(
              text: '₹9,50,00',
              color: ColorName.colorLoginButton,
              fontSize: 10.0.small14px(),
              family: FontFamily.poppinsmedium,
            ),
          ),
        ),
        SizedBox(width: width * 3),
        Expanded(
          child: Container(
            height: height * 6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: ColorName.colorLoginButton,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: BuildText(
                text: 'BOOK',
                color: ColorName.colorWhite,
                fontSize: 10.0.small14px(),
                family: FontFamily.poppinsmedium,
              ),
            ),
          ),
        )
      ],
    );
  }
}
