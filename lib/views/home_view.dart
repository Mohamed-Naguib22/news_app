import 'package:flutter/material.dart';
import 'package:news_app/widgets/appBar_related/main_app_bar.dart';
import 'package:news_app/widgets/categories_related/categories_list_view.dart';
import '../widgets/news_related/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body:
      CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          const NewsListViewBuilder(category: "general"),
        ]
      )
    );
  }
}