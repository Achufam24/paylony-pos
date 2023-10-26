import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paylony_pos/core/navigators/navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void _navigateToAnotherPage() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, Routes.dashbaord);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _navigateToAnotherPage();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover)
        ),
      ),
    );
  }
}