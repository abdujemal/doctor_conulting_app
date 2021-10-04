import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/Screens/MainPages/home/home_part/availble_doctors_list.dart';
import 'package:doctor_consulting_app/Screens/MainPages/home/home_part/title_and_more.dart';
import 'package:doctor_consulting_app/Screens/MainPages/home/home_part/categories_list.dart';
import 'package:doctor_consulting_app/Screens/MainPages/home/home_part/spetiality_list.dart';
import 'package:doctor_consulting_app/Screens/MainPages/home/home_part/title_and_search.dart';
import 'package:doctor_consulting_app/Widget/speciality_item.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.lightBlue.shade50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleAndSearch(),
              SpecialityList(),
              TitleAndMore("Categories"),
              CategoriesList(),
              TitleAndMore("Available Doctors"),
              AvailableDoctors()
            ],
          ),
        ),
      ),
    );
  }
}
