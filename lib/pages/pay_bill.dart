
import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/cwidget/pay_bill_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const payBillHeaderTextStyle = TextStyle(
  fontFamily: "Raleway",fontSize: 16,letterSpacing: 1.08,
  color: cbeBrandColor
);

class PayBill extends StatelessWidget {


  final List<Map> bills = [
    {
     "name" :  "Pay Bill",
      "desc" : " To pay your school, entertainment and governmental utilities ",
      "icon" : Icons.account_balance_wallet_rounded
    },
    {
      "name" : "Traffic Penalty",
      "desc" : "To pay your traffic penalty please proceed",
      "icon" : Icons.traffic_outlined
    },
    {
      "name" : "Electricity",
      "desc" : "To settle your electric bill utility use this section",
      "icon" : Icons.power
    },
    {
      "name" : "Water supply",
      "desc" : "to close your monthly household water consumption please  use this section",
      "icon" : Icons.water_drop
    }
  ];
   PayBill({super.key});
   void _onPressed(){
     print("pressed");
   }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return   Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage("images/CBEBirrLogo.png",),
            width: 24,
            height: 24,
          ),
        ),
        actions: [
          CupertinoButton(
              child: Icon(Icons.language,color: cbeBrandColor,size: 24,),
              onPressed: _onPressed)
        ],
      ),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(

        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32,bottom: 32,right: 16,left: 16),
                  child: Text("Pay Bill",style : payBillHeaderTextStyle,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child:
                Expanded(child: ListView.builder(
                  itemCount: bills.length,
                    itemBuilder: (BuildContext context, int index){
                  return PayBillItem(
                      bills[index]["name"],
                      bills[index]["desc"],
                      bills[index]["icon"]
                  );
                }),
                ),
            )
          ],
        ),
      ),
    );
  }
}
