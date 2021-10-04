import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:defaultPadding/2),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: EdgeInsets.only(top: defaultPadding/1.5, bottom: defaultPadding/1.5, right: defaultPadding, left: defaultPadding),
          child: Column(
            children: [
              SvgPicture.asset(category.iconpath),
              SizedBox(height: 10,),
              Text(category.categoryName, style: TextStyle(fontSize: 10),)
            ]          
          ),
        ),
      ),
    );
  }
}
