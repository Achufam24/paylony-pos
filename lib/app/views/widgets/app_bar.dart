import 'package:flutter/material.dart';
import 'package:paylony_pos/app/styles/styles.dart';

class PaylonyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PaylonyAppBar({
    Key? key,
    required this.title,
    this.actions = const [],
    this.centerTitle = false,
  }) : super(key: key);

  final String title;
  final List<Widget> actions;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: TextBold(
        title,
        fontSize: 20,
        color: AppColors.textPrimaryColor,
        fontWeight: FontWeight.w700,
      ),
      actions: actions,
      elevation: 0.5,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
