import 'package:flutter/material.dart';
import 'package:news_app/model/news_article.dart';

class DetailedNewsPage extends StatelessWidget {
  final NewsArticle article;
  const DetailedNewsPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.title ?? 'News')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
              article.urlToImage ??
                  'https://th.bing.com/th/id/OIP.hMlLJSmMJky9Rd1JwB86VgHaFl?rs=1&pid=ImgDetMain',
            ),
            const SizedBox(height: 12),
            Text(
              article.title ?? 'Title Not Available',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              article.content ?? 'Content Not Available',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
