import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';

class TransactionConfirmationScreen extends StatelessWidget {
  const TransactionConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/check.svg"),
              Gap(20),
              TextSemiBold("Transaction Approved", fontSize: 17,)
            ],
          ),
        )),
      ),
    );
  }
}