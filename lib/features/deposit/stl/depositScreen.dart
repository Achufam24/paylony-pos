import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class DepositScreen extends StatelessWidget {
  const DepositScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Deposit"),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSemiBold("Select Dispute type", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
                  enabled: false,
                  decoration: textInputDecoration.copyWith(
                    fillColor: AppColors.white,
                    suffixIcon: IconButton(onPressed:() {
                      
                    }, icon: Icon(Icons.arrow_forward_ios, color: AppColors.primaryGrey.withOpacity(0.8),)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryGrey.withOpacity(0.4)
                      )
                    )
                  ),
                ),
                const Gap(25),
                 TextSemiBold("Account Number", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
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
          ),
        ),
      )),
    );
  }
}