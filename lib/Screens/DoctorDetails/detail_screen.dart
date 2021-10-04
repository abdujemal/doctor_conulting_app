import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/Screens/DoctorDetails/Details_part/app_bar.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final AvailableDoctor availableDoctor;
  DetailScreen(this.availableDoctor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.lightBlue.shade50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DetailAppBar(availableDoctor),
                SizedBox(
                  child: Image.asset(availableDoctor.imgPath, width: 300, height: 300)),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
