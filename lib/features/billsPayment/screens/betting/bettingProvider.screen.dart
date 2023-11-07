import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';
import 'package:paylony_pos/features/billsPayment/screens/billConfirmationScreen.dart';

class BettingProvider extends StatefulWidget {
  const BettingProvider({super.key});

  @override
  State<BettingProvider> createState() => _BettingProviderState();
}

class _BettingProviderState extends State<BettingProvider> {

   final List<String> genderItems = [
  'SportyBet',
  'NairaBet',
  'Bet9ja',
  'Wazobia Bet'
];

final List<String> meterType = [
  'Prepaid',
  'Postpaid'
];

String? selectedValue;

String? selectedMeterType;

bool showName = false;

final _formKey = GlobalKey<FormState>();

final amountController = TextEditingController();
final customer = TextEditingController();
final number = TextEditingController();

bool showForm = false;


@override
  void initState() {
    customer.text = "Testimony Oluwatoby";
    // selectedValue = genderItems.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Betting"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(35),
              TextSemiBold("Disco", color: AppColors.primaryGrey, fontSize: 14,),
              const Gap(4),
               DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: textInputDecoration.copyWith(
                  fillColor: AppColors.white,
                  hintText: 'Select Biller',
                  border: const OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey.withOpacity(0.5))),
                ),
                items: genderItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Row(
                            children: [
                              Icon(Icons.account_balance),
                              Gap(6),
                              Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select disco.';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (value!.isNotEmpty) {
                    setState(() {
                      showForm = true;
                    });
                  }else{
                    setState(() {
                      showForm = false;
                    });
                  }
                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black45,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
              Gap(15),
              Visibility(
                visible: showForm,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
              TextSemiBold("UserId", color: AppColors.primaryGrey, fontSize: 14,),
              const Gap(4),
              TextFormField(
                controller: number,
                validator: (value) {
                  if (value == null) {
                    return 'Please input userId.';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    setState(() {
                      showName = true;
                    });
                  }else{
                    setState(() {
                      showName = false;
                    });
                  }
                },
                decoration: textInputDecoration.copyWith(
                  fillColor: AppColors.white,
                  border: const OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey.withOpacity(0.5))),
                ),
              ),
              Gap(15),
              showName ?  TextFormField(
                controller: customer,
                enabled: false,
                decoration: textInputDecoration.copyWith(
                  fillColor: AppColors.white,
                  border: InputBorder.none
                ),
              ) : Text(""),
              Gap(15),
              TextSemiBold("Amount", color: AppColors.primaryGrey, fontSize: 14,),
              const Gap(4),
              TextFormField(
                controller: amountController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please select amount.';
                  }
                  return null;
                },
                decoration: textInputDecoration.copyWith(
                  fillColor: AppColors.white,
                  border: const OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey.withOpacity(0.5))),
                ),
              ),
              Gap(25),
              Center(
                child: SizedBox(
                  width: 180.w,
                  child: BusyButton(title: "Continue", onTap:() {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BillConfirmationScreen(title: "Betting", amount: amountController.text, number: '${selectedValue} -  ${number.text}', name: customer.text)),
                  );
                    }
                    
                  },),
                ),
              ),
              Gap(25)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}