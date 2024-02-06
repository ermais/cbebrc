import 'package:flutter/material.dart';
const appNameStyle = TextStyle(
  fontFamily: "Raleway",
  fontSize: 12,
  fontWeight: FontWeight.w900,
  letterSpacing: 1.02,
    color: Colors.black
);
class AppItem extends StatelessWidget {
  const AppItem(this.appName,this.appIcon,{super.key});
  final String appName;
  final String? appIcon;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double cardWidth = width / 4;
    double cardHeight = cardWidth + 20;
    double iconWidth = cardWidth / 1.3;
    double iconHeight = cardHeight / 1.3;
    return Container(
      margin: const EdgeInsets.all(8),
      height: cardHeight,
      width: cardWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurStyle: BlurStyle.outer,
            offset: Offset(1,2),
            blurRadius: 5,
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (appIcon != null) ?
              Image(
                image: AssetImage(appIcon.toString()),
                height: cardHeight / 1.5,width: cardWidth / 1.5,)
            :  Image(
              image: const AssetImage("images/noimage.png"),
              height: iconHeight,
              width: iconWidth,),
            Text(appName,style: appNameStyle,maxLines: 2,)
          ],
        ),
      ),
    );
  }
}
