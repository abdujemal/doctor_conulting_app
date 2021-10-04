import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleAndSearch extends StatelessWidget {
  const TitleAndSearch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(
                  left: defaultPadding, 
                  right: defaultPadding, 
                  bottom: defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 2*defaultPadding,
                        ),
                        Text("Find Your", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                        Text("Specialist", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ]
                    ),
                    Spacer(),
                    SvgPicture.asset("assets/icons/Serach.svg"),
                    SizedBox(width: defaultPadding,),
                    SvgPicture.asset("assets/icons/Chat.svg")
                  ]
                ),
              );
  }
}