import 'package:flutter_animated_loadingkit/flutter_animated_loadingkit.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final double? height;
  final Color? color;
  const Loader({super.key,  this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedLoadingFaceSurge(
      expandedWidth: height ?? 70,
      borderColor: Colors.black,
      speed: const Duration(milliseconds: 600),
    );
  }
}