import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';
import 'package:mda/view/widgets/homecard.dart';

import '../../../data/models/homecardmodel.dart';

class HomePage extends StatelessWidget {
  List<HomeCardModel> cards = [
    HomeCardModel(
      title: "أسئلة الدورات",
      subtitle: "أسئلة مأخوذة من الدورات السابقة للتدريب والمراجعة",

      onTap: () {},
      image: 'assets/images/Course Questions.png'
    ),
    HomeCardModel(
      title: "أسئلة متوقعة",
      subtitle: "أهم الأسئلة التي يرجح ظهورها في الامتحان الوطني",
  image: 'assets/images/Expected Questions.png',
      onTap: () {},
    ),
    HomeCardModel(
      title: "تواصل مع مختص",
      subtitle: "وجه أسئلتك واحصل على إجابة من مختص",
  image: 'assets/images/Contact a Specialist.png',
      onTap: () {},
    ),
    HomeCardModel(
      title: "جلسات تحضيرية",
      subtitle: "حصص مراجعة مناسبة لمساعدتك على الاستعداد",
  image: 'assets/images/Prep Sessions.png',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Icon(
          Icons.info_outline,
          color: Colors.grey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              childAspectRatio:1.1,
              children: cards.map((card) => HomeCard(
                  title: card.title,
                  subtitle: card.subtitle,
                 image: card.image,
                  onTap: card.onTap)).toList(),
            ),
            SizedBox(height: 1,),
            HomeCard(title:'اختبارات محاكاة للامتحان', subtitle: 'اختبار كامل يحاكي الامتحان الوطني في الوقت والعدد ونوع الأسئلة.',  image: 'assets/images/Mock Exams.png', onTap: (){})
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
