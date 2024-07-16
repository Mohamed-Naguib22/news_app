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
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(article.image ?? "https://st4.depositphotos.com/1005563/25369/i/450/depositphotos_253697550-stock-photo-award-winning-championship-concept-trophy.jpg",
                height: 200,
                width: double.infinity,
                fit:  BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    article.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    article.subTitle ?? "",
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 20,
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
