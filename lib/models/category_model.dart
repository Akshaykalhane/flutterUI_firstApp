import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  Icon icon;
  Color boxColor;

  CategoryModel(
      {required this.name, required this.boxColor, required this.icon});
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Salad', boxColor: Color(0xff92A3FD), icon: Icon(Icons.add)));

    categories.add(CategoryModel(
        name: 'Salad 1', boxColor: Color(0xffC58BF2), icon: Icon(Icons.add)));

          categories.add(CategoryModel(
        name: 'Salad 2', boxColor: Color(0xff92A3FD), icon: Icon(Icons.add)));

          categories.add(CategoryModel(
        name: 'Salad 2', boxColor: Color(0xffC58BF2), icon: Icon(Icons.add)));

    return categories;
  }
}
