import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/features/nfc/screens/newDevice.screen.dart';
import 'package:paylony_pos/features/nfc/screens/nfcProduct.screen.dart';

class NfcScreen extends StatelessWidget {
  const NfcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "NFC", centerTitle: false,),
      body: SafeArea(child: Padding(padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Column(
        children: [
          Gap(10),
           TouchableOpacity(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NfcProductScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextSemiBold("Order for NFC", fontSize: 14, fontWeight: FontWeight.w400,),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
            Gap(10),
             TouchableOpacity(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewDeviceScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextSemiBold("Map new device", fontSize: 14, fontWeight: FontWeight.w400,),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
            Gap(10),
        ],
      ),
      ),
      
      ),
    );
  }
}