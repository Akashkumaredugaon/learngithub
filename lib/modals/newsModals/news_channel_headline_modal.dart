class NewsHeadlineModals {
  String? status;
  int? totalResults;
  List<Article>? articles;

  NewsHeadlineModals({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory NewsHeadlineModals.fromJson(Map<String, dynamic> json) => NewsHeadlineModals(
    status: json["status"],
    totalResults: json["totalResults"],
    articles: json["articles"] == null ? [] : List<Article>.from(json["articles"]!.map((x) => Article.fromJson(x))),
  );


}

class Article {
  Source? source;
  Author? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    source: json["source"] == null ? null : Source.fromJson(json["source"]),
    author: authorValues.map[json["author"]]!,
    title: json["title"],
    description: json["description"],
    url: json["url"],
    urlToImage: json["urlToImage"],
    publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
    content: json["content"],
  );


}

enum Author {
  BBC_NEWS
}

final authorValues = EnumValues({
  "BBC News": Author.BBC_NEWS
});

class Source {
  Id? id;
  Author? name;

  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: idValues.map[json["id"]]!,
    name: authorValues.map[json["name"]]!,
  );


}

enum Id {
  BBC_NEWS
}

final idValues = EnumValues({
  "bbc-news": Id.BBC_NEWS
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);


}
