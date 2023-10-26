import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:paylony_pos/app/theme/light.dart';
import 'package:paylony_pos/core/navigators/navigator.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaylonyPos extends StatelessWidget {
  const PaylonyPos({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        themeMode: ThemeMode.light,
        initialRoute: Routes.splash,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
