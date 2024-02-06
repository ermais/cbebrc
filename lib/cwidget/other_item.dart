import 'package:cbebrc/components/statement_card.dart';
import 'package:flutter/material.dart';


const otherItemNameStyle = TextStyle(
  color: Colors.black,
  fontFamily: "Raleway",
  fontWeight: FontWeight.w700,
  letterSpacing: 1.04,
  fontSize: 14
);

class OtherItem extends StatelessWidget {
  const OtherItem(this.otherItemName,this.otherItemIcon,{super.key});
  final String otherItemName;
  final IconData otherItemIcon;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 4,left: 8,bottom: 4,right: 4),
      child: ListTile(
      leading: Icon(otherItemIcon,color: cbeBrandColor,size: 24,),
      title:Text(otherItemName,style: otherItemNameStyle,) ,
        trailing: const Icon(Icons.navigate_next,color: cbeBrandColor,size: 16,),
      ),
    );
  }
}
