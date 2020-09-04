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
