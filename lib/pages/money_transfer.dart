import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/cwidget/cbe_button.dart';
import 'package:cbebrc/pages/apps_page.dart';
import 'package:cbebrc/pages/send_money_to_cbe_account.dart';
import 'package:cbebrc/pages/send_money_via_phone.dart';
import 'package:flutter/material.dart';


class MoneyTransfer extends StatefulWidget {
  const MoneyTransfer({super.key});

  @override
  State<MoneyTransfer> createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: "To Phone",
              icon: Icon(Icons.person_pin_outlined,color: cbeBrandColor,size: 24,),
            ),
            Tab(
              text: "To CBE Account",
              icon: Icon(Icons.account_balance,color: cbeBrandColor,size: 24,),
            ),
          ]),
          backgroundColor: cbeBrandColor,
          centerTitle: true,
          title: const Text("Money Transfer",style: appsTitleStyle,),
          actions:  [
            GestureDetector(
              child: const Icon(Icons.language),
            ),
          ],
        ),
        body: const TabBarView(children: [
          SendMoneyViaPhone(),
          SendMoneyToCBEAccount()
        ]),
      ),
    );
  }
}
