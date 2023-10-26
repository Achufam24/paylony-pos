import 'package:flutter/material.dart';
import 'package:paylony_pos/app/styles/styles.dart';

class BusyButton extends StatelessWidget {
  const BusyButton({
    required this.title,
    required this.onTap,
    this.disabled = false,
    this.isLoading = false,
    this.color = AppColors.primaryColor,
    this.borderRadius,
    this.textColor,
    Key? key,
  }) : super(key: key);
  final String title;
  final Color? color;
  final VoidCallback onTap;
  final bool disabled;
  final bool isLoading;
  final Color? textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          color: disabled ? const Color(0xffE4E4E4) : color,
        ),
        child: Center(
          child: isLoading ? CircularProgressIndicator(color: AppColors.white,) : Text(
            title,
            style: TextStyle(
                color: textColor ?? AppColors.white, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
