import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';
import 'package:mda/view/widgets/app_botton.dart';
import 'package:mda/view/widgets/team_onbording+widget.dart';

import '../pages/welcomepages/sign_or_log_welcomepage.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int pagenumber;

  const OnboardingPage(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.pagenumber});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal'),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 15,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            pagenumber == 3
                ? TeamScreen()
                : Container(
                    height: 400,
                    width: 400,
                    child: Image.asset(image),
                  ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignOrLogWelcomePage()));
              },
              child: AppBotton(
                title: 'متابعة',
                color: AppColors.primarycolorlightblue,
                fontcolor: Colors.white,
                width: MediaQuery.of(context).size.width - 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'تخطي',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
