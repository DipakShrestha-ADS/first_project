import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.red,
          height: 200,
          width: 200,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.yellow),
          ),
          height: 150,
          width: 150,
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        Positioned(
          top: -20,
          right: -20,
          child: Card(
            margin: EdgeInsets.zero,
            child: SizedBox(
              width: 50,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
