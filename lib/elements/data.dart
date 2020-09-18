import 'dart:convert';
import 'package:http/http.dart';
import 'package:notification_app/elements/lists.dart';

class Data {
  List<NewsArticles> articles = [];

  Future<void> getData() async {
    var response = await get(
        'https://fir-news-api-veokara.firebaseio.com/GlobalNews.json');
    var jsonData = jsonDecode(response.body);

    jsonData.forEach((element) {
      NewsArticles newsarticles = NewsArticles(
        head: element['title'],
        //des: element['description'],
        //img: element['urlToImage'],
        url: element['domain'],
        //content: element['content'],
        //source: element['source[name]'],
        //time: element['publishedAt'],
      );
      articles.add(newsarticles);
    });
  }
}

class Data1 {
  List<NewsArticles> articles1 = [];

  Future<void> getData() async {
    var response = await get(
        'https://fir-news-api-veokara.firebaseio.com/technology.json');
    var jsonData = jsonDecode(response.body);
    //if (jsonData['status'] == "ok") {
    jsonData.forEach((element) {
      //if (element['urlToImage'] != null && element['description'] != null) {
      NewsArticles newsarticles1 = NewsArticles(
        head: element['title'],
        /*des: element['description'],*/
        img: element['thumbnail'],
        url: element['domain'],
        /*content: element['content'],
            //source: element['source'].name,
            time: element['publishedAt'],*/
      );
      articles1.add(newsarticles1);
      //}
    });
    //}
  }
}

class Data2 {
  List<NewsArticles> articles2 = [];

  Future<void> getData() async {
    var response =
        await get('https://fir-news-api-veokara.firebaseio.com/sports.json');
    var jsonData = jsonDecode(response.body);
    //if (jsonData['status'] == "ok") {
    jsonData.forEach((element) {
      //if (element['urlToImage'] != null && element['description'] != null) {
      NewsArticles newsarticles2 = NewsArticles(
        head: element['title'],
        /*des: element['description'],*/
        img: element['thumbnail'],
        url: element['domain'],
        //content: element['content'],
        //source: element['source'].name,
        //time: element['publishedAt'],
      );
      articles2.add(newsarticles2);
      //}
    });
    //}
  }
}

class Data3 {
  List<NewsArticles> articles3 = [];

  Future<void> getData() async {
    var response =
        await get('https://fir-news-api-veokara.firebaseio.com/health.json');
    var jsonData = jsonDecode(response.body);
    //if (jsonData['status'] == "ok") {
    jsonData.forEach((element) {
      //if (element['urlToImage'] != null && element['description'] != null) {
      NewsArticles newsarticles3 = NewsArticles(
        head: element['title_health'],
        // des: element['description'],
        img: element['thumbnail_health'],
        url: element['domain_health'],
        // content: element['content'],
        //source: element['source'].name,
        // time: element['publishedAt'],
      );
      articles3.add(newsarticles3);
      // }
    });
    //}
  }
}

class Data4 {
  List<NewsArticles> articles4 = [];

  Future<void> getData() async {
    var response = await get(
        'https://fir-news-api-veokara.firebaseio.com/Entertainment.json');
    var jsonData = jsonDecode(response.body);
    //if (jsonData['status'] == "ok") {
    jsonData.forEach((element) {
      //if (element['urlToImage'] != null && element['description'] != null) {
      NewsArticles newsarticles4 = NewsArticles(
        head: element['title'],
        //des: element['description'],
        img: element['thumbnail'],
        url: element['domain'],
        //content: element['content'],
        //source: element['source'].name,
        //time: element['publishedAt'],
      );
      articles4.add(newsarticles4);
      // }
    });
    //}
  }
}

class Data5 {
  List<NewsArticles> articles4 = [];

  Future<void> getData() async {
    var response =
        await get('https://fir-news-api-veokara.firebaseio.com/science.json');
    var jsonData = jsonDecode(response.body);
    //if (jsonData['status'] == "ok") {
    jsonData.forEach((element) {
      //if (element['urlToImage'] != null && element['description'] != null) {
      NewsArticles newsarticles4 = NewsArticles(
        head: element['title'],
        //des: element['description'],
        img: element['thumbnail'],
        url: element['domain'],
        //content: element['content'],
        //source: element['source'].name,
        //time: element['publishedAt'],
      );
      articles4.add(newsarticles4);
      // }
    });
    //}
  }
}
