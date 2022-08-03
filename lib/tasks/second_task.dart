import 'package:first_project/widgets/custom_list_view_builder_widget.dart';
import 'package:first_project/widgets/gridView/custom_grid_view_builder_widget.dart';
import 'package:flutter/material.dart';

class SecondTask extends StatefulWidget {
  const SecondTask({Key? key}) : super(key: key);

  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {
  bool displayListView = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Task',
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                displayListView = !displayListView;
              });
            },
            icon: Icon(
              Icons.account_balance,
            ),
          ),
        ],
      ),
      body: displayListView ? CustomListViewBuilderWidget() : CustomGridViewBuilderWidget(),
    );
  }
}
