import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/providers/providers.dart';
import 'package:news_app/services/news.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecomendationTopic extends ConsumerStatefulWidget {
  const RecomendationTopic({super.key});

  @override
  ConsumerState<RecomendationTopic> createState() => _RecomendationPageState();
}

class _RecomendationPageState extends ConsumerState<RecomendationTopic> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => News().fetchHealthNews(ref));
  }

  @override
  Widget build(BuildContext context) {
    final headlines = ref.watch(healthNewsProvider);
    final isLoading = ref.watch(isCategoryArticleLoading);

    return Scaffold(
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: headlines.length,
                itemBuilder: (context, index) {
                  final article = headlines[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading:
                          article.urlToImage != null
                              ? CachedNetworkImage(
                                imageUrl: article.urlToImage!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.fill,
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
                    ),
                  );
                },
              ),
    );
  }
}
