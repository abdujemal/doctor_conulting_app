import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/Widget/speciality_item.dart';
import 'package:flutter/material.dart';

class SpecialityList extends StatelessWidget {
  const SpecialityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Datas();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.specialityLists.length,
          itemBuilder: (ctx, index) {
            return SpecialityItem(data.specialityLists[index]);
          }),
    );
  }
}
