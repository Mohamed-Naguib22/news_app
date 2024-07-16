import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_related/news_tile.dart';
import '../../models/article.dart';

class NewsListView extends StatefulWidget {
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<Article> articles = [];
  bool isLoading = true;

  Future<void> getNews() async {
    articles = await NewsService(Dio()).getTopHeadlines(category: "sports");
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? CircularProgressIndicator() : CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => NewsTile(article: articles[index]),
            childCount: articles.length
          ),
        )
      ]
    );
  }
}