import 'package:flutter/material.dart';
import 'package:news_app/widgets/appBar_related/main_app_bar.dart';
import '../widgets/news_related/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body:
          // Container(
          //   color: Colors.red,
          // ),
      // Column(children: [
      //   CategoriesListView(),
        NewsListView(),
      // ]
    // )
  );
  }
}