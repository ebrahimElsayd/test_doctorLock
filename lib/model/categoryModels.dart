import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String subjectName;
  String image;
  String universityName;
  String Data;

  CategoryModel(
      this.name, this.subjectName, this.image, this.universityName, this.Data);

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel("osama Gamil", "Computer Science",
          "assets/images/card1.png", "MTI University", "09/25"),
      CategoryModel("osama Gamil", "Databse", "assets/images/card1.png",
          "MTI University", "09/25"),
      CategoryModel("osama Gamil", "Information Technology",
          "assets/images/card1.png", "MTI University", "09/25"),
      CategoryModel("osama Gamil", "Logic", "assets/images/card1.png",
          "MTI University", "09/25"),
    ];
  }
}
