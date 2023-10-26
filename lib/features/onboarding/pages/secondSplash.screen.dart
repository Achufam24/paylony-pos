import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paylony_pos/core/navigators/navigator.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

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
        child: Center(
          child: Image.asset("assets/images/Paylony logo 1.png", width: 200.w,),
        ),
        // decoration: const BoxDecoration(
        //   image: DecorationImage(image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover)
        // ),
      ),
    );
  }
}