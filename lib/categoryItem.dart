import 'package:flutter/material.dart';

import 'package:test_doctor/model/categoryModels.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(this.categoryModel, this.index, {super.key});

  CategoryModel categoryModel;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      height: 75,
      width: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/card1.png"), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(26),
          color: Colors.red),
      // color: Colors.red,
      child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryModel.name,
                style: TextStyle(color: Colors.white60, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                categoryModel.subjectName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'MTI University',
                style: TextStyle(color: Colors.white60, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                '09/25',
                style: TextStyle(color: Colors.white60, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
    // Container(
    //   width: 305,
    //   height: 180,
    //   decoration: BoxDecoration(
    //
    //       color: categoryModel.color,
    //       borderRadius: BorderRadius.only(
    //           topLeft: Radius.circular(12),
    //           topRight: Radius.circular(12),
    //           bottomLeft: index.isOdd ? Radius.circular(25) : Radius.zero,
    //           bottomRight: index.isEven? Radius.circular(25) : Radius.zero)),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Image.asset(categoryModel.image),
    //       Center(child: Text(categoryModel.name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),))
    //     ],
    //   ),
    // );
  }
}
