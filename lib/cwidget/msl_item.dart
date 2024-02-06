import 'package:cbebrc/components/statement_card.dart';
import 'package:flutter/material.dart';

const mslServiceNameStyle = TextStyle(
  fontFamily: "Raleway",
  fontWeight: FontWeight.w800,
  fontSize: 12,
  color: Colors.black,
  letterSpacing: 1.04
);

const mslServiceDescStyle = TextStyle(
    fontFamily: "Raleway",
    fontWeight: FontWeight.w300,
    fontSize: 10,
    color: Colors.black38,
    letterSpacing: 1.01
);

class MSLItem extends StatelessWidget {
  final String mslServiceName;
  final String mslServiceDesc;
   const MSLItem(this.mslServiceName,this.mslServiceDesc,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 4,left: 16,right: 16),
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Colors.black12,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1,-1),
            blurRadius: 3,
            blurStyle: BlurStyle.outer
          )
        ]
      ),
      child:  ListTile(
        leading: const Icon(
          Icons.account_balance,
          color: cbeBrandColor,
          size: 24,
        ),
        title: Text(mslServiceName,style: mslServiceNameStyle,),
        subtitle: Text(mslServiceDesc,style: mslServiceDescStyle,),
        trailing: const Icon(
          Icons.navigate_next,
          color: cbeBrandColor,
          size: 16,
        ),
      ),
    );
  }
}
