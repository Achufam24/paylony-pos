import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';

class TracmanTile extends StatelessWidget {
  const TracmanTile({
    required this.title,
    required this.leading,
    required this.trailing,
    required this.subtitle,
    this.height = 80,
    required this.onTap,
    this.disabled = false,
    this.color = AppColors.background,
    this.borderRadius,
    Key? key,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final Widget trailing;
  final Widget leading;
  final int height;
  final Color? color;
  final VoidCallback onTap;
  final bool disabled;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: leading),
            Gap(screenHeight(context) * 0.008),
            Expanded(
              flex: 5,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: AppColors.borderColor))),
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextSemiBold(
                          title,
                          fontSize: 17,
                        ),
                        Gap(screenHeight(context) * 0.004),
                        TextSmall(
                          subtitle,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    trailing
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
