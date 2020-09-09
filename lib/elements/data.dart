import 'dart:convert';
import 'package:http/http.dart';
import 'package:notification_app/elements/lists.dart';

class Data {
  List<NewsArticles> articles = [];

  Future<void> getData() async {
    var response = await get(
        'http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=587161329d6446838080308015e2a0b2');
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsArticles newsarticles = NewsArticles(
            head: element['title'],
            des: element['description'],
            img: element['urlToImage'],
            url: element['url'],
            content: element['content'],
            //source: element['source'].name,
            time: element['publishedAt'],
          );
          articles.add(newsarticles);
        }
      });
    }
  }
}

class Data1 {
  List<NewsArticles> articles1 = [];

  Future<void> getData() async {
    var response = await get(
        'http://newsapi.org/v2/everything?q=bitcoin&from=2020-08-09&sortBy=publishedAt&apiKey=587161329d6446838080308015e2a0b2   ');
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsArticles newsarticles1 = NewsArticles(
            head: element['title'],
            des: element['description'],
            img: element['urlToImage'],
            url: element['url'],
            content: element['content'],
            //source: element['source'].name,
            time: element['publishedAt'],
          );
          articles1.add(newsarticles1);
        }
      });
    }
  }
}

class Data2 {
  List<NewsArticles> articles2 = [];

  Future<void> getData() async {
    var response = await get(
        'http://newsapi.org/v2/everything?q=apple&from=2020-09-08&to=2020-09-08&sortBy=popularity&apiKey=587161329d6446838080308015e2a0b2');
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsArticles newsarticles2 = NewsArticles(
            head: element['title'],
            des: element['description'],
            img: element['urlToImage'],
            url: element['url'],
            content: element['content'],
            //source: element['source'].name,
            time: element['publishedAt'],
          );
          articles2.add(newsarticles2);
        }
      });
    }
  }
}

class Data3 {
  List<NewsArticles> articles3 = [];

  Future<void> getData() async {
    var response = await get(
        'http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=587161329d6446838080308015e2a0b2');
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsArticles newsarticles3 = NewsArticles(
            head: element['title'],
            des: element['description'],
            img: element['urlToImage'],
            url: element['url'],
            content: element['content'],
            //source: element['source'].name,
            time: element['publishedAt'],
          );
          articles3.add(newsarticles3);
        }
      });
    }
  }
}

class Data4 {
  List<NewsArticles> articles4 = [];

  Future<void> getData() async {
    var response = await get(
        'http://newsapi.org/v2/everything?domains=wsj.com&apiKey=587161329d6446838080308015e2a0b2');
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsArticles newsarticles4 = NewsArticles(
            head: element['title'],
            des: element['description'],
            img: element['urlToImage'],
            url: element['url'],
            content: element['content'],
            //source: element['source'].name,
            time: element['publishedAt'],
          );
          articles4.add(newsarticles4);
        }
      });
    }
  }
}
