import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/features/billsPayment/transactionSuccess.dart';

class BillPinScreen extends StatefulWidget {
  final String amount;
  const BillPinScreen({super.key, required this.amount});

  @override
  State<BillPinScreen> createState() => _BillPinScreenState();
}

class _BillPinScreenState extends State<BillPinScreen> {
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
                TextSemiBold("Data", fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.primaryColor,),
                const Gap(5),
                TextSemiBold("N${widget.amount}", fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.background,),
                const Gap(25),
                TextSemiBold("Enter your PIN", fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.background,),
                const Gap(10),
                OtpPinField(
                  maxLength: 4,
                  otpPinInputCustom: "*",
                  onSubmit:(text) {
                    
                  },
                  onChange:(text) {
                    if (text.length == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TransactionConfirmationScreen()),
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