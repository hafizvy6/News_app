import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/providers/providers.dart';
import 'package:news_app/services/api_service.dart';
import 'package:logger/logger.dart';
import 'package:news_app/model/news_article.dart';

var logger = Logger();

class News {
  News();

  Future<void> fetchBreakingNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getBreakingNews();
      if (response != int) {
        final List<dynamic> articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(breakingNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isNewsLoadingProvider.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchLatestNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getLatestNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(latestNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isNewsLoadingProvider.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchPoliticsNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getPoliticsNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(politicsNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchBusinessNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getBusinessNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(businessNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchCultureNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getCultureNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(cultureNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchHealthNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getHealthNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(healthNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchNatureNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getNatureNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(natureNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchWorldNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getWorldNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(worldNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchSportsNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getSportsNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(sportsNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchTechNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getTechNews();
      if (response != int) {
        final List articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(techNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> fetchTopicNews(WidgetRef ref) async {
    final ApiService api = ApiService();
    try {
      var response = await api.getTopicNews();

      if (response != int) {
        final List<dynamic> articles = response['articles'];
        for (var element in articles) {
          final title = element['title'];
          final des = element['description'];
          final imageUrl = element['urlToImage'];
          final content = element['content'];
          final author = element['author'];
          final url = element['url'];
          final NewsArticle article = NewsArticle(
            title: title,
            description: des,
            urlToImage: imageUrl,
            content: content,
            author: author,
            url: url,
          );
          ref
              .read(topicNewsProvider.notifier)
              .update((state) => state = [...state, article]);
          ref.read(isCategoryArticleLoading.notifier).update((state) => false);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
