import 'package:flutter/material.dart';
import 'package:newsapp/screens/categoriestab.dart';
import 'package:newsapp/screens/drawer.dart';
import 'package:newsapp/screens/news_tab.dart';
import 'package:newsapp/screens/tabcontroller.dart';
import 'package:newsapp/shared/network/remot/api_manager.dart';

import '../modules/category_model.dart';

class Home extends StatefulWidget {
  static const String routename = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel>categories=CategoryModel.getCategories();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
          image: DecorationImage(image:
          AssetImage("assets/images/pattern.png"),fit: BoxFit.fill),

      ),
      child: Scaffold(
        drawer: DrawerTab(onDrawerClick),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("News"),
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18)
            )
        ),
          backgroundColor: Colors.green,

        ),
        body:categoryModel==null?CategoriesTab(categories, onCategoryClicked):
        NewsTap(categoryModel!.id), /**/
      ),
    );
  }

  CategoryModel? categoryModel = null;

  onCategoryClicked(category) {
    categoryModel = category;
    setState(() {});
  }
  onDrawerClick(id){
if(id==DrawerTab.CAT_ID){
  categoryModel==null;

}else if(id==DrawerTab.SET_ID){
setState(() {
  Navigator.pop(context);
});
}
  }
}
