import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:news_app/services/news.dart';
import 'package:news_app/providers/providers.dart';
import 'package:news_app/views/Pages/detailed_news_page.dart';

class LatestNewsSlider extends ConsumerStatefulWidget {
  const LatestNewsSlider({super.key});

  @override
  ConsumerState<LatestNewsSlider> createState() => _BreakingNewsSliderState();
}

class _BreakingNewsSliderState extends ConsumerState<LatestNewsSlider> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => News().fetchLatestNews(ref));
  }

  @override
  Widget build(BuildContext context) {
    final breakingNews = ref.watch(breakingNewsProvider);
    final isLoading = ref.watch(isNewsLoadingProvider);

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (breakingNews.isEmpty) {
      return const Center(child: Text('Breaking news not available'));
    }

    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.85,
        aspectRatio: 16 / 9,
        initialPage: 0,
      ),
      items:
          breakingNews.map((article) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (context) => DetailedNewsPage(article: article),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            article.urlToImage ??
                                'https://th.bing.com/th/id/OIP.hMlLJSmMJky9Rd1JwB86VgHaFl?rs=1&pid=ImgDetMain',
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, error, stackTrace) => const Center(
                                  child: Icon(Icons.broken_image),
                                ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withAlpha(100),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              article.title ?? 'Title not available',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
    );
  }
}
