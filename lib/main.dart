import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menucritic/Screens/AboutUsPage.dart';
import 'package:menucritic/Screens/dashboard.dart';
import 'package:menucritic/Screens/homepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          displayLarge: GoogleFonts.nunito(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //home: AboutUsPage(),
      home: AnimatedSplashScreen(splash: SvgPicture.asset('assets/images/MenuCriticSplashLogo.svg',),duration: 2000,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Color(0xFF1C4E80),
          nextScreen: MyHomepage()),
    );
  }
}
