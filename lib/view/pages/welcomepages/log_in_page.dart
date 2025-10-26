import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../widgets/app_botton.dart';
import '../../widgets/app_botton_with_icon.dart';
import '../../widgets/app_textfield.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
                'تسجيل دخول',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              AppTextfield(
                text: 'أدخل بريدك الألكتروني ',
              ),
              SizedBox(
                height: 20,
              ),
              AppTextfield(
                text: 'كلمة المرور',
              ),
              SizedBox(
                height: 30,
              ),
              AppBotton(
                title: 'متابعة',
                color: AppColors.primarycolorlightblue,
                fontcolor: Colors.white,
                width: MediaQuery.of(context).size.width - 200,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'هل نسيت كلمة السر؟',
                    style: TextStyle(fontSize: 14),
                  )),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey, // لون الخط
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'أو',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              AppBottonWithIcon(
                title: 'سجل دخولك عن طريق فيسبوك',
                color: AppColors.Secondrycolorlightblue,
                fontcolor: Colors.black,
                width: MediaQuery.of(context).size.width - 100,
                icon: Icon(Icons.facebook,color: Colors.blue,),
              ),
              SizedBox(height: 10,),
              AppBottonWithIcon(
                title: 'سجل دخولك عن طريق غوغل',
                color: AppColors.Secondrycolorlightblue,
                fontcolor: Colors.black,
                width: MediaQuery.of(context).size.width - 100,
                icon:   Image.asset('assets/images/Logo-google-icon-PNG (1).png',width: 20,height: 20,),
              ),
              SizedBox(height: 10,),
              AppBottonWithIcon(
                title: 'سجل دخولك عن طريق آبل',
                color: AppColors.Secondrycolorlightblue,
                fontcolor: Colors.black,
                width: MediaQuery.of(context).size.width - 100,
                icon: Icon(Icons.apple,color: Colors.black,size: 30,),
              ),
              SizedBox(height: 10,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' ليس لديك حساب؟'),
                    SizedBox(height: 5,),
                    TextButton(onPressed: (){}, child: Text('أنشئ حساب'))
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
