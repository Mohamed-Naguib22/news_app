import 'package:flutter/material.dart';
import '../widgets/news_related/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(name)
      ),
      body:
      CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(category: name),
      ]),
    );
  }
}
