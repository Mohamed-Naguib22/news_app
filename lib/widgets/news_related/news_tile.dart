import 'package:flutter/material.dart';
import '../../models/article.dart';

class NewsTile extends StatelessWidget {
  final Article article;
  const NewsTile({required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(article.image ?? "https://thumbs.dreamstime.com/b/article-article-background-breaking-news-business-close-up-communication-113321240.jpg",
                height: 200,
                width: double.infinity,
                fit:  BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  Text(
                    article.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    article.subTitle ?? "",
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
              ]),
            ),
          ],
        ),
      )
    );
  }
}
