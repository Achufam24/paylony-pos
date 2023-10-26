import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';

class PinSucccessfulScreen extends StatelessWidget {
  const PinSucccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: SvgPicture.asset("assets/images/check.svg")),
            Gap(10),
            TextSemiBold("PIN set Successful!", fontSize: 14, fontWeight: FontWeight.w400, color: const Color(0xff4D4D4D)),
            Gap(10),
            TextSmall("Please kindly secure your PIN privately as the PIN will be used for all transactions.", textAlign: TextAlign.center, fontSize: 10, fontWeight: FontWeight.w300,color: const Color(0xff4D4D4D),)
          ],
        ),
      ),
    );
  }
}