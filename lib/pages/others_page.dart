import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/cwidget/other_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OthersPage extends StatelessWidget {
  List<Map> others = [
    {
      "name" : "Pin reset",
      "icon" : Icons.lock_reset_rounded
    },
    {
      "name" : "Change Pin",
      "icon" : Icons.change_circle_outlined
    },
    {
      "name" : "Biometrics",
      "icon" : Icons.fingerprint
    },
    {
      "name" : "CBEBirr Offline",
      "icon" : Icons.phonelink_setup_outlined
    },
    {
      "name" : "Manage Bill Info",
      "icon" : Icons.receipt_long
    },
    {
      "name" : "Personalize",
      "icon" : Icons.settings_applications
    },
    {
      "name" : "Invite Friends",
      "icon" : Icons.groups_sharp
    },{
    "name" : "FAQ",
      "icon" : Icons.info_outline
    }
  ];

 void _onPressed(){
    print("pressed!");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:  Expanded(
        child: Column(
          children: [
            const Flexible(
                flex: 3,
                child: Column(

            )),
             Flexible(
              flex: 8,
              child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: others.length,
                    itemBuilder: (BuildContext context, int index){
                      return OtherItem(others[index]["name"], others[index]["icon"]);
                    },
                  ),
                )
              ],
            ),
            ),
            Flexible(
                flex: 1,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                    color: cbeBrandColor,
                  onPressed: _onPressed,
                  child: const Text("LOG OUT")
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
