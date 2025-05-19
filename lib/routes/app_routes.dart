import 'package:flutter/material.dart';
import 'package:newshive/routes/route_names.dart';
import 'package:newshive/views/widgets/home_screen.dart';
import 'package:newshive/views/widgets/introduction_screen.dart';
import 'package:newshive/views/widgets/login_screen.dart';
import 'package:newshive/views/widgets/register_screen.dart';

import '../views/widgets/splash_screen.dart';

class AppRoutes{
  static final Map<String, WidgetBuilder> routes = {
    RouteNames.splash : (context) => const SplashScreen(),
    RouteNames.introduction : (context) => const IntroductionPage(),
    RouteNames.home: (context) => const HomeScreen(),
    RouteNames.login: (context) => const LoginScreen(),
    RouteNames.register: (context) => const RegisterScreen(),
  };
}