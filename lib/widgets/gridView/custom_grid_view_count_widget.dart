import 'package:flutter/material.dart';

class CustomGridViewCountWidget extends StatelessWidget {
  const CustomGridViewCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid View Count',
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [],
      ),
    );
  }
}
