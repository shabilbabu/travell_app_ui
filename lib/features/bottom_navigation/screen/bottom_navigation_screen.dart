import 'package:flutter/material.dart';
import 'package:travel_booking_app/features/account/screen/account_screen.dart';
import 'package:travel_booking_app/features/favorite/screen/favorite_screen.dart';
import 'package:travel_booking_app/features/home/screen/home_screen.dart';
import 'package:travel_booking_app/features/message/screen/message_screen.dart';
import 'package:travel_booking_app/gen/assets.gen.dart';

import '../../../gen/colors.gen.dart';
import '../../../shared/constants/font/size_config.dart';

class BottomNavigationScreen extends StatefulWidget {
  static const String routeName = "/bottomNavigationScreen";
 const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  //pages
  List pages = [
   const HomeScreen(),
   const FavoriteScreen(),
   const MessageScreen(),
   const AccountScreen()
  ];

  List<Image> bottomIcons = [
    Assets.icons.homeSmile.image(),
    Assets.icons.planeIconWhite.image(),
    Assets.icons.foodIconWhite.image(),
    Assets.icons.accountIcon.image(),
  ];

  double height = 0.0;
  double width = 0.0;

  int selctedIndex = 0;
  int currentIndex = 0;

  void selectedIndexUpdate(int index) {
    setState(() {
      selctedIndex = index;
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: createBody(),
      ),
    );
  }

//Createbody
  Widget createBody(){
    return Stack(
      children: [
        pages[currentIndex],
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: buildBottom(),
          ),
        )
      ],
    );
  }

//Build bottom
  Widget buildBottom() {
    return Material(
      borderRadius: BorderRadius.circular(25),
      color: ColorName.colorLoginButton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          4,
          (index) => GestureDetector(
            onTap: () {
              selectedIndexUpdate(index);
            },
            child: index == currentIndex
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorName.colorWhite.withOpacity(0.3)
                      ),
                      child: Center(
                        child: Image(
                          image: bottomIcons[index].image,
                          width: 22,
                          height: 22,
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Image(
                          image: bottomIcons[index].image,
                          width: 22,
                          height: 22,
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}