import 'dart:ui';

import 'package:cbebrc/components/statement_card.dart';
import 'package:flutter/material.dart';

class CBEButton extends StatelessWidget {
  const CBEButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width - 60,
      height: 54,
      margin: const EdgeInsets.all(8),
      // decoration: BoxDecoration(
      //   borderRadius: const BorderRadius.all(Radius.circular(4)),
      //   border: Border.all(
      //     color: cbeBrandColor,
      //     style: BorderStyle.solid,
      //     width: 2
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          // const Flexible(
          //     flex:1,
          //     fit: FlexFit.loose,
          //     child: Icon(Icons.account_balance,color: cbeBrandColor,size: 24,)),
          Flexible(
            flex: 8,
            child: Center(
              child: TextField(
                selectionHeightStyle: BoxHeightStyle.tight,
                focusNode: FocusNode(),
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.top,
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    enabled: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(children: [
                        Icon(
                          Icons.account_balance,
                          color: cbeBrandColor,
                          size: 24,
                        ),
                        VerticalDivider(
                          color: cbeBrandColor,
                          indent: 4,
                          endIndent: 4,
                        )
                      ]),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: cbeBrandColor,
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      gapPadding: 8,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: cbeBrandColor,
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      gapPadding: 8,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: cbeBrandColor,
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      gapPadding: 8,
                    ),
                    labelText: "Account Number",
                    labelStyle: TextStyle(color: cbeBrandColor, fontSize: 12)),
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: Icon(
                Icons.lock_reset_rounded,
                color: cbeBrandColor,
                size: 24,
              ))
        ],
      ),
    );
  }
}
