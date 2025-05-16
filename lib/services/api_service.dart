import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

var logger = Logger();

abstract class NewsApi {
  getBreakingNews();
  getLatestNews();
  getPoliticsNews();
  getBusinessNews();
  getCultureNews();
  getHealthNews();
  getNatureNews();
  getWorldNews();
  getSportsNews();
  getTechNews();
  getTopicNews();
}

class ApiService implements NewsApi {
  final String _apikey = 'd05c9058051840758dc6bbbe1c1ad1e8';

  @override
  Future<dynamic> getBreakingNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }

      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getLatestNews() async {
    final dio = Dio();

    String url =
        ' https://newsdata.io/api/1/news?apikey=$_apikey&q=Latest%20&language=en';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getPoliticsNews() async {
    final dio = Dio();
    String url =
        'https://newsapi.org/v2/top-headlines?category=politics&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getBusinessNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?category=business&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getCultureNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?category=science&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getHealthNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?category=health&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getNatureNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?category=entertainment&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getWorldNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?category=general&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getSportsNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?category=sports&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getTechNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?category=technology&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<dynamic> getTopicNews() async {
    final dio = Dio();

    String url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$_apikey';

    try {
      Response res;
      res = await dio.get(url);

      if (res.statusCode == 200) {
        return res.data;
      }
      return res.statusCode;
    } catch (e) {
      logger.e(e);
    }
  }
}
