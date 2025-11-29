import 'package:flutter/material.dart';
import 'package:mda/view/pages/welcomepages/reset_password_page.dart';

import '../../../constant/colors.dart';
import '../../widgets/app_botton.dart';
import '../../widgets/app_textfield.dart';
import '../../widgets/app_textfieldEn.dart';
class CheckAuthPassword extends StatelessWidget {
  const CheckAuthPassword({super.key});

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
                'التحقق',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20,),
              Text('أرسلنا رمز مكون من 6 أرقام الى بريدك الالكتروني',style: TextStyle(color: Colors.grey),),
              SizedBox(
                height: 15,
              ),
              AppTextfield(
                text: 'ادخل رمز التحقق ',
              ),
              SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordPage()));
                },
                child: AppBotton(
                  title: 'متابعة',
                  color: AppColors.primarycolorlightblue,
                  fontcolor: Colors.white,
                  width: MediaQuery.of(context).size.width - 200,
                ),
              ),
              SizedBox(height: 15,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' لم تستلم الرمز؟'),
                    SizedBox(height: 5,),
                    TextButton(onPressed: (){}, child: Text('إعادة ارسال')),

                  ],
                ),
              ),Spacer(),
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
