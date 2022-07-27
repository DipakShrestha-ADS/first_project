import 'package:first_project/widgets/custom_stack_widget.dart';
import 'package:first_project/widgets/custom_wrap_widget.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomWrapWidget(),
              CustomStackWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
