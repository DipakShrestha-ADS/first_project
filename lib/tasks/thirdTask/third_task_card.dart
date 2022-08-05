import 'package:flutter/material.dart';

class ThirdTaskCard extends StatelessWidget {
  const ThirdTaskCard({
    Key? key,
    required this.title,
    required this.position,
  }) : super(key: key);
  final String title;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 10,
      child: Column(
        children: [
          Image.asset(
            'images/a.jpeg',
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Position: $position',
          ),
        ],
      ),
    );
  }
}
