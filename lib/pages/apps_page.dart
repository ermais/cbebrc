import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/cwidget/app_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const appsTitleStyle = TextStyle(
  fontFamily: "Raleway",
  fontSize: 16,
  fontWeight: FontWeight.w800,
  letterSpacing: 1.02,
  color: Colors.white
);


class AppsPage extends StatelessWidget {
  List<Map<String,String>> apps = [
    {
      "name" : "Guzo",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "IChereta",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "National ID",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "DStv",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "ETAirLines",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "Beu Delivery",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "School Pay",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "CBE Tickets",
      "icon" : "images/noimage.png",
    },
    {
      "name" : "CBE Donation",
      "icon" : "images/noimage.png",
    }
  ];
  
  void _onPressed(){
    print("pressed");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: cbeBrandColor,
        centerTitle: true,
        surfaceTintColor: Colors.white,
        titleTextStyle: appNameStyle,
        title: const Text(
          "Apps",
          style: appNameStyle,
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoButton(
              onPressed: _onPressed,
              child: const Icon(Icons.search,color: Colors.white,size: 24,))
        ],
      ),
      body: Expanded(
        flex: 1, child:GridView.count(
        crossAxisCount: 3,
      children:List.of(apps.map((e) => AppItem(e["name"]!,e["icon"]))),
      ),

      ),
    );
  }
}
