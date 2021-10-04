import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/Screens/DoctorDetails/detail_screen.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AvailableDoctorsItem extends StatelessWidget {
  AvailableDoctor availableDoctor;
  bool showRating;
  AvailableDoctorsItem(this.availableDoctor, {required this.showRating});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding / 2, top: showRating ? 0 : defaultPadding/2),
      child: GestureDetector (
        onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(availableDoctor))),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Container(
              width: 250,
              height: 176,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Dr. " + availableDoctor.doctorName,
                            style: titleStyle),
                        Text(
                          availableDoctor.doctorSpetialist,
                          style: TextStyle(fontSize: 12),
                        ),
                        showRating ?
                        Padding(
                          padding: const EdgeInsets.only(
                              top: defaultPadding / 2,
                              bottom: defaultPadding / 2),
                          child: RatingBar.builder(
                            itemSize: 15,
                            initialRating: availableDoctor.numOfRating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            ignoreGestures: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        )
                        :
                        Spacer(),
                        Text(
                          "Experience",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          availableDoctor.experiance,
                          style: titleStyle,
                        ),
                       Spacer(),
                        Text("Patients", style: TextStyle(fontSize: 12)),
                        Text(availableDoctor.patients, style: titleStyle)
                      ],
                    ),
                  ),
                  SizedBox(width: 60, child: Image.asset(availableDoctor.imgPath))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
