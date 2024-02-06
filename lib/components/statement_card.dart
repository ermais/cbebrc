

import 'package:flutter/material.dart';

const goldenColor = Color.fromARGB(255,252, 208, 183);
const cbeBrandColorDark = Color.fromARGB(255, 35, 3, 35);
const cbeBrandColor = Color.fromARGB(255, 141, 40, 142);
const balanceTextStyle = TextStyle(
  color: Color.fromARGB(255, 233, 209, 233),
  fontSize: 11,
  fontFamily: "Raleway",
  letterSpacing: 1.021
);

const goldenTextStyle = TextStyle(
  color: goldenColor,
  fontFamily: "Raleway",
  letterSpacing: 1.019,
  fontSize: 12,
);
class StatementCard extends StatelessWidget {

   const StatementCard(
     this.logo,
     this.phoneNumber,
     this.name,
     this.balance,
     this.reward, {super.key}
   );

   final String logo;
   final String phoneNumber;
   final String name;
   final double balance;
   final double reward;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
       Container(
         padding: EdgeInsets.only(bottom: 8),
        alignment: Alignment.topCenter,
        height: height / 3.8,
        width: width / 1.05,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(1, -2),
              blurRadius: 2,
              blurStyle: BlurStyle.outer
            )
          ],
          gradient: LinearGradient(
            begin: Alignment(0.0,-0.75),
            end: Alignment(0.0,0.9),
            colors: [
             cbeBrandColorDark,
              cbeBrandColor
            ]
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
         child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 64),
                    child: Image(
                        image: AssetImage(logo),
                      height: 48,
                      width: 48,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 64),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("የኢትዮጵያ ንግድ ባንክ",
                          style: goldenTextStyle,
                        ),
                        Text("Commercial Bank of Ethiopia",
                        style: goldenTextStyle,
                        )
                      ],

                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.phone_in_talk_sharp,
                          size: 16,
                          color: goldenColor,
                        ),
                      ),
                      Center(
                          child: Text(phoneNumber,
                          style: goldenTextStyle,
                          )),
                    ],
                  ),
                  Text(name,
                  style: goldenTextStyle,
                  )
                ],
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      children: [
                        const Text("Balance",
                          style: balanceTextStyle,
                        ),
                        Row(
                            children: [
                               Text("ETB $balance",
                               style: balanceTextStyle,
                               ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.remove_red_eye_rounded,
                                  size: 16,
                                  color: Color.fromARGB(255, 233, 209, 203),
                                ),
                              )
                            ],
                         )
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Reward",
                          style: balanceTextStyle,
                        ),
                        Row(
                          children: [
                            Text("ETB $reward",
                              style: balanceTextStyle,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Icon(
                                Icons.remove_red_eye_rounded,
                                size: 15,
                                  color: Color.fromARGB(255, 233, 209, 233),
                              ),
                            )

                          ],
                        )
                      ],
                    )
                  ],
                  ),
                )
            ],
                ),
        ),
    );
  }

}



