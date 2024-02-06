import 'package:cbebrc/components/statement_card.dart';
import 'package:flutter/material.dart';

const billNameStyle = TextStyle(
  fontFamily: "Raleway",
  fontSize: 13,
  letterSpacing: 1.04,
  color: Colors.black87
);

const billDescStyle = TextStyle(
  fontFamily: "Raleway",
  fontSize: 11,
  letterSpacing: 1.02,
  color: Colors.grey
);
class PayBillItem extends StatelessWidget {
  final String billName;
  final String billDesc;
  final IconData billIcon;
  const PayBillItem(this.billName,this.billDesc,this.billIcon,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 4,right: 24,left: 24),
      padding: const EdgeInsets.only(top:4,bottom: 8),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1,-1),
            blurStyle: BlurStyle.outer,
            blurRadius: 2,
          )
        ]
      ),
      child: ListTile(
        leading: Icon(
          billIcon,
          size: 24,
          fill: 0.8,
          color: cbeBrandColor,
        ),
        title: Text(billName,style: billNameStyle,),
        subtitle: Text(billDesc,style: billDescStyle,maxLines: 2,),
        trailing: const Icon(Icons.navigate_next,size: 16,color: cbeBrandColor,),
      ),
    );
  }
}
