import 'package:flutter/material.dart';
class AppTextfield extends StatelessWidget {
  String text;
  AppTextfield({required this.text});
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: Colors.grey,
              width: 1
          )
      ),
      child:Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
            hintStyle: TextStyle(fontSize: 14)
          ),
        ),
      ) ,);
  }
}
