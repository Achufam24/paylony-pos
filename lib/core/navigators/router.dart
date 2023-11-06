import 'package:flutter/material.dart';
import 'package:paylony_pos/core/navigators/navigator.dart';
import 'package:paylony_pos/features/airtime/screens/airtimeScreen.dart';
import 'package:paylony_pos/features/auth/pages/login.dart';
import 'package:paylony_pos/features/balanceEnquiry/screens/balanceEnquirry.screen.dart';
import 'package:paylony_pos/features/bank_network/screens/bank_network.screen.dart';
import 'package:paylony_pos/features/billsPayment/screens/billsPaymentScreen.dart';
import 'package:paylony_pos/features/deposit/stl/depositScreen.dart';
import 'package:paylony_pos/features/dispute/screens/raiseDispute.screen.dart';
import 'package:paylony_pos/features/home/screens/account.screen.dart';
import 'package:paylony_pos/features/home/screens/dashbaord.dart';
import 'package:paylony_pos/features/nfc/screens/nfcScreen.dart';
import 'package:paylony_pos/features/onboarding/pages/secondSplash.screen.dart';
import 'package:paylony_pos/features/onboarding/pages/splash.dart';
import 'package:paylony_pos/features/reports/screens/dailyReport.dart';
import 'package:paylony_pos/features/transactions/screens/transactions.screen.dart';
import 'package:paylony_pos/features/transfer/cardTransfer.screen.dart';
import 'package:paylony_pos/features/withdrawal/screens/cardWithdrawal.screen.dart';
import 'package:paylony_pos/features/withdrawal/screens/cashWithdrawal.screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splash:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const SplashScreen(),
      );
    case Routes.secondSplash:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const SplashScreen2(),
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
    case Routes.billPayment:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const BillsPaymentScreen());
    case Routes.balanceEnquiry:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const BalanceEnquiryScreen());
    case Routes.transfer:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const TransferScreen());
    case Routes.account:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const AccountScreen());
    case Routes.dispute:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const RaiseDisputeScreen());
    case Routes.transactions:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const TransactionsScreen());
    case Routes.reort:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const DailyReportScreen());
     case Routes.bankNetwork:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const BankNetworkScreen());
    case Routes.nfc:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const NfcScreen());
      
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
