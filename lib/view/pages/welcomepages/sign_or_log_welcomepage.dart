import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';
import 'package:mda/view/pages/welcomepages/log_in_page.dart';
import 'package:mda/view/pages/welcomepages/sign_up_page.dart';
import 'package:mda/view/widgets/app_botton.dart';

class SignOrLogWelcomePage extends StatelessWidget {
  const SignOrLogWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/images/welcome screen.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'مرحباً بك في MDA',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
                    'منصة طلاب كليات الطب للتحضير المنهجي للأمتحان الوطني ',
                textAlign: TextAlign.center,style: TextStyle(fontSize: 16),)),
            SizedBox(height: 70,),
         GestureDetector(
           onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage())),
             child: AppBotton(title: 'إنشاء حساب', color: AppColors.primarycolorlightblue,fontcolor: Colors.white,width: MediaQuery.of(context).size.width-100,)),
            SizedBox(height: 20,),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())),
                child: AppBotton(title: 'تسجيل دخول', color: AppColors.Secondrycolorlightblue,fontcolor: AppColors.NeutralcolorDarkblue,width: MediaQuery.of(context).size.width-100,))
          ],
        ),
      )),
    );
  }
}
