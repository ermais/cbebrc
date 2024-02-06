
import 'package:cbebrc/pages/apps_page.dart';
import 'package:cbebrc/pages/home_scaffold.dart';
import 'package:cbebrc/pages/money_transfer.dart';
import 'package:cbebrc/pages/msl_service_page.dart';
import 'package:cbebrc/pages/others_page.dart';
import 'package:cbebrc/pages/pay_bill.dart';
import 'package:cbebrc/pages/service_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(routes: [
  ShellRoute(
    navigatorKey: _shellNavigatorKey,
      routes: [
        GoRoute(
      path: "/",
          builder: (context, state)=> const MoneyTransfer()
    ),GoRoute(
            path: "/pay",
            builder: (context,state)=>PayBill()),
        GoRoute(path: "/msl",builder: (context,state)=>MSLServicePage()),
        GoRoute(path: "/apps",builder: (context,state)=>AppsPage()),
        GoRoute(path: "/others",builder: (context,state)=>OthersPage())
  ],
  builder: (context,state,child)=>HomeScaffold(child: child)
  )
]);