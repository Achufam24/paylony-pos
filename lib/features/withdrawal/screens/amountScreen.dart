import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/app_colors.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class AmountWithdrawalScreen extends StatefulWidget {
  const AmountWithdrawalScreen({super.key});

  @override
  State<AmountWithdrawalScreen> createState() => _AmountWithdrawalScreenState();
}

class _AmountWithdrawalScreenState extends State<AmountWithdrawalScreen> {
  bool _isValid = false;
  final _formKey = GlobalKey<FormState>();

  void _navigateToAnotherPage() {
    _dialogBuilder(context);
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pop(context);
        _deviceDialogBuilder(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Card Withdrawal"),
      body: SafeArea(child: SingleChildScrollView(
         padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
         child: Form(
          key: _formKey,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextSemiBold("Enter Amount"),
              Center(
                child: SizedBox(
                  width: 150.w,
                  child: Center(
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          setState(() {
                            _isValid = true;
                          });
                        }else{
                          setState(() {
                            _isValid = false;
                          });
                        }
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please enter amount");
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: textInputDecoration.copyWith(
                        filled: false,
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryGrey, width: 1.0)
                        ),
                        focusedErrorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryRed, width: 1.0)
                        ),
                        errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryRed, width: 1.0)
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryGrey, width: 1.0)
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryGrey, width: 1.0)
                        )
                      ),
                    ),
                  ),
                ),
              ),
              Gap(35),
              SizedBox(
                width: 200.w,
                child: BusyButton(title: "Proceed", disabled:_isValid ? false : true , textColor: _isValid ? AppColors.white: AppColors.primaryGrey, onTap:() {
                  if (_formKey.currentState!.validate()) {
                    _navigateToAnotherPage();
                  }
                },),
              )
            ],
           ),
         ),
      )),
    );
  }

  
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 200.h,
            child: Column(
              children: [
                Image.asset("assets/images/device.png", width: 200.w, height: 160.h,),
                TextSemiBold(
                  'Swipe NFC Device to Detect'
                ),
              ],
            ),
          ),
        );
      }
    );
  }

    Future<void> _deviceDialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Center(
            child: SizedBox(
              height: 200.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextSemiBold("Device Detected"),
                  TextBold("Toby_NFC-001", color: AppColors.primaryColor, fontSize: 16,),
                  BusyButton(title: "Proceed", onTap:() {
                    
                  },)
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}