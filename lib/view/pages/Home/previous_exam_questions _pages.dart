import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';
import 'package:mda/view/widgets/question_file_card.dart';

class PreviousExamQuestionsscreen extends StatelessWidget {
  const PreviousExamQuestionsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Text(
                  'الأسئلة المتوقعة',
                  style: TextStyle(fontSize: 23, color: Colors.black),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Transform.scale(
                scaleX: 1,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )),
          ),
        ],
        elevation: 1,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child:ListView.builder(
          itemCount: 5,
            itemBuilder: (context,index){
          return  QuestionFileCard( title:"الأسئلة المتوقعة في الامتحان الوطني لعام 2025 ",
           name:"تشريح",
           info:"عدد الأسئلة 125 ",
          creatorname:"إعداد الدكتورة جنى سكيف",
          posttime:"1/1/2025",
          updatetime:"آخر تحديث من بضعة أيام",
              description:"تركّز هذه المجموعة على أكثر المواضيع التي يتوقع ورودها في الامتحان القادم مما يقدم فكرة عن منهجية الاختيار أو نطاق التوقعات."
          );
        })
      ),
    );
  }
}
