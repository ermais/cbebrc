
import 'package:cbebrc/components/service_card.dart';
import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/main.dart';
import 'package:flutter/material.dart';


class ServicePage extends StatefulWidget {

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  List<Map<String,String>> services = [
    {"name":"Send Money","logo":"images/SendMoney.png"},
    {"name":"Fuel Pay","logo":"images/fuelicon.png"},
    {"name":"Air Time","logo":"images/airtime.png"},
    {"name":"Cash Out","logo":"images/cashout.png"},
    {"name":"Play and Wind","logo":"images/playgame.png"},
    {"name":"Scheduled Pay","logo":"images/schedulepayment.png"},
    {"name":"Money Transfer","logo":"images/bank.png"},
    {"name":"Money Request","logo":"images/merchant.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24,right: 4),
                  child: Image(
                    image: AssetImage("images/cbebirrlogofinal.png"),width: 32,height: 32,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("CBEBirr",style: serviceAppBarTextStyle,),
                    Text("ባሉበት ሁሉ አለ",style: serviceAppBarTextStyle,)
                  ],
                )
              ],
            ),

          ],
        ),
        actions: [
          GestureDetector(
            child: const Icon(Icons.language,color: cbeBrandColor,size: 24,),
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Center(child: StatementCard('images/CBE_SA.png', "251943274629", "Ermias", 12.0, 12.0)),
              ServiceCard(services=services)
            ],
          ),
        ),
      ),
    );
  }
}
