import 'package:doctor_consulting_app/Data/datas.dart';
import 'package:doctor_consulting_app/Widget/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Datas();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 89,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.categoryList.length,
          itemBuilder: (ctx, index) {
            return CategoryItem(data.categoryList[index]);
          }),
    );
  }
}
