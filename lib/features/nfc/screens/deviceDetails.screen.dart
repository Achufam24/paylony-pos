import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/features/nfc/screens/deviceMapSuccess.dart';

class DeviceDetailsScreen extends StatefulWidget {
  const DeviceDetailsScreen({super.key});

  @override
  State<DeviceDetailsScreen> createState() => _DeviceDetailsScreenState();
}

class _DeviceDetailsScreenState extends State<DeviceDetailsScreen> {

  void _navigateToAnotherPage() {
    Timer(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DeviceMapSuccessScreen())
        );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "NFC", centerTitle: false,),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            TextSemiBold("Device Details", color: AppColors.primaryGrey, fontSize: 14, fontWeight: FontWeight.w400,),
            const Gap(10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image.asset("assets/images/product.png", width: 60.w,),
                const Gap(10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextSemiBold("Fitbit Sense - Advanced Health Smartwatch ", fontSize: 14, fontWeight: FontWeight.w700,),
                      TextSemiBold('Merchant Name:  Oluwatobi', fontSize: 15, color: AppColors.primaryGrey,),
                      Row(

                        children: [
                          TextSemiBold("Product Id:", color: AppColors.primaryGrey, fontSize: 14, fontWeight: FontWeight.w400,),
                          const Gap(5),
                          TextSemiBold("5023334801", color: AppColors.primaryGrey, fontSize: 14, fontWeight: FontWeight.w400,),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
            const Gap(30),
            Center(
              child: Container(
                width: 150.w,
                child: Center(
                  child: BusyButton(title: "Scan now", onTap:() async{
                    await _dialogBuilder(context);
                    _navigateToAnotherPage();
                  },),
                ),
              ),
            )
          ],
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
                  'Move Device closer to terminal'
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}