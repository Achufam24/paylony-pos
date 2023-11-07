import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/app_colors.dart';
import 'package:paylony_pos/app/styles/fonts.dart';
import 'package:paylony_pos/app/views/widgets/app_bar_two.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';
import 'package:paylony_pos/features/billsPayment/screens/billConfirmationScreen.dart';

class ElectricityProvidersScreen extends StatefulWidget {
  const ElectricityProvidersScreen({super.key});

  @override
  State<ElectricityProvidersScreen> createState() => _ElectricityProvidersScreenState();
}

class _ElectricityProvidersScreenState extends State<ElectricityProvidersScreen> {

  final List<String> genderItems = [
  'Abuja Eletric',
  'Ikeja Electricty',
  'Ibadan Electricity',
  'Abuja Electricity'
];

final List<String> meterType = [
  'Prepaid',
  'Postpaid'
];

String? selectedValue;

String? selectedMeterType;

final _formKey = GlobalKey<FormState>();

final amountController = TextEditingController();
final customer = TextEditingController();
final number = TextEditingController();

@override
  void initState() {
    selectedValue = genderItems.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "Electricity"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(15),
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
                visible: selectedValue!.isEmpty ? false: true,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   TextSemiBold("Meter Type", color: AppColors.primaryGrey, fontSize: 14,),
              const Gap(4),
               DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: textInputDecoration.copyWith(
                  fillColor: AppColors.white,
                  hintText: 'Prepaid',
                  border: const OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey.withOpacity(0.5))),
                ),
                items: meterType
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
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
                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  selectedMeterType = value.toString();
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
              TextSemiBold("Meter Number", color: AppColors.primaryGrey, fontSize: 14,),
              const Gap(4),
              TextFormField(
                controller: number,
                validator: (value) {
                  if (value == null) {
                    return 'Please select meter no.';
                  }
                  return null;
                },
                decoration: textInputDecoration.copyWith(
                  fillColor: AppColors.white,
                  border: const OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey.withOpacity(0.5))),
                ),
              ),
              Gap(15),
              TextSemiBold("Customer Name", color: AppColors.primaryGrey, fontSize: 14,),
              const Gap(4),
              TextFormField(
                controller: customer,
                validator: (value) {
                  if (value == null) {
                    return 'Please select customer name.';
                  }
                  return null;
                },
                decoration: textInputDecoration.copyWith(
                  fillColor: AppColors.white,
                  border: const OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.0, color: AppColors.primaryGrey.withOpacity(0.5))),
                ),
              ),
              Gap(15),
              TextSemiBold("Amount", color: AppColors.primaryGrey, fontSize: 14,),
              const Gap(4),
              TextFormField(
                controller: amountController,
                validator: (value) {
                  if (value == null) {
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
                    MaterialPageRoute(builder: (context) => BillConfirmationScreen(title: "Electricity", amount: amountController.text, number: number.text, name: customer.text)),
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