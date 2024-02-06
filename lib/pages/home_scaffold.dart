import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key, required this.child});
  final Widget child;

  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    void onTap(int index){
      switch(index){
        case 0:
          GoRouter.of(context).go("/");
          break;
        case 1:
          GoRouter.of(context).go("/pay");
          break;
        case 2:
          GoRouter.of(context).go("/msl");
          break;
        case 3:
          GoRouter.of(context).go("/apps");
          break;
        case 4:
          GoRouter.of(context).go("/others");
          break;

      }
      setState(() {
        _currentIndex = index;
      });
    }
    return Scaffold(
      body: SafeArea(
        child: widget.child,
      ),
      bottomNavigationBar : CurvedNavigationBar(
      // backgroundColor: const Color.fromARGB(255,141, 40, 142),
      backgroundColor: Colors.white60,
      color: const Color.fromARGB(255, 141, 40, 142),
      height: 54.0,
      animationCurve: Curves.easeInOutSine,
      items:const <Widget> [
        Icon(
            Icons.home_outlined,
            size: 24,
            color:  Colors.white

        ),
        Icon(
            Icons.payment,
            size: 24,
            color:  Colors.white
        ),
        Icon(
            Icons.account_balance_outlined,
            size: 24,
            color:  Colors.white
        ),
        Icon(
            Icons.account_tree_outlined,
            size: 24,
            color:  Colors.white

        ),
        Icon(
            Icons.ac_unit_outlined,
            size: 24,
            color:  Colors.white

        ),
      ],
      index: _currentIndex,
      onTap: (value){
        onTap(value);
      },
    ),
    );
  }
}
