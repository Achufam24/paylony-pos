import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';
import 'package:paylony_pos/features/nfc/screens/deviceDetails.screen.dart';

class NewDeviceScreen extends StatefulWidget {
  const NewDeviceScreen({super.key});

  @override
  State<NewDeviceScreen> createState() => _NewDeviceScreenState();
}

class _NewDeviceScreenState extends State<NewDeviceScreen> {
  final deviceId = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isValidForm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Map new Device"),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(10),
                     TextSemiBold("Enter Device ID", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                    const Gap(6),
                    TextFormField(
                      controller: deviceId,
                       validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid deviceId';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (deviceId.text.isNotEmpty) {
                          setState(() {
                            isValidForm = true;
                          });
                        }else{
                          setState(() {
                            isValidForm = false;
                          });
                        }
                      },
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
                    Center(child: SizedBox(
                      width: 150.w,
                      child: BusyButton(
                        title: "Continue",
                        disabled: isValidForm ? false: true,
                        textColor: isValidForm ? AppColors.white : AppColors.primaryGrey,
                         onTap:() {
                          if (isValidForm == true) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const DeviceDetailsScreen()),
                              );
                          }
                      },)))
            ],
          ),
        ),
      )),
    );
  }
}