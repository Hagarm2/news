import 'package:flutter/material.dart';

import '../modules/category_model.dart';
import 'categoryitem.dart';

class CategoriesTab extends StatelessWidget {
List<CategoryModel>categories;
Function OnClick;
CategoriesTab(this.categories,this.OnClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 7,
          ),
          Text("Pick your category  of interest",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300
          ),),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView(gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
            children:
              categories.map((category) => InkWell(
                onTap: (){
                  OnClick(category);

                },
                  child: CategoryItem(category))).toList(),


            ),
          ),

        ],
      ),
    );
  }
}
