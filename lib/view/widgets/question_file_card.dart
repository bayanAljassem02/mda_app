import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class QuestionFileCard extends StatelessWidget {
  String title;
  String name;
  String info;
  String creatorname;
  String posttime;
  String updatetime;
  String description;

  QuestionFileCard(
      {required this.title,
      required this.name,
      required this.creatorname,
      required this.description,
      required this.info,
      required this.posttime,
      required this.updatetime});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.Neutralcolorlightblueshade4,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.share,
                color: AppColors.Neutralcolorlightblue,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.Neutralcolorlightblue),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        info,
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            color: AppColors.Neutralcolorlightblue),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            updatetime,
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              color: AppColors.NeutralcolorDarkgrey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.asset('assets/images/hour.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            posttime,
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              color: AppColors.NeutralcolorDarkgrey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.asset('assets/images/calender.png'),
                        ],
                      )
                    ],
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/Expected Questions.png',
                      width: 75,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: 32,
            width: 183,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  creatorname,
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      color: AppColors.Neutralcolorlightblue),
                ),
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/janaiskef.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.Neutralcolorlightblue),
          ),
          SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              description,
              style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 14,
                  color: AppColors.Neutralcolorlightblue),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(top: 5),
                height: 32,
                width: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.primarycolorlightblue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.file_download_outlined,
                      color: Colors.white,
                      size: 19,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'تنزيــل',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                height: 32,
                width: 106,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: AppColors.primarycolorlightblue)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: AppColors.primarycolorlightblue,
                      size: 19,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'مشاهدة',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primarycolorlightblue),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
