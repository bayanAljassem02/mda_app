import 'package:flutter/material.dart';
import 'package:mda/view/pages/welcomepages/check_auth_password.dart';

import '../../../constant/colors.dart';
import '../../widgets/app_botton.dart';
import '../../widgets/app_textfield.dart';
import '../../widgets/app_textfieldEn.dart';
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                    'assets/images/logo1.png',
                    width: 120,
                    height: 120,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'إعادة تعيين كلمة السر',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20,),
              Text('ادخل كلمة المرور الجديدة،يجب ان تتكون من 8 احراف على الاقل',style: TextStyle(color: Colors.grey),),
              SizedBox(
                height: 15,
              ),
              AppTextfield(
                text: 'ادخل كلمة المرور الجديدة  ',
              ),
              SizedBox(
                height: 20,
              ),
              AppTextfield(
                text: 'اعد ادخال كلمة المرور الجديدة ',
              ),
              SizedBox(
                height: 20,
              ),

              AppBotton(
                title: 'متابعة',
                color: AppColors.primarycolorlightblue,
                fontcolor: Colors.white,
                width: MediaQuery.of(context).size.width - 200,
              ),
              SizedBox(height: 15,),

              Spacer(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('شروط الخدمة',style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                        fontSize: 14
                    ),),Text('و',style: TextStyle(color: Colors.grey),),
                    Text('سياسية الخصوصية',style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                        fontSize: 14
                    ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
