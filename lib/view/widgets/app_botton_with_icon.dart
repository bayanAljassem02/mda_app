import 'package:flutter/material.dart';

import '../../constant/colors.dart';
class AppBottonWithIcon extends StatelessWidget {
  String title;
  Color color;
  Color fontcolor;
  double width;
 Widget icon;
AppBottonWithIcon({required this.title,required this.color,required this.fontcolor,required this.width,required this.icon});
  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: EdgeInsets.all(10),
      width: width,
      height: 50,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30)
      ),
      
      child: Center(child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          icon,
            SizedBox(width: 5,),
            Text(title,style: TextStyle(color: fontcolor,fontSize:17, ),),

          ],
        ),
      )),
    );
  }
}
