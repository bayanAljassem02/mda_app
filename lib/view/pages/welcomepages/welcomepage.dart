import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';
import 'package:mda/view/widgets/onborading12_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Secondrycolorlightblue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SlideEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.white,
                    dotHeight: 6,
                    dotWidth: (MediaQuery.of(context).size.width - 50) / 3,
                    spacing: 6),
              ),
            ),
            Expanded(
                child: PageView(
              controller: _controller,
              children: [
                OnboardingPage(
                    title: 'رحلة نجاحنا بدأت مع طلاب متلك',
                    description:
                        'اكثر من 10,000 طالب استخدموا تطبيقنا للتحضير للامتحان الوطني'
                        '،وحققوا معدلات نجاح تجاوزت 85% بفضل الأسئلة المتوقعة والجلسات التحضيرية الدقيقة. ',
                    image: 'assets/images/Analysis-amico.png',
                pagenumber: 1,),
                OnboardingPage(
                    title: 'كل ادوات التحضير في مكان واحد',
                    description:
                        'أسئلة دورات سابقة،أسئلة متوقعة،جلسات تحضير بأشراف مختصين،تواصل مباشر مع خبراء لضمان استعدادك الكامل',
                    image: 'assets/images/Webinar-amico (1).png',
                pagenumber: 2,),
                OnboardingPage(
                  title: 'وراء المنصة فريق من المختصين',
                  description:
                  'يشرف على التطبيق فريق من الأطباء والمدرسين ذوي الخبرة في الامتحان الوطني، بدعم من مصممين ومطورين يعملون لتقديم تجربة تعلم سهلة وفعالة.',
                  image: 'assets/images/Webinar-amico (1).png',
                  pagenumber: 3,),

              ],
            ))
          ],
        ),
      ),
    );
  }
}
