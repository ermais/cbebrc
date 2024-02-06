import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/cwidget/cbe_button.dart';
import 'package:cbebrc/pages/apps_page.dart';
import 'package:flutter/material.dart';


class MoneyTransfer extends StatefulWidget {
  const MoneyTransfer({super.key});

  @override
  State<MoneyTransfer> createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cbeBrandColor,
        centerTitle: true,
        title: const Text("Money Transfer",style: appsTitleStyle,),
        actions:  [
          GestureDetector(
            child: const Icon(Icons.language),
          ),
        ],
      ),
      body: Container(
        child: CBEButton(),
      ),
    );
  }
}
