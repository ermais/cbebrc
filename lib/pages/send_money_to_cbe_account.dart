import 'dart:ffi';

import 'package:cbebrc/cwidget/cbe_button.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SendMoneyToCBEAccount extends StatefulWidget {
  const SendMoneyToCBEAccount({super.key});

  @override
  State<SendMoneyToCBEAccount> createState() => _SendMoneyToCBEAccountState();
}

class _SendMoneyToCBEAccountState extends State<SendMoneyToCBEAccount> {
  List<Map> buttons = [
    {
      "labelName" : "Receiver Account Number",
      "prefixIcon" : Icons.account_balance,
      "suffixIcon" : Icons.pattern
    },
    {
      "labelName" : "Amount",
      "prefixIcon" : Icons.attach_money,
      "suffixIcon" : null
    }
  ];

  _getButtons(){
    return  buttons.map((e) => CBEButton( e["prefixIcon"], e["suffixIcon"],e["labelName"],));
  }
  _onPressed(){
    print("pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._getButtons(),
        ElevatedButton(onPressed: _onPressed, child: const Text(
          "Send Money"
        ))
      ],
    );
  }
}
