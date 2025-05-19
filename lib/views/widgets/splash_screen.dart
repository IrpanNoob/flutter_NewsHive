import 'package:flutter/material.dart';
import 'package:newshive/routes/route_names.dart';
import 'package:newshive/views/utils/helper.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  Future<void> _startLoading() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, RouteNames.introduction);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(image: AssetImage('/images/logo.png')),
                    ),
                    vsLarge,
                  ],
                ),
              ),
            ),
            CircularProgressIndicator(),
            vsLarge,
          ],
        ),
      ),
    );
  }
}
