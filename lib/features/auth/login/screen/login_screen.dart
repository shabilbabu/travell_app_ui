import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_booking_app/features/auth/signup/screen/signup_screen.dart';
import 'package:travel_booking_app/gen/assets.gen.dart';
import 'package:travel_booking_app/gen/colors.gen.dart';
import 'package:travel_booking_app/shared/constants/font/font_constatnts.dart';

import '../../../../gen/fonts.gen.dart';
import '../../../../shared/constants/font/size_config.dart';
import '../../../../shared/constants/string_constants.dart';
import '../../../../shared/text_widgets/buil_text.dart';
import '../../../../shared/widget/appbutton.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/loginScreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Text Editing controller
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //height and width
  double height = 0.0;
  double width = 0.0;

  //Country code
  final String countryCode = '+91';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorName.colorWhite,
        body: createBody(),
      ),
    );
  }

//Create body
  Widget createBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 10),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: height * 5),
            appLogo(),
            SizedBox(height: height * 3),
            titleSection(),
            SizedBox(height: height * 3),
            textFieldSection(),
            SizedBox(height: height * 3),
            loginButton(),
            SizedBox(height: height * 3),
            orWidget(),
            SizedBox(height: height * 2),
            socialIconWidget(),
            SizedBox(height: height * 3),
            dontAccount(),
          ],
        ),
      ),
    );
  }

//Applogo
  Widget appLogo() {
    return Center(
      child: Image(
        image: Assets.images.appLogoBlue.image().image,
        height: height * 25,
        width: width * 50,
      ),
    );
  }

//titleSection
  Widget titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildText(
          text: StringConstants.welcome,
          color: ColorName.colorPrimary,
          fontSize: 10.0.large25px(),
          family: FontFamily.poppinsSemiBold,
        ),
        BuildText(
          text: StringConstants.loginText,
          color: ColorName.colorPrimary,
          fontSize: 10.0.small12px(),
          family: FontFamily.poppinsRegular,
        ),
      ],
    );
  }

//TextfielSection
  Widget textFieldSection() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          decoration: const BoxDecoration(
              color: ColorName.colorTextFormField,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.icons.phoneIcon.image(),
              SizedBox(width: width * 1.5),
              BuildText(
                text: countryCode,
                family: FontFamily.poppinsRegular,
                fontSize: 10.0.small12px(),
                color: Colors.black,
              ),
              SizedBox(width: width * 1.5),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: VerticalDivider(
                  color: ColorName.colorTextFormFieldText,
                  thickness: 0.5,
                ),
              ),
              Expanded(
                child: BuildTextFieldNoBorder(
                  textWidth: width,
                  maxLines: 1,
                  containerWidth: width * 55,
                  keyBoardType: TextInputType.phone,
                  textInputFormatter: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  controller: phoneController,
                  colorDecoration: ColorName.colorTextFormField,
                  label: StringConstants.phone,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 1.5),
        BuildLoginTextFieldBorder(
          textWidth: width,
          maxLines: 1,
          containerWidth: width * 80,
          obscureText: true,
          keyBoardType: TextInputType.text,
          controller: passwordController,
          colorDecoration: ColorName.colorTextFormField,
          label: StringConstants.password,
          prefixIcon: Assets.icons.passwordIcon.image(),
        ),
        SizedBox(height: height * 2),
        Row(
          children: const [
            SizedBox(width: 5),
            Spacer(),
            Text(
              'Forgot Password?',
              style: TextStyle(
                color: ColorName.colorLoginButton,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }

//Login button
  Widget loginButton() {
    return AppButton(
      buttonWidth: MediaQuery.of(context).size.width,
      title: StringConstants.login,
      color: ColorName.colorLoginButton,
      titleColor: ColorName.colorWhite,
    );
  }

//orWidget
  Widget orWidget() {
    return Row(
      children: [
        SizedBox(width: width * 8),
        Expanded(
          child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: ColorName.colorPrimary,
          ),
        ),
        SizedBox(width: width * 5),
        BuildText(
          text: StringConstants.or,
          color: ColorName.colorPrimary,
          fontSize: 10.0.small14px(),
          family: FontFamily.poppinsRegular,
        ),
        SizedBox(width: width * 5),
        Expanded(
          child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: ColorName.colorPrimary,
          ),
        ),
        SizedBox(width: width * 8),
      ],
    );
  }

//social icon widget
  Widget socialIconWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: height * 5.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.svg.googleIcon.svg(
                  height: height * 3.7,
                  width: width * 3.7,
                ),
                SizedBox(width: width * 3),
                BuildText(
                  text: StringConstants.google,
                  color: ColorName.colorPrimary,
                  family: FontFamily.poppinsRegular,
                  fontSize: 10.0.small14px(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: width * 4),
        Expanded(
          child: Container(
            height: height * 5.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.svg.facebookIcon.svg(
                  height: height * 4,
                  width: width * 4,
                ),
                SizedBox(width: width * 2),
                BuildText(
                  text: StringConstants.facebook,
                  color: ColorName.colorPrimary,
                  family: FontFamily.poppinsRegular,
                  fontSize: 10.0.small14px(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

//don't have an account
  Widget dontAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildText(
          text: StringConstants.dontHaveAccount,
          color: ColorName.colorPrimary,
          family: FontFamily.poppinsRegular,
          fontSize: 10.0.small12px(),
        ),
        SizedBox(width: width * 2),
        InkWell(
          onTap: () => Navigator.of(context).pushNamed(
            SignupScreen.routeName,
          ),
          child: BuildText(
            text: StringConstants.register,
            color: ColorName.colorPrimary,
            family: FontFamily.poppinsSemiBold,
            fontSize: 10.0.small12px(),
          ),
        ),
      ],
    );
  }
}
