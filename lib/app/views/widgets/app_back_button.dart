import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/core/constants/app_asset.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Center(
        child: Icon(Icons.arrow_circle_left_outlined, color: AppColors.primaryGrey,)
      ),
    );
  }
}
