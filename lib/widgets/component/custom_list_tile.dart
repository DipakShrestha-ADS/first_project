import 'package:first_project/models/list_model.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key, required this.data}) : super(key: key);
  final ListModel data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.home,
      ),
      title: Text(
        data.title,
      ),
      subtitle: Text(
        data.subTitle,
      ),
      trailing: Icon(
        data.icon,
      ),
    );
  }
}
