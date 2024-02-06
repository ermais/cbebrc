import 'package:cbebrc/components/statement_card.dart';
import 'package:cbebrc/cwidget/msl_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const welcomeMslStyle = TextStyle(
  fontFamily: "Raleway",
  fontSize: 14,
  color: cbeBrandColor,
  fontWeight: FontWeight.w900,
  letterSpacing: 1.04
);

class MSLServicePage extends StatelessWidget {
  final List<Map> mslServices = [
    {
      "name" : "Micro Saving",
      "desc" : "Save money and earn 7% interest "
    },
    {
      "name" : "Micro Loan",
      "desc" : "Let's assist to process a micro loan easily"
    },
    {
      "name" : "Fixed Saving",
      "desc" : "Earn more interest (8%+) by saving using CBEBirr"
    }
  ];
   MSLServicePage({super.key});
void _onPressed(){
  print("pressed");
}
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
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
              onPressed: _onPressed,
              child: const Icon(Icons.language,color: cbeBrandColor,size: 24,))
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 32,bottom: 16),
            child: Column(
              children: [
                Text("Welcome to ",style: welcomeMslStyle,),
                Text("Micro Saving and Loan", style: welcomeMslStyle,)
              ],
            ),
          ),
          Container(
            color: cbeBrandColor,
            height: 72,
            width: width,
            child: const Center(
              child: Image(
                image: AssetImage("images/CBE_SA.png"),
                height: 48,
                width: 48,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: cbeBrandColor,width: 2,style: BorderStyle.solid,)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.account_balance,
                          color: cbeBrandColor,
                          size: 24,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Ordinary",style: TextStyle(
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                        letterSpacing: 1.03,
                        color: Colors.black87
                      ),),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.card_giftcard,
                        color: cbeBrandColor,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Overdraft",style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          letterSpacing: 1.03,
                          color: Colors.black12
                      ),),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: mslServices.length,
                padding: const EdgeInsets.only(top: 24),
                itemBuilder: (BuildContext context, int index){
              return MSLItem(mslServices[index]["name"], mslServices[index]["desc"]);
            }),
          )
        ],
      ),
    );
  }
}
