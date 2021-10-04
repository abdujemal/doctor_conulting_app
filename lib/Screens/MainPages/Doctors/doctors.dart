import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/Widget/available_doctors_item.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Datas();
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(color: Colors.lightBlue.shade50),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(right:defaultPadding/2),
            child: GridView.builder(
                itemCount: data.doctors.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.4),
                itemBuilder: (ctx, index) {
                  return AvailableDoctorsItem(data.doctors[index], showRating: false,);
                }),
          )),
    );
  }
}
