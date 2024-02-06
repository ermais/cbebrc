
import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/cwidget/service_item.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final List<Map<String,String>> services;
  const ServiceCard(this.services, {super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
        flex: 1,
        child:  Container(
      padding: const EdgeInsets.all(16),
      width: width / 1.0,
      margin: const EdgeInsets.only(top: 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(2, 5),
            blurRadius: 2,
          )
        ]
      )
      ,


          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quick Access",
                      style:
                      TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12,
                          color: cbeBrandColor),
                    ),
                    Row(
                      children: [
                        Text("Transaction Detail ",style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12,
                          letterSpacing: 1.02,
                          color: cbeBrandColor
                        ),),
                        Icon(Icons.arrow_right,color: cbeBrandColor,size: 14,)
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: GridView.count(
                crossAxisCount: 4,children:
              List.of(services.map((e) => ServiceItem(e["name"]!, e["logo"]!)))
                ,),)
            ],
          )
        )
    );
  }
}
