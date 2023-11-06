import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/app_colors.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';

class BankNetworkScreen extends StatelessWidget {
  const BankNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Bank Network", centerTitle: false,),
      body: SafeArea(child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const Gap(10),
          TextBold("Real-Time Transfer Success Rate", fontSize: 13, fontWeight: FontWeight.w500,),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextSmall("Refresh to update the real time traffic", fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.primaryGrey,),
              const TouchableOpacity(child: Icon(Icons.restart_alt, color: AppColors.primaryColor,)),
            ],
          ),
          const Gap(5),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            decoration: BoxDecoration(color: const Color(0xffAE8AFF), borderRadius: BorderRadius.circular(5)),
            child: TextSemiBold("Bank with stable Networks", color: AppColors.white, fontWeight: FontWeight.w500,),
          ),
          Gap(15),
          networkCard("Access Bank", "100"),
          networkCard("GtBank", "100"),
          networkCard("Opay Bank", "100"),
          networkCard("Palmpay", "800"),
          networkCard("Palmpay", "100"),
          networkCard("Zenith Bank", "100"),
          networkCard("Fidelity Bank", "95"),
        ],
      )),
    );
  }

  Widget networkCard(String bank, String status) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: AppColors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.account_balance_outlined, color: AppColors.primaryGrey,),
              const Gap(8),
              TextSemiBold(bank, fontSize: 14, fontWeight: FontWeight.w400,)
            ],
          ),
          TextSemiBold('${status}%', fontSize: 14, fontWeight: FontWeight.w500,)
        ],
      ),
    );
  }
}