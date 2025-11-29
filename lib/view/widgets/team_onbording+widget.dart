import 'package:flutter/material.dart';

import 'team_member_card.dart';

class TeamScreen extends StatelessWidget {
  TeamScreen({super.key});

  final List<TeamMemberCard> leftColumn = [
    TeamMemberCard(
      name: "د. نادين شجاع",
      title: "المشرفة الأكاديمية العامة",
      image: "assets/images/nadinSabagh.png",
    ),
    TeamMemberCard(
      name: "د. هالة منصور",
      title: "منسقة المواد النظرية",
      image: "assets/images/hala.png",
    ),
    TeamMemberCard(
      name: "م.مهندسة رنا يوسف ",
      title: "تصميم تجربة المستخدم ui/ux",
      image: "assets/images/rana.png",
    ),
  ];

  final List<TeamMemberCard> rightColumn = [
    TeamMemberCard(
      name: "م. فراس شحادة",
      title: "إدارة المشروع والفنية التقنية",
      image: "assets/images/firas.png",
    ),
    TeamMemberCard(
      name: "د. لينا حمص",
      title: "إعداد الأسئلة السريرية",
      image: "assets/images/lina.png",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Row(


      children: [
        // العمود اليمين
        Column(
          children: [
           SizedBox(height: 10,),
            Column(
              children: rightColumn
                  .map((member) => Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TeamMemberCard(
                          name: member.name,
                          title: member.title,
                          image: member.image,
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),

        const SizedBox(width: 15),

        // العمود اليسار
        Column(
          children: leftColumn
              .map((member) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TeamMemberCard(
                      name: member.name,
                      title: member.title,
                      image: member.image,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
