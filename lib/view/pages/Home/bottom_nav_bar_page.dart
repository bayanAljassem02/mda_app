import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';

import 'home_page.dart';
class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentindex=3;
  var pages=[Container(),Container(),Container(),HomePage()];
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
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'البحث'),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: 'الرئيسية'),
        ],
        selectedItemColor: AppColors.primarycolorlightblue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 7,
      ),

    );
  }
}
