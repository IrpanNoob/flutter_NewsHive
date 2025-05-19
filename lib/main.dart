import 'package:flutter/material.dart';
import 'package:newshive/routes/app_routes.dart';
import 'package:newshive/routes/route_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.splash,
      routes: AppRoutes.routes,
    );
  }
}
