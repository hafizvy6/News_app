import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/providers/providers.dart';
import 'package:news_app/services/news.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BusinessPage extends ConsumerStatefulWidget {
  const BusinessPage({super.key});

  @override
  ConsumerState<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends ConsumerState<BusinessPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => News().fetchBusinessNews(ref));
  }

  @override
  Widget build(BuildContext context) {
    final headlines = ref.watch(businessNewsProvider);
    final isLoading = ref.watch(isCategoryArticleLoading);

    return Scaffold(
      appBar: AppBar(title: const Text('BusinessNews')),
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: headlines.length,
                itemBuilder: (context, index) {
                  final article = headlines[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading:
                          article.urlToImage != null
                              ? ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl: article.urlToImage!,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  placeholder:
                                      (context, url) =>
                                          const CircularProgressIndicator(),
                                  errorWidget:
                                      (context, url, error) =>
                                          const Icon(Icons.broken_image),
                                ),
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
