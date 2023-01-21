import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:travel_booking_app/features/home/store/home_store.dart';
import 'package:travel_booking_app/features/selected_destination/screen/selcted_destination_screen.dart';
import 'package:travel_booking_app/shared/constants/font/font_constatnts.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../shared/constants/font/size_config.dart';
import '../../../shared/constants/string_constants.dart';
import '../../../shared/text_widgets/buil_text.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/homeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Text editing controller
  final TextEditingController searchController = TextEditingController();

  //store
  HomeStore _homeStore = HomeStore();

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

//CreateBody
  Widget createBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 8),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 3),
            titleSection(),
            SizedBox(height: height * 2),
            searchField(),
            SizedBox(height: height * 4),
            iconListVewWidget(),
            SizedBox(height: height * 5),
            textListviewWidget(),
            SizedBox(height: height * 2),
            destinationWidget(),
            SizedBox(height: height * 4),
            offerWidget(),
            SizedBox(height: height * 3),
          ],
        ),
      ),
    );
  }

//Title section
  Widget titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildText(
          text: StringConstants.explore,
          color: ColorName.colorPrimary,
          fontSize: 10.0.large36px(),
          family: FontFamily.poppinsSemiBold,
        ),
        BuildText(
          text: StringConstants.exploreText,
          color: ColorName.colorPrimary,
          fontSize: 10.0.medium15px(),
          family: FontFamily.poppinsRegular,
        ),
      ],
    );
  }

//Search field
  Widget searchField() {
    return BuildLoginTextFieldBorder(
      textWidth: width,
      maxLines: 1,
      containerWidth: width * 80,
      obscureText: true,
      keyBoardType: TextInputType.text,
      controller: searchController,
      colorDecoration: ColorName.colorTextFormField,
      label: StringConstants.search,
      prefixIcon: Assets.icons.searchIcon.image(),
    );
  }

//iconListview widget
  List<Image> iconListWhite = [
    Assets.icons.planeIconWhite.image(),
    Assets.icons.buildingIconWhite.image(),
    Assets.icons.foodIconWhite.image(),
    Assets.icons.busIconWhite.image(),
  ];

  List<Image> iconListBlue = [
    Assets.icons.planeIconBlue.image(),
    Assets.icons.buildingIconBlue.image(),
    Assets.icons.foodIconBlue.image(),
    Assets.icons.buildingIconBlue.image(),
  ];

  Widget iconListVewWidget() {
    return SizedBox(
      height: height * 7,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: width * 8),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Observer(
            builder: (context) {
             return InkWell(
              onTap: () {
                _homeStore.changeIconIndex(index);
              },
              child: _homeStore.iconIndex == index
                  ? Container(
                      width: width * 14,
                      decoration: BoxDecoration(
                        color: ColorName.colorWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, //New
                            blurRadius: 25.0,
                          )
                        ],
                      ),
                      child: Center(
                        child: Image(
                          image: iconListBlue[index].image,
                          height: height * 4,
                          width: width * 8,
                        ),
                      ),
                    )
                  : Container(
                      width: width * 14,
                      decoration: BoxDecoration(
                        color: ColorName.colorLoginButton,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image(
                          image: iconListWhite[index].image,
                          height: height * 4,
                          width: width * 8,
                        ),
                      ),
                    ),
            );
            },
            
          );
        },
      ),
    );
  }

//textLIstview Widget
  List<String> titles = [
    'New',
    'Tours',
    'Asia',
    'Adventure',
    'All',
  ];

  Widget textListviewWidget() {
    return SizedBox(
      height: height * 3,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: width * 8),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index) {
          return Observer(builder: (context) {
            return InkWell(
            onTap: () {
              _homeStore.changeTextIndex(index);
            },
            child: SizedBox(
              child: _homeStore.textIndex == index
                  ? BuildText(
                      text: titles[index],
                      color: ColorName.colorLoginButton,
                      fontSize: 10.0.small14px(),
                      family: FontFamily.poppinsSemiBold,
                    )
                  : BuildText(
                      text: titles[index],
                      color: ColorName.colorPrimary,
                      fontSize: 10.0.small13px(),
                      family: FontFamily.poppinsRegular,
                    ),
            ),
          );
          },);
        },
      ),
    );
  }

//Destination widget
  List<Image> imgList = [
    Assets.images.londonBridge.image(),
    Assets.images.hydeParkLondon.image(),
    Assets.images.keralHouseBoat.image(),
    Assets.images.malidweep.image(),
  ];

  List<String> placeName = [
    'London Bridge',
    'Hyde Park',
    'House Bot',
    'Sea Bath',
  ];

  List<String> countryName = [
    'London',
    'London',
    'Kerala',
    'Maldives',
  ];

  Widget destinationWidget() {
    return SizedBox(
      height: height * 35,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: width * 8),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.of(context)
                .pushNamed(SelectedDestinationScreen.routeName),
            child: Container(
              width: width * 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: imgList[index].image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0),
                    const Spacer(),
                    BuildText(
                      text: placeName[index],
                      color: ColorName.colorWhite,
                      fontSize: 10.0.medium15px(),
                      family: FontFamily.poppinsRegular,
                    ),
                    BuildText(
                      text: countryName[index],
                      color: ColorName.colorWhite,
                      fontSize: 10.0.small13px(),
                      family: FontFamily.poppinsRegular,
                    ),
                    SizedBox(height: height * 1),
                    Row(
                      children: [
                        starIcon(),
                        starIcon(),
                        starIcon(),
                        starIcon(),
                        starIcon(),
                      ],
                    ),
                    SizedBox(height: height * 1.5),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  //star icon
  Widget starIcon() {
    return const Icon(
      Icons.star,
      color: Colors.amber,
      size: 13,
    );
  }

//offer widget

  List<Image> offerImg = [
    Assets.images.offerImgOne.image(),
    Assets.images.offerImgTwo.image(),
    Assets.images.offerImgThree.image(),
  ];

  Widget offerWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildText(
          text: StringConstants.offer,
          color: ColorName.colorPrimary,
          fontSize: 10.0.medium16px(),
          family: FontFamily.poppinsSemiBold,
        ),
        SizedBox(height: height * 1),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(height: height * 2),
          itemCount: offerImg.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: height * 15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: offerImg[index].image,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)
              ),
            );
          },
        ),
      ],
    );
  }
}
