import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';

class DailyReportScreen extends StatefulWidget {
  const DailyReportScreen({super.key});

  @override
  State<DailyReportScreen> createState() => _DailyReportScreenState();
}

class _DailyReportScreenState extends State<DailyReportScreen> {

   List<DateTime?> _dialogCalendarPickerValue = [
    DateTime(2021, 8, 10),
    DateTime(2021, 8, 13),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "End of day Report", centerTitle: false, actions: [
        Icon(Icons.more_vert)
      ],),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            TextBold("Transactions Summary", fontSize: 13, fontWeight: FontWeight.w400,),
            const Gap(15),
            TouchableOpacity(
              onTap: () async{
                await showCalendarDatePicker2Dialog(
                  context: context,
                  config: CalendarDatePicker2WithActionButtonsConfig(
                    selectedDayHighlightColor: AppColors.primaryColor
                  ),
                  dialogSize: const Size(325, 400),
                  // value: _dialogCalendarPickerValue,
                  borderRadius: BorderRadius.circular(15),
                );
              },
              child: TextFormField(
                enabled: false,
                decoration: textInputDecoration.copyWith(
                  border: InputBorder.none,
                  hintText: 'Today',
                  fillColor: AppColors.white,
                  prefixIcon: const Icon(Icons.date_range)
                ),
              ),
            ),
            transactionCard("Total Transactions Count:", "40","+₦217,000.00", "Value:"),
           transactionCard("Total Transactions Count:", "38","+₦85,000.00", "Value:"),
           transactionCard("Total Transactions Count:", "35","+₦216,000.00", "Value:"),
           transactionCard("Total Transactions Count:", "2","+₦2,000.00", "Value:"),
           Gap(15),
           TextBold("Transaction types", fontSize: 13, fontWeight: FontWeight.w400,),
           Gap(10),
           transactionCard("Withdrawal", "Count:2","+₦217,000.00", "Value:"),
           transactionCard("Deposit", "Count:2","+₦217,000.00", "Value:"),
           transactionCard("Received Transfer", "Count:2","+₦217,000.00", "Value:"),
           transactionCard("Bill Payment", "Count:2","+₦217,000.00", "Value:"),
           transactionCard("Airtime & Data", "Count:2","+₦217,000.00", "Value:"),
          ],
        ),
      )),
    );
  }

    Widget transactionCard(String name, String date, String status, String amount){
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: const BoxDecoration(
        color: AppColors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSemiBold(name, fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.darkPearl),
              TextSemiBold(date, fontSize: 12, color: AppColors.background)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextSemiBold(amount, fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.darkPearl),
              TextSemiBold(status, fontSize: 12, color: AppColors.background,)
            ],
          ),
        ],
      ),
    );
  }
}