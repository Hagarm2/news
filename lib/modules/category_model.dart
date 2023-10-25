import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryModel{
  String title;
  String id;
  String image;
  Color color;

  CategoryModel(this.title, this.id, this.image, this.color);
  static List<CategoryModel> getCategories(){
    return [
      CategoryModel("Spotrts","spotrts","assets/images/sports.png",Colors.red),
      CategoryModel("Business","business","assets/images/bussines.png",Color(0xffCF7E48)),
      CategoryModel("Entertainment","entertainment","assets/images/environment.png",Color(0xff4882CF)),
      CategoryModel("General","general","assets/images/Politics.png",Color(0xff003E90)),
      CategoryModel("Health","health","assets/images/health.png",Color(0xffED1E79)),
      CategoryModel("Scince","scince","assets/images/science.png",Color(0xffF2D352)),
      CategoryModel("Technology","technology","assets/images/environment.png",Color(0xff4882CF)),

    ];

  }
}