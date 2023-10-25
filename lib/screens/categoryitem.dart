import 'package:flutter/material.dart';
import 'package:newsapp/modules/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;
   CategoryItem(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: categoryModel.color,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),topRight: Radius.circular(18)
          )
        ),
        child: Column(
          children: [
            Expanded(child: Image.asset(categoryModel.image)),
            Text(categoryModel.title,style: TextStyle(color: Colors.white),),

          ],
        ),
      ),
    );
  }
}
