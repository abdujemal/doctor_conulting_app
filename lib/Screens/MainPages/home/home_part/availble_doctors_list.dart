import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/Widget/available_doctors_item.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';

class AvailableDoctors extends StatelessWidget {
  const AvailableDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Datas();
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 176,
        child: ListView.builder(
            
            scrollDirection: Axis.horizontal,
            itemCount: data.availableDoctorList.length,
            itemBuilder: (ctx, index) {
              return AvailableDoctorsItem(data.availableDoctorList[index], showRating: true,);
            }),
      ),
    );
  }
}
