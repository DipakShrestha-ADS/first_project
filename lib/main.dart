import 'package:first_project/tasks/second_task.dart';
import 'package:first_project/widgets/component/custom_outlined_button.dart';
import 'package:first_project/widgets/gridView/custom_grid_view_builder_widget.dart';
import 'package:first_project/widgets/gridView/custom_grid_view_count_widget.dart';
import 'package:first_project/widgets/gridView/custom_grid_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  final age = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Main Page',
          ),
        ),
        body: Builder(
          builder: (ctx) {
            return SizedBox(
              width: MediaQuery.of(ctx).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomOutlinedButton(
                    title: 'SecondTask',
                    page: SecondTask(),
                  ),
                  CustomOutlinedButton(
                    title: 'Grid View',
                    page: CustomGridViewWidget(),
                  ),
                  CustomOutlinedButton(
                    title: 'Grid View Builder',
                    page: CustomGridViewBuilderWidget(),
                  ),
                  CustomOutlinedButton(
                    title: 'Grid View Count',
                    page: CustomGridViewCountWidget(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
