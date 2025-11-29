import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  const HomeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.Secondrycolorlightblue,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(image),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "Tajawal"
              ),
            ),
            const SizedBox(height: 6),
            Directionality(
              
              textDirection: TextDirection.rtl,
              child: Text(
                subtitle,
                maxLines: 2,


                style:  TextStyle(
                  fontSize: 14,
                  color: AppColors.Neutralcolorlightblue,
                  fontFamily: "Tajawal"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}