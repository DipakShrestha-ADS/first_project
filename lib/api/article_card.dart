import 'package:first_project/api/article_model.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({Key? key, required this.articleModel}) : super(key: key);
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Wrap(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.4,
                  child: Image.network(
                    articleModel.urlToImage ?? '',
                    // width: 150,
                    // height: 150,
                    fit: BoxFit.cover,
                    cacheHeight: 350,
                    errorBuilder: (ctx, ol, st) {
                      return Center(
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.red,
                          size: 30,
                        ),
                      );
                    },
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.05,
                ),
                FractionallySizedBox(
                  widthFactor: 0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        articleModel.title ?? '-',
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        articleModel.author ?? '-',
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        articleModel.publishedAt ?? '-',
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(articleModel.description ?? '-'),
                SizedBox(
                  height: 10,
                ),
                Text(articleModel.content ?? '-'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
