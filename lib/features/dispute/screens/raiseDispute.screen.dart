import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class RaiseDisputeScreen extends StatelessWidget {
  const RaiseDisputeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Raise Dispute", centerTitle: false,),
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
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryGrey.withOpacity(0.4)
                      )
                    )
                  ),
                ),
                const Gap(25),
                 TextSemiBold("Enter Amount", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
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
                const Gap(25),
                 TextSemiBold("Transaction Id", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
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
                const Gap(25),
                 TextSemiBold("Description", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
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
                Gap(30),
                Center(
                  child: Container(
                    width: 150.w,
                    child: BusyButton(title: "Raise Dispute", onTap:() {
                      
                    },),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}