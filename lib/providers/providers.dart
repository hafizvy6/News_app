import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/model/news_article.dart';

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);

final breakingNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final latestNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final politicsNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final businessNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final cultureNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final healthNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final natureNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final worldNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final sportsNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final techNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);
final topicNewsProvider = StateProvider<List<NewsArticle>>((ref) => []);

final isNewsLoadingProvider = StateProvider<bool>((ref) => true);
final isCategoryArticleLoading = StateProvider<bool>((ref) => true);
