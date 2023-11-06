import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/widgets.dart';
import 'package:paylony_pos/core/constants/textfield.dart';
import 'package:paylony_pos/features/nfc/screens/productSummary.Screen.dart';

class PRoductPurchaseScreen extends StatefulWidget {
  String title;
  String image;
  String price;
  PRoductPurchaseScreen({super.key, required this.image, required this.price, required this.title});

  @override
  State<PRoductPurchaseScreen> createState() => _PRoductPurchaseScreenState();
}

class _PRoductPurchaseScreenState extends State<PRoductPurchaseScreen> {
  final name = TextEditingController();
  final address = TextEditingController();
  final postal_code = TextEditingController();
  final state = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isValidForm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaylonyAppBarTwo(title: "NFC", centerTitle: false,),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10),
              TextSemiBold("Product Details", color: AppColors.primaryGrey, fontSize: 14, fontWeight: FontWeight.w400,),
              Gap(10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Image.asset(widget.image, width: 60.w,),
                  Gap(10),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextSemiBold(widget.title, fontSize: 14, fontWeight: FontWeight.w700,),
                        TextSemiBold('Price:  ${widget.price}', fontSize: 15, color: AppColors.primaryGrey,),
                      ],
                    ),
                  )
                ]),
              ),
              const Gap(10),
                   TextSemiBold("Name", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                  const Gap(6),
                  TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isValidForm = true;
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
              Gap(10),
                   TextSemiBold("Address", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                  const Gap(6),
                  TextFormField(
                    controller: address,
                    onChanged: (value) {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isValidForm = true;
                        });
                        
                      }
                    },
                     validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter address';
                      }
                      return null;
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
              Gap(10),
                   TextSemiBold("Postal Code", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                  const Gap(6),
                  TextFormField(
                    controller: postal_code,
                     validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your postal code';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isValidForm = true;
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
              Gap(10),
                   TextSemiBold("State", fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryGrey,),
                  const Gap(6),
                  TextFormField(
                    controller: state,
                     validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter state';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isValidForm = true;
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
                  Gap(6),
                TextSemiBold("Shipping Fee: N3,000"),
              
              Gap(20),
              Center(
                child: Container(
                  width: 150.w,
                  child: Center(
                    child: BusyButton(title: "Continue", disabled: isValidForm ? false: true, onTap:() {
                      if (_formKey.currentState!.validate()) {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductSummaryScreen(image: widget.image, price: widget.price, title: widget.title, name: name.text, state: state.text,address: address.text, postal: postal_code.text,)),
                      );
                      }
                    },),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}