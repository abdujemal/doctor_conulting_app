import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';

class TitleAndMore extends StatelessWidget {
  final String title;
  TitleAndMore(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding*1.5, bottom: defaultPadding * 1.5, right: defaultPadding, left: defaultPadding),
      child: Row(
        children: [
          Text(title, style: TextStyle(color: Colors.black87, fontSize: 16)),
          Spacer(),
          Text(
            "See All",
            style: TextStyle(color: Colors.black87, fontSize: 16),
          )
        ],
      ),
    );
  }
}
