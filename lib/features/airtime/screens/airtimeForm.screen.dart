import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class SelectAirtime extends StatefulWidget {
  const SelectAirtime({super.key});

  @override
  State<SelectAirtime> createState() => _SelectAirtimeState();
}

class _SelectAirtimeState extends State<SelectAirtime> {
  final _networkController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _networkController.text = "Select Network";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Airtime"),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSemiBold("Network", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                const Gap(6),
                TextFormField(
                  controller: _networkController,
                  // enabled: false,
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
                 TextSemiBold("Phone Number", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
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
                 TextSemiBold("Amount", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
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