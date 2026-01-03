import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';
import 'package:mda/view/pages/Home/search_page.dart';

import 'home_page.dart';
class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentindex=2;
  var pages=[Container(),Container(),HomePage(),Container(),SearchPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int index){
          setState(() {
            _currentindex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp,),label: 'الحساب',),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined,),label: 'الإشعارات'),

          BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline,),label: 'دردشة'),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'البحث'),
        ],
        selectedItemColor: AppColors.primarycolorlightblue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Tajawal',color:  Colors.grey,fontSize: 12
        ),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'Tajawal',fontSize: 12
        ),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 7,
      ),

    );
  }
}
