import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/pages/apps_page.dart';
import 'package:cbebrc/pages/msl_service_page.dart';
import 'package:cbebrc/pages/others_page.dart';
import 'package:cbebrc/pages/pay_bill.dart';
import 'package:cbebrc/pages/service_page.dart';
import 'package:cbebrc/utils/routes.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

const serviceAppBarTextStyle = TextStyle(
  fontFamily: "Raleway",
  fontSize: 12,
  letterSpacing: 1.05,
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

const bgColor = Color.fromARGB(255, 218, 112, 218);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    ServicePage(),
    PayBill(),
    MSLServicePage(),
    AppsPage(),
    OthersPage(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          // backgroundColor: const Color.fromARGB(255,141, 40, 142),
          backgroundColor: Colors.white60,
          color: const Color.fromARGB(255, 141, 40, 142),
          height: 54.0,
          animationCurve: Curves.easeInOutSine,
          items: const <Widget>[
            Icon(Icons.home_outlined, size: 24, color: Colors.white),
            Icon(Icons.payment, size: 24, color: Colors.white),
            Icon(Icons.account_balance_outlined, size: 24, color: Colors.white),
            Icon(Icons.account_tree_outlined, size: 24, color: Colors.white),
            Icon(Icons.ac_unit_outlined, size: 24, color: Colors.white),
          ],
          index: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
        ),
        body: pages[_currentIndex]);
  }
}

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
