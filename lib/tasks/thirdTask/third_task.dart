import 'package:first_project/tasks/thirdTask/third_task_grid_view.dart';
import 'package:first_project/tasks/thirdTask/third_task_list_view.dart';
import 'package:flutter/material.dart';

class ThirdTask extends StatefulWidget {
  const ThirdTask({Key? key}) : super(key: key);

  @override
  State<ThirdTask> createState() => _ThirdTaskState();
}

class _ThirdTaskState extends State<ThirdTask> {
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Third Task',
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                toggle = true;
              });
            },
            icon: const Icon(
              Icons.grid_4x4,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                toggle = false;
              });
            },
            icon: const Icon(
              Icons.list,
            ),
          ),
        ],
      ),
      body: toggle ? ThirdTaskGridView() : ThirdTaskListView(),
    );
  }
}
