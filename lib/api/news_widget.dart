import 'package:first_project/api/api_model.dart';
import 'package:first_project/api/api_repository.dart';
import 'package:first_project/api/article_card.dart';
import 'package:first_project/api/article_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: FutureBuilder<ApiModel>(
        future: ApiRepository().getData(),
        builder: (ctx, asyncSnap) {
          if (asyncSnap.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (asyncSnap.hasData) {
            if (asyncSnap.data != null) {
              final List<ArticleModel> articleModelList = asyncSnap.data!.articles ?? [];
              return ListView.builder(
                itemCount: articleModelList.length,
                itemBuilder: (ctx, index) {
                  final article = articleModelList[index];
                  return ArticleCard(articleModel: article);
                },
              );
            }
          }
          if (asyncSnap.hasError) {
            return Text(
              'Error : ${asyncSnap.error}',
            );
          }
          return Container(
            child: const Center(
              child: Text('Data Empty!'),
            ),
          );
        },
      ),
    );
  }
}
