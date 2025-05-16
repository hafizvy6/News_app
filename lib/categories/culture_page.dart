import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/providers/providers.dart';
import 'package:news_app/services/news.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CulturePage extends ConsumerStatefulWidget {
  const CulturePage({super.key});

  @override
  ConsumerState<CulturePage> createState() => _CulturePageState();
}

class _CulturePageState extends ConsumerState<CulturePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => News().fetchCultureNews(ref));
  }

  @override
  Widget build(BuildContext context) {
    final headlines = ref.watch(cultureNewsProvider);
    final isLoading = ref.watch(isCategoryArticleLoading);

    return Scaffold(
      appBar: AppBar(title: const Text("Culture News")),
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
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
                    ),
                  );
                },
              ),
    );
  }
}
