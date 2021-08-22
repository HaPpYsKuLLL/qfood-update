import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:q_food/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        accentColor: Color(0xFF1FC90C)
      ),
      home: SplashScreen(),
    );
  }
}

