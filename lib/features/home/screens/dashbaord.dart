import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/app_bar.dart';
import 'package:paylony_pos/app/views/widgets/touchables/touchableopacity.dart';
import 'package:paylony_pos/core/constants/app_asset.dart';
import 'package:paylony_pos/core/constants/fonts.dart';
import 'package:paylony_pos/features/home/model/buttonModel.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  List<ButtonModel> actionButtonz = <ButtonModel>[
    ButtonModel(icon: AppAsset.card, text: "Withdrawal", link: "/withdrawal"),
    ButtonModel(icon: AppAsset.wallet, text: "Deposit", link: "/deposit"),
    ButtonModel(icon: AppAsset.phone, text: "Airtime/Data", link: "/airtime"),
    ButtonModel(icon: AppAsset.bill, text: "Bill Payments", link: "/billPayment"),
    ButtonModel(icon: AppAsset.stats, text: "Card Transfer", link: "/transfer"),
    ButtonModel(icon: AppAsset.arrow, text: "Transactions", link: "/transactions"),
    ButtonModel(icon: AppAsset.balance, text: "Balance Inquiry", link: "/balanceEnquiry"),
    ButtonModel(icon: AppAsset.info, text: "Daily Report", link: "/report"),
    ButtonModel(icon: AppAsset.message, text: "Dispute", link: "/dispute"),
    ButtonModel(icon: AppAsset.profile, text: "My Account", link: "/account"),
    ButtonModel(icon: AppAsset.status, text: "Network Status", link: '/bank_network'),
    ButtonModel(icon: AppAsset.rss, text: "NFC", link: "/nfc"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: TextSemiBold("Dashboard"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 
          10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: const BoxDecoration(
                color: AppColors.white
              ),
               child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                        Text(
                                "Hello Agent,",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
             
                                    fontFamily: AppFonts.outfit
                                )
                            ),
                            Gap(4),
                    Text(
                                "Good Evening!",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: AppFonts.outfit
                                )
                            )
                            ],
                        ),
                        
                       Column(
                            children: [
                                        Text(
                                "Agent ID",
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: AppFonts.outfit
                                )
                            ),
                            Gap(5),
                    Text(
                                "09277876290",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: AppFonts.outfit
                                )
                            )
                            ],
                        )
                    ],
                ),
             ),
             const Gap(8),
             Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: const BoxDecoration(
                color: AppColors.white
              ),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextSemiBold("Active accounts", color: AppColors.primaryColor.withOpacity(0.8),),
                  const Gap(5),
                  RichText(
                    text: const TextSpan(
                    text: 'GTB- ',
                    style: TextStyle(
                      fontFamily: AppFonts.outfit,
                      color: AppColors.background
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '0285089203 ', style: TextStyle(fontWeight: FontWeight.bold)),
                       TextSpan(
                          text: '(Agent name)'),
                    ],
                  ),
                     ),
                     const Gap(5),
                    RichText(
                    text: const TextSpan(
                    text: 'Providus Bank- ',
                    style: TextStyle(
                      fontFamily: AppFonts.outfit,
                      color: AppColors.background
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '0285089203 ', style: TextStyle(fontWeight: FontWeight.bold)),
                       TextSpan(
                          text: '(Agent name)'),
                    ],
                  ),
                     ),
                ],
               )
             ),
             const Gap(20),
              SizedBox(
                height: 350.h,
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, 
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 10,
                        ),
                    itemCount: actionButtonz.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return TouchableOpacity(
                        onTap: () {
                          Navigator.pushNamed(context, actionButtonz[index].link);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          // alignment: Alignment.center,
                          decoration: BoxDecoration(
                                                    color: AppColors.white,
                                                    borderRadius: BorderRadius.circular(15)),
                          child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(actionButtonz[index].icon),
                                                    const Gap(3),
                                                    TextSemiBold(actionButtonz[index].text, textAlign: TextAlign.center, color: AppColors.background, fontSize: 10, ),
                                                  ],
                          ),
                        )
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}