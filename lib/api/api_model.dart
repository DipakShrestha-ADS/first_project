import 'package:first_project/api/article_model.dart';

class ApiModel {
  String? status;
  int? totalResults;
  List<ArticleModel> articles;

  ApiModel({
    this.status,
    this.totalResults,
    required this.articles,
  });

  factory ApiModel.fromJson(Map<String, dynamic> data) {
    return ApiModel(
      status: data['status'],
      totalResults: data['totalResults'],
      articles: data['articles'] != null
          ? data['articles']
              .map((article) {
                return ArticleModel.fromJson(article);
              })
              .toList()
              .cast<ArticleModel>()
          : [],
    );
  }
}
