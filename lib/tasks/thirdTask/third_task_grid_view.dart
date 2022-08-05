import 'package:first_project/tasks/thirdTask/third_task_card.dart';
import 'package:flutter/material.dart';

class ThirdTaskGridView extends StatelessWidget {
  const ThirdTaskGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (ctx, index) {
        return ThirdTaskCard(
          title: 'Title $index',
          position: index,
        );
      },
    );
  }
}
