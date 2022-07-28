import 'package:flutter/material.dart';

import 'widgets/custom_image_widget.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  final age = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomImageWidget(),
    );
  }
}
