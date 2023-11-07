import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/features/billsPayment/screens/billPin.screen.dart';

class BillConfirmationScreen extends StatefulWidget {
  final String title;
  final String amount;
  final String number;
  final String name;
  const BillConfirmationScreen({super.key, required this.title, required this.amount, required this.number, required this.name});

  @override
  State<BillConfirmationScreen> createState() => _BillConfirmationScreenState();
}

class _BillConfirmationScreenState extends State<BillConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PaylonyAppBarTwo(title: widget.title),
      body: SafeArea(
        child: Column(
          children: [
            Gap(30),
            TextSemiBold(widget.title, color: AppColors.primaryColor,),
            TextSemiBold('N${widget.amount}'),
            Gap(30),
            TextSemiBold(widget.number),
            TextSemiBold(widget.name),
            Gap(25),
            Center(
              child: SizedBox(
                width: 180.w,
                child: BusyButton(title: "Proceed", onTap: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BillPinScreen(amount: widget.amount,)),
                      );
                }),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}