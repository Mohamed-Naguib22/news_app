import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_related/category_card.dart';
import 'package:news_app/models/category.dart';

class CategoriesListView extends StatelessWidget {

  final List<CategoryCard> categories = const [
    CategoryCard(
      category: Category(
        imgPath: 'assets/business.jpg',
        name: 'Business',
      ),
    ),
    CategoryCard(
      category: Category(
        imgPath: 'assets/health.avif',
        name: 'Health',
      ),
    ),
    CategoryCard(
      category: Category(
        imgPath: 'assets/science.avif',
        name: 'Science',
      ),
    ),
    CategoryCard(
      category: Category(
        imgPath: 'assets/general.jpg',
        name: 'General',
      ),
    ),
    CategoryCard(
      category: Category(
        imgPath: 'assets/sports.webp',
        name: 'Sports',
      ),
    ),
    CategoryCard(
      category: Category(
        imgPath: 'assets/technology.jpeg',
        name: 'Technology',
      ),
    ),
    CategoryCard(
      category: Category(
        imgPath: 'assets/entertaiment.avif',
        name: 'Entertainment',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return categories[index];
          }
        ),
      ),
    );
  }
}