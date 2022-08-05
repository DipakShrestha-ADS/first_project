import 'package:first_project/tasks/second_task.dart';
import 'package:first_project/tasks/thirdTask/third_task.dart';
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
          title: const Text(
            'Main Page',
          ),
        ),
        extendBody: true,
        body: SafeArea(
          bottom: false,
          child: Builder(
            builder: (ctx) {
              return SingleChildScrollView(
                child: SizedBox(
                  width: MediaQuery.of(ctx).size.width,
                  height: 2000,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CustomOutlinedButton(
                        title: 'SecondTask',
                        page: SecondTask(),
                      ),
                      CustomOutlinedButton(
                        title: 'ThirdTask',
                        page: ThirdTask(),
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
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.account_balance,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // backgroundColor: Colors.green,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.orange,
          notchMargin: 20,
          child: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.accessibility_new_sharp,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.access_time_filled_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
