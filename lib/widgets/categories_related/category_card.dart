import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';

class CategoryCard extends StatelessWidget {
  var c = Category(
      name: "Sports"
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Container(
        height: 120,
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // image: DecorationImage(
          //   fit: BoxFit.fill,
          //   image: AssetImage(""),
          // ),
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            c.name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      )
    );
  }
}