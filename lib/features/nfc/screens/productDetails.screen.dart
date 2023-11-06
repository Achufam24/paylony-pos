import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/app.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/features/nfc/screens/productPurchase.screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  String title;
  String image;
  String price;
  ProductDetailsScreen({super.key, required this.title, required this.image, required this.price});

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
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextSemiBold("Product Id:", color: AppColors.primaryGrey, fontSize: 14, fontWeight: FontWeight.w400,),
                TextSemiBold("5023334801", color: AppColors.background, fontSize: 14, fontWeight: FontWeight.w400,),
              ],
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBold("Description:", fontSize: 14, fontWeight: FontWeight.w500,),
                  Gap(15),
                  TextSemiBold("The smart watch is a fitness tracker with a heart rate monitor : the smart fitness belt tracks and records your heart rate, number of steps, calories, distance, workout duration and exercise patterns such as running mode, sit up mode, skipping rope mode,", fontSize: 12, color: AppColors.primaryGrey,),
                  Gap(10),
                  TextSemiBold("Shipping fee: N3,000", color: Color.fromARGB(255, 124, 123, 123), fontSize: 12,),
                  Gap(10),
                  TextSemiBold("Delivery within 7 days: 7 days", color: Color.fromARGB(255, 124, 123, 123), fontSize: 12,)
                ],
              ),
            ),
            Gap(20),
            Center(
              child: Container(
                width: 150.w,
                child: Center(
                  child: BusyButton(title: "Continue", onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PRoductPurchaseScreen(image: image, price: price, title: title)),
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