import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/app.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Transactions", centerTitle: false,),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBold("All Transactions", fontSize: 11, fontWeight: FontWeight.w400,),
                Row(
                  children: [
                    TextBold("Filter", fontSize: 12),
                    Gap(5),
                    const Icon(Icons.filter_list),
                  ],
                )
              ],
            ),
            const Gap(15),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                border: InputBorder.none,
                hintText: 'Search by transaction ID',
                fillColor: AppColors.white,
                prefixIcon: const Icon(Icons.search)
              ),
            ),
            transactionCard("Deposit", "Aug12, 2022 | 10:45pm", "Sucess", "+₦17,000.00"),
            transactionCard("Deposit", "Aug12, 2022 | 10:45pm", "Sucess", "+₦17,000.00"),
            transactionCard("Withdrawal", "Aug12, 2022 | 10:45pm", "Sucess", "-₦10,000.00"),
            transactionCard("Deposit", "Aug12, 2022 | 10:45pm", "Sucess", "+₦17,000.00")
          ],
        ),
      )),
    );
  }

  Widget transactionCard(String name, String date, String status, String amount){
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: const BoxDecoration(
        color: AppColors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSemiBold(name, fontSize: 14, fontWeight: FontWeight.w400, color: name == 'Deposit'?  AppColors.primaryColor: AppColors.primaryRed,),
              TextSemiBold(date, fontSize: 12, color: AppColors.darkPearl,)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextSemiBold(amount, fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.background,),
              TextSemiBold(status, fontSize: 12, color: AppColors.primaryGreen,)
            ],
          ),
        ],
      ),
    );
  }
}