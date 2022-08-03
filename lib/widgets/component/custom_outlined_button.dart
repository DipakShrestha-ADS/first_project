import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);
  final String title;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (ctx) {
              return page;
            },
          ),
        );
      },
      child: Text(title),
    );
  }
}
