import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';

class SearchResults extends StatelessWidget {
  final List results;

  const SearchResults({required this.results});

  @override
  Widget build(BuildContext context) {
    if (results.isEmpty) {
      return SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height-200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/notfoundresults.gif',
                  width: MediaQuery.of(context).size.width - 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'لم يتم العثور على نتائج مطابقة حاول استخدام كلمات مختلفة.',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Tajawal',
                            color: Colors.grey),
                      )),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          results[index],
                          style: TextStyle(
                              color: AppColors.NeutralcolorDarkblue,
                              fontSize: 14,
                              fontFamily: 'Tajawal'),
                        ),
                        Text(
                          'إعداد الدكتورة جنى سكيف',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Tajawal',
                              color: AppColors.NeutralcolorDarkgrey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'تشريح',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: AppColors.NeutralcolorDarkgrey),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 4,
                                  width: 4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColors.Neutralcolorlightgrey),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'عدد الأسئلة 125',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: AppColors.NeutralcolorDarkgrey),
                                ),
                              ],
                            ),
                           SizedBox(width: MediaQuery.of(context).size.width/6,),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors. Secondrycolorlightblue),
                              child:  Center(
                                child: Text(
                                  'جديد',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Tajawal',
                                      color: AppColors.NeutralcolorDarkgrey),
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.arrow_back_ios_new_outlined,size: 20,color: AppColors.Secondrycolorlightblue,),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 0.8,
              color: Colors.grey.shade300,
              indent: 16,
              endIndent: 16,
            )
          ],
        );
      },
    );
  }
}
