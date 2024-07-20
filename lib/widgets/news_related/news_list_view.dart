import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_related/news_tile.dart';
import '../../models/article.dart';

class NewsListView extends StatelessWidget {
  final List<Article> articles;

  const NewsListView({required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => NewsTile(article: articles[index]),
        childCount: articles.length
      ),
    );
  }
}