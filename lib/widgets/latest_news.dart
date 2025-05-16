import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/providers/providers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/services/news.dart';

class TopHeadlinesPage extends ConsumerStatefulWidget {
  const TopHeadlinesPage({super.key});

  @override
  ConsumerState<TopHeadlinesPage> createState() => _TopHeadlinesPageState();
}

class _TopHeadlinesPageState extends ConsumerState<TopHeadlinesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => News().fetchTopicNews(ref));
  }

  @override
  Widget build(BuildContext context) {
    final headlines = ref.watch(topicNewsProvider);
    final isLoading = ref.watch(isCategoryArticleLoading);

    return Scaffold(
      appBar: AppBar(title: const Text("Top Headlines")),
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: headlines.length,
                itemBuilder: (context, index) {
                  final article = headlines[index];
                  return ListTile(
                    leading:
                        article.urlToImage != null
                            ? CachedNetworkImage(
                              imageUrl: article.urlToImage!,
                              width: 60,
                              fit: BoxFit.cover,
                              placeholder:
                                  (context, url) =>
                                      const CircularProgressIndicator(),
                              errorWidget:
                                  (context, url, error) =>
                                      const Icon(Icons.broken_image),
                            )
                            : null,
                    title: Text(article.title ?? 'No Title'),
                    subtitle: Text(article.description ?? 'No Description'),
                  );
                },
              ),
    );
  }
}
