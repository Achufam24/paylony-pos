import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:paylony_pos/app/styles/styles.dart';

class NoSearchResultsWidget extends StatelessWidget {
  const NoSearchResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/images/flash-circle.svg"),
        const Gap(5),
        TextBold("No search result", fontSize: 15, fontWeight: FontWeight.w800,)
      ],
    );
  }
}