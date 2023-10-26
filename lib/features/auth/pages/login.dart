import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/features/auth/pages/pin%20successful.screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(40),
                TextBold("Welcome Agent", fontSize: 22, fontWeight: FontWeight.w400,),
                const Gap(5),
                TextSemiBold("Enter tour PIN to Login", fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xff4D4D4D),),
                const Gap(25),
                OtpPinField(
                  maxLength: 4,
                  otpPinInputCustom: "*",
                  onSubmit:(text) {
                    
                  },
                  onChange:(text) {
                    if (text.length == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PinSucccessfulScreen()),
                      );
                    }
                  },
                  fieldHeight: 55.h,
                  fieldWidth: 60.w,
                  otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration,
                   otpPinFieldStyle: const OtpPinFieldStyle(
                defaultFieldBorderColor: AppColors.purpleColor,
                activeFieldBorderColor: AppColors.purpleColor,
                defaultFieldBackgroundColor: Colors.transparent,
                activeFieldBackgroundColor: Colors.transparent,
                fieldBorderWidth: 0.1,

                filledFieldBackgroundColor: Colors.transparent,

                filledFieldBorderColor: AppColors.purpleColor
              ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}