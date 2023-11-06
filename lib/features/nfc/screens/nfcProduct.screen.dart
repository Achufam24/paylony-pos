import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/features/nfc/screens/productDetails.screen.dart';

class NfcProductScreen extends StatelessWidget {
  const NfcProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PaylonyAppBarTwo(title: "NFC", centerTitle: false,),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(15),
            TextSemiBold("Available NFC Device", color: AppColors.primaryGrey, fontSize: 14,),
            Gap(7),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10
              ),
              children: [
                 productCard("assets/images/product.png", "Fitbit Sense - Advanced Health Smartwatch ", "N153,000", context),
                productCard("assets/images/product.png", "Fitbit Sense - Advanced Health Smartwatch ", "N153,000", context),
                productCard("assets/images/product.png", "Fitbit Sense - Advanced Health Smartwatch ", "N153,000", context),
                productCard("assets/images/product.png", "Fitbit Sense - Advanced Health Smartwatch ", "N153,000", context),
                productCard("assets/images/product.png", "Fitbit Sense - Advanced Health Smartwatch ", "N153,000", context),
                productCard("assets/images/product.png", "Fitbit Sense - Advanced Health Smartwatch ", "N153,000", context)
              ],
              )
          ],
        ),
      )
      ),
    );
  }
  Widget productCard(String image, String title, String price, BuildContext context) {
    return TouchableOpacity(
      onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetailsScreen(title: title, image: image, price: price,)),
          );
        },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white
        ),
        child: Column(
          children: [
            Image.asset(image, width: 90.w,),
            Gap(10),
            TextBold(title,fontSize: 10, fontWeight: FontWeight.w800, textAlign: TextAlign.center,),
            Gap(10),
            TextSemiBold('Price:  ${price}', color: AppColors.primaryGrey, fontSize: 12,)
          ],
        ),
      ),
    );
  }
}