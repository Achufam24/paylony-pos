import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isBalanceVisible = false;

  final agentName = TextEditingController();
  final terminalId = TextEditingController();
  final branch = TextEditingController();
  final merchantNAme = TextEditingController();
  final merchantEmail = TextEditingController();


  @override
  void initState() {
    super.initState();
    agentName.text = 'Oluwatoby';
    terminalId.text = '3002957287463';
    branch.text = 'Oluyole';
    merchantNAme.text = 'Testimony Oluwatoby';
    merchantEmail.text = 'testimonyadio8@gmail.com';
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "My Account", centerTitle: false,),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TextSemiBold("Available Balance", color: AppColors.darkPearl, fontSize: 12, fontWeight: FontWeight.w300,),
                        const Gap(5),
                        isBalanceVisible ? TouchableOpacity(
                          onTap: () {
                            setState(() {
                              isBalanceVisible = false;
                            });
                          },
                          child: const Icon(Icons.visibility, color: AppColors.darkPearl,)) : TouchableOpacity(
                             onTap: () {
                            setState(() {
                              isBalanceVisible = true;
                            });
                          },
                            child: const Icon(Icons.visibility_off, color: AppColors.darkPearl,))
                      ],
                    ),
                    TextBold("₦10,000.00", fontSize: 16, fontWeight: FontWeight.w400,),
                  ],
                ),
                Column(
                  children: [
                    TextSemiBold("Level", color: AppColors.darkPearl, fontSize: 12, fontWeight: FontWeight.w300,),
                    TextBold("Rising Star", fontSize: 14, fontWeight: FontWeight.w400,),
                  ],
                )
              ]),
            ),
            const Gap(10),
                 TextSemiBold("Agent Name", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
                  controller: agentName,
                  decoration: textInputDecoration.copyWith(
                    fillColor: AppColors.white,
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryGrey.withOpacity(0.4)
                      )
                    )
                  ),
                ),
                const Gap(10),
                 TextSemiBold("Terminal ID", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
                  controller: terminalId,
                  decoration: textInputDecoration.copyWith(
                    fillColor: AppColors.white,
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryGrey.withOpacity(0.4)
                      )
                    )
                  ),
                ),
                const Gap(10),
                 TextSemiBold("Branch", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
                  controller: branch,
                  decoration: textInputDecoration.copyWith(
                    fillColor: AppColors.white,
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryGrey.withOpacity(0.4)
                      )
                    )
                  ),
                ),
                const Gap(10),
                 TextSemiBold("Merchant Name", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
                  controller: merchantNAme,
                  decoration: textInputDecoration.copyWith(
                    fillColor: AppColors.white,
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryGrey.withOpacity(0.4)
                      )
                    )
                  ),
                ),

                const Gap(10),
                 TextSemiBold("Merchant Email", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
                  controller: merchantEmail,
                  decoration: textInputDecoration.copyWith(
                    fillColor: AppColors.white,
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryGrey.withOpacity(0.4)
                      )
                    )
                  ),
                ),
          ],
        ),
      )),
    );
  }
}