import 'package:doctor_consulting_app/Screens/MainPages/Account/account.dart';
import 'package:doctor_consulting_app/Screens/MainPages/Appointment/appointment.dart';
import 'package:doctor_consulting_app/Screens/MainPages/Doctors/doctors.dart';
import 'package:doctor_consulting_app/Screens/MainPages/home/home.dart';
import 'package:doctor_consulting_app/Widget/bottom_navbar.dart';
import 'package:doctor_consulting_app/main_tabs_provide.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  List<Widget> bodyItem = [
    Home(),
    Doctors(),
    Appointment(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: bodyItem[context.watch<MainTabsProvider>().currentIndex]
    );
  }
}
