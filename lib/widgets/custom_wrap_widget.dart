import 'package:flutter/material.dart';

class CustomWrapWidget extends StatelessWidget {
  const CustomWrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 20,
        runSpacing: 20,
        children: const [
          Icon(
            Icons.home,
            size: 100,
          ),
          Icon(
            Icons.edit,
            size: 100,
          ),
          Icon(
            Icons.add,
            size: 100,
          ),
          Icon(
            Icons.settings,
            size: 100,
          ),
          Icon(
            Icons.share,
            size: 100,
          ),
          Icon(
            Icons.ac_unit_sharp,
            size: 100,
          ),
        ],
      ),
    );
  }
}
