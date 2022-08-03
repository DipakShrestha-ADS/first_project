import 'package:flutter/material.dart';

import '../../datas/grid_view_datas.dart';

class CustomGridViewBuilderWidget extends StatelessWidget {
  const CustomGridViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid View Builder',
        ),
      ),
      body: GridView.builder(
        itemCount: gvDatas.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) {
          final data = gvDatas[index];
          return Container(
            color: Colors.red,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  data.title,
                ),
                Text(
                  data.subTitle,
                ),
                Text(
                  '${data.age}',
                ),
                Text(
                  data.age.toString(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
