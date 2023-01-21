import 'package:travel_booking_app/features/auth/login/screen/login_screen.dart';
import 'package:travel_booking_app/features/auth/signup/screen/signup_screen.dart';
import 'package:travel_booking_app/features/home/screen/home_screen.dart';
import 'package:travel_booking_app/features/selected_destination/screen/selcted_destination_screen.dart';
import 'package:travel_booking_app/features/splash/screen/splash_screen.dart';
import 'package:travel_booking_app/features/welcom/screen/welcome_screen.dart';

class Routes {
  static var routes = {
    SplashScreen.routeName: (ctx) => const SplashScreen(),
    WelcomeScreen.routeName: (ctx) => const WelcomeScreen(),
    LoginScreen.routeName: (ctx) => const LoginScreen(),
    SignupScreen.routeName: (ctx) => const SignupScreen(),
    HomeScreen.routeName: (ctx) => const HomeScreen(),
    SelectedDestinationScreen.routeName: (ctx) => const SelectedDestinationScreen(),
  };
}