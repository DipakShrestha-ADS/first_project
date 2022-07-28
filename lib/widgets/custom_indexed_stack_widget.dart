import 'package:flutter/material.dart';

class CustomIndexedStackWidget extends StatefulWidget {
  const CustomIndexedStackWidget({Key? key}) : super(key: key);

  @override
  State<CustomIndexedStackWidget> createState() => _CustomIndexedStackWidgetState();
}

class _CustomIndexedStackWidgetState extends State<CustomIndexedStackWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widgetList = [
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
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index < widgetList.length - 1) {
            index++;
          } else {
            index = 0;
          }
          setState(() {});
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      index = 0;
                      setState(() {});
                    },
                    child: Text(
                      'Red',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      index = 1;
                      setState(() {});
                    },
                    child: Text(
                      'Yellow',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      index = 2;
                      setState(() {});
                    },
                    child: Text(
                      'Blue',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      index = 0;
                      setState(() {});
                    },
                    child: Text(
                      'Red',
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      index = 1;
                      setState(() {});
                    },
                    child: Text(
                      'Yellow',
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      index = 2;
                      setState(() {});
                    },
                    child: Text(
                      'Blue',
                    ),
                  ),
                ],
              ),
              IndexedStack(
                index: index,
                children: widgetList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
