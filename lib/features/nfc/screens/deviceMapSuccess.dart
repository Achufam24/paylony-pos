import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/app.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';

class DeviceMapSuccessScreen extends StatelessWidget {
  const DeviceMapSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SvgPicture.asset("assets/images/check.svg")),
              Gap(15),
              TextSemiBold("Device mapping successsful", fontSize: 15,),
              Gap(20),
              TouchableOpacity(
                onTap: () {
                  Navigator.pop(context);
                },
                child: TextSemiBold("Close", color: AppColors.primaryColor,))
            ],
          ),
        ),
      ),
    );
  }
}