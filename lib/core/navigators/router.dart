import 'package:flutter/material.dart';
import 'package:paylony_pos/core/navigators/navigator.dart';
import 'package:paylony_pos/features/airtime/screens/airtimeScreen.dart';
import 'package:paylony_pos/features/auth/pages/login.dart';
import 'package:paylony_pos/features/deposit/stl/depositScreen.dart';
import 'package:paylony_pos/features/home/screens/dashbaord.dart';
import 'package:paylony_pos/features/onboarding/pages/splash.dart';
import 'package:paylony_pos/features/withdrawal/screens/cardWithdrawal.screen.dart';
import 'package:paylony_pos/features/withdrawal/screens/cashWithdrawal.screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splash:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const SplashScreen(),
      );
    case Routes.login:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const LoginScreen());
    case Routes.dashbaord:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const DashboardScreen());
     case Routes.withdrawal:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const CashWithdrawalScreen());
    case Routes.cardWithdrawal:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const CardWithdrawal());
    case Routes.depositScreen:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const DepositScreen());
    case Routes.airtime:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const AirtimeScreen());
    // case Routes.authenticate:
    //   return _getPageRoute(
    //       routeName: settings.name, viewToShow: Authenticate());
    // case Routes.wrapper:
    //   return _getPageRoute(
    //       routeName: settings.name, viewToShow: const Wrapper());

    default:
      return MaterialPageRoute<void>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
            ),
          ),
        ),
      );
  }
}

// ignore: strict_raw_type
PageRoute _getPageRoute({String? routeName, Widget? viewToShow}) {
  return MaterialPageRoute<void>(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow!,
  );
}