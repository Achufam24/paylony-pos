

import 'package:flutter/material.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/core/constants/fonts.dart';

final textInputDecoration = InputDecoration(
  fillColor: AppColors.inputFieldColor,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(width: 1, color: AppColors.white),
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.primaryColor,
      )),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.red,
      )),
  errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
    width: 1,
    color: Colors.red,
  )),
  errorStyle: const TextStyle(
    // height: ,
    color: Colors.redAccent,
  ),
  labelStyle: const TextStyle(
    color: AppColors.background,
  ),
  hintStyle: const TextStyle(
    color: Color(0xffB1B1B2),
    fontFamily: AppFonts.outfit,
    fontSize: 15.0,
  ),
);
