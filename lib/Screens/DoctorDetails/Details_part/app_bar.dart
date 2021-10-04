import 'package:doctor_consulting_app/Screens/MainPages/home/home_part/availble_doctors_list.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  final availableDoctor;
  DetailAppBar(this.availableDoctor);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.keyboard_arrow_left, size: 38),
              onPressed: () => Navigator.pop(context),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Dr. " + availableDoctor.doctorName,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
