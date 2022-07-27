import 'package:flutter/material.dart';

class CustomIndexedStackWidget extends StatefulWidget {
  const CustomIndexedStackWidget({Key? key}) : super(key: key);

  @override
  State<CustomIndexedStackWidget> createState() => _CustomIndexedStackWidgetState();
}

class _CustomIndexedStackWidgetState extends State<CustomIndexedStackWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return IndexedStack(
      children: [
        Container(
          color: Colors.red,
          width: size.width,
          height: size.height,
        ),
        Container(
          color: Colors.yellow,
          width: size.width,
          height: size.height,
        ),
        Container(
          color: Colors.blue,
          width: size.width,
          height: size.height,
        ),
      ],
    );
  }
}
