import 'package:flutter/material.dart';

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String title;
  final String image;

  const TeamMemberCard({
    super.key,
    required this.name,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(

          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(image:  AssetImage(image),
              
              )
            ),

          ),
        ),

        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 150,

            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle( fontSize: 12,fontFamily: 'Tajawal'),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12, color: Colors.black54,fontFamily: 'Tajawal'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}