import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';

class SpecialityItem extends StatelessWidget {
  final Specialist specialist;
  SpecialityItem(this.specialist);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: defaultPadding/2),
      child: Card(
        color: primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Container(
            width: 300,
            height: 160,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      specialist.title,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: defaultPadding + 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.green, width: 2)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. " + specialist.doctorName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(specialist.speciality, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),)
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                Image.asset(specialist.imgPath)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
