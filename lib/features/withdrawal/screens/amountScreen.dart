import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paylony_pos/app/styles/app_colors.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class AmountWithdrawalScreen extends StatelessWidget {
  const AmountWithdrawalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Card Withdrawal"),
      body: SafeArea(child: SingleChildScrollView(
         padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
         child: Column(
          children: [
            TextFormField(
              decoration: textInputDecoration.copyWith(
                filled: false,
                border: UnderlineInputBorder(
                  
                  borderSide: BorderSide(color: AppColors.primaryGrey, width: 5.0)
                )
              ),
            )
          ],
         ),
      )),
    );
  }
}