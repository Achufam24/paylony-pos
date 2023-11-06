import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/features/nfc/screens/transactionDetails.screen.dart';

class NFCPaymentScreen extends StatefulWidget {
  const NFCPaymentScreen({super.key});

  @override
  State<NFCPaymentScreen> createState() => _NFCPaymentScreenState();
}

class _NFCPaymentScreenState extends State<NFCPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "NFC Order", centerTitle: false,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(40),
                TextBold("Enter Agent Pin", fontSize: 22, fontWeight: FontWeight.w400,),
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
                        MaterialPageRoute(builder: (context) => const NFCTransactionDetails()),
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