import 'package:flutter/material.dart';
import 'package:travel_booking_app/features/splash/screen/splash_screen.dart';
import 'package:travel_booking_app/routes/routes.dart';
import 'package:travel_booking_app/shared/services/navigation_services.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'travel app',
      routes: Routes.routes,
      navigatorKey: NavigationService.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}