import 'package:doctor_app/screen/home_screen.dart';
import 'package:doctor_app/screen/message_screen.dart';
import 'package:doctor_app/screen/schedule_screen.dart';
import 'package:doctor_app/screen/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex =0;
  final _screens = [
    HomeScreen(),
    MessageScreen(),
    ScheduleScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purpleAccent.shade100,
         unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15

          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex=index;
            });
          },items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
            label: "Home"),

          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Message"),

          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Schedule"),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "settin g"),
        ],
        ),
      ),
    );
  }
}
