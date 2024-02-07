import 'dart:ffi';

import 'package:cbebrc/cwidget/cbe_button.dart';
import 'package:flutter/material.dart';

class SendMoneyViaPhone extends StatefulWidget {
  const SendMoneyViaPhone({super.key});

  @override
  State<SendMoneyViaPhone> createState() => _SendMoneyViaPhoneState();
}

class _SendMoneyViaPhoneState extends State<SendMoneyViaPhone> {
  List<Map> buttons = [
    {
      "labelName" : "Receiver Phone",
      "prefixIcon" : Icons.phone_enabled,
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
