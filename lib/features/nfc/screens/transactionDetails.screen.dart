import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/app.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';

class NFCTransactionDetails extends StatelessWidget {
  const NFCTransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Transaction Details"),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Gap(20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(5.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextBold("₦156,000.00",fontSize: 16, fontWeight: FontWeight.w500,),
                  const Gap(6),
                  TextSemiBold("Approved", color: AppColors.primaryGreen, fontSize: 12,)
                ],
              ),
            ),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextSemiBold("Date", fontSize: 13, color: AppColors.primaryGrey,),
               TextSemiBold("12-09-2023", fontSize: 13, color: const Color.fromARGB(255, 82, 81, 81),)
              ],
            ),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextSemiBold("Time", fontSize: 13, color: AppColors.primaryGrey,),
               TextSemiBold("12:25pm", fontSize: 13, color: const Color.fromARGB(255, 82, 81, 81),)
              ],
            ),
            Gap(25),
            Row(
              children: [
                Expanded(
                  child: BusyButton(title: "Raise Dispute", textColor: AppColors.primaryColor, color: Color(0xffF8F5FF), onTap:() {
                    
                  },),
                ),
                Gap(8),
                Expanded(
                  child: BusyButton(title: "Print Receipt", onTap:() {
                    
                  },),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}