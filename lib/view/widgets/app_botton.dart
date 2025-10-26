import 'package:flutter/material.dart';

import '../../constant/colors.dart';
class AppBotton extends StatelessWidget {
  String title;
  Color color;
  Color fontcolor;
  double width;
AppBotton({required this.title,required this.color,required this.fontcolor,required this.width});
  @override
  Widget build(BuildContext context) {
    return    Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Center(child: Text(title,style: TextStyle(color: fontcolor,fontSize:17, ),)),
    );
  }
}
