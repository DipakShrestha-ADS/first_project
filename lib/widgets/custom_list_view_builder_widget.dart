import 'package:first_project/widgets/component/custom_list_tile.dart';
import 'package:flutter/material.dart';

import '../models/list_model.dart';

class CustomListViewBuilderWidget extends StatelessWidget {
  CustomListViewBuilderWidget({Key? key}) : super(key: key);

  List<ListModel> dataList = [
    ListModel(
      title: 'a',
      subTitle: 's a',
      icon: Icons.ac_unit_sharp,
    ),
    ListModel(
      title: 'b',
      subTitle: 's b',
      icon: Icons.abc,
    ),
    ListModel(
      title: 'c',
      subTitle: 's c',
      icon: Icons.access_alarm,
    ),
    ListModel(
      title: 'd',
      subTitle: 's d',
      icon: Icons.access_time_filled_rounded,
    ),
    ListModel(
      title: 'e',
      subTitle: 's e',
      icon: Icons.accessibility_new,
    ),
    ListModel(
      title: 'f',
      subTitle: 's f',
      icon: Icons.accessible_forward_sharp,
    ),
    ListModel(
      title: 'g',
      subTitle: 's g',
      icon: Icons.account_balance,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View Builder',
        ),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (ctx, index) {
          print('index : $index');
          final data = dataList[index];
          return Card(
            color: Colors.yellow,
            margin: EdgeInsets.zero,
            child: CustomListTile(data: data),
          );
        },
      ),
    );
  }
}
