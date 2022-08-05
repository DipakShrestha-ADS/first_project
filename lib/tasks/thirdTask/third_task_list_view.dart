import 'package:first_project/tasks/thirdTask/third_task_card.dart';
import 'package:flutter/material.dart';

class ThirdTaskListView extends StatelessWidget {
  const ThirdTaskListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 8,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      itemBuilder: (ctx, index) {
        return SizedBox(
          height: 200,
          width: double.infinity,
          child: ThirdTaskCard(
            title: 'Title $index',
            position: index,
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
