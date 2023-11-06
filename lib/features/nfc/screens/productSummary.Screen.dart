import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';
import 'package:paylony_pos/features/nfc/screens/paymentPin.screen.dart';

class ProductSummaryScreen extends StatelessWidget {
  String title;
  String image;
  String price;
  String name;
  String address;
  String  postal;
  String state;
  ProductSummaryScreen({super.key, required this.image, required this.price, required this.title, required this.address, required this.name, required this.state, required this.postal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "NFC", centerTitle: false,),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            TextSemiBold("Product Details", color: AppColors.primaryGrey, fontSize: 14, fontWeight: FontWeight.w400,),
            Gap(10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image.asset(image, width: 60.w,),
                Gap(10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextSemiBold(title, fontSize: 14, fontWeight: FontWeight.w700,),
                      TextSemiBold('Price:  ${price}', fontSize: 15, color: AppColors.primaryGrey,),
                    ],
                  ),
                )
              ]),
            ), 
            TextSemiBold(name, fontSize: 14,fontWeight: FontWeight.w500,),
            Gap(6),
            TextSemiBold('${postal}, ${address}, $state', fontSize: 14,fontWeight: FontWeight.w500,),
            Gap(6),
            TextSemiBold(name, fontSize: 14,fontWeight: FontWeight.w500,),
            Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextSemiBold("Shipping Fee: N3,000", fontSize: 14,),
                TextSemiBold("Total: N156,000", fontSize: 14, color: AppColors.primaryGrey,),
              ],
            ),
            Gap(25),
            Center(
              child: Container(
                width: 150.w,
                child: Center(
                  child: BusyButton(title: "Continue", onTap:() {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NFCPaymentScreen())
                    );
                  },),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}