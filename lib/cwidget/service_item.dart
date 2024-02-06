import 'package:flutter/material.dart';


const serviceItemTextStyle = TextStyle(
  color: Colors.black87,
  fontFamily: "Raleway",
  fontSize: 12,
  letterSpacing: 1.015,
);
class ServiceItem extends StatelessWidget {
  const ServiceItem(
      this.serviceName,
      this.serviceItemLogo, {super.key}
      );
  final String serviceName;
  final String serviceItemLogo;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return      Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(8),
      height: 86,
      width: width / 5,
      foregroundDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5),),
        boxShadow: [BoxShadow(
          color: Colors.black38,
          offset: Offset(2, -5),
          blurRadius: 4,
          blurStyle: BlurStyle.outer

        )],
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(
            color:Colors.white54,
            blurRadius: 2,
          ),
          ]

      ),
      child:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 32,
              height: 32,
              image: AssetImage(serviceItemLogo),
            ),
            Text(serviceName,maxLines: 2,textAlign: TextAlign.center,
              style: serviceItemTextStyle,
            ),
          ],
        ),
      ),
    );
  }


}
