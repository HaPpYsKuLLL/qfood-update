import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:q_food/screens/home_page.dart';
import 'package:q_food/screens/register_page.dart';
import 'package:q_food/screens/splash/splash_screen.dart';
import 'package:q_food/screens/login_page.dart';
import 'package:q_food/screens/landing_page.dart';
import 'package:q_food/tensorflow.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginPage.routeName: (context) => LoginPage(),
  RegisterPage.routeName: (context) => RegisterPage(),
  HomePage.routeName: (context) => HomePage(),
  LandingPage.routeName: (context) => LandingPage(),
  Tensorflow.routeName: (context) => Tensorflow(),
};
