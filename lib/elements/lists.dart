List<String> imgList = ['assets/1.jpg', 'assets/2.jpg', 'assets/3.jpg'];
List<String> imgInf = [
  'SC to hear on Friday 6 States plea on JEE, NEET',
  'Nirmala gives banks September 15 deadline to roll out loan resolution',
  'Virat is a fast bowlers captain-Umesh'
];

class NewsArticles {
  String head;
  String des;
  String img;
  String url;
  String content;
  String source;
  String time;

  NewsArticles(
      {this.head,
      this.des,
      this.img,
      this.url,
      this.content,
      this.time,
      this.source});
}
