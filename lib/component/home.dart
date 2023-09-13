import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/category_model.dart';
import 'package:flutter_application_4/models/diet_model.dart';
import 'package:flutter_application_4/models/popular_model.dart';
// import 'package:flutter_';

class MyHome extends StatelessWidget {
  MyHome({super.key});

  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularModel> popularDiets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiets() {
    diets = DietModel.getData();
  }

  void _popularDiets() => popularDiets = PopularModel.getPopularDiets();

  @override
  Widget build(BuildContext context) {
    _getCategories();
    _getDiets();
    _popularDiets();
    return Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.white,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchField(),
            const SizedBox(
              height: 40,
            ),
            _categories_items(),
            const SizedBox(
              height: 40,
            ),
            _dietsSection(),
            const SizedBox(
              height: 40,
            ),
            _popularDietsSection(),
            const SizedBox(
              height: 40,
            ),
            
          ],
        ));
  }

  Column _popularDietsSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 40,
                              color: Color(0xff1D1617).withOpacity(0.07),
                              spreadRadius: 0,
                              offset: Offset(0, 10)),
                        ],
                        // border: Border.all(width: 1,color: Colors.red,style: BorderStyle.solid)
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.image,
                              size: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  popularDiets[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                Text(popularDiets[index].level +' | ' +popularDiets[index].duration +
                                      ' | ' +
                                      popularDiets[index].calories,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7B6F72),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 16,color: Colors.red,)
                          ]),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 25,
                      ),
                  itemCount: popularDiets.length)
            ],
          );
  }

  //view color pending

  Column _dietsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Recommendation\nfor  Diet",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          // color: Colors.blue,
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add),
                    Text(
                      diets[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      diets[index].level +
                          ' | ' +
                          diets[index].duration +
                          ' | ' +
                          diets[index].calories,
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7B6F72),
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      width: 130,
                      height: 45,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff9DCEFF), Color(0xff92A3FD)]),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                          child: Text(
                        "View",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 25,
            ),
            itemCount: diets.length,
            padding: EdgeInsets.only(left: 20, right: 20),
          ),
        )
      ],
    );
  }

  Column _categories_items() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Category",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 150,
          // color: Colors.green,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                // height: 50,
                decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(20)
                          shape: BoxShape.circle),
                      child: categories[index].icon,
                    ),
                    Text(
                      categories[index].name,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Container _searchField() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1d1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      // padding: EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            hintText: "Search Pancake",
            hintStyle: const TextStyle(
              color: Color(0xffDDDADA),
              fontSize: 14,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(Icons.search),
            ),
            suffixIcon: Container(
              width: 100,
              child: const IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(Icons.filter_list_outlined),
                    ),
                  ],
                ),
              ),
            ),
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        "Breakfast",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      leading: const Icon(
        Icons.arrow_back_ios_new,
        size: 16,
      ),
      actions: [
        GestureDetector(
          onTap: () {
            print("forward");
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
