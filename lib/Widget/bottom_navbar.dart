import 'package:doctor_consulting_app/constants.dart';
import 'package:doctor_consulting_app/main_tabs_provide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: context.watch<MainTabsProvider>().currentIndex,
      onTap: (i){
         context.read<MainTabsProvider>().setIndex(i);
      },
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: primaryColor
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.people),
          title: Text("Doctors"),
          selectedColor: primaryColor
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.book),
          title: Text("Appointment"),
          selectedColor: primaryColor
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Account"),
          selectedColor: primaryColor
        )
      ],
    );
    // return CurvedNavigationBar(
    //   index: context.watch<MainTabsProvider>().currentIndex,
    //   backgroundColor: Colors.lightBlue.shade50,
    //   color: primaryColor,
    //   items: mobile_tabs,
    //   onTap: (index) {
    //     context.read<MainTabsProvider>().setIndex(index);
    //   },
    // );
  }
}
