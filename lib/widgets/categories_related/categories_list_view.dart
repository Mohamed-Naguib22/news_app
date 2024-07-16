import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_related/category_card.dart';

class CategoriesListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return CategoryCard();
          }
        ),
      ),
    );
  }
}