import 'package:flutter/material.dart';
import 'package:paylony_pos/app/styles/styles.dart';
import 'package:paylony_pos/app/views/widgets/app_back_button.dart';
import 'package:paylony_pos/app/views/widgets/touchables/touchableopacity.dart';

class PaylonyAppBarTwo extends StatelessWidget implements PreferredSizeWidget {
  const PaylonyAppBarTwo({
    Key? key,
    required this.title,
    this.actions = const [],
    this.centerTitle = true,
  }) : super(key: key);

  final String title;
  final List<Widget> actions;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // backgroundColor: AppColors.,
      leading: TouchableOpacity(
        onTap: () => Navigator.pop(context),
        child: const AppBackButton(),
      ),
      title: TextBold(
        title,
        fontSize: 18,
        color: AppColors.primaryGrey,
      ),
      actions: actions,
      elevation: 0.0,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
